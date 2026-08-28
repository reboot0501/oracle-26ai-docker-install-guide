# 🐳 Oracle 26ai Docker 실행 및 HR 스키마 자동 설치 가이드

이 문서는 노션 가이드 페이지([Docker를 이용한 Oracle 26ai 설치](https://app.notion.com/p/Docker-Oracle-26ai-3ad75075f80880d18e12d3a5fc7a3228))를 기반으로 작성되었습니다.

> ⚠️ **필수 주의사항**: Oracle 26ai 이미지는 오라클 인증 레지스트리에서 제공되므로, **`docker compose up` 실행 전 반드시 레지스트리 로그인(STEP 1)**을 먼저 완료해야 합니다.

---

## 🚀 1. 실행 절차 (Docker Compose 사용)

### STEP 1. 오라클 레지스트리 로그인 (최초 1회 필수)
```bash
docker login container-registry.oracle.com
```
* **Username**: 오라클 계정 이메일/ID [`add0602@naver.com`]
* **Password**: [Oracle Container Registry](https://container-registry.oracle.com/)에서 생성한 **Auth Token** 입력 [`W2PjSiw0i8P_PGcL5ZR`]

---

### STEP 2. docker-compose.yml 구성 확인

프로젝트 루트의 `docker-compose.yml`에는 HR 스키마 자동 생성을 위한 볼륨 마운트와 1521 포트 설정이 반영되어 있습니다:

```yaml
version: '3.8'

services:
  oracle26ai:
    image: container-registry.oracle.com/database/free:latest
    container_name: oracle26ai-free
    restart: unless-stopped
    ports:
      - "1521:1521"   # PC의 1521 포트로 오라클 DB 리스너 바인딩 (DBeaver 접속용)
      - "39832:5500"   # Enterprise Manager Express Port
    environment:
      - ORACLE_PWD=leetj1485+
      - ORACLE_CHARACTERSET=AL32UTF8
    volumes:
      # 1. HR 스키마 및 초기 데이터 자동 생성 스크립트 마운트
      - ./setup_hr.sh:/opt/oracle/scripts/setup/01_setup_hr.sh:ro
      # 2. HR 스키마 SQL 파일 디렉토리 마운트
      - ./oracle-db-sample-schemas:/opt/oracle/sample-schemas:ro
      # 3. 데이터 영구 보존 볼륨 (docker compose down 시에도 데이터 유지)
      # 💡 docker down 시 데이터 완전 삭제(휘발성)를 원할 경우 아래 라인을 주석 처리(- #)하세요.
      - oracle26ai-oradata:/opt/oracle/oradata

volumes:
  oracle26ai-oradata:
    name: oracle26ai-oradata
```

---

### STEP 3. HR 자동 생성 스크립트 (`setup_hr.sh`)

컨테이너 최초 실행 시 `FREEPDB1` PDB에 **HR 스키마 및 107건의 샘플 데이터**를 자동 생성하는 셸 스크립트입니다:

```bash
#!/bin/bash
set -e

echo "========================================="
echo " Starting HR Schema Auto Setup... "
echo "========================================="

# SYSDBA로 FREEPDB1 PDB에 접속하여 HR 스키마 및 데이터 생성
sqlplus -s sys/${ORACLE_PWD}@localhost:1521/FREEPDB1 as sysdba <<EOF
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
```

---

### STEP 4. 컨테이너 실행 및 구동 로그 확인

```bash
# 1. 컨테이너 실행
docker compose up -d

# 2. 실시간 로그 확인
docker compose logs -f
```
* `DATABASE IS READY FOR USE` 및 `HR Schema setup finished successfully!` 로그가 확인되면 DB 및 HR 스키마 구동이 완전히 완료된 것입니다.

---

## 🔌 2. DB 접속 방법 (DBeaver & CLI)

### 1) DBeaver / 외부 SQL Client 접속 설정
* **Host**: `localhost`
* **Port**: `1521`
* **Database / Service Name**: `FREEPDB1`
* **SYS 계정**: User `sys` (Role: `SYSDBA`), Password `leetj1485+`
* **HR 샘플 계정**: User `hr`, Password `hr1234`

---

### 2) 컨테이너 내부 bash 접속 및 HR 계정 직접 접속
```bash
# 1. 컨테이너 내부 bash 접속
docker exec -it oracle26ai-free bash

# 2. HR 계정으로 직접 SQL*Plus 접속 (성공!)
sqlplus hr/hr1234@localhost:1521/FREEPDB1

# 3. 접속 및 데이터 조회 확인
SQL> SHOW USER;
# 출력: USER is "HR"

SQL> SELECT count(*) FROM employees;
# 출력: 107
```

---

## ⚠️ 3. 트러블슈팅: SYS 세션 전환 시 ORA-01017 해결법

SQL*Plus 접속 후 `CONN hr/hr1234` 또는 `CONN hr/hr1234@FREEPDB1`을 입력했을 때 `ORA-01017: invalid credential or not authorized; logon denied` 에러가 발생하는 원인과 해결법입니다.

### ❓ 원인
오라클 멀티테넌트(CDB/PDB) 구조상 식별자 경로 없이 `CONN hr/hr1234`를 치면 오라클이 PDB(`FREEPDB1`)가 아닌 **`CDB$ROOT` (최상위 루트 DB)**로 접속을 시도하기 때문입니다. `CDB$ROOT`에는 `HR` 계정이 존재하지 않으므로 인증 거부 에러가 발생합니다.

### ✅ 올바른 세션 전환 방법 (택 1)

#### [방법 A] 풀 접속 식별자 사용 (Easy Connect 전체 경로 명시)
```sql
CONN hr/hr1234@localhost:1521/FREEPDB1
```

#### [방법 B] SYS 세션 유지한 채 HR 스키마 데이터 조작
```sql
-- 1. 세션 컨테이너를 FREEPDB1으로 전환
ALTER SESSION SET CONTAINER = FREEPDB1;

-- 2. 작업 스키마를 HR로 변경
ALTER SESSION SET CURRENT_SCHEMA = HR;

-- 3. hr.employees 대신 employees로 바로 조회
SELECT count(*) FROM employees;
```

---

## 🛠️ 4. 기타 관리 및 데이터 보존/휘발 옵션

### 1) 서비스 중지 ( 데이터 다스크에 보존 되어 있음 )
```bash
docker compose down
```

### 2) 데이터 영구 보존 vs 휘발성 삭제 설정 방법
* **영구 보존 (기본 설정)**:
  - `docker-compose.yml`의 `- oracle26ai-oradata:/opt/oracle/oradata` 볼륨 마운트가 유지되어 있으면 `docker compose down` 후 재시작 시에도 데이터가 유지됩니다.
* **휘발성 삭제 (down 시 데이터 완전 제거)**:
  - `docker-compose.yml`의 `- oracle26ai-oradata:/opt/oracle/oradata` 라인을 주석 처리(- #)합니다.
  - `docker compose down -v` 실행 시 모든 DB 및 데이터가 완전 삭제되며, 추후 `docker compose up -d` 실행 시 깨끗한 HR 초기 데이터로 자동 재구성됩니다.

---

## 📌 5. 주요 접속 정보 요약표

| 구 분 | 접속 정보 | 비 고 |
| :--- | :--- | :--- |
| **DB Listener Port** | `1521` (Host) ➔ `1521` (Container) | DBeaver 등 외부 툴 접속 포트 |
| **EM Express Port** | `39832` (Host) ➔ `5500` (Container) | Web EM 관리 포트 |
| **Service Name** | `FREEPDB1` | PDB 서비스명 (CDB$ROOT가 아님) |
| **SYS 관리자 계정** | User: `sys` / Pass: `leetj1485+` | Role: `SYSDBA` |
| **HR 샘플 계정** | User: `hr` / Pass: `hr1234` | 사원 데이터 107건 포함 계정 |
| **INFORM_NOTE 계정** | User: `INFORM_NOTE` / Pass: `leetj1485+` | 설비 다운 및 공지/인폼 노트 스키마 |
| **캐릭터셋** | `AL32UTF8` | UTF-8 한글 지원 |
