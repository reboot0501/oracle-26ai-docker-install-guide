# 🐳 Oracle 26ai Docker 실행 및 자동 설치 가이드

이 문서는 Oracle 26ai Free 데이터베이스 컨테이너 환경 설정 및 HR / INFORM_NOTE 샘플 스키마 자동 구축을 위한 가이드입니다.

> ⚠️ **필수 주의사항**: Oracle 26ai 이미지는 오라클 공식 레지스트리에서 제공되므로, **`docker compose up` 실행 전 레지스트리 로그인(STEP 1)**을 먼저 완료해야 합니다.

---

## ⚙️ 0. 환경 변수 설정 (`.env`)

프로젝트 루트에 `.env` 파일을 생성하고(또는 `.env.example` 복사), 필요한 환경 변수를 설정합니다:

```bash
# 1. 템플릿 복사하여 .env 생성
cp .env.example .env
```

`.env` 설정 예시:
```env
# Oracle Container Registry 인증 정보
ORACLE_REGISTRY_USER=your_oracle_email@domain.com
ORACLE_REGISTRY_TOKEN=your_oracle_auth_token

# Oracle Database 설정
ORACLE_PWD=YourSecurePassword123!
ORACLE_CHARACTERSET=AL32UTF8
ORACLE_PORT=1521
EM_EXPRESS_PORT=39832

# 스키마 계정 비밀번호 설정
HR_USER_PWD=hr1234
INFORM_NOTE_PWD=YourSecurePassword123!
```

---

## 🚀 1. 실행 절차 (Docker Compose 사용)

### STEP 1. 오라클 레지스트리 로그인 (최초 1회 필수)
```bash
docker login container-registry.oracle.com
```
* **Username**: `.env`에 설정한 `ORACLE_REGISTRY_USER` (오라클 계정 이메일/ID)
* **Password**: [Oracle Container Registry](https://container-registry.oracle.com/)에서 발급받은 `ORACLE_REGISTRY_TOKEN` (Auth Token)

---

### STEP 2. docker-compose.yml 구성 확인

`docker-compose.yml`은 `.env`의 환경 변수를 읽어와 구동됩니다:

```yaml
version: '3.8'

services:
  oracle26ai:
    image: container-registry.oracle.com/database/free:latest
    container_name: oracle26ai-free
    restart: unless-stopped
    ports:
      - "${ORACLE_PORT:-1521}:1521"   # PC의 1521 포트로 오라클 DB 리스너 바인딩
      - "${EM_EXPRESS_PORT:-39832}:5500"   # Enterprise Manager Express Port
    environment:
      - ORACLE_PWD=${ORACLE_PWD}
      - ORACLE_CHARACTERSET=${ORACLE_CHARACTERSET:-AL32UTF8}
      - HR_USER_PWD=${HR_USER_PWD:-hr1234}
      - INFORM_NOTE_PWD=${INFORM_NOTE_PWD:-${ORACLE_PWD}}
    volumes:
      # 1. HR 스키마 자동 생성 스크립트
      - ./setup_hr.sh:/opt/oracle/scripts/startup/01_setup_hr.sh:ro
      # 2. INFORM_NOTE 스키마 자동 생성 스크립트
      - ./setup_inform_note.sh:/opt/oracle/scripts/startup/02_setup_inform_note.sh:ro
      # 3. 샘플 스키마 SQL 파일 디렉토리
      - ./oracle-db-sample-schemas:/opt/oracle/sample-schemas:ro
      # 4. 데이터 영구 보존 볼륨
      - oracle26ai-oradata:/opt/oracle/oradata

volumes:
  oracle26ai-oradata:
    name: oracle26ai-oradata
```

---

### STEP 3. 컨테이너 실행 및 구동 로그 확인

```bash
# 1. 컨테이너 백그라운드 실행
docker compose up -d

# 2. 실시간 로그 확인
docker compose logs -f
```
* `DATABASE IS READY FOR USE` 및 각 스키마 setup finished 로그가 확인되면 DB 구동 및 초기화가 완료된 것입니다.

---

## 🔌 2. DB 접속 방법 (DBeaver & CLI)

### 1) DBeaver / 외부 SQL Client 접속 설정
* **Host**: `localhost`
* **Port**: `${ORACLE_PORT}` (기본: `1521`)
* **Database / Service Name**: `FREEPDB1`
* **SYS 관리자 계정**: User `sys` (Role: `SYSDBA`), Password `${ORACLE_PWD}`
* **HR 샘플 계정**: User `hr`, Password `${HR_USER_PWD}` (기본: `hr1234`)
* **INFORM_NOTE 계정**: User `INFORM_NOTE`, Password `${INFORM_NOTE_PWD}` (기본: `${ORACLE_PWD}`)

---

### 2) 컨테이너 내부 CLI 접속 확인
```bash
# 1. 컨테이너 내부 bash 접속
docker exec -it oracle26ai-free bash

# 2. HR 계정으로 SQL*Plus 접속
sqlplus hr/${HR_USER_PWD}@localhost:1521/FREEPDB1

# 3. INFORM_NOTE 계정으로 SQL*Plus 접속
sqlplus INFORM_NOTE/${INFORM_NOTE_PWD}@localhost:1521/FREEPDB1
```

---

## ⚠️ 3. 트러블슈팅: SYS 세션 전환 시 ORA-01017 해결법

SQL*Plus 접속 후 `CONN hr/...` 입력 시 `ORA-01017: invalid credential or not authorized` 에러가 발생하는 경우:

### ❓ 원인
오라클 멀티테넌트(CDB/PDB) 구조상 식별자 없이 접속하면 최상위 루트 DB(`CDB$ROOT`)로 접속을 시도하기 때문입니다.

### ✅ 해결 방법
1. **풀 접속 식별자 사용**: `CONN hr/${HR_USER_PWD}@localhost:1521/FREEPDB1`
2. **세션 컨테이너 전환 후 사용**:
```sql
ALTER SESSION SET CONTAINER = FREEPDB1;
ALTER SESSION SET CURRENT_SCHEMA = HR;
SELECT count(*) FROM employees;
```

---

## 🛠️ 4. 기타 관리 및 데이터 보존 옵션

### 1) 서비스 중지 (데이터 보존)
```bash
docker compose down
```

### 2) 데이터 완전 초기화 (재설치 필요 시)
```bash
docker compose down -v
```

---

## 📌 5. 주요 접속 정보 요약표

| 구 분 | 접속 정보 | 비 고 |
| :--- | :--- | :--- |
| **DB Listener Port** | `${ORACLE_PORT:-1521}` (Host) ➔ `1521` (Container) | DBeaver 등 외부 툴 접속 포트 |
| **EM Express Port** | `${EM_EXPRESS_PORT:-39832}` (Host) ➔ `5500` (Container) | Web EM 관리 포트 |
| **Service Name** | `FREEPDB1` | PDB 서비스명 |
| **SYS 관리자 계정** | User: `sys` / Pass: `${ORACLE_PWD}` | Role: `SYSDBA` |
| **HR 샘플 계정** | User: `hr` / Pass: `${HR_USER_PWD:-hr1234}` | 사원 데이터 107건 포함 |
| **INFORM_NOTE 계정** | User: `INFORM_NOTE` / Pass: `${INFORM_NOTE_PWD}` | 공지/인폼 노트 및 설비 다운 이벤트 스키마 |
| **캐릭터셋** | `${ORACLE_CHARACTERSET:-AL32UTF8}` | UTF-8 한글 지원 |
