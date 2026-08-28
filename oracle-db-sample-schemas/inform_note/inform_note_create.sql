-- =====================================================================
-- INFORM_NOTE 스키마 DDL 생성 스크립트
-- 대상: TB_REGIONS, TB_COUNTRIES, TB_LOCATIONS, TB_DEPARTMENTS,
--       TB_JOBS, TB_EMPLOYEES, TB_JOB_HISTORY, TB_EMP_DETAILS_VIEW,
--       TB_DOWN_EVENT_LOG, TB_DOWN_CONTENT
-- =====================================================================

SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 120
SET TRIMSPOOL ON
SET TAB OFF
SET PAGESIZE 100
SET ECHO OFF

-- ---------------------------------------------------------------------
-- 1. TB_REGIONS (지역 정보 테이블)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_REGIONS table ....

CREATE TABLE tb_regions (
    region_id      NUMBER CONSTRAINT nn_tb_reg_id NOT NULL,
    region_name    VARCHAR2(25)
);

CREATE UNIQUE INDEX pk_tb_regions ON tb_regions (region_id);

ALTER TABLE tb_regions
    ADD CONSTRAINT pk_tb_regions PRIMARY KEY (region_id);

COMMENT ON TABLE tb_regions IS '지역 번호 및 이름을 저장하는 테이블 (TB_COUNTRIES 테이블에서 참조)';
COMMENT ON COLUMN tb_regions.region_id IS '지역 고유 ID (PK)';
COMMENT ON COLUMN tb_regions.region_name IS '지역명';


-- ---------------------------------------------------------------------
-- 2. TB_COUNTRIES (국가 정보 테이블)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_COUNTRIES table ....

CREATE TABLE tb_countries (
    country_id     CHAR(2) CONSTRAINT nn_tb_countr_id NOT NULL,
    country_name   VARCHAR2(60),
    region_id      NUMBER,
    CONSTRAINT pk_tb_countries PRIMARY KEY (country_id)
) ORGANIZATION INDEX;

ALTER TABLE tb_countries
    ADD CONSTRAINT fk_tb_countr_reg FOREIGN KEY (region_id)
        REFERENCES tb_regions (region_id);

COMMENT ON TABLE tb_countries IS '국가 정보를 저장하는 테이블 (TB_LOCATIONS 테이블에서 참조)';
COMMENT ON COLUMN tb_countries.country_id IS '국가 고유 코드 2자리 (PK)';
COMMENT ON COLUMN tb_countries.country_name IS '국가명';
COMMENT ON COLUMN tb_countries.region_id IS '소속 지역 ID (FK: TB_REGIONS)';


-- ---------------------------------------------------------------------
-- 3. TB_LOCATIONS (위치/사업장 주소 테이블)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_LOCATIONS table ....

CREATE TABLE tb_locations (
    location_id    NUMBER(4) CONSTRAINT nn_tb_loc_id NOT NULL,
    street_address VARCHAR2(40),
    postal_code    VARCHAR2(12),
    city           VARCHAR2(30) CONSTRAINT nn_tb_loc_city NOT NULL,
    state_province VARCHAR2(25),
    country_id     CHAR(2)
);

CREATE UNIQUE INDEX pk_tb_locations ON tb_locations (location_id);

ALTER TABLE tb_locations
    ADD (
        CONSTRAINT pk_tb_locations PRIMARY KEY (location_id),
        CONSTRAINT fk_tb_loc_country FOREIGN KEY (country_id)
            REFERENCES tb_countries (country_id)
    );

-- 시퀀스 생성 (기본 3300부터 100씩 증가)
CREATE SEQUENCE seq_tb_locations
    START WITH 3300
    INCREMENT BY 100
    MAXVALUE 9900
    NOCACHE
    NOCYCLE;

CREATE INDEX idx_tb_loc_city ON tb_locations (city);
CREATE INDEX idx_tb_loc_state_province ON tb_locations (state_province);
CREATE INDEX idx_tb_loc_country_id ON tb_locations (country_id);

COMMENT ON TABLE tb_locations IS '사업장, 사무실, 공장 등의 위치 주소 정보 테이블';
COMMENT ON COLUMN tb_locations.location_id IS '위치 고유 ID (PK)';
COMMENT ON COLUMN tb_locations.street_address IS '상세 도로명 주소';
COMMENT ON COLUMN tb_locations.postal_code IS '우편번호';
COMMENT ON COLUMN tb_locations.city IS '도시명 (NOT NULL)';
COMMENT ON COLUMN tb_locations.state_province IS '주/도';
COMMENT ON COLUMN tb_locations.country_id IS '소속 국가 코드 (FK: TB_COUNTRIES)';


-- ---------------------------------------------------------------------
-- 4. TB_DEPARTMENTS (부서 테이블)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_DEPARTMENTS table ....

CREATE TABLE tb_departments (
    department_id    NUMBER(4) CONSTRAINT nn_tb_dept_id NOT NULL,
    department_name  VARCHAR2(30) CONSTRAINT nn_tb_dept_name NOT NULL,
    manager_id       NUMBER(6),
    location_id      NUMBER(4)
);

CREATE UNIQUE INDEX pk_tb_departments ON tb_departments (department_id);

ALTER TABLE tb_departments
    ADD (
        CONSTRAINT pk_tb_departments PRIMARY KEY (department_id),
        CONSTRAINT fk_tb_dept_loc FOREIGN KEY (location_id)
            REFERENCES tb_locations (location_id)
    );

-- 시퀀스 생성 (기본 280부터 10씩 증가)
CREATE SEQUENCE seq_tb_departments
    START WITH 280
    INCREMENT BY 10
    MAXVALUE 9990
    NOCACHE
    NOCYCLE;

CREATE INDEX idx_tb_dept_location ON tb_departments (location_id);

COMMENT ON TABLE tb_departments IS '조직 내 부서 정보를 관리하는 테이블';
COMMENT ON COLUMN tb_departments.department_id IS '부서 고유 ID (PK)';
COMMENT ON COLUMN tb_departments.department_name IS '부서명 (NOT NULL)';
COMMENT ON COLUMN tb_departments.manager_id IS '부서장 사번 (FK: TB_EMPLOYEES)';
COMMENT ON COLUMN tb_departments.location_id IS '부서 위치 ID (FK: TB_LOCATIONS)';


-- ---------------------------------------------------------------------
-- 5. TB_JOBS (직무/직책 테이블)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_JOBS table ....

CREATE TABLE tb_jobs (
    job_id         VARCHAR2(10) CONSTRAINT nn_tb_job_id NOT NULL,
    job_title      VARCHAR2(35) CONSTRAINT nn_tb_job_title NOT NULL,
    min_salary     NUMBER(6),
    max_salary     NUMBER(6)
);

CREATE UNIQUE INDEX pk_tb_jobs ON tb_jobs (job_id);

ALTER TABLE tb_jobs
    ADD CONSTRAINT pk_tb_jobs PRIMARY KEY (job_id);

COMMENT ON TABLE tb_jobs IS '직무/직책 및 급여 범위를 관리하는 테이블';
COMMENT ON COLUMN tb_jobs.job_id IS '직무 코드 (PK)';
COMMENT ON COLUMN tb_jobs.job_title IS '직무명 (NOT NULL)';
COMMENT ON COLUMN tb_jobs.min_salary IS '최소 급여';
COMMENT ON COLUMN tb_jobs.max_salary IS '최대 급여';


-- ---------------------------------------------------------------------
-- 6. TB_EMPLOYEES (임직원 테이블)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_EMPLOYEES table ....

CREATE TABLE tb_employees (
    employee_id    NUMBER(6) CONSTRAINT nn_tb_emp_id NOT NULL,
    emp_no         VARCHAR2(50),
    shift          VARCHAR2(2),
    first_name     VARCHAR2(20),
    last_name      VARCHAR2(25) CONSTRAINT nn_tb_emp_last_name NOT NULL,
    name           VARCHAR2(50),
    email          VARCHAR2(25) CONSTRAINT nn_tb_emp_email NOT NULL,
    phone_number   VARCHAR2(20),
    hire_date      DATE CONSTRAINT nn_tb_emp_hire_date NOT NULL,
    job_id         VARCHAR2(10) CONSTRAINT nn_tb_emp_job_id NOT NULL,
    salary         NUMBER(8,2),
    commission_pct NUMBER(2,2),
    manager_id     NUMBER(6),
    department_id  NUMBER(4),
    CONSTRAINT ck_tb_emp_salary_min CHECK (salary > 0),
    CONSTRAINT uk_tb_emp_email UNIQUE (email)
);

CREATE UNIQUE INDEX pk_tb_employees ON tb_employees (employee_id);

ALTER TABLE tb_employees
    ADD (
        CONSTRAINT pk_tb_employees PRIMARY KEY (employee_id),
        CONSTRAINT fk_tb_emp_dept FOREIGN KEY (department_id)
            REFERENCES tb_departments (department_id),
        CONSTRAINT fk_tb_emp_job FOREIGN KEY (job_id)
            REFERENCES tb_jobs (job_id),
        CONSTRAINT fk_tb_emp_manager FOREIGN KEY (manager_id)
            REFERENCES tb_employees (employee_id)
    );

-- TB_DEPARTMENTS의 MANAGER_ID 외래키 추가 (상호 참조)
ALTER TABLE tb_departments
    ADD CONSTRAINT fk_tb_dept_mgr FOREIGN KEY (manager_id)
        REFERENCES tb_employees (employee_id);

-- 시퀀스 생성 (기본 225부터 1씩 증가)
CREATE SEQUENCE seq_tb_employees
    START WITH 225
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

CREATE INDEX idx_tb_emp_department ON tb_employees (department_id);
CREATE INDEX idx_tb_emp_job ON tb_employees (job_id);
CREATE INDEX idx_tb_emp_manager ON tb_employees (manager_id);
CREATE INDEX idx_tb_emp_name ON tb_employees (last_name, first_name);

COMMENT ON TABLE tb_employees IS '사원 및 임직원 상세 인적 정보를 관리하는 테이블';
COMMENT ON COLUMN tb_employees.employee_id IS '사원 번호 (PK)';
COMMENT ON COLUMN tb_employees.emp_no IS '사원 번호 문자열';
COMMENT ON COLUMN tb_employees.shift IS '근무조/교대조 (A/B/C)';
COMMENT ON COLUMN tb_employees.first_name IS '이름';
COMMENT ON COLUMN tb_employees.last_name IS '성 (NOT NULL)';
COMMENT ON COLUMN tb_employees.name IS '성명 (영문: First Last, 한글: 성+이름)';
COMMENT ON COLUMN tb_employees.email IS '이메일 계정 (UNIQUE, NOT NULL)';
COMMENT ON COLUMN tb_employees.phone_number IS '전화번호';
COMMENT ON COLUMN tb_employees.hire_date IS '입사 일자 (NOT NULL)';
COMMENT ON COLUMN tb_employees.job_id IS '담당 직무 코드 (FK: TB_JOBS)';
COMMENT ON COLUMN tb_employees.salary IS '월 급여 (양수)';
COMMENT ON COLUMN tb_employees.commission_pct IS '커미션/수수료 비율 (영업직군 전용)';
COMMENT ON COLUMN tb_employees.manager_id IS '직속 관리자(상사) 사번 (FK: TB_EMPLOYEES)';
COMMENT ON COLUMN tb_employees.department_id IS '소속 부서 번호 (FK: TB_DEPARTMENTS)';


-- ---------------------------------------------------------------------
-- 7. TB_JOB_HISTORY (직무/부서 변경 이력 테이블)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_JOB_HISTORY table ....

CREATE TABLE tb_job_history (
    employee_id   NUMBER(6) CONSTRAINT nn_tb_jhist_emp_id NOT NULL,
    start_date    DATE CONSTRAINT nn_tb_jhist_start_date NOT NULL,
    end_date      DATE CONSTRAINT nn_tb_jhist_end_date NOT NULL,
    job_id        VARCHAR2(10) CONSTRAINT nn_tb_jhist_job_id NOT NULL,
    department_id NUMBER(4),
    CONSTRAINT ck_tb_jhist_date_interval CHECK (end_date > start_date)
);

CREATE UNIQUE INDEX pk_tb_job_history ON tb_job_history (employee_id, start_date);

ALTER TABLE tb_job_history
    ADD (
        CONSTRAINT pk_tb_job_history PRIMARY KEY (employee_id, start_date),
        CONSTRAINT fk_tb_jhist_job FOREIGN KEY (job_id)
            REFERENCES tb_jobs (job_id),
        CONSTRAINT fk_tb_jhist_emp FOREIGN KEY (employee_id)
            REFERENCES tb_employees (employee_id),
        CONSTRAINT fk_tb_jhist_dept FOREIGN KEY (department_id)
            REFERENCES tb_departments (department_id)
    );

CREATE INDEX idx_tb_jhist_job ON tb_job_history (job_id);
CREATE INDEX idx_tb_jhist_emp ON tb_job_history (employee_id);
CREATE INDEX idx_tb_jhist_dept ON tb_job_history (department_id);

COMMENT ON TABLE tb_job_history IS '임직원의 과거 직무 및 소속 부서 변경 이력 관리 테이블';
COMMENT ON COLUMN tb_job_history.employee_id IS '사원 번호 (PK, FK: TB_EMPLOYEES)';
COMMENT ON COLUMN tb_job_history.start_date IS '해당 직무 시작 일자 (PK)';
COMMENT ON COLUMN tb_job_history.end_date IS '해당 직무 종료 일자 (NOT NULL)';
COMMENT ON COLUMN tb_job_history.job_id IS '과거 수행 직무 코드 (FK: TB_JOBS)';
COMMENT ON COLUMN tb_job_history.department_id IS '과거 소속 부서 번호 (FK: TB_DEPARTMENTS)';


-- ---------------------------------------------------------------------
-- 8. TB_EMP_DETAILS_VIEW (임직원 상세 통합 조회 뷰)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_EMP_DETAILS_VIEW view ...

CREATE OR REPLACE VIEW tb_emp_details_view
  (employee_id,
   emp_no,
   shift,
   job_id,
   manager_id,
   department_id,
   location_id,
   country_id,
   first_name,
   last_name,
   name,
   salary,
   commission_pct,
   department_name,
   job_title,
   city,
   state_province,
   country_name,
   region_name)
AS SELECT
  e.employee_id, 
  e.emp_no,
  e.shift,
  e.job_id, 
  e.manager_id, 
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  tb_employees e,
  tb_departments d,
  tb_jobs j,
  tb_locations l,
  tb_countries c,
  tb_regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id 
WITH READ ONLY;

COMMENT ON TABLE tb_emp_details_view IS '사원, 부서, 직무, 위치, 국가, 지역 테이블 조인 상세 조회 뷰';


-- ---------------------------------------------------------------------
-- 9. 프로시저 및 트리거 (비즈니스 로직 및 이력 관리)
-- ---------------------------------------------------------------------
Prompt ******  Creating Procedures and Triggers ...

-- 업무 시간 외 DML 방지 프로시저
CREATE OR REPLACE PROCEDURE secure_dml
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
    RAISE_APPLICATION_ERROR (-20205, 
      'You may only make changes during normal office hours');
  END IF;
END secure_dml;
/

-- 임직원 테이블 DML 보안 트리거 (기본 비활성화)
CREATE OR REPLACE TRIGGER trg_secure_tb_employees
  BEFORE INSERT OR UPDATE OR DELETE ON tb_employees
BEGIN
  secure_dml;
END trg_secure_tb_employees;
/

ALTER TRIGGER trg_secure_tb_employees DISABLE;

-- 직무/부서 변경 이력 자동 기록 프로시저
CREATE OR REPLACE PROCEDURE add_tb_job_history
  (  p_emp_id          tb_job_history.employee_id%type
   , p_start_date      tb_job_history.start_date%type
   , p_end_date        tb_job_history.end_date%type
   , p_job_id          tb_job_history.job_id%type
   , p_department_id   tb_job_history.department_id%type 
   )
IS
BEGIN
  INSERT INTO tb_job_history (employee_id, start_date, end_date, 
                              job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_tb_job_history;
/

-- 사원 테이블 직무/부서 변경 시 이력 자동 적재 트리거
CREATE OR REPLACE TRIGGER trg_update_tb_job_history
  AFTER UPDATE OF job_id, department_id ON tb_employees
  FOR EACH ROW
BEGIN
  add_tb_job_history(:old.employee_id, :old.hire_date, sysdate, 
                     :old.job_id, :old.department_id);
END trg_update_tb_job_history;
/


-- ---------------------------------------------------------------------
-- 10. TB_DOWN_EVENT_LOG (다운 이벤트 로그 메인 테이블)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_DOWN_EVENT_LOG table ....

CREATE TABLE IF NOT EXISTS tb_down_event_log (
    down_event_id           VARCHAR2(50)            NOT NULL,
    equipment_id            VARCHAR2(50)            NOT NULL,
    chamber_id              VARCHAR2(50),
    fabrication_plant       VARCHAR2(30)            NOT NULL, -- Enum: FabricationPlant
    process_module          VARCHAR2(30)            NOT NULL, -- Enum: ProcessModule
    equipment_model         VARCHAR2(50)            NOT NULL, -- Enum: EquipmentModel
    down_type               VARCHAR2(30)            NOT NULL, -- Enum: DownType
    work_status             VARCHAR2(30)            NOT NULL, -- Enum: WorkStatus
    down_start_datetime     NUMBER(19)              NOT NULL, -- long (Epoch ms)
    down_end_datetime       NUMBER(19),                       -- long (Epoch ms)
    down_duration_minutes   NUMBER(10),                       -- long
    is_critical             BOOLEAN DEFAULT FALSE   NOT NULL,
    down_code               VARCHAR2(50)            NOT NULL,
    down_code_description   VARCHAR2(500),
    alarm_id                VARCHAR2(50),
    assigned_technician     JSON,                             -- VO 객체: AssignedTechnician
    approver                JSON,                             -- VO 객체: Approver
    part_replacements       JSON,                             -- List<PartReplacement> 배열
    created_by              VARCHAR2(50),
    created_at              TIMESTAMP WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL,
    updated_by              VARCHAR2(50),
    updated_at              TIMESTAMP WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL
);

-- 기본키(PK) 제약조건 추가
ALTER TABLE tb_down_event_log
    ADD CONSTRAINT pk_down_event_log PRIMARY KEY (down_event_id);

-- 공장/모듈/상태 및 기간 검색 복합 인덱스
CREATE INDEX idx_down_event_search 
    ON tb_down_event_log (fabrication_plant, process_module, work_status, down_start_datetime DESC);

-- 장비/챔버별 기간 이력 조회 인덱스
CREATE INDEX idx_down_event_eqp_hist 
    ON tb_down_event_log (equipment_id, chamber_id, down_start_datetime DESC);

-- 다운 코드/타입별 통계 인덱스
CREATE INDEX idx_down_event_code 
    ON tb_down_event_log (down_code, down_type);

-- [VO 객체 인덱스] 담당 엔지니어 사번(empNo) B-Tree 인덱스
CREATE INDEX idx_json_tech_id 
    ON tb_down_event_log (JSON_VALUE(assigned_technician, '$.empNo' RETURNING VARCHAR2(50)));

-- [List<객체> 다중값 인덱스] 교체 부품 번호 배열 인덱스 ★
CREATE MULTIVALUE INDEX idx_json_part_no 
    ON tb_down_event_log d (d.part_replacements.partNo);

-- [List<객체> 다중값 인덱스] 교체 부품명 배열 인덱스 ★
CREATE MULTIVALUE INDEX idx_json_part_name 
    ON tb_down_event_log d (d.part_replacements.partName);

-- [List<객체> 다중값 인덱스] 교체/자재 구분(replacementType) 배열 인덱스 ★
CREATE MULTIVALUE INDEX idx_json_part_repl_type 
    ON tb_down_event_log d (d.part_replacements.replacementType);

-- [JSON 통합 검색 인덱스] 부품 교체 상세 내역 풀 텍스트 검색용 Search Index
CREATE SEARCH INDEX idx_down_event_parts_search 
    ON tb_down_event_log (part_replacements) FOR JSON;

-- 테이블 코멘트 추가
COMMENT ON TABLE tb_down_event_log IS '설비 다운 이벤트 로그 및 상세 정보';

-- 컬럼 코멘트 추가
COMMENT ON COLUMN tb_down_event_log.down_event_id IS '다운 이벤트 고유 ID (PK)';
COMMENT ON COLUMN tb_down_event_log.equipment_id IS '장비 고유 ID';
COMMENT ON COLUMN tb_down_event_log.chamber_id IS '챔버 고유 ID';
COMMENT ON COLUMN tb_down_event_log.fabrication_plant IS 'FAB 코드 (Enum: FabricationPlant)';
COMMENT ON COLUMN tb_down_event_log.process_module IS '공정 모듈 (Enum: ProcessModule)';
COMMENT ON COLUMN tb_down_event_log.equipment_model IS '장비 모델 (Enum: EquipmentModel)';
COMMENT ON COLUMN tb_down_event_log.down_type IS '다운 종류 (Enum: DownType)';
COMMENT ON COLUMN tb_down_event_log.work_status IS '작업 진행 상태 (Enum: WorkStatus)';
COMMENT ON COLUMN tb_down_event_log.down_start_datetime IS '다운 시작 일시 (Epoch ms)';
COMMENT ON COLUMN tb_down_event_log.down_end_datetime IS '다운 복구 일시 (Epoch ms)';
COMMENT ON COLUMN tb_down_event_log.down_duration_minutes IS '다운 지속 시간 (분 단위)';
COMMENT ON COLUMN tb_down_event_log.is_critical IS '심각 다운 여부 (Oracle Native BOOLEAN)';
COMMENT ON COLUMN tb_down_event_log.down_code IS '다운 코드';
COMMENT ON COLUMN tb_down_event_log.down_code_description IS '다운 코드 상세 설명';
COMMENT ON COLUMN tb_down_event_log.alarm_id IS '알람 ID';
COMMENT ON COLUMN tb_down_event_log.assigned_technician IS '담당 엔지니어 정보 (JSON VO 객체: AssignedTechnician)';
COMMENT ON COLUMN tb_down_event_log.approver IS '결재자 정보 (JSON VO 객체: Approver)';
COMMENT ON COLUMN tb_down_event_log.part_replacements IS '교체 부품 목록 (JSON List<PartReplacement> 배열)';
COMMENT ON COLUMN tb_down_event_log.created_by IS '최초 등록자 사번/ID';
COMMENT ON COLUMN tb_down_event_log.created_at IS '최초 등록 일시';
COMMENT ON COLUMN tb_down_event_log.updated_by IS '최종 수정자 사번/ID';
COMMENT ON COLUMN tb_down_event_log.updated_at IS '최종 수정 일시';


-- ---------------------------------------------------------------------
-- 11. TB_DOWN_CONTENT (현상 및 조치 상세 본문 테이블)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_DOWN_CONTENT table ....

CREATE TABLE IF NOT EXISTS tb_down_content (
    down_event_id       VARCHAR2(50)                                    NOT NULL,
    content_html        CLOB                                            NULL,
    created_by          VARCHAR2(50),
    created_at          TIMESTAMP WITH TIME ZONE DEFAULT SYSTIMESTAMP   NOT NULL,
    updated_by          VARCHAR2(50),
    updated_at          TIMESTAMP WITH TIME ZONE DEFAULT SYSTIMESTAMP   NOT NULL
)
LOB (content_html) STORE AS SECUREFILE (
    ENABLE STORAGE IN ROW
    CHUNK 8192
    RETENTION
    CACHE
);

-- 기본키(PK) 제약조건 추가
ALTER TABLE tb_down_content
    ADD CONSTRAINT pk_down_content PRIMARY KEY (down_event_id);

-- 외래키(FK) 제약조건 추가 (부모 테이블 삭제 시 자동 연쇄 삭제)
ALTER TABLE tb_down_content
    ADD CONSTRAINT fk_down_content_event 
        FOREIGN KEY (down_event_id) 
        REFERENCES tb_down_event_log (down_event_id) 
        ON DELETE CASCADE;

-- 테이블 코멘트 추가
COMMENT ON TABLE tb_down_content IS '설비 다운 현상 및 조치 상세 Froala HTML 본문 테이블';

-- 컬럼 코멘트 등록
COMMENT ON COLUMN tb_down_content.down_event_id IS '다운 이벤트 고유 ID (PK, FK)';
COMMENT ON COLUMN tb_down_content.content_html  IS 'Froala 에디터 작성 HTML 본문 (이미지 경로/표 포함)';
COMMENT ON COLUMN tb_down_content.created_by    IS '최초 등록자 사번/ID';
COMMENT ON COLUMN tb_down_content.created_at    IS '최초 등록 일시';
COMMENT ON COLUMN tb_down_content.updated_by    IS '최종 수정자 사번/ID';
COMMENT ON COLUMN tb_down_content.updated_at    IS '최종 수정 일시';

-- ---------------------------------------------------------------------
-- 12. TB_ATTACHED_FILE (통합 첨부파일 및 에디터 인라인 이미지 메타데이터 테이블)
-- ---------------------------------------------------------------------
Prompt ******  Creating TB_ATTACHED_FILE table ....

CREATE TABLE IF NOT EXISTS tb_attached_file (
    file_id             VARCHAR2(50)                                    NOT NULL, -- 고유 파일 ID (UUID)
    ref_type            VARCHAR2(30)                                    NOT NULL, -- 참조 도메인 (DOWN_CONTENT_INLINE, DOWN_ATTACHMENT 등)
    ref_id              VARCHAR2(50)                                    NULL,     -- 연관 ID (down_event_id, 업로드 초기에는 NULL)
    origin_file_name    VARCHAR2(300)                                   NOT NULL, -- 사용자가 올린 원래 파일명
    stored_file_name    VARCHAR2(300)                                   NOT NULL, -- 디스크/S3에 저장된 난수화 파일명 (UUID.ext)
    file_path           VARCHAR2(500)                                   NOT NULL, -- 저장 경로 또는 S3 Object Key
    file_size           NUMBER(19)                                      NOT NULL, -- 파일 크기 (Bytes)
    content_type        VARCHAR2(100)                                   NOT NULL, -- MIME Type (image/png, application/pdf 등)
    file_status         VARCHAR2(20) DEFAULT 'TEMP'                     NOT NULL, -- 상태 (TEMP: 임시, SAVED: 저장/확정, DELETED: 삭제)
    created_by          VARCHAR2(50),
    created_at          TIMESTAMP WITH TIME ZONE DEFAULT SYSTIMESTAMP   NOT NULL,
    updated_by          VARCHAR2(50),
    updated_at          TIMESTAMP WITH TIME ZONE DEFAULT SYSTIMESTAMP   NOT NULL
);

-- PK 및 인덱스
ALTER TABLE tb_attached_file ADD CONSTRAINT pk_attached_file PRIMARY KEY (file_id);
CREATE INDEX idx_attached_file_ref ON tb_attached_file (ref_type, ref_id);
CREATE INDEX idx_attached_file_status ON tb_attached_file (file_status, created_at);

-- 코멘트
COMMENT ON TABLE tb_attached_file IS '통합 첨부파일 및 에디터 인라인 이미지 메타데이터 테이블';
COMMENT ON COLUMN tb_attached_file.file_id IS '파일 고유 ID (UUID)';
COMMENT ON COLUMN tb_attached_file.ref_type IS '연관 업무 구분 (예: DOWN_CONTENT_INLINE)';
COMMENT ON COLUMN tb_attached_file.ref_id IS '연관 마스터 ID (down_event_id)';
COMMENT ON COLUMN tb_attached_file.file_status IS '파일 상태 (TEMP / SAVED / DELETED)';

COMMIT;