#!/bin/bash
set -e

echo "========================================="
echo " Starting INFORM_NOTE Schema Auto Setup... "
echo "========================================="

export LANG=C.UTF-8
export NLS_LANG=AMERICAN_AMERICA.AL32UTF8

TARGET_PWD="${INFORM_NOTE_PWD:-${ORACLE_PWD}}"
TARGET_PWD="$(echo "${TARGET_PWD}" | tr -d '\r')"

# SYSDBA로 접속 후 FREEPDB1으로 전환
sqlplus -s / as sysdba <<EOF
SET ECHO ON
SET DEFINE OFF

-- 1. PDB 컨테이너 전환 (SYSDBA 세션을 FREEPDB1으로 고정)
ALTER SESSION SET CONTAINER = FREEPDB1;

-- 2. 기존 INFORM_NOTE 활성 세션 강제 종료 후 계정 삭제
BEGIN
   FOR c IN (SELECT sid, serial# FROM v\$session WHERE username = 'INFORM_NOTE') LOOP
      BEGIN
         EXECUTE IMMEDIATE 'ALTER SYSTEM KILL SESSION ''' || c.sid || ',' || c.serial# || ''' IMMEDIATE';
      EXCEPTION WHEN OTHERS THEN NULL;
      END;
   END LOOP;
END;
/

DECLARE
   v_count NUMBER;
BEGIN
   SELECT COUNT(*) INTO v_count FROM all_users WHERE username = 'INFORM_NOTE';
   IF v_count > 0 THEN
      EXECUTE IMMEDIATE 'DROP USER INFORM_NOTE CASCADE';
   END IF;
END;
/

-- 3. INFORM_NOTE 계정 생성 및 권한 부여
CREATE USER INFORM_NOTE IDENTIFIED BY "${TARGET_PWD}" DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

GRANT CREATE MATERIALIZED VIEW,
      CREATE PROCEDURE,
      CREATE SEQUENCE,
      CREATE SESSION,
      CREATE SYNONYM,
      CREATE TABLE,
      CREATE TRIGGER,
      CREATE TYPE,
      CREATE VIEW,
      UNLIMITED TABLESPACE
  TO INFORM_NOTE;

ALTER SESSION SET CURRENT_SCHEMA = INFORM_NOTE;
ALTER SESSION SET NLS_LANGUAGE = 'AMERICAN';
ALTER SESSION SET NLS_TERRITORY = 'AMERICA';

-- 4. 테이블 및 인덱스/뷰/시퀀스 생성
@/opt/oracle/sample-schemas/inform_note/inform_note_create.sql

-- 5. 초기 샘플 데이터 Insert
@/opt/oracle/sample-schemas/inform_note/inform_note_populate.sql

COMMIT;
EXIT;
EOF

echo "========================================="
echo " INFORM_NOTE Schema setup finished successfully! "
echo "========================================="