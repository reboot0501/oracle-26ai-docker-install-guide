#!/bin/bash
set -e

echo "========================================="
echo " Starting HR Schema Auto Setup... "
echo "========================================="

export LANG=C.UTF-8
export NLS_LANG=AMERICAN_AMERICA.AL32UTF8

# SYSDBA로 접속 후 FREEPDB1으로 전환
sqlplus -s / as sysdba <<EOF
SET ECHO ON
SET DEFINE OFF

-- 1. PDB 컨테이너 전환 (SYSDBA 세션을 FREEPDB1으로 고정)
ALTER SESSION SET CONTAINER = FREEPDB1;

-- 2. 기존 HR 계정이 있을 경우 삭제 후 재생성
DECLARE
   v_user_exists NUMBER;
BEGIN
   SELECT COUNT(1) INTO v_user_exists FROM all_users WHERE username = 'HR';
   IF v_user_exists > 0 THEN
      EXECUTE IMMEDIATE 'DROP USER HR CASCADE';
   END IF;
END;
/

-- 3. HR 계정 생성 및 권한 부여
CREATE USER hr IDENTIFIED BY hr1234 DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

GRANT CREATE MATERIALIZED VIEW,
      CREATE PROCEDURE,
      CREATE SEQUENCE,
      CREATE SESSION,
      CREATE SYNONYM,
      CREATE TABLE,
      CREATE TRIGGER,
      CREATE TYPE,
      CREATE VIEW
  TO hr;

ALTER SESSION SET CURRENT_SCHEMA = HR;
ALTER SESSION SET NLS_LANGUAGE = 'AMERICAN';
ALTER SESSION SET NLS_TERRITORY = 'AMERICA';

-- 4. 테이블 및 인덱스/뷰 생성
@/opt/oracle/sample-schemas/human_resources/hr_create.sql

-- 5. 초기 데이터 Insert (107명 사원 정보 등)
@/opt/oracle/sample-schemas/human_resources/hr_populate.sql

-- 6. 프로시저 및 트리거 생성
@/opt/oracle/sample-schemas/human_resources/hr_code.sql

COMMIT;
EXIT;
EOF

echo "========================================="
echo " HR Schema setup finished successfully! "
echo "========================================="
