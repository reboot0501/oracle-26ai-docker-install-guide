-- =====================================================================
-- INFORM_NOTE Schema HR Based Table Data Populate Script
-- Target Tables: TB_REGIONS, TB_COUNTRIES, TB_LOCATIONS, TB_DEPARTMENTS,
--                TB_JOBS, TB_EMPLOYEES, TB_JOB_HISTORY,
--                TB_DOWN_EVENT_LOG, TB_DOWN_CONTENT
-- =====================================================================

SET VERIFY OFF
ALTER SESSION SET NLS_LANGUAGE=American;
REM *************************** insert data into the REGIONS table

Prompt ****** Populating TB_REGIONS table ....

BEGIN
  INSERT INTO tb_regions VALUES
      ( 10
      , 'Europe'
      );

  INSERT INTO tb_regions VALUES
      ( 20
      , 'Americas'
      );

  INSERT INTO tb_regions VALUES
      ( 30
      , 'Asia'
      );

  INSERT INTO tb_regions VALUES
      ( 40
      , 'Oceania'
      );

  INSERT INTO tb_regions VALUES
      ( 50
      , 'Africa'
      );
END;
/

REM *************************** insert data into the COUNTRIES table

Prompt ****** Populating TB_COUNTRIES table ....

BEGIN
  INSERT INTO tb_countries VALUES
      ( 'IT'
      , 'Italy'
      , 10
      );

  INSERT INTO tb_countries VALUES
      ( 'JP'
      , 'Japan'
      , 30
      );

  INSERT INTO tb_countries VALUES
      ( 'US'
      , 'United States of America'
      , 20
      );

  INSERT INTO tb_countries VALUES
      ( 'CA'
      , 'Canada'
      , 20
      );

  INSERT INTO tb_countries VALUES
      ( 'CN'
      , 'China'
      , 30
      );

  INSERT INTO tb_countries VALUES
      ( 'IN'
      , 'India'
      , 30
      );

  INSERT INTO tb_countries VALUES
      ( 'AU'
      , 'Australia'
      , 40
      );

  INSERT INTO tb_countries VALUES
      ( 'ZW'
      , 'Zimbabwe'
      , 50
      );

  INSERT INTO tb_countries VALUES
      ( 'SG'
      , 'Singapore'
      , 30
      );

  INSERT INTO tb_countries VALUES
      ( 'GB'
      , 'United Kingdom of Great Britain and Northern Ireland'
      , 10
      );

  INSERT INTO tb_countries VALUES
      ( 'FR'
      , 'France'
      , 10
      );

  INSERT INTO tb_countries VALUES
      ( 'DE'
      , 'Germany'
      , 10
      );

  INSERT INTO tb_countries VALUES
      ( 'ZM'
      , 'Zambia'
      , 50
      );

  INSERT INTO tb_countries VALUES
      ( 'EG'
      , 'Egypt'
      , 50
      );

  INSERT INTO tb_countries VALUES
      ( 'BR'
      , 'Brazil'
      , 20
      );

  INSERT INTO tb_countries VALUES
      ( 'CH'
      , 'Switzerland'
      , 10
      );

  INSERT INTO tb_countries VALUES
      ( 'NL'
      , 'Netherlands'
      , 10
      );

  INSERT INTO tb_countries VALUES
      ( 'MX'
      , 'Mexico'
      , 20
      );

  INSERT INTO tb_countries VALUES
      ( 'KW'
      , 'Kuwait'
      , 30
      );

  INSERT INTO tb_countries VALUES
      ( 'IL'
      , 'Israel'
      , 30
      );

  INSERT INTO tb_countries VALUES
      ( 'DK'
      , 'Denmark'
      , 10
      );

  INSERT INTO tb_countries VALUES
      ( 'ML'
      , 'Malaysia'
      , 30
      );

  INSERT INTO tb_countries VALUES
      ( 'NG'
      , 'Nigeria'
      , 50
      );

  INSERT INTO tb_countries VALUES
      ( 'AR'
      , 'Argentina'
      , 20
      );

  INSERT INTO tb_countries VALUES
      ( 'BE'
      , 'Belgium'
      , 10
      );
END;
/


REM *************************** insert data into the LOCATIONS table

Prompt ****** Populating TB_LOCATIONS table ....

BEGIN
  INSERT INTO tb_locations VALUES
      ( 1000
      , '1297 Via Cola di Rie'
      , '00989'
      , 'Roma'
      , NULL
      , 'IT'
      );

  INSERT INTO tb_locations VALUES
      ( 1100
      , '93091 Calle della Testa'
      , '10934'
      , 'Venice'
      , NULL
      , 'IT'
      );

  INSERT INTO tb_locations VALUES
      ( 1200
      , '2017 Shinjuku-ku'
      , '1689'
      , 'Tokyo'
      , 'Tokyo Prefecture'
      , 'JP'
      );

  INSERT INTO tb_locations VALUES
      ( 1300
      , '9450 Kamiya-cho'
      , '6823'
      , 'Hiroshima'
      , NULL
      , 'JP'
      );

  INSERT INTO tb_locations VALUES
      ( 1400
      , '2014 Jabberwocky Rd'
      , '26192'
      , 'Southlake'
      , 'Texas'
      , 'US'
      );

  INSERT INTO tb_locations VALUES
      ( 1500
      , '2011 Interiors Blvd'
      , '99236'
      , 'South San Francisco'
      , 'California'
      , 'US'
      );

  INSERT INTO tb_locations VALUES
      ( 1600
      , '2007 Zagora St'
      , '50090'
      , 'South Brunswick'
      , 'New Jersey'
      , 'US'
      );

  INSERT INTO tb_locations VALUES
      ( 1700
      , '2004 Charade Rd'
      , '98199'
      , 'Seattle'
      , 'Washington'
      , 'US'
      );

  INSERT INTO tb_locations VALUES
      ( 1800
      , '147 Spadina Ave'
      , 'M5V 2L7'
      , 'Toronto'
      , 'Ontario'
      , 'CA'
      );

  INSERT INTO tb_locations VALUES
      ( 1900
      , '6092 Boxwood St'
      , 'YSW 9T2'
      , 'Whitehorse'
      , 'Yukon'
      , 'CA'
      );

  INSERT INTO tb_locations VALUES
      ( 2000
      , '40-5-12 Laogianggen'
      , '190518'
      , 'Beijing'
      , NULL
      , 'CN'
      );

  INSERT INTO tb_locations VALUES
      ( 2100
      , '1298 Vileparle (E)'
      , '490231'
      , 'Bombay'
      , 'Maharashtra'
      , 'IN'
      );

  INSERT INTO tb_locations VALUES
      ( 2200
      , '12-98 Victoria Street'
      , '2901'
      , 'Sydney'
      , 'New South Wales'
      , 'AU'
      );

  INSERT INTO tb_locations VALUES
      ( 2300
      , '198 Clementi North'
      , '540198'
      , 'Singapore'
      , NULL
      , 'SG'
      );

  INSERT INTO tb_locations VALUES
      ( 2400
      , '8204 Arthur St'
      , NULL
      , 'London'
      , NULL
      , 'GB'
      );

  INSERT INTO tb_locations VALUES
      ( 2500
      , 'Magdalen Centre, The Oxford Science Park'
      , 'OX9 9ZB'
      , 'Oxford'
      , 'Oxford'
      , 'GB'
      );

  INSERT INTO tb_locations VALUES
      ( 2600
      , '9702 Chester Road'
      , '09629850293'
      , 'Stretford'
      , 'Manchester'
      , 'GB'
      );

  INSERT INTO tb_locations VALUES
      ( 2700
      , 'Schwanthalerstr. 7031'
      , '80925'
      , 'Munich'
      , 'Bavaria'
      , 'DE'
      );

  INSERT INTO tb_locations VALUES
      ( 2800
      , 'Rua Frei Caneca 1360 '
      , '01307-002'
      , 'Sao Paulo'
      , 'Sao Paulo'
      , 'BR'
      );

  INSERT INTO tb_locations VALUES
      ( 2900
      , '20 Rue des Corps-Saints'
      , '1730'
      , 'Geneva'
      , 'Geneve'
      , 'CH'
      );

  INSERT INTO tb_locations VALUES
      ( 3000
      , 'Murtenstrasse 921'
      , '3095'
      , 'Bern'
      , 'BE'
      , 'CH'
      );

  INSERT INTO tb_locations VALUES
      ( 3100
      , 'Pieter Breughelstraat 837'
      , '3029SK'
      , 'Utrecht'
      , 'Utrecht'
      , 'NL'
      );

  INSERT INTO tb_locations VALUES
      ( 3200
      , 'Mariano Escobedo 9991'
      , '11932'
      , 'Mexico City'
      , 'Distrito Federal'
      , 'MX'
      );
END;
/


REM **************************** insert data into the DEPARTMENTS table

Prompt ****** Populating TB_DEPARTMENTS table ....

REM disable integrity constraint to EMPLOYEES to load data

ALTER TABLE tb_departments DISABLE CONSTRAINT fk_tb_dept_mgr;

BEGIN
  INSERT INTO tb_departments VALUES
      ( 10
      , 'Administration'
      , 200
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 20
      , 'Marketing'
      , 201
      , 1800
      );

  INSERT INTO tb_departments VALUES
      ( 30
      , 'Purchasing'
      , 114
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 40
      , 'Human Resources'
      , 203
      , 2400
      );

  INSERT INTO tb_departments VALUES
      ( 50
      , 'Shipping'
      , 121
      , 1500
      );

  INSERT INTO tb_departments VALUES
      ( 60
      , 'IT'
      , 103
      , 1400
      );

  INSERT INTO tb_departments VALUES
      ( 70
      , 'Public Relations'
      , 204
      , 2700
      );

  INSERT INTO tb_departments VALUES
      ( 80
      , 'Sales'
      , 145
      , 2500
      );

  INSERT INTO tb_departments VALUES
      ( 90
      , 'Executive'
      , 100
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 100
      , 'Finance'
      , 108
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 110
      , 'Accounting'
      , 205
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 120
      , 'Treasury'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 130
      , 'Corporate Tax'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 140
      , 'Control And Credit'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 150
      , 'Shareholder Services'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 160
      , 'Benefits'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 170
      , 'Manufacturing'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 180
      , 'Construction'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 190
      , 'Contracting'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 200
      , 'Operations'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 210
      , 'IT Support'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 220
      , 'NOC'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 230
      , 'IT Helpdesk'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 240
      , 'Government Sales'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 250
      , 'Retail Sales'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 260
      , 'Recruiting'
      , NULL
      , 1700
      );

  INSERT INTO tb_departments VALUES
      ( 270
      , 'Payroll'
      , NULL
      , 1700
      );
END;
/

REM *************************** insert data into the JOBS table

Prompt ****** Populating TB_JOBS table ....

BEGIN
  INSERT INTO tb_jobs VALUES
      ( 'AD_PRES'
      , 'President'
      , 20080
      , 40000
      );
  INSERT INTO tb_jobs VALUES
      ( 'AD_VP'
      , 'Administration Vice President'
      , 15000
      , 30000
      );

  INSERT INTO tb_jobs VALUES
      ( 'AD_ASST'
      , 'Administration Assistant'
      , 3000
      , 6000
      );

  INSERT INTO tb_jobs VALUES
      ( 'FI_MGR'
      , 'Finance Manager'
      , 8200
      , 16000
      );

  INSERT INTO tb_jobs VALUES
      ( 'FI_ACCOUNT'
      , 'Accountant'
      , 4200
      , 9000
      );

  INSERT INTO tb_jobs VALUES
      ( 'AC_MGR'
      , 'Accounting Manager'
      , 8200
      , 16000
      );

  INSERT INTO tb_jobs VALUES
      ( 'AC_ACCOUNT'
      , 'Public Accountant'
      , 4200
      , 9000
      );
  INSERT INTO tb_jobs VALUES
      ( 'SA_MAN'
      , 'Sales Manager'
      , 10000
      , 20080
      );

  INSERT INTO tb_jobs VALUES
      ( 'SA_REP'
      , 'Sales Representative'
      , 6000
      , 12008
      );

  INSERT INTO tb_jobs VALUES
      ( 'PU_MAN'
      , 'Purchasing Manager'
      , 8000
      , 15000
      );

  INSERT INTO tb_jobs VALUES
      ( 'PU_CLERK'
      , 'Purchasing Clerk'
      , 2500
      , 5500
      );

  INSERT INTO tb_jobs VALUES
      ( 'ST_MAN'
      , 'Stock Manager'
      , 5500
      , 8500
      );
  INSERT INTO tb_jobs VALUES
      ( 'ST_CLERK'
      , 'Stock Clerk'
      , 2008
      , 5000
      );

  INSERT INTO tb_jobs VALUES
      ( 'SH_CLERK'
      , 'Shipping Clerk'
      , 2500
      , 5500
      );

  INSERT INTO tb_jobs VALUES
      ( 'IT_PROG'
      , 'Programmer'
      , 4000
      , 10000
      );

  INSERT INTO tb_jobs VALUES
      ( 'MK_MAN'
      , 'Marketing Manager'
      , 9000
      , 15000
      );

  INSERT INTO tb_jobs VALUES
      ( 'MK_REP'
      , 'Marketing Representative'
      , 4000
      , 9000
      );

  INSERT INTO tb_jobs VALUES
      ( 'HR_REP'
      , 'Human Resources Representative'
      , 4000
      , 9000
      );

  INSERT INTO tb_jobs VALUES
      ( 'PR_REP'
      , 'Public Relations Representative'
      , 4500
      , 10500
      );

  -- 설비/제조 라인 직무 및 직급 (ASSIGNED_TECHNICIAN / APPROVER Title 매핑)
  INSERT INTO tb_jobs VALUES
      ( 'JB_STAFF'
      , '사원'
      , 3000
      , 4500
      );

  INSERT INTO tb_jobs VALUES
      ( 'JB_SR'
      , '주임'
      , 4000
      , 5500
      );

  INSERT INTO tb_jobs VALUES
      ( 'JB_AM'
      , '대리'
      , 5000
      , 7000
      );

  INSERT INTO tb_jobs VALUES
      ( 'JB_MGR'
      , '과장'
      , 6500
      , 9000
      );

  INSERT INTO tb_jobs VALUES
      ( 'JB_PL'
      , '파트장'
      , 8000
      , 12000
      );

  INSERT INTO tb_jobs VALUES
      ( 'JB_TL'
      , '팀장'
      , 9500
      , 15000
      );
END;
/


REM *************************** insert data into the EMPLOYEES table

Prompt ****** Populating TB_EMPLOYEES table ....

BEGIN
  INSERT INTO tb_employees VALUES
      ( 100
      , TO_CHAR(100)
      , 'B'
      , 'Steven'
      , 'King'
      , 'Steven King'
      , 'SKING'
      , '1.515.555.0100'
      , TO_DATE('17-06-2013', 'dd-MM-yyyy')
      , 'AD_PRES'
      , 24000
      , NULL
      , NULL
      , 90
      );

  INSERT INTO tb_employees VALUES
      ( 101
      , TO_CHAR(101)
      , 'C'
      , 'Neena'
      , 'Yang'
      , 'Neena Yang'
      , 'NYANG'
      , '1.515.555.0101'
      , TO_DATE('21-09-2015', 'dd-MM-yyyy')
      , 'AD_VP'
      , 17000
      , NULL
      , 100
      , 90
      );

  INSERT INTO tb_employees VALUES
      ( 102
      , TO_CHAR(102)
      , 'A'
      , 'Lex'
      , 'Garcia'
      , 'Lex Garcia'
      , 'LGARCIA'
      , '1.515.555.0102'
      , TO_DATE('13-01-2011', 'dd-MM-yyyy')
      , 'AD_VP'
      , 17000
      , NULL
      , 100
      , 90
      );

  INSERT INTO tb_employees VALUES
      ( 103
      , TO_CHAR(103)
      , 'B'
      , 'Alexander'
      , 'James'
      , 'Alexander James'
      , 'AJAMES'
      , '1.590.555.0103'
      , TO_DATE('03-01-2016', 'dd-MM-yyyy')
      , 'IT_PROG'
      , 9000
      , NULL
      , 102
      , 60
      );

  INSERT INTO tb_employees VALUES
      ( 104
      , TO_CHAR(104)
      , 'C'
      , 'Bruce'
      , 'Miller'
      , 'Bruce Miller'
      , 'BMILLER'
      , '1.590.555.0104'
      , TO_DATE('21-05-2017', 'dd-MM-yyyy')
      , 'IT_PROG'
      , 6000
      , NULL
      , 103
      , 60
      );

  INSERT INTO tb_employees VALUES
      ( 105
      , TO_CHAR(105)
      , 'A'
      , 'David'
      , 'Williams'
      , 'David Williams'
      , 'DWILLIAMS'
      , '1.590.555.0105'
      , TO_DATE('25-06-2015', 'dd-MM-yyyy')
      , 'IT_PROG'
      , 4800
      , NULL
      , 103
      , 60
      );

  INSERT INTO tb_employees VALUES
      ( 106
      , TO_CHAR(106)
      , 'B'
      , 'Valli'
      , 'Jackson'
      , 'Valli Jackson'
      , 'VJACKSON'
      , '1.590.555.0106'
      , TO_DATE('05-02-2016', 'dd-MM-yyyy')
      , 'IT_PROG'
      , 4800
      , NULL
      , 103
      , 60
      );

  INSERT INTO tb_employees VALUES
      ( 107
      , TO_CHAR(107)
      , 'C'
      , 'Diana'
      , 'Nguyen'
      , 'Diana Nguyen'
      , 'DNGUYEN'
      , '1.590.555.0107'
      , TO_DATE('07-02-2017', 'dd-MM-yyyy')
      , 'IT_PROG'
      , 4200
      , NULL
      , 103
      , 60
      );

  INSERT INTO tb_employees VALUES
      ( 108
      , TO_CHAR(108)
      , 'A'
      , 'Nancy'
      , 'Gruenberg'
      , 'Nancy Gruenberg'
      , 'NGRUENBE'
      , '1.515.555.0108'
      , TO_DATE('17-08-2012', 'dd-MM-yyyy')
      , 'FI_MGR'
      , 12008
      , NULL
      , 101
      , 100
      );

  INSERT INTO tb_employees VALUES
      ( 109
      , TO_CHAR(109)
      , 'B'
      , 'Daniel'
      , 'Faviet'
      , 'Daniel Faviet'
      , 'DFAVIET'
      , '1.515.555.0109'
      , TO_DATE('16-08-2012', 'dd-MM-yyyy')
      , 'FI_ACCOUNT'
      , 9000
      , NULL
      , 108
      , 100
      );

  INSERT INTO tb_employees VALUES
      ( 110
      , TO_CHAR(110)
      , 'C'
      , 'John'
      , 'Chen'
      , 'John Chen'
      , 'JCHEN'
      , '1.515.555.0110'
      , TO_DATE('28-09-2015', 'dd-MM-yyyy')
      , 'FI_ACCOUNT'
      , 8200
      , NULL
      , 108
      , 100
      );

  INSERT INTO tb_employees VALUES
      ( 111
      , TO_CHAR(111)
      , 'A'
      , 'Ismael'
      , 'Sciarra'
      , 'Ismael Sciarra'
      , 'ISCIARRA'
      , '1.515.555.0111'
      , TO_DATE('30-09-2015', 'dd-MM-yyyy')
      , 'FI_ACCOUNT'
      , 7700
      , NULL
      , 108
      , 100
      );

  INSERT INTO tb_employees VALUES
      ( 112
      , TO_CHAR(112)
      , 'B'
      , 'Jose Manuel'
      , 'Urman'
      , 'Jose Manuel Urman'
      , 'JMURMAN'
      , '1.515.555.0112'
      , TO_DATE('07-03-2016', 'dd-MM-yyyy')
      , 'FI_ACCOUNT'
      , 7800
      , NULL
      , 108
      , 100
      );

  INSERT INTO tb_employees VALUES
      ( 113
      , TO_CHAR(113)
      , 'C'
      , 'Luis'
      , 'Popp'
      , 'Luis Popp'
      , 'LPOPP'
      , '1.515.555.0113'
      , TO_DATE('07-12-2017', 'dd-MM-yyyy')
      , 'FI_ACCOUNT'
      , 6900
      , NULL
      , 108
      , 100
      );

  INSERT INTO tb_employees VALUES
      ( 114
      , TO_CHAR(114)
      , 'A'
      , 'Den'
      , 'Li'
      , 'Den Li'
      , 'DLI'
      , '1.515.555.0114'
      , TO_DATE('07-12-2012', 'dd-MM-yyyy')
      , 'PU_MAN'
      , 11000
      , NULL
      , 100
      , 30
      );

  INSERT INTO tb_employees VALUES
      ( 115
      , TO_CHAR(115)
      , 'B'
      , 'Alexander'
      , 'Khoo'
      , 'Alexander Khoo'
      , 'AKHOO'
      , '1.515.555.0115'
      , TO_DATE('18-05-2013', 'dd-MM-yyyy')
      , 'PU_CLERK'
      , 3100
      , NULL
      , 114
      , 30
      );

  INSERT INTO tb_employees VALUES
      ( 116
      , TO_CHAR(116)
      , 'C'
      , 'Shelli'
      , 'Baida'
      , 'Shelli Baida'
      , 'SBAIDA'
      , '1.515.555.0116'
      , TO_DATE('24-12-2015', 'dd-MM-yyyy')
      , 'PU_CLERK'
      , 2900
      , NULL
      , 114
      , 30
      );

  INSERT INTO tb_employees VALUES
      ( 117
      , TO_CHAR(117)
      , 'A'
      , 'Sigal'
      , 'Tobias'
      , 'Sigal Tobias'
      , 'STOBIAS'
      , '1.515.555.0117'
      , TO_DATE('24-07-2015', 'dd-MM-yyyy')
      , 'PU_CLERK'
      , 2800
      , NULL
      , 114
      , 30
      );

  INSERT INTO tb_employees VALUES
      ( 118
      , TO_CHAR(118)
      , 'B'
      , 'Guy'
      , 'Himuro'
      , 'Guy Himuro'
      , 'GHIMURO'
      , '1.515.555.0118'
      , TO_DATE('15-11-2016', 'dd-MM-yyyy')
      , 'PU_CLERK'
      , 2600
      , NULL
      , 114
      , 30
      );

  INSERT INTO tb_employees VALUES
      ( 119
      , TO_CHAR(119)
      , 'C'
      , 'Karen'
      , 'Colmenares'
      , 'Karen Colmenares'
      , 'KCOLMENA'
      , '1.515.555.0119'
      , TO_DATE('10-08-2017', 'dd-MM-yyyy')
      , 'PU_CLERK'
      , 2500
      , NULL
      , 114
      , 30
      );

  INSERT INTO tb_employees VALUES
      ( 120
      , TO_CHAR(120)
      , 'A'
      , 'Matthew'
      , 'Weiss'
      , 'Matthew Weiss'
      , 'MWEISS'
      , '1.650.555.0120'
      , TO_DATE('18-07-2014', 'dd-MM-yyyy')
      , 'ST_MAN'
      , 8000
      , NULL
      , 100
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 121
      , TO_CHAR(121)
      , 'B'
      , 'Adam'
      , 'Fripp'
      , 'Adam Fripp'
      , 'AFRIPP'
      , '1.650.555.0121'
      , TO_DATE('10-04-2015', 'dd-MM-yyyy')
      , 'ST_MAN'
      , 8200
      , NULL
      , 100
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 122
      , TO_CHAR(122)
      , 'C'
      , 'Payam'
      , 'Kaufling'
      , 'Payam Kaufling'
      , 'PKAUFLIN'
      , '1.650.555.0122'
      , TO_DATE('01-05-2013', 'dd-MM-yyyy')
      , 'ST_MAN'
      , 7900
      , NULL
      , 100
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 123
      , TO_CHAR(123)
      , 'A'
      , 'Shanta'
      , 'Vollman'
      , 'Shanta Vollman'
      , 'SVOLLMAN'
      , '1.650.555.0123'
      , TO_DATE('10-10-2015', 'dd-MM-yyyy')
      , 'ST_MAN'
      , 6500
      , NULL
      , 100
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 124
      , TO_CHAR(124)
      , 'B'
      , 'Kevin'
      , 'Mourgos'
      , 'Kevin Mourgos'
      , 'KMOURGOS'
      , '1.650.555.0124'
      , TO_DATE('16-11-2017', 'dd-MM-yyyy')
      , 'ST_MAN'
      , 5800
      , NULL
      , 100
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 125
      , TO_CHAR(125)
      , 'C'
      , 'Julia'
      , 'Nayer'
      , 'Julia Nayer'
      , 'JNAYER'
      , '1.650.555.0125'
      , TO_DATE('16-07-2015', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 3200
      , NULL
      , 120
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 126
      , TO_CHAR(126)
      , 'A'
      , 'Irene'
      , 'Mikkilineni'
      , 'Irene Mikkilineni'
      , 'IMIKKILI'
      , '1.650.555.0126'
      , TO_DATE('28-09-2016', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2700
      , NULL
      , 120
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 127
      , TO_CHAR(127)
      , 'B'
      , 'James'
      , 'Landry'
      , 'James Landry'
      , 'JLANDRY'
      , '1.650.555.0127'
      , TO_DATE('14-01-2017', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2400
      , NULL
      , 120
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 128
      , TO_CHAR(128)
      , 'C'
      , 'Steven'
      , 'Markle'
      , 'Steven Markle'
      , 'SMARKLE'
      , '1.650.555.0128'
      , TO_DATE('08-03-2018', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2200
      , NULL
      , 120
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 129
      , TO_CHAR(129)
      , 'A'
      , 'Laura'
      , 'Bissot'
      , 'Laura Bissot'
      , 'LBISSOT'
      , '1.650.555.0129'
      , TO_DATE('20-08-2015', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 3300
      , NULL
      , 121
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 130
      , TO_CHAR(130)
      , 'B'
      , 'Mozhe'
      , 'Atkinson'
      , 'Mozhe Atkinson'
      , 'MATKINSO'
      , '1.650.555.0130'
      , TO_DATE('30-10-2015', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2800
      , NULL
      , 121
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 131
      , TO_CHAR(131)
      , 'C'
      , 'James'
      , 'Marlow'
      , 'James Marlow'
      , 'JAMRLOW'
      , '1.650.555.0131'
      , TO_DATE('16-02-2015', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2500
      , NULL
      , 121
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 132
      , TO_CHAR(132)
      , 'A'
      , 'TJ'
      , 'Olson'
      , 'TJ Olson'
      , 'TJOLSON'
      , '1.650.555.0132'
      , TO_DATE('10-04-2017', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2100
      , NULL
      , 121
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 133
      , TO_CHAR(133)
      , 'B'
      , 'Jason'
      , 'Mallin'
      , 'Jason Mallin'
      , 'JMALLIN'
      , '1.650.555.0133'
      , TO_DATE('14-06-2014', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 3300
      , NULL
      , 122
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 134
      , TO_CHAR(134)
      , 'C'
      , 'Michael'
      , 'Rogers'
      , 'Michael Rogers'
      , 'MROGERS'
      , '1.650.555.0134'
      , TO_DATE('26-08-2016', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2900
      , NULL
      , 122
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 135
      , TO_CHAR(135)
      , 'A'
      , 'Ki'
      , 'Gee'
      , 'Ki Gee'
      , 'KGEE'
      , '1.650.555.0135'
      , TO_DATE('12-12-2017', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2400
      , NULL
      , 122
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 136
      , TO_CHAR(136)
      , 'B'
      , 'Hazel'
      , 'Philtanker'
      , 'Hazel Philtanker'
      , 'HPHILTAN'
      , '1.650.555.0136'
      , TO_DATE('06-02-2018', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2200
      , NULL
      , 122
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 137
      , TO_CHAR(137)
      , 'C'
      , 'Renske'
      , 'Ladwig'
      , 'Renske Ladwig'
      , 'RLADWIG'
      , '1.650.555.0137'
      , TO_DATE('14-07-2013', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 3600
      , NULL
      , 123
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 138
      , TO_CHAR(138)
      , 'A'
      , 'Stephen'
      , 'Stiles'
      , 'Stephen Stiles'
      , 'SSTILES'
      , '1.650.555.0138'
      , TO_DATE('26-10-2015', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 3200
      , NULL
      , 123
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 139
      , TO_CHAR(139)
      , 'B'
      , 'John'
      , 'Seo'
      , 'John Seo'
      , 'JSEO'
      , '1.650.555.0139'
      , TO_DATE('12-02-2016', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2700
      , NULL
      , 123
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 140
      , TO_CHAR(140)
      , 'C'
      , 'Joshua'
      , 'Patel'
      , 'Joshua Patel'
      , 'JPATEL'
      , '1.650.555.0140'
      , TO_DATE('06-04-2016', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2500
      , NULL
      , 123
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 141
      , TO_CHAR(141)
      , 'A'
      , 'Trenna'
      , 'Rajs'
      , 'Trenna Rajs'
      , 'TRAJS'
      , '1.650.555.0141'
      , TO_DATE('17-10-2013', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 3500
      , NULL
      , 124
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 142
      , TO_CHAR(142)
      , 'B'
      , 'Curtis'
      , 'Davies'
      , 'Curtis Davies'
      , 'CDAVIES'
      , '1.650.555.0142'
      , TO_DATE('29-01-2015', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 3100
      , NULL
      , 124
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 143
      , TO_CHAR(143)
      , 'C'
      , 'Randall'
      , 'Matos'
      , 'Randall Matos'
      , 'RMATOS'
      , '1.650.555.0143'
      , TO_DATE('15-03-2016', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2600
      , NULL
      , 124
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 144
      , TO_CHAR(144)
      , 'A'
      , 'Peter'
      , 'Vargas'
      , 'Peter Vargas'
      , 'PVARGAS'
      , '1.650.555.0144'
      , TO_DATE('09-07-2016', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 2500
      , NULL
      , 124
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 145
      , TO_CHAR(145)
      , 'B'
      , 'John'
      , 'Singh'
      , 'John Singh'
      , 'JSINGH'
      , '44.1632.960000'
      , TO_DATE('01-10-2014', 'dd-MM-yyyy')
      , 'SA_MAN'
      , 14000
      , .4
      , 100
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 146
      , TO_CHAR(146)
      , 'C'
      , 'Karen'
      , 'Partners'
      , 'Karen Partners'
      , 'KPARTNER'
      , '44.1632.960001'
      , TO_DATE('05-01-2015', 'dd-MM-yyyy')
      , 'SA_MAN'
      , 13500
      , .3
      , 100
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 147
      , TO_CHAR(147)
      , 'A'
      , 'Alberto'
      , 'Errazuriz'
      , 'Alberto Errazuriz'
      , 'AERRAZUR'
      , '44.1632.960002'
      , TO_DATE('10-03-2015', 'dd-MM-yyyy')
      , 'SA_MAN'
      , 12000
      , .3
      , 100
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 148
      , TO_CHAR(148)
      , 'B'
      , 'Gerald'
      , 'Cambrault'
      , 'Gerald Cambrault'
      , 'GCAMBRAU'
      , '44.1632.960003'
      , TO_DATE('15-10-2017', 'dd-MM-yyyy')
      , 'SA_MAN'
      , 11000
      , .3
      , 100
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 149
      , TO_CHAR(149)
      , 'C'
      , 'Eleni'
      , 'Zlotkey'
      , 'Eleni Zlotkey'
      , 'EZLOTKEY'
      , '44.1632.960004'
      , TO_DATE('29-01-2018', 'dd-MM-yyyy')
      , 'SA_MAN'
      , 10500
      , .2
      , 100
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 150
      , TO_CHAR(150)
      , 'A'
      , 'Sean'
      , 'Tucker'
      , 'Sean Tucker'
      , 'STUCKER'
      , '44.1632.960005'
      , TO_DATE('30-01-2015', 'dd-MM-yyyy')
      , 'SA_REP'
      , 10000
      , .3
      , 145
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 151
      , TO_CHAR(151)
      , 'B'
      , 'David'
      , 'Bernstein'
      , 'David Bernstein'
      , 'DBERNSTE'
      , '44.1632.960006'
      , TO_DATE('24-03-2015', 'dd-MM-yyyy')
      , 'SA_REP'
      , 9500
      , .25
      , 145
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 152
      , TO_CHAR(152)
      , 'C'
      , 'Peter'
      , 'Hall'
      , 'Peter Hall'
      , 'PHALL'
      , '44.1632.960007'
      , TO_DATE('20-08-2015', 'dd-MM-yyyy')
      , 'SA_REP'
      , 9000
      , .25
      , 145
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 153
      , TO_CHAR(153)
      , 'A'
      , 'Christopher'
      , 'Olsen'
      , 'Christopher Olsen'
      , 'COLSEN'
      , '44.1632.960008'
      , TO_DATE('30-03-2016', 'dd-MM-yyyy')
      , 'SA_REP'
      , 8000
      , .2
      , 145
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 154
      , TO_CHAR(154)
      , 'B'
      , 'Nanette'
      , 'Cambrault'
      , 'Nanette Cambrault'
      , 'NCAMBRAU'
      , '44.1632.960009'
      , TO_DATE('09-12-2016', 'dd-MM-yyyy')
      , 'SA_REP'
      , 7500
      , .2
      , 145
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 155
      , TO_CHAR(155)
      , 'C'
      , 'Oliver'
      , 'Tuvault'
      , 'Oliver Tuvault'
      , 'OTUVAULT'
      , '44.1632.960010'
      , TO_DATE('23-11-2017', 'dd-MM-yyyy')
      , 'SA_REP'
      , 7000
      , .15
      , 145
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 156
      , TO_CHAR(156)
      , 'A'
      , 'Janette'
      , 'King'
      , 'Janette King'
      , 'JKING'
      , '44.1632.960011'
      , TO_DATE('30-01-2014', 'dd-MM-yyyy')
      , 'SA_REP'
      , 10000
      , .35
      , 146
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 157
      , TO_CHAR(157)
      , 'B'
      , 'Patrick'
      , 'Sully'
      , 'Patrick Sully'
      , 'PSULLY'
      , '44.1632.960012'
      , TO_DATE('04-03-2014', 'dd-MM-yyyy')
      , 'SA_REP'
      , 9500
      , .35
      , 146
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 158
      , TO_CHAR(158)
      , 'C'
      , 'Allan'
      , 'McEwen'
      , 'Allan McEwen'
      , 'AMCEWEN'
      , '44.1632.960013'
      , TO_DATE('01-08-2014', 'dd-MM-yyyy')
      , 'SA_REP'
      , 9000
      , .35
      , 146
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 159
      , TO_CHAR(159)
      , 'A'
      , 'Lindsey'
      , 'Smith'
      , 'Lindsey Smith'
      , 'LSMITH'
      , '44.1632.960014'
      , TO_DATE('10-03-2015', 'dd-MM-yyyy')
      , 'SA_REP'
      , 8000
      , .3
      , 146
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 160
      , TO_CHAR(160)
      , 'B'
      , 'Louise'
      , 'Doran'
      , 'Louise Doran'
      , 'LDORAN'
      , '44.1632.960015'
      , TO_DATE('15-12-2015', 'dd-MM-yyyy')
      , 'SA_REP'
      , 7500
      , .3
      , 146
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 161
      , TO_CHAR(161)
      , 'C'
      , 'Sarath'
      , 'Sewall'
      , 'Sarath Sewall'
      , 'SSEWALL'
      , '44.1632.960016'
      , TO_DATE('03-11-2016', 'dd-MM-yyyy')
      , 'SA_REP'
      , 7000
      , .25
      , 146
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 162
      , TO_CHAR(162)
      , 'A'
      , 'Clara'
      , 'Vishney'
      , 'Clara Vishney'
      , 'CVISHNEY'
      , '44.1632.960017'
      , TO_DATE('11-11-2015', 'dd-MM-yyyy')
      , 'SA_REP'
      , 10500
      , .25
      , 147
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 163
      , TO_CHAR(163)
      , 'B'
      , 'Danielle'
      , 'Greene'
      , 'Danielle Greene'
      , 'DGREENE'
      , '44.1632.960018'
      , TO_DATE('19-03-2017', 'dd-MM-yyyy')
      , 'SA_REP'
      , 9500
      , .15
      , 147
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 164
      , TO_CHAR(164)
      , 'C'
      , 'Mattea'
      , 'Marvins'
      , 'Mattea Marvins'
      , 'MMARVINS'
      , '44.1632.960019'
      , TO_DATE('24-01-2018', 'dd-MM-yyyy')
      , 'SA_REP'
      , 7200
      , .10
      , 147
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 165
      , TO_CHAR(165)
      , 'A'
      , 'David'
      , 'Lee'
      , 'David Lee'
      , 'DLEE'
      , '44.1632.960020'
      , TO_DATE('23-02-2018', 'dd-MM-yyyy')
      , 'SA_REP'
      , 6800
      , .1
      , 147
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 166
      , TO_CHAR(166)
      , 'B'
      , 'Sundar'
      , 'Ande'
      , 'Sundar Ande'
      , 'SANDE'
      , '44.1632.960021'
      , TO_DATE('24-03-2018', 'dd-MM-yyyy')
      , 'SA_REP'
      , 6400
      , .10
      , 147
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 167
      , TO_CHAR(167)
      , 'C'
      , 'Amit'
      , 'Banda'
      , 'Amit Banda'
      , 'ABANDA'
      , '44.1632.960022'
      , TO_DATE('21-04-2018', 'dd-MM-yyyy')
      , 'SA_REP'
      , 6200
      , .10
      , 147
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 168
      , TO_CHAR(168)
      , 'A'
      , 'Lisa'
      , 'Ozer'
      , 'Lisa Ozer'
      , 'LOZER'
      , '44.1632.960023'
      , TO_DATE('11-03-2015', 'dd-MM-yyyy')
      , 'SA_REP'
      , 11500
      , .25
      , 148
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 169
      , TO_CHAR(169)
      , 'B'
      , 'Harrison'
      , 'Bloom'
      , 'Harrison Bloom'
      , 'HBLOOM'
      , '44.1632.960024'
      , TO_DATE('23-03-2016', 'dd-MM-yyyy')
      , 'SA_REP'
      , 10000
      , .20
      , 148
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 170
      , TO_CHAR(170)
      , 'C'
      , 'Tayler'
      , 'Fox'
      , 'Tayler Fox'
      , 'TFOX'
      , '44.1632.960025'
      , TO_DATE('24-01-2016', 'dd-MM-yyyy')
      , 'SA_REP'
      , 9600
      , .20
      , 148
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 171
      , TO_CHAR(171)
      , 'A'
      , 'William'
      , 'Smith'
      , 'William Smith'
      , 'WSMITH'
      , '44.1632.960026'
      , TO_DATE('23-02-2017', 'dd-MM-yyyy')
      , 'SA_REP'
      , 7400
      , .15
      , 148
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 172
      , TO_CHAR(172)
      , 'B'
      , 'Elizabeth'
      , 'Bates'
      , 'Elizabeth Bates'
      , 'EBATES'
      , '44.1632.960027'
      , TO_DATE('24-03-2017', 'dd-MM-yyyy')
      , 'SA_REP'
      , 7300
      , .15
      , 148
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 173
      , TO_CHAR(173)
      , 'C'
      , 'Sundita'
      , 'Kumar'
      , 'Sundita Kumar'
      , 'SKUMAR'
      , '44.1632.960028'
      , TO_DATE('21-04-2018', 'dd-MM-yyyy')
      , 'SA_REP'
      , 6100
      , .10
      , 148
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 174
      , TO_CHAR(174)
      , 'A'
      , 'Ellen'
      , 'Abel'
      , 'Ellen Abel'
      , 'EABEL'
      , '44.1632.960029'
      , TO_DATE('11-05-2014', 'dd-MM-yyyy')
      , 'SA_REP'
      , 11000
      , .30
      , 149
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 175
      , TO_CHAR(175)
      , 'B'
      , 'Alyssa'
      , 'Hutton'
      , 'Alyssa Hutton'
      , 'AHUTTON'
      , '44.1632.960030'
      , TO_DATE('19-03-2015', 'dd-MM-yyyy')
      , 'SA_REP'
      , 8800
      , .25
      , 149
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 176
      , TO_CHAR(176)
      , 'C'
      , 'Jonathon'
      , 'Taylor'
      , 'Jonathon Taylor'
      , 'JTAYLOR'
      , '44.1632.960031'
      , TO_DATE('24-03-2016', 'dd-MM-yyyy')
      , 'SA_REP'
      , 8600
      , .20
      , 149
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 177
      , TO_CHAR(177)
      , 'A'
      , 'Jack'
      , 'Livingston'
      , 'Jack Livingston'
      , 'JLIVINGS'
      , '44.1632.960032'
      , TO_DATE('23-04-2016', 'dd-MM-yyyy')
      , 'SA_REP'
      , 8400
      , .20
      , 149
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 178
      , TO_CHAR(178)
      , 'B'
      , 'Kimberely'
      , 'Grant'
      , 'Kimberely Grant'
      , 'KGRANT'
      , '44.1632.960033'
      , TO_DATE('24-05-2017', 'dd-MM-yyyy')
      , 'SA_REP'
      , 7000
      , .15
      , 149
      , NULL
      );

  INSERT INTO tb_employees VALUES
      ( 179
      , TO_CHAR(179)
      , 'C'
      , 'Charles'
      , 'Johnson'
      , 'Charles Johnson'
      , 'CJOHNSON'
      , '44.1632.960034'
      , TO_DATE('04-01-2018', 'dd-MM-yyyy')
      , 'SA_REP'
      , 6200
      , .10
      , 149
      , 80
      );

  INSERT INTO tb_employees VALUES
      ( 180
      , TO_CHAR(180)
      , 'A'
      , 'Winston'
      , 'Taylor'
      , 'Winston Taylor'
      , 'WTAYLOR'
      , '1.650.555.0145'
      , TO_DATE('24-01-2016', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 3200
      , NULL
      , 120
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 181
      , TO_CHAR(181)
      , 'B'
      , 'Jean'
      , 'Fleaur'
      , 'Jean Fleaur'
      , 'JFLEAUR'
      , '1.650.555.0146'
      , TO_DATE('23-02-2016', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 3100
      , NULL
      , 120
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 182
      , TO_CHAR(182)
      , 'C'
      , 'Martha'
      , 'Sullivan'
      , 'Martha Sullivan'
      , 'MSULLIVA'
      , '1.650.555.0147'
      , TO_DATE('21-06-2017', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 2500
      , NULL
      , 120
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 183
      , TO_CHAR(183)
      , 'A'
      , 'Girard'
      , 'Geoni'
      , 'Girard Geoni'
      , 'GGEONI'
      , '1.650.555.0148'
      , TO_DATE('03-02-2018', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 2800
      , NULL
      , 120
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 184
      , TO_CHAR(184)
      , 'B'
      , 'Nandita'
      , 'Sarchand'
      , 'Nandita Sarchand'
      , 'NSARCHAN'
      , '1.650.555.0149'
      , TO_DATE('27-01-2014', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 4200
      , NULL
      , 121
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 185
      , TO_CHAR(185)
      , 'C'
      , 'Alexis'
      , 'Bull'
      , 'Alexis Bull'
      , 'ABULL'
      , '1.650.555.0150'
      , TO_DATE('20-02-2015', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 4100
      , NULL
      , 121
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 186
      , TO_CHAR(186)
      , 'A'
      , 'Julia'
      , 'Dellinger'
      , 'Julia Dellinger'
      , 'JDELLING'
      , '1.650.555.0151'
      , TO_DATE('24-06-2016', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 3400
      , NULL
      , 121
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 187
      , TO_CHAR(187)
      , 'B'
      , 'Anthony'
      , 'Cabrio'
      , 'Anthony Cabrio'
      , 'ACABRIO'
      , '1.650.555.0152'
      , TO_DATE('07-02-2017', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 3000
      , NULL
      , 121
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 188
      , TO_CHAR(188)
      , 'C'
      , 'Kelly'
      , 'Chung'
      , 'Kelly Chung'
      , 'KCHUNG'
      , '1.650.555.0153'
      , TO_DATE('14-06-2015', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 3800
      , NULL
      , 122
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 189
      , TO_CHAR(189)
      , 'A'
      , 'Jennifer'
      , 'Dilly'
      , 'Jennifer Dilly'
      , 'JDILLY'
      , '1.650.555.0154'
      , TO_DATE('13-08-2015', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 3600
      , NULL
      , 122
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 190
      , TO_CHAR(190)
      , 'B'
      , 'Timothy'
      , 'Venzl'
      , 'Timothy Venzl'
      , 'TVENZL'
      , '1.650.555.0155'
      , TO_DATE('11-07-2016', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 2900
      , NULL
      , 122
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 191
      , TO_CHAR(191)
      , 'C'
      , 'Randall'
      , 'Perkins'
      , 'Randall Perkins'
      , 'RPERKINS'
      , '1.650.555.0156'
      , TO_DATE('19-12-2017', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 2500
      , NULL
      , 122
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 192
      , TO_CHAR(192)
      , 'A'
      , 'Sarah'
      , 'Bell'
      , 'Sarah Bell'
      , 'SBELL'
      , '1.650.555.0157'
      , TO_DATE('04-02-2014', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 4000
      , NULL
      , 123
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 193
      , TO_CHAR(193)
      , 'B'
      , 'Britney'
      , 'Everett'
      , 'Britney Everett'
      , 'BEVERETT'
      , '1.650.555.0158'
      , TO_DATE('03-03-2015', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 3900
      , NULL
      , 123
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 194
      , TO_CHAR(194)
      , 'C'
      , 'Samuel'
      , 'McLeod'
      , 'Samuel McLeod'
      , 'SMCLEOD'
      , '1.650.555.0159'
      , TO_DATE('01-07-2016', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 3200
      , NULL
      , 123
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 195
      , TO_CHAR(195)
      , 'A'
      , 'Vance'
      , 'Jones'
      , 'Vance Jones'
      , 'VJONES'
      , '1.650.555.0160'
      , TO_DATE('17-03-2017', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 2800
      , NULL
      , 123
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 196
      , TO_CHAR(196)
      , 'B'
      , 'Alana'
      , 'Walsh'
      , 'Alana Walsh'
      , 'AWALSH'
      , '1.650.555.0161'
      , TO_DATE('24-04-2016', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 3100
      , NULL
      , 124
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 197
      , TO_CHAR(197)
      , 'C'
      , 'Kevin'
      , 'Feeney'
      , 'Kevin Feeney'
      , 'KFEENEY'
      , '1.650.555.0162'
      , TO_DATE('23-05-2016', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 3000
      , NULL
      , 124
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 198
      , TO_CHAR(198)
      , 'A'
      , 'Donald'
      , 'OConnell'
      , 'Donald OConnell'
      , 'DOCONNEL'
      , '1.650.555.0163'
      , TO_DATE('21-06-2017', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 2600
      , NULL
      , 124
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 199
      , TO_CHAR(199)
      , 'B'
      , 'Douglas'
      , 'Grant'
      , 'Douglas Grant'
      , 'DGRANT'
      , '1.650.555.0164'
      , TO_DATE('13-01-2018', 'dd-MM-yyyy')
      , 'SH_CLERK'
      , 2600
      , NULL
      , 124
      , 50
      );

  INSERT INTO tb_employees VALUES
      ( 200
      , TO_CHAR(200)
      , 'C'
      , 'Jennifer'
      , 'Whalen'
      , 'Jennifer Whalen'
      , 'JWHALEN'
      , '1.515.555.0165'
      , TO_DATE('17-09-2013', 'dd-MM-yyyy')
      , 'AD_ASST'
      , 4400
      , NULL
      , 101
      , 10
      );

  INSERT INTO tb_employees VALUES
      ( 201
      , TO_CHAR(201)
      , 'A'
      , 'Michael'
      , 'Martinez'
      , 'Michael Martinez'
      , 'MMARTINE'
      , '1.515.555.0166'
      , TO_DATE('17-02-2014', 'dd-MM-yyyy')
      , 'MK_MAN'
      , 13000
      , NULL
      , 100
      , 20
      );

  INSERT INTO tb_employees VALUES
      ( 202
      , TO_CHAR(202)
      , 'B'
      , 'Pat'
      , 'Davis'
      , 'Pat Davis'
      , 'PDAVIS'
      , '1.603.555.0167'
      , TO_DATE('17-08-2015', 'dd-MM-yyyy')
      , 'MK_REP'
      , 6000
      , NULL
      , 201
      , 20
      );

  INSERT INTO tb_employees VALUES
      ( 203
      , TO_CHAR(203)
      , 'C'
      , 'Susan'
      , 'Jacobs'
      , 'Susan Jacobs'
      , 'SJACOBS'
      , '1.515.555.0168'
      , TO_DATE('07-06-2012', 'dd-MM-yyyy')
      , 'HR_REP'
      , 6500
      , NULL
      , 101
      , 40
      );

  INSERT INTO tb_employees VALUES
      ( 204
      , TO_CHAR(204)
      , 'A'
      , 'Hermann'
      , 'Brown'
      , 'Hermann Brown'
      , 'HBROWN'
      , '1.515.555.0169'
      , TO_DATE('07-06-2012', 'dd-MM-yyyy')
      , 'PR_REP'
      , 10000
      , NULL
      , 101
      , 70
      );

  INSERT INTO tb_employees VALUES
      ( 205
      , TO_CHAR(205)
      , 'B'
      , 'Shelley'
      , 'Higgins'
      , 'Shelley Higgins'
      , 'SHIGGINS'
      , '1.515.555.0170'
      , TO_DATE('07-06-2012', 'dd-MM-yyyy')
      , 'AC_MGR'
      , 12008
      , NULL
      , 101
      , 110
      );

  INSERT INTO tb_employees VALUES
      ( 206
      , TO_CHAR(206)
      , 'C'
      , 'William'
      , 'Gietz'
      , 'William Gietz'
      , 'WGIETZ'
      , '1.515.555.0171'
      , TO_DATE('07-06-2012', 'dd-MM-yyyy')
      , 'AC_ACCOUNT'
      , 8300
      , NULL
      , 205
      , 110
      );

  -- =====================================================================
  -- 결재자 (APPROVER) - 팀장 / 파트장
  -- =====================================================================
  INSERT INTO tb_employees VALUES
      ( 210
      , 'APP-2002'
      , NULL
      , '기술'
      , '정'
      , '정기술'
      , 'GISUL.JUNG'
      , '010.2002.0001'
      , TO_DATE('10-01-2015', 'dd-MM-yyyy')
      , 'JB_TL'
      , 13500
      , NULL
      , 100
      , 200
      );

  INSERT INTO tb_employees VALUES
      ( 211
      , 'APP-2004'
      , NULL
      , '제조'
      , '서'
      , '서제조'
      , 'JEJO.SEO'
      , '010.2004.0001'
      , TO_DATE('15-03-2016', 'dd-MM-yyyy')
      , 'JB_TL'
      , 13000
      , NULL
      , 100
      , 170
      );

  INSERT INTO tb_employees VALUES
      ( 212
      , 'APP-2001'
      , NULL
      , '공정'
      , '박'
      , '박공정'
      , 'GONGJUNG.PARK'
      , '010.2001.0001'
      , TO_DATE('01-05-2017', 'dd-MM-yyyy')
      , 'JB_PL'
      , 10500
      , NULL
      , 211
      , 170
      );

  INSERT INTO tb_employees VALUES
      ( 213
      , 'APP-2003'
      , NULL
      , '공정'
      , '윤'
      , '윤공정'
      , 'GONGJUNG.YOON'
      , '010.2003.0001'
      , TO_DATE('12-08-2017', 'dd-MM-yyyy')
      , 'JB_PL'
      , 10500
      , NULL
      , 211
      , 170
      );

  INSERT INTO tb_employees VALUES
      ( 214
      , 'APP-2005'
      , NULL
      , '품질'
      , '류'
      , '류품질'
      , 'PUMJIL.RYU'
      , '010.2005.0001'
      , TO_DATE('20-11-2017', 'dd-MM-yyyy')
      , 'JB_PL'
      , 10200
      , NULL
      , 210
      , 200
      );

  -- =====================================================================
  -- 담당 엔지니어 (ASSIGNED_TECHNICIAN)
  -- =====================================================================
  INSERT INTO tb_employees VALUES
      ( 215
      , 'TECH-1001'
      , 'A'
      , '보전'
      , '이'
      , '이보전'
      , 'BOJEON.LEE'
      , '010.1001.0001'
      , TO_DATE('05-02-2019', 'dd-MM-yyyy')
      , 'JB_AM'
      , 6200
      , NULL
      , 212
      , 170
      );

  INSERT INTO tb_employees VALUES
      ( 216
      , 'TECH-1002'
      , 'A'
      , '정비'
      , '김'
      , '김정비'
      , 'JUNGBI.KIM'
      , '010.1002.0001'
      , TO_DATE('18-09-2022', 'dd-MM-yyyy')
      , 'JB_STAFF'
      , 3800
      , NULL
      , 212
      , 170
      );

  INSERT INTO tb_employees VALUES
      ( 217
      , 'TECH-1003'
      , 'B'
      , '수리'
      , '최'
      , '최수리'
      , 'SURI.CHOI'
      , '010.1003.0001'
      , TO_DATE('11-04-2016', 'dd-MM-yyyy')
      , 'JB_MGR'
      , 8200
      , NULL
      , 210
      , 200
      );

  INSERT INTO tb_employees VALUES
      ( 218
      , 'TECH-1004'
      , 'C'
      , '보전'
      , '강'
      , '강보전'
      , 'BOJEON.KANG'
      , '010.1004.0001'
      , TO_DATE('23-07-2019', 'dd-MM-yyyy')
      , 'JB_AM'
      , 6100
      , NULL
      , 210
      , 200
      );

  INSERT INTO tb_employees VALUES
      ( 219
      , 'TECH-1005'
      , 'B'
      , '설비'
      , '윤'
      , '윤설비'
      , 'SEOLBI.YOON'
      , '010.1005.0001'
      , TO_DATE('02-03-2023', 'dd-MM-yyyy')
      , 'JB_STAFF'
      , 3700
      , NULL
      , 217
      , 200
      );

  INSERT INTO tb_employees VALUES
      ( 220
      , 'TECH-1006'
      , 'C'
      , '엔진'
      , '한'
      , '한엔진'
      , 'ENGINE.HAN'
      , '010.1006.0001'
      , TO_DATE('14-06-2021', 'dd-MM-yyyy')
      , 'JB_SR'
      , 4800
      , NULL
      , 213
      , 170
      );

  INSERT INTO tb_employees VALUES
      ( 221
      , 'TECH-1007'
      , 'A'
      , '점검'
      , '오'
      , '오점검'
      , 'JEOMGUM.OH'
      , '010.1007.0001'
      , TO_DATE('29-10-2015', 'dd-MM-yyyy')
      , 'JB_MGR'
      , 8400
      , NULL
      , 210
      , 200
      );

  INSERT INTO tb_employees VALUES
      ( 222
      , 'TECH-1008'
      , 'B'
      , '유지'
      , '송'
      , '송유지'
      , 'YUJI.SONG'
      , '010.1008.0001'
      , TO_DATE('17-08-2019', 'dd-MM-yyyy')
      , 'JB_AM'
      , 6000
      , NULL
      , 212
      , 170
      );

  INSERT INTO tb_employees VALUES
      ( 223
      , 'TECH-1009'
      , 'A'
      , '보수'
      , '정'
      , '정보수'
      , 'BOSU.JUNG'
      , '010.1009.0001'
      , TO_DATE('03-12-2021', 'dd-MM-yyyy')
      , 'JB_SR'
      , 4900
      , NULL
      , 213
      , 170
      );

  INSERT INTO tb_employees VALUES
      ( 224
      , 'TECH-1010'
      , 'C'
      , '장비'
      , '백'
      , '백장비'
      , 'JANGBI.BAEK'
      , '010.1010.0001'
      , TO_DATE('19-05-2023', 'dd-MM-yyyy')
      , 'JB_STAFF'
      , 3600
      , NULL
      , 217
      , 200
      );
END;
/

REM ********* insert data into the JOB_HISTORY table

Prompt ****** Populating TB_JOB_HISTORY table ....

BEGIN
  INSERT INTO tb_job_history
  VALUES (102
      , TO_DATE('13-01-2011', 'dd-MM-yyyy')
      , TO_DATE('24-07-2016', 'dd-MM-yyyy')
      , 'IT_PROG'
      , 60);

  INSERT INTO tb_job_history
  VALUES (101
      , TO_DATE('21-09-2007', 'dd-MM-yyyy')
      , TO_DATE('27-10-2011', 'dd-MM-yyyy')
      , 'AC_ACCOUNT'
      , 110);

  INSERT INTO tb_job_history
  VALUES (101
      , TO_DATE('28-10-2011', 'dd-MM-yyyy')
      , TO_DATE('15-03-2015', 'dd-MM-yyyy')
      , 'AC_MGR'
      , 110);

  INSERT INTO tb_job_history
  VALUES (201
      , TO_DATE('17-02-2014', 'dd-MM-yyyy')
      , TO_DATE('19-12-2017', 'dd-MM-yyyy')
      , 'MK_REP'
      , 20);

  INSERT INTO tb_job_history
  VALUES  (114
      , TO_DATE('24-03-2016', 'dd-MM-yyyy')
      , TO_DATE('31-12-2017', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 50
      );

  INSERT INTO tb_job_history
  VALUES  (122
      , TO_DATE('01-01-2017', 'dd-MM-yyyy')
      , TO_DATE('31-12-2017', 'dd-MM-yyyy')
      , 'ST_CLERK'
      , 50
      );

  INSERT INTO tb_job_history
  VALUES  (200
      , TO_DATE('17-09-2005', 'dd-MM-yyyy')
      , TO_DATE('17-06-2011', 'dd-MM-yyyy')
      , 'AD_ASST'
      , 90
      );

  INSERT INTO tb_job_history
  VALUES  (176
      , TO_DATE('24-03-2016', 'dd-MM-yyyy')
      , TO_DATE('31-12-2016', 'dd-MM-yyyy')
      , 'SA_REP'
      , 80
      );

  INSERT INTO tb_job_history
  VALUES  (176
      , TO_DATE('01-01-2017', 'dd-MM-yyyy')
      , TO_DATE('31-12-2017', 'dd-MM-yyyy')
      , 'SA_MAN'
      , 80
      );

  INSERT INTO tb_job_history
  VALUES  (200
      , TO_DATE('01-07-2012', 'dd-MM-yyyy')
      , TO_DATE('31-12-2016', 'dd-MM-yyyy')
      , 'AC_ACCOUNT'
      , 90
      );
END;
/

COMMIT;

REM enable integrity constraint to DEPARTMENTS

ALTER TABLE tb_departments ENABLE CONSTRAINT fk_tb_dept_mgr;

-- =====================================================================
-- 10. TB_DOWN_EVENT_LOG (다운 이벤트 로그 132건 데이터 적재)
-- =====================================================================
Prompt ****** Populating TB_DOWN_EVENT_LOG table (132 rows) ....

BEGIN
  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-ASML-01_D26-08-07_10:15:22.123',
      'PH-ASML-01',
      'Ch-A',
      'FAB_1',
      'PHOTO',
      'ASML_NXT_1980DI',
      'HARDWARE',
      'ACTION_DONE',
      1786097722123,
      1786106400000,
      145,
      TRUE,
      'HW-VAC-302',
      'Vacuum Leak Detected',
      'ALARM-5021',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      '{"empNo":"APP-2002","jobTitle":"팀장","name":"정기술","approvedAt":1786107000000}',
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":2},{"replacementType":"REPLACEMENT_PART","partNo":"MTR-552","partName":"Servo Motor","qty":1}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'APP-2002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-03_D26-08-07_11:30:00.190',
      'ET-LAM-03',
      'PM2',
      'FAB_2',
      'ETCH',
      'LAM_KIYO_CX',
      'SOFTWARE',
      'IN_PROGRESS',
      1786102200190,
      NULL,
      0,
      TRUE,
      'SW-CTRL-105',
      'Controller Communication Loss',
      'ALARM-8822',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-TEL-02_D26-08-06_20:10:00.257',
      'CVD-TEL-02',
      'Ch-B',
      'FAB_1',
      'CVD',
      'TEL_TRIAS',
      'HARDWARE',
      'VERIFIED',
      1786047000257,
      1786060500000,
      225,
      FALSE,
      'HW-HEAT-401',
      'Heater Temp Out of Range',
      'ALARM-3044',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1786061700000}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":1}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-01_D26-08-06_15:40:00.324',
      'CMP-AMAT-01',
      'Platen-1',
      'FAB_2',
      'CMP',
      'AMAT_REFLEXION',
      'PROCESS',
      'ACTION_DONE',
      1786030800324,
      1786033200000,
      40,
      FALSE,
      'PR-SLRY-002',
      'Slurry Flow Rate Low',
      'ALARM-1029',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1786034700000}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"FLT-SL-05","partName":"Slurry Filter","qty":1}]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-KOKU-04_D26-08-06_08:05:00.391',
      'DIFF-KOKU-04',
      'Tube-A',
      'FAB_1',
      'DIFF',
      'KOKUSAI_ADVANCED',
      'UTILITY',
      'VERIFIED',
      1786003500391,
      1786005300000,
      30,
      TRUE,
      'UT-GAS-901',
      'N2 Gas Pressure Low',
      'ALARM-9912',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1786005300000}',
      '[]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-TEL-01_D26-08-05_14:20:00.458',
      'ET-TEL-01',
      'Ch-1',
      'FAB_1',
      'ETCH',
      'TEL_TACTRAS',
      'HARDWARE',
      'VERIFIED',
      1785939600458,
      1785945000000,
      90,
      TRUE,
      'RF-GEN-102',
      'RF Matcher Reflection High',
      'ALARM-4102',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      '{"empNo":"APP-2002","jobTitle":"팀장","name":"정기술","approvedAt":1785945300000}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"CAP-RF-12","partName":"RF Matcher Capacitor","qty":1}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'APP-2002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-NIKON-02_D26-08-05_09:10:00.525',
      'PH-NIKON-02',
      'Body',
      'FAB_2',
      'PHOTO',
      'NIKON_NSR_S620D',
      'OPTICAL',
      'ACTION_DONE',
      1785921000525,
      1785926400000,
      90,
      FALSE,
      'OPT-LNS-201',
      'Illumination Uniformity Error',
      'ALARM-6631',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      '{"empNo":"APP-2004","jobTitle":"팀장","name":"서제조","approvedAt":1785927000000}',
      '[]',
      'TECH-1007',
      SYSTIMESTAMP,
      'APP-2004',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-01_D26-08-04_16:00:00.592',
      'IMP-VARIAN-01',
      'Source',
      'FAB_1',
      'IMP',
      'VARIAN_VIISTA',
      'HARDWARE',
      'VERIFIED',
      1785859200592,
      1785871800000,
      210,
      TRUE,
      'ION-SRC-501',
      'Arc Chamber Filament Broken',
      'ALARM-7721',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1785872700000}',
      '[{"replacementType":"USE_MATERIAL","partNo":"FLM-ION-01","partName":"Filament Kit","qty":1}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-SEMES-01_D26-08-04_11:00:00.659',
      'CLN-SEMES-01',
      'Ch-3',
      'FAB_2',
      'CLEAN',
      'SEMES_IRIS',
      'HARDWARE',
      'ACTION_DONE',
      1785841200659,
      1785845700000,
      75,
      FALSE,
      'CHM-NOZ-303',
      'Chemical Nozzle Pressure Low',
      'ALARM-2201',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1785846900000}',
      '[{"replacementType":"USE_MATERIAL","partNo":"NZ-TIP-03","partName":"Nozzle Tip","qty":1}]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-AMAT-03_D26-08-03_18:20:00.726',
      'CVD-AMAT-03',
      'Ch-C',
      'FAB_1',
      'CVD',
      'AMAT_PRODUCER',
      'HARDWARE',
      'VERIFIED',
      1785781200726,
      1785790800000,
      160,
      TRUE,
      'VAC-PMP-801',
      'Dry Pump Overload Alarm',
      'ALARM-8109',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1785792300000}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"PMP-DRY-800","partName":"Dry Pump 800L","qty":1}]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-ASML-02_D26-08-03_13:10:00.793',
      'PH-ASML-02',
      'Ch-B',
      'FAB_1',
      'PHOTO',
      'ASML_TWINSCAN',
      'HARDWARE',
      'VERIFIED',
      1785762600793,
      1785768000000,
      90,
      TRUE,
      'WFR-STG-404',
      'Wafer Stage Positioning Error',
      'ALARM-5521',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      '{"empNo":"APP-2002","jobTitle":"팀장","name":"정기술","approvedAt":1785768000000}',
      '[]',
      'TECH-1001',
      SYSTIMESTAMP,
      'APP-2002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-01_D26-08-02_10:00:00.860',
      'ET-LAM-01',
      'PM1',
      'FAB_2',
      'ETCH',
      'LAM_VERSYS',
      'HARDWARE',
      'ACTION_DONE',
      1785664800860,
      1785669000000,
      70,
      FALSE,
      'GAS-MFC-202',
      'CF4 MFC Flow Deviation',
      'ALARM-3310',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      '{"empNo":"APP-2004","jobTitle":"팀장","name":"서제조","approvedAt":1785669300000}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MFC-CF4-500","partName":"MFC 500SCCM","qty":1}]',
      'TECH-1002',
      SYSTIMESTAMP,
      'APP-2004',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-01_D26-08-02_07:30:00.927',
      'CMP-EBARA-01',
      'Head-2',
      'FAB_1',
      'CMP',
      'EBARA_F_REX',
      'CONSUMABLE',
      'VERIFIED',
      1785655800927,
      1785660600000,
      80,
      FALSE,
      'MEC-PAD-101',
      'Polishing Pad Life Expired',
      'ALARM-1992',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1785661200000}',
      '[{"replacementType":"USE_MATERIAL","partNo":"PAD-IC-1000","partName":"CMP Pad IC1000","qty":1}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-03_D26-08-01_22:00:00.994',
      'DIFF-TEL-03',
      'Boat-A',
      'FAB_2',
      'DIFF',
      'TEL_ALPHA',
      'HARDWARE',
      'ACTION_DONE',
      1785621600994,
      1785626400000,
      80,
      TRUE,
      'MEC-BOT-502',
      'Quartz Boat Elevator Jam',
      'ALARM-9011',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1785627300000}',
      '[]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-TEL-01_D26-08-01_15:10:00.061',
      'CVD-TEL-01',
      'Ch-A',
      'FAB_1',
      'CVD',
      'TEL_TRIAS',
      'HARDWARE',
      'VERIFIED',
      1785597000061,
      1785603600000,
      110,
      FALSE,
      'HW-VAL-301',
      'Throttle Valve Control Error',
      'ALARM-3112',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1785604800000}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MTR-TV-01","partName":"Throttle Valve Motor","qty":1}]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-04_D26-08-06_11:55:00.155',
      'ET-LAM-04',
      'Ch-B',
      'FAB_1',
      'ETCH',
      'LAM_VERSYS',
      'HARDWARE',
      'DOWN_OCCURRED',
      1786017300155,
      NULL,
      0,
      FALSE,
      'HW-PMP-902',
      'Chamber Base Vacuum Timeout',
      'ALARM-10159020',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"PMP-881","partName":"Dry Vacuum Pump","qty":1}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-TEL-05_D26-08-05_19:40:59.987',
      'CVD-TEL-05',
      'Ch-C',
      'FAB_2',
      'CVD',
      'TEL_TRIAS',
      'PROCESS',
      'IN_PROGRESS',
      1785958859987,
      NULL,
      62,
      TRUE,
      'PR-TEMP-101',
      'Process Chamber Temperature Uniformity Fail',
      'ALARM-10161011',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":2}]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-KC-06_D26-08-05_07:57:59.746',
      'CMP-KC-06',
      'PM1',
      'FAB_3',
      'CMP',
      'KC_TECH_CMP_300',
      'UTILITY',
      'ACTION_DONE',
      1785916679746,
      1785935219746,
      309,
      FALSE,
      'UT-CW-202',
      'Cooling Water Flow Rate Low',
      'ALARM-10172022',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1785936779746}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"SEN-FLW-01","partName":"Coolant Flow Sensor","qty":3}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-01_D26-08-05_01:35:59.432',
      'DIFF-KOKUSAI-01',
      'PM2',
      'FAB_1',
      'DIFF',
      'KOKUSAI_ADVANCED',
      'SOFTWARE',
      'VERIFIED',
      1785893759432,
      1785913319432,
      326,
      FALSE,
      'SW-SEQ-303',
      'Sequence Interlock Abort',
      'ALARM-10183033',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1785915299432}',
      '[]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-02_D26-08-04_06:34:59.045',
      'IMP-AXCELIS-02',
      'PM3',
      'FAB_2',
      'IMP',
      'AXCELIS_PURION_H',
      'PREVENTIVE',
      'CLOSED',
      1785825299045,
      1785845879045,
      343,
      FALSE,
      'PM-CHM-001',
      'Periodic Chamber Wet Cleaning PM',
      'ALARM-10190010',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1785846179045}',
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":2},{"replacementType":"REPLACEMENT_PART","partNo":"BLW-104","partName":"Bellows Seal Assembly","qty":2}]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-SEMES-03_D26-08-03_16:04:58.585',
      'CLN-SEMES-03',
      'PM4',
      'FAB_3',
      'CLEAN',
      'SEMES_IRIS',
      'HARDWARE',
      'DOWN_OCCURRED',
      1785773098585,
      NULL,
      0,
      TRUE,
      'HW-ESC-701',
      'ESC Chuck Helium Leak Check Fail',
      'ALARM-10207011',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"ESC-CHUCK-01","partName":"Electrostatic Chuck","qty":3}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-NIKON-04_D26-08-03_06:55:58.052',
      'PH-NIKON-04',
      'LL1',
      'FAB_1',
      'PHOTO',
      'NIKON_NSR_S620D',
      'HARDWARE',
      'IN_PROGRESS',
      1785740158052,
      NULL,
      37,
      FALSE,
      'HW-PRS-108',
      'Manometer Sensor Drift Error',
      'ALARM-10211088',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"SEN-PRS-02","partName":"Capacitance Manometer Gauge","qty":1}]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-AMAT-05_D26-08-02_08:17:57.446',
      'ET-AMAT-05',
      'LL2',
      'FAB_2',
      'ETCH',
      'AMAT_CENTRIS_SYM3',
      'HARDWARE',
      'ACTION_DONE',
      1785658677446,
      1785660717446,
      34,
      FALSE,
      'GAS-MFC-550',
      'Ar Gas MFC Zero Drift Detected',
      'ALARM-10225501',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1785662277446}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MFC-550","partName":"Ar Gas MFC","qty":2}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-JUSUNG-06_D26-08-01_15:00:56.767',
      'CVD-JUSUNG-06',
      'TM1',
      'FAB_3',
      'CVD',
      'JUSUNG_EUREKA',
      'HARDWARE',
      'VERIFIED',
      1785596456767,
      1785599516767,
      51,
      FALSE,
      'HW-SEAL-204',
      'Bellows Seal Fatigue Rupture Warning',
      'ALARM-10232044',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1785601496767}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"BLW-104","partName":"Bellows Seal Assembly","qty":3},{"replacementType":"USE_MATERIAL","partNo":"OR-5542","partName":"FFKM O-Ring","qty":3}]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-01_D26-08-01_02:14:56.015',
      'CMP-AMAT-01',
      'TM2',
      'FAB_1',
      'CMP',
      'AMAT_REFLEXION',
      'PROCESS',
      'CLOSED',
      1785550496015,
      1785554576015,
      68,
      TRUE,
      'PR-EPD-302',
      'Optical Emission Endpoint Signal Abnormal',
      'ALARM-10243022',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1785554876015}',
      '[]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-02_D26-07-31_18:49:55.190',
      'DIFF-TEL-02',
      'CH1',
      'FAB_2',
      'DIFF',
      'TEL_ALPHA',
      'HARDWARE',
      'DOWN_OCCURRED',
      1785523795190,
      NULL,
      0,
      FALSE,
      'HW-VAC-302',
      'Vacuum Leak Detected',
      'ALARM-10255021',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":2},{"replacementType":"REPLACEMENT_PART","partNo":"MTR-552","partName":"Servo Motor","qty":2}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-03_D26-07-30_22:45:54.292',
      'IMP-AMAT-03',
      'CH2',
      'FAB_3',
      'IMP',
      'AMAT_VIISTA_TRIDENT',
      'SOFTWARE',
      'IN_PROGRESS',
      1785451554292,
      NULL,
      12,
      FALSE,
      'SW-CTRL-105',
      'Controller Communication Loss',
      'ALARM-10268822',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-PSK-04_D26-07-30_07:12:53.321',
      'CLN-PSK-04',
      NULL,
      'FAB_1',
      'CLEAN',
      'PSK_SUPRA',
      'HARDWARE',
      'ACTION_DONE',
      1785395573321,
      1785402713321,
      119,
      FALSE,
      'HW-HEAT-401',
      'Heater Temp Out of Range',
      'ALARM-10273044',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1785404273321}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":1}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-ASML-05_D26-07-29_21:00:53.277',
      'PH-ASML-05',
      'Ch-A',
      'FAB_2',
      'PHOTO',
      'ASML_NXT_1980DI',
      'PROCESS',
      'VERIFIED',
      1785358853277,
      1785367013277,
      136,
      TRUE,
      'PR-SLRY-002',
      'Slurry Supply Pressure Low',
      'ALARM-10281102',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1785368993277}',
      '[{"replacementType":"USE_MATERIAL","partNo":"PR-PAD-01","partName":"Polishing Pad","qty":2}]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-TEL-06_D26-07-28_21:19:53.160',
      'ET-TEL-06',
      'Ch-B',
      'FAB_3',
      'ETCH',
      'TEL_TACTRAS',
      'UTILITY',
      'CLOSED',
      1785273593160,
      1785282773160,
      153,
      FALSE,
      'UT-GAS-901',
      'N2 Gas Supply Abnormality',
      'ALARM-10299021',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1785283073160}',
      '[]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-ASM-01_D26-07-28_02:59:52.970',
      'CVD-ASM-01',
      'Ch-C',
      'FAB_1',
      'CVD',
      'ASM_EAGLE_12',
      'HARDWARE',
      'DOWN_OCCURRED',
      1785207592970,
      NULL,
      0,
      FALSE,
      'RF-GEN-102',
      'RF Matcher Reflected Power High',
      'ALARM-10304401',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"RF-GEN-102","partName":"RF Generator Module","qty":1}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-02_D26-07-27_13:10:52.707',
      'CMP-EBARA-02',
      'PM1',
      'FAB_2',
      'CMP',
      'EBARA_F_REX',
      'OPTICAL',
      'IN_PROGRESS',
      1785157852707,
      NULL,
      47,
      FALSE,
      'OPT-LNS-201',
      'Illumination Sensor Calibration Error',
      'ALARM-10316602',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-ASM-03_D26-07-27_04:42:52.371',
      'DIFF-ASM-03',
      'PM2',
      'FAB_3',
      'DIFF',
      'ASM_A412',
      'HARDWARE',
      'ACTION_DONE',
      1785127372371,
      1785139612371,
      204,
      TRUE,
      'ION-SRC-501',
      'Ion Source Filament Life Exceeded',
      'ALARM-10327705',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1785141172371}',
      '[{"replacementType":"USE_MATERIAL","partNo":"FIL-501","partName":"Ion Source Filament","qty":3}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-04_D26-07-26_07:35:51.962',
      'IMP-VARIAN-04',
      'PM3',
      'FAB_1',
      'IMP',
      'VARIAN_VIISTA',
      'HARDWARE',
      'VERIFIED',
      1785051351962,
      1785064611962,
      221,
      FALSE,
      'CHM-NOZ-303',
      'Chemical Dispense Nozzle Clogging',
      'ALARM-10332209',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1785066591962}',
      '[{"replacementType":"USE_MATERIAL","partNo":"NOZ-303","partName":"Chemical Nozzle Tip","qty":1}]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-TEL-05_D26-07-25_14:59:51.480',
      'CLN-TEL-05',
      'PM4',
      'FAB_2',
      'CLEAN',
      'TEL_CELLESSE',
      'HARDWARE',
      'CLOSED',
      1784991591480,
      1785005871480,
      238,
      FALSE,
      'VAC-PMP-801',
      'Dry Vacuum Pump Overload',
      'ALARM-10348012',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1785006171480}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"VAC-PMP-801","partName":"Vacuum Pump Unit","qty":2}]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-CANON-06_D26-07-25_03:44:50.925',
      'PH-CANON-06',
      'LL1',
      'FAB_3',
      'PHOTO',
      'CANON_FPA_6300ES6A',
      'HARDWARE',
      'DOWN_OCCURRED',
      1784951090925,
      NULL,
      0,
      FALSE,
      'WFR-STG-404',
      'Wafer Stage Interferometer Mirror Dirty',
      'ALARM-10354040',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-01_D26-07-24_21:00:50.297',
      'ET-LAM-01',
      'LL2',
      'FAB_1',
      'ETCH',
      'LAM_KIYO_CX',
      'HARDWARE',
      'IN_PROGRESS',
      1784926850297,
      NULL,
      22,
      TRUE,
      'GAS-MFC-202',
      'CF4 Gas MFC Flow Hunting',
      'ALARM-10362020',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MFC-202","partName":"Mass Flow Controller","qty":1}]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-AMAT-02_D26-07-24_01:37:49.596',
      'CVD-AMAT-02',
      'TM1',
      'FAB_2',
      'CVD',
      'AMAT_PRODUCER',
      'CONSUMABLE',
      'ACTION_DONE',
      1784857069596,
      1784874409596,
      289,
      FALSE,
      'MEC-PAD-101',
      'Polishing Pad Lifetime Expired',
      'ALARM-10371010',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1784875969596}',
      '[{"replacementType":"USE_MATERIAL","partNo":"MEC-PAD-101","partName":"Conditioner Disk","qty":2}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-KC-03_D26-07-23_11:35:48.822',
      'CMP-KC-03',
      'TM2',
      'FAB_3',
      'CMP',
      'KC_TECH_CMP_300',
      'HARDWARE',
      'VERIFIED',
      1784806548822,
      1784824908822,
      306,
      FALSE,
      'MEC-BOT-502',
      'Boat Elevator Vertical Lead Screw Belt Loose',
      'ALARM-10385020',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1784826888822}',
      '[]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-04_D26-07-23_02:04:47.975',
      'DIFF-KOKUSAI-04',
      'CH1',
      'FAB_1',
      'DIFF',
      'KOKUSAI_ADVANCED',
      'HARDWARE',
      'CLOSED',
      1784772287975,
      1784791667975,
      323,
      FALSE,
      'HW-VAL-301',
      'Throttle Valve Encoder Signal Error',
      'ALARM-10393010',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1784791967975}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"VAL-301","partName":"Throttle Valve Assembly","qty":1},{"replacementType":"REPLACEMENT_PART","partNo":"PN-001","partName":"Valve Assembly","qty":1}]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-05_D26-07-22_03:54:47.055',
      'IMP-AXCELIS-05',
      'CH2',
      'FAB_2',
      'IMP',
      'AXCELIS_PURION_H',
      'HARDWARE',
      'DOWN_OCCURRED',
      1784692487055,
      NULL,
      0,
      TRUE,
      'HW-PMP-902',
      'Chamber Base Vacuum Timeout',
      'ALARM-10409020',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"PMP-881","partName":"Dry Vacuum Pump","qty":2}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-DNS-06_D26-07-21_10:15:46.062',
      'CLN-DNS-06',
      NULL,
      'FAB_3',
      'CLEAN',
      'DNS_SS_3000',
      'PROCESS',
      'IN_PROGRESS',
      1784628946062,
      NULL,
      57,
      FALSE,
      'PR-TEMP-101',
      'Process Chamber Temperature Uniformity Fail',
      'ALARM-10411011',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":3}]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-ASML-01_D26-07-20_21:57:45.996',
      'PH-ASML-01',
      'Ch-A',
      'FAB_1',
      'PHOTO',
      'ASML_TWINSCAN',
      'UTILITY',
      'ACTION_DONE',
      1784584665996,
      1784607105996,
      374,
      FALSE,
      'UT-CW-202',
      'Cooling Water Flow Rate Low',
      'ALARM-10422022',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1784608665996}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"SEN-FLW-01","partName":"Coolant Flow Sensor","qty":1}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-02_D26-07-20_14:10:45.857',
      'ET-LAM-02',
      'Ch-B',
      'FAB_2',
      'ETCH',
      'LAM_VERSYS',
      'SOFTWARE',
      'VERIFIED',
      1784556645857,
      1784558505857,
      31,
      FALSE,
      'SW-SEQ-303',
      'Sequence Interlock Abort',
      'ALARM-10433033',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1784560485857}',
      '[]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-TEL-03_D26-07-19_17:44:45.645',
      'CVD-TEL-03',
      'Ch-C',
      'FAB_3',
      'CVD',
      'TEL_TRIAS',
      'PREVENTIVE',
      'CLOSED',
      1784483085645,
      1784485965645,
      48,
      TRUE,
      'PM-CHM-001',
      'Periodic Chamber Wet Cleaning PM',
      'ALARM-10440010',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1784486265645}',
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":3},{"replacementType":"REPLACEMENT_PART","partNo":"BLW-104","partName":"Bellows Seal Assembly","qty":3}]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-04_D26-07-19_02:39:45.360',
      'CMP-AMAT-04',
      'PM1',
      'FAB_1',
      'CMP',
      'AMAT_REFLEXION',
      'HARDWARE',
      'DOWN_OCCURRED',
      1784428785360,
      NULL,
      0,
      FALSE,
      'HW-ESC-701',
      'ESC Chuck Helium Leak Check Fail',
      'ALARM-10457011',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"ESC-CHUCK-01","partName":"Electrostatic Chuck","qty":1}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-05_D26-07-18_16:05:45.002',
      'DIFF-TEL-05',
      'PM2',
      'FAB_2',
      'DIFF',
      'TEL_ALPHA',
      'HARDWARE',
      'IN_PROGRESS',
      1784390745002,
      NULL,
      32,
      FALSE,
      'HW-PRS-108',
      'Manometer Sensor Drift Error',
      'ALARM-10461088',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"SEN-PRS-02","partName":"Capacitance Manometer Gauge","qty":2}]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-06_D26-07-17_16:52:44.571',
      'IMP-AMAT-06',
      'PM3',
      'FAB_3',
      'IMP',
      'AMAT_VIISTA_TRIDENT',
      'HARDWARE',
      'ACTION_DONE',
      1784307164571,
      1784313104571,
      99,
      FALSE,
      'GAS-MFC-550',
      'Ar Gas MFC Zero Drift Detected',
      'ALARM-10475501',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1784314664571}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MFC-550","partName":"Ar Gas MFC","qty":3}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-SEMES-01_D26-07-16_22:10:44.067',
      'CLN-SEMES-01',
      'PM4',
      'FAB_1',
      'CLEAN',
      'SEMES_IRIS',
      'HARDWARE',
      'VERIFIED',
      1784239844067,
      1784246804067,
      116,
      TRUE,
      'HW-SEAL-204',
      'Bellows Seal Fatigue Rupture Warning',
      'ALARM-10482044',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1784248784067}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"BLW-104","partName":"Bellows Seal Assembly","qty":1},{"replacementType":"USE_MATERIAL","partNo":"OR-5542","partName":"FFKM O-Ring","qty":1}]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-NIKON-02_D26-07-16_08:49:43.490',
      'PH-NIKON-02',
      'LL1',
      'FAB_2',
      'PHOTO',
      'NIKON_NSR_S620D',
      'PROCESS',
      'CLOSED',
      1784191783490,
      1784199763490,
      133,
      FALSE,
      'PR-EPD-302',
      'Optical Emission Endpoint Signal Abnormal',
      'ALARM-10493022',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1784200063490}',
      '[]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-AMAT-03_D26-07-16_00:49:42.840',
      'ET-AMAT-03',
      'LL2',
      'FAB_3',
      'ETCH',
      'AMAT_CENTRIS_SYM3',
      'HARDWARE',
      'DOWN_OCCURRED',
      1784162982840,
      NULL,
      0,
      FALSE,
      'HW-VAC-302',
      'Vacuum Leak Detected',
      'ALARM-10505021',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":3},{"replacementType":"REPLACEMENT_PART","partNo":"MTR-552","partName":"Servo Motor","qty":3}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-JUSUNG-04_D26-07-15_03:20:42.117',
      'CVD-JUSUNG-04',
      'TM1',
      'FAB_1',
      'CVD',
      'JUSUNG_EUREKA',
      'SOFTWARE',
      'IN_PROGRESS',
      1784085642117,
      NULL,
      67,
      FALSE,
      'SW-CTRL-105',
      'Controller Communication Loss',
      'ALARM-10518822',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-05_D26-07-14_11:12:41.321',
      'CMP-EBARA-05',
      'TM2',
      'FAB_2',
      'CMP',
      'EBARA_F_REX',
      'HARDWARE',
      'ACTION_DONE',
      1784027561321,
      1784038601321,
      184,
      TRUE,
      'HW-HEAT-401',
      'Heater Temp Out of Range',
      'ALARM-10523044',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1784040161321}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":2}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-ASM-06_D26-07-13_23:35:40.452',
      'DIFF-ASM-06',
      'CH1',
      'FAB_3',
      'DIFF',
      'ASM_A412',
      'PROCESS',
      'VERIFIED',
      1783985740452,
      1783997800452,
      201,
      FALSE,
      'PR-SLRY-002',
      'Slurry Supply Pressure Low',
      'ALARM-10531102',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1783999780452}',
      '[{"replacementType":"USE_MATERIAL","partNo":"PR-PAD-01","partName":"Polishing Pad","qty":3}]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-01_D26-07-13_17:19:39.510',
      'IMP-VARIAN-01',
      'CH2',
      'FAB_1',
      'IMP',
      'VARIAN_VIISTA',
      'UTILITY',
      'CLOSED',
      1783963179510,
      1783976259510,
      218,
      FALSE,
      'UT-GAS-901',
      'N2 Gas Supply Abnormality',
      'ALARM-10549021',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1783976559510}',
      '[]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-PSK-02_D26-07-12_21:34:39.495',
      'CLN-PSK-02',
      NULL,
      'FAB_2',
      'CLEAN',
      'PSK_SUPRA',
      'HARDWARE',
      'DOWN_OCCURRED',
      1783892079495,
      NULL,
      0,
      FALSE,
      'RF-GEN-102',
      'RF Matcher Reflected Power High',
      'ALARM-10554401',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"RF-GEN-102","partName":"RF Generator Module","qty":2}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-ASML-03_D26-07-12_07:10:39.407',
      'PH-ASML-03',
      'Ch-A',
      'FAB_3',
      'PHOTO',
      'ASML_NXT_1980DI',
      'OPTICAL',
      'IN_PROGRESS',
      1783840239407,
      NULL,
      42,
      TRUE,
      'OPT-LNS-201',
      'Illumination Sensor Calibration Error',
      'ALARM-10566602',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-TEL-04_D26-07-11_22:07:39.246',
      'ET-TEL-04',
      'Ch-B',
      'FAB_1',
      'ETCH',
      'TEL_TACTRAS',
      'HARDWARE',
      'ACTION_DONE',
      1783807659246,
      1783823799246,
      269,
      FALSE,
      'ION-SRC-501',
      'Ion Source Filament Life Exceeded',
      'ALARM-10577705',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1783825359246}',
      '[{"replacementType":"USE_MATERIAL","partNo":"FIL-501","partName":"Ion Source Filament","qty":1}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-ASM-05_D26-07-10_23:35:39.012',
      'CVD-ASM-05',
      'Ch-C',
      'FAB_2',
      'CVD',
      'ASM_EAGLE_12',
      'HARDWARE',
      'VERIFIED',
      1783726539012,
      1783743699012,
      286,
      FALSE,
      'CHM-NOZ-303',
      'Chemical Dispense Nozzle Clogging',
      'ALARM-10582209',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1783745679012}',
      '[{"replacementType":"USE_MATERIAL","partNo":"NOZ-303","partName":"Chemical Nozzle Tip","qty":2}]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-KC-06_D26-07-10_06:24:38.705',
      'CMP-KC-06',
      'PM1',
      'FAB_3',
      'CMP',
      'KC_TECH_CMP_300',
      'HARDWARE',
      'CLOSED',
      1783664678705,
      1783682858705,
      303,
      FALSE,
      'VAC-PMP-801',
      'Dry Vacuum Pump Overload',
      'ALARM-10598012',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1783683158705}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"VAC-PMP-801","partName":"Vacuum Pump Unit","qty":3}]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-01_D26-07-09_17:44:38.325',
      'DIFF-KOKUSAI-01',
      'PM2',
      'FAB_1',
      'DIFF',
      'KOKUSAI_ADVANCED',
      'HARDWARE',
      'DOWN_OCCURRED',
      1783619078325,
      NULL,
      0,
      TRUE,
      'WFR-STG-404',
      'Wafer Stage Interferometer Mirror Dirty',
      'ALARM-10604040',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-02_D26-07-09_10:25:37.872',
      'IMP-AXCELIS-02',
      'PM3',
      'FAB_2',
      'IMP',
      'AXCELIS_PURION_H',
      'HARDWARE',
      'IN_PROGRESS',
      1783592737872,
      NULL,
      17,
      FALSE,
      'GAS-MFC-202',
      'CF4 Gas MFC Flow Hunting',
      'ALARM-10612020',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MFC-202","partName":"Mass Flow Controller","qty":2}]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-TEL-03_D26-07-08_13:37:37.346',
      'CLN-TEL-03',
      'PM4',
      'FAB_3',
      'CLEAN',
      'TEL_CELLESSE',
      'CONSUMABLE',
      'ACTION_DONE',
      1783517857346,
      1783539097346,
      354,
      FALSE,
      'MEC-PAD-101',
      'Polishing Pad Lifetime Expired',
      'ALARM-10621010',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1783540657346}',
      '[{"replacementType":"USE_MATERIAL","partNo":"MEC-PAD-101","partName":"Conditioner Disk","qty":3}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-CANON-04_D26-07-07_22:10:36.747',
      'PH-CANON-04',
      'LL1',
      'FAB_1',
      'PHOTO',
      'CANON_FPA_6300ES6A',
      'HARDWARE',
      'VERIFIED',
      1783462236747,
      1783484496747,
      371,
      FALSE,
      'MEC-BOT-502',
      'Boat Elevator Vertical Lead Screw Belt Loose',
      'ALARM-10635020',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1783486476747}',
      '[]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-05_D26-07-07_12:04:36.075',
      'ET-LAM-05',
      'LL2',
      'FAB_2',
      'ETCH',
      'LAM_KIYO_CX',
      'HARDWARE',
      'CLOSED',
      1783425876075,
      1783427556075,
      28,
      TRUE,
      'HW-VAL-301',
      'Throttle Valve Encoder Signal Error',
      'ALARM-10643010',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1783427856075}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"VAL-301","partName":"Throttle Valve Assembly","qty":2},{"replacementType":"REPLACEMENT_PART","partNo":"PN-001","partName":"Valve Assembly","qty":2}]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-AMAT-06_D26-07-06_12:29:35.330',
      'CVD-AMAT-06',
      'TM1',
      'FAB_3',
      'CVD',
      'AMAT_PRODUCER',
      'HARDWARE',
      'DOWN_OCCURRED',
      1783340975330,
      NULL,
      0,
      FALSE,
      'HW-PMP-902',
      'Chamber Base Vacuum Timeout',
      'ALARM-10659020',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"PMP-881","partName":"Dry Vacuum Pump","qty":3}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-01_D26-07-05_18:15:34.512',
      'CMP-AMAT-01',
      'TM2',
      'FAB_1',
      'CMP',
      'AMAT_REFLEXION',
      'PROCESS',
      'IN_PROGRESS',
      1783275334512,
      NULL,
      52,
      FALSE,
      'PR-TEMP-101',
      'Process Chamber Temperature Uniformity Fail',
      'ALARM-10661011',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":1}]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-02_D26-07-05_04:32:33.621',
      'DIFF-TEL-02',
      'CH1',
      'FAB_2',
      'DIFF',
      'TEL_ALPHA',
      'UTILITY',
      'ACTION_DONE',
      1783225953621,
      1783230693621,
      79,
      FALSE,
      'UT-CW-202',
      'Cooling Water Flow Rate Low',
      'ALARM-10672022',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1783232253621}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"SEN-FLW-01","partName":"Coolant Flow Sensor","qty":2}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-03_D26-07-04_20:10:32.657',
      'IMP-AMAT-03',
      'CH2',
      'FAB_3',
      'IMP',
      'AMAT_VIISTA_TRIDENT',
      'SOFTWARE',
      'VERIFIED',
      1783195832657,
      1783201592657,
      96,
      TRUE,
      'SW-SEQ-303',
      'Sequence Interlock Abort',
      'ALARM-10683033',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1783203572657}',
      '[]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-DNS-04_D26-07-03_23:09:32.620',
      'CLN-DNS-04',
      NULL,
      'FAB_1',
      'CLEAN',
      'DNS_SS_3000',
      'PREVENTIVE',
      'CLOSED',
      1783120172620,
      1783126952620,
      113,
      FALSE,
      'PM-CHM-001',
      'Periodic Chamber Wet Cleaning PM',
      'ALARM-10690010',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1783127252620}',
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":1},{"replacementType":"REPLACEMENT_PART","partNo":"BLW-104","partName":"Bellows Seal Assembly","qty":1}]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-ASML-05_D26-07-03_06:39:32.510',
      'PH-ASML-05',
      'Ch-A',
      'FAB_2',
      'PHOTO',
      'ASML_TWINSCAN',
      'HARDWARE',
      'DOWN_OCCURRED',
      1783060772510,
      NULL,
      0,
      FALSE,
      'HW-ESC-701',
      'ESC Chuck Helium Leak Check Fail',
      'ALARM-10707011',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"ESC-CHUCK-01","partName":"Electrostatic Chuck","qty":2}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-06_D26-07-02_19:30:32.327',
      'ET-LAM-06',
      'Ch-B',
      'FAB_3',
      'ETCH',
      'LAM_VERSYS',
      'HARDWARE',
      'IN_PROGRESS',
      1783020632327,
      NULL,
      27,
      FALSE,
      'HW-PRS-108',
      'Manometer Sensor Drift Error',
      'ALARM-10711088',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"SEN-PRS-02","partName":"Capacitance Manometer Gauge","qty":3}]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-TEL-01_D26-07-02_12:52:32.071',
      'CVD-TEL-01',
      'Ch-C',
      'FAB_1',
      'CVD',
      'TEL_TRIAS',
      'HARDWARE',
      'ACTION_DONE',
      1782996752071,
      1783006592071,
      164,
      TRUE,
      'GAS-MFC-550',
      'Ar Gas MFC Zero Drift Detected',
      'ALARM-10725501',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1783008152071}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MFC-550","partName":"Ar Gas MFC","qty":1}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-02_D26-07-01_17:35:31.742',
      'CMP-EBARA-02',
      'PM1',
      'FAB_2',
      'CMP',
      'EBARA_F_REX',
      'HARDWARE',
      'VERIFIED',
      1782927331742,
      1782938191742,
      181,
      FALSE,
      'HW-SEAL-204',
      'Bellows Seal Fatigue Rupture Warning',
      'ALARM-10732044',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1782940171742}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"BLW-104","partName":"Bellows Seal Assembly","qty":2},{"replacementType":"USE_MATERIAL","partNo":"OR-5542","partName":"FFKM O-Ring","qty":2}]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-ASM-03_D26-07-01_02:49:31.340',
      'DIFF-ASM-03',
      'PM2',
      'FAB_3',
      'DIFF',
      'ASM_A412',
      'PROCESS',
      'CLOSED',
      1782874171340,
      1782886051340,
      198,
      FALSE,
      'PR-EPD-302',
      'Optical Emission Endpoint Signal Abnormal',
      'ALARM-10743022',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1782886351340}',
      '[]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-04_D26-06-30_17:24:30.865',
      'IMP-VARIAN-04',
      'PM3',
      'FAB_1',
      'IMP',
      'VARIAN_VIISTA',
      'HARDWARE',
      'DOWN_OCCURRED',
      1782840270865,
      NULL,
      0,
      FALSE,
      'HW-VAC-302',
      'Vacuum Leak Detected',
      'ALARM-10755021',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":1},{"replacementType":"REPLACEMENT_PART","partNo":"MTR-552","partName":"Servo Motor","qty":1}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-SEMES-05_D26-06-29_19:20:30.317',
      'CLN-SEMES-05',
      'PM4',
      'FAB_2',
      'CLEAN',
      'SEMES_IRIS',
      'SOFTWARE',
      'IN_PROGRESS',
      1782760830317,
      NULL,
      62,
      TRUE,
      'SW-CTRL-105',
      'Controller Communication Loss',
      'ALARM-10768822',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-NIKON-06_D26-06-29_01:47:29.696',
      'PH-NIKON-06',
      'LL1',
      'FAB_3',
      'PHOTO',
      'NIKON_NSR_S620D',
      'HARDWARE',
      'ACTION_DONE',
      1782697649696,
      1782712589696,
      249,
      FALSE,
      'HW-HEAT-401',
      'Heater Temp Out of Range',
      'ALARM-10773044',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1782714149696}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":3}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-AMAT-01_D26-06-28_13:35:29.002',
      'ET-AMAT-01',
      'LL2',
      'FAB_1',
      'ETCH',
      'AMAT_CENTRIS_SYM3',
      'PROCESS',
      'VERIFIED',
      1782653729002,
      1782669689002,
      266,
      FALSE,
      'PR-SLRY-002',
      'Slurry Supply Pressure Low',
      'ALARM-10781102',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1782671669002}',
      '[{"replacementType":"USE_MATERIAL","partNo":"PR-PAD-01","partName":"Polishing Pad","qty":1}]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-JUSUNG-02_D26-06-28_05:54:28.235',
      'CVD-JUSUNG-02',
      'TM1',
      'FAB_2',
      'CVD',
      'JUSUNG_EUREKA',
      'UTILITY',
      'CLOSED',
      1782626068235,
      1782643048235,
      283,
      FALSE,
      'UT-GAS-901',
      'N2 Gas Supply Abnormality',
      'ALARM-10799021',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1782643348235}',
      '[]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-KC-03_D26-06-27_09:34:27.395',
      'CMP-KC-03',
      'TM2',
      'FAB_3',
      'CMP',
      'KC_TECH_CMP_300',
      'HARDWARE',
      'DOWN_OCCURRED',
      1782552867395,
      NULL,
      0,
      TRUE,
      'RF-GEN-102',
      'RF Matcher Reflected Power High',
      'ALARM-10804401',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"RF-GEN-102","partName":"RF Generator Module","qty":3}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-04_D26-06-26_17:45:26.482',
      'DIFF-KOKUSAI-04',
      'CH1',
      'FAB_1',
      'DIFF',
      'KOKUSAI_ADVANCED',
      'OPTICAL',
      'IN_PROGRESS',
      1782495926482,
      NULL,
      37,
      FALSE,
      'OPT-LNS-201',
      'Illumination Sensor Calibration Error',
      'ALARM-10816602',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-05_D26-06-26_07:17:25.496',
      'IMP-AXCELIS-05',
      'CH2',
      'FAB_2',
      'IMP',
      'AXCELIS_PURION_H',
      'HARDWARE',
      'ACTION_DONE',
      1782458245496,
      1782478285496,
      334,
      FALSE,
      'ION-SRC-501',
      'Ion Source Filament Life Exceeded',
      'ALARM-10827705',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1782479845496}',
      '[{"replacementType":"USE_MATERIAL","partNo":"FIL-501","partName":"Ion Source Filament","qty":2}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-PSK-06_D26-06-25_08:10:25.437',
      'CLN-PSK-06',
      NULL,
      'FAB_3',
      'CLEAN',
      'PSK_SUPRA',
      'HARDWARE',
      'VERIFIED',
      1782375025437,
      1782396085437,
      351,
      FALSE,
      'CHM-NOZ-303',
      'Chemical Dispense Nozzle Clogging',
      'ALARM-10832209',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1782398065437}',
      '[{"replacementType":"USE_MATERIAL","partNo":"NOZ-303","partName":"Chemical Nozzle Tip","qty":3}]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-ASML-01_D26-06-24_13:34:25.305',
      'PH-ASML-01',
      'Ch-A',
      'FAB_1',
      'PHOTO',
      'ASML_NXT_1980DI',
      'HARDWARE',
      'CLOSED',
      1782308065305,
      1782330145305,
      368,
      TRUE,
      'VAC-PMP-801',
      'Dry Vacuum Pump Overload',
      'ALARM-10848012',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1782330445305}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"VAC-PMP-801","partName":"Vacuum Pump Unit","qty":1}]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-TEL-02_D26-06-24_00:19:25.100',
      'ET-TEL-02',
      'Ch-B',
      'FAB_2',
      'ETCH',
      'TEL_TACTRAS',
      'HARDWARE',
      'DOWN_OCCURRED',
      1782260365100,
      NULL,
      0,
      FALSE,
      'WFR-STG-404',
      'Wafer Stage Interferometer Mirror Dirty',
      'ALARM-10854040',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-ASM-03_D26-06-23_15:35:24.822',
      'CVD-ASM-03',
      'Ch-C',
      'FAB_3',
      'CVD',
      'ASM_EAGLE_12',
      'HARDWARE',
      'IN_PROGRESS',
      1782228924822,
      NULL,
      12,
      FALSE,
      'GAS-MFC-202',
      'CF4 Gas MFC Flow Hunting',
      'ALARM-10862020',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MFC-202","partName":"Mass Flow Controller","qty":3}]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-04_D26-06-22_18:12:24.471',
      'CMP-AMAT-04',
      'PM1',
      'FAB_1',
      'CMP',
      'AMAT_REFLEXION',
      'CONSUMABLE',
      'ACTION_DONE',
      1782151944471,
      1782155484471,
      59,
      FALSE,
      'MEC-PAD-101',
      'Polishing Pad Lifetime Expired',
      'ALARM-10871010',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1782157044471}',
      '[{"replacementType":"USE_MATERIAL","partNo":"MEC-PAD-101","partName":"Conditioner Disk","qty":1}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-05_D26-06-22_02:10:24.047',
      'DIFF-TEL-05',
      'PM2',
      'FAB_2',
      'DIFF',
      'TEL_ALPHA',
      'HARDWARE',
      'VERIFIED',
      1782094224047,
      1782098784047,
      76,
      TRUE,
      'MEC-BOT-502',
      'Boat Elevator Vertical Lead Screw Belt Loose',
      'ALARM-10885020',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1782100764047}',
      '[]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-06_D26-06-21_14:39:23.550',
      'IMP-AMAT-06',
      'PM3',
      'FAB_3',
      'IMP',
      'AMAT_VIISTA_TRIDENT',
      'HARDWARE',
      'CLOSED',
      1782052763550,
      1782058343550,
      93,
      FALSE,
      'HW-VAL-301',
      'Throttle Valve Encoder Signal Error',
      'ALARM-10893010',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1782058643550}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"VAL-301","partName":"Throttle Valve Assembly","qty":3},{"replacementType":"REPLACEMENT_PART","partNo":"PN-001","partName":"Valve Assembly","qty":3}]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-TEL-01_D26-06-21_08:29:22.980',
      'CLN-TEL-01',
      'PM4',
      'FAB_1',
      'CLEAN',
      'TEL_CELLESSE',
      'HARDWARE',
      'DOWN_OCCURRED',
      1782030562980,
      NULL,
      0,
      FALSE,
      'HW-PMP-902',
      'Chamber Base Vacuum Timeout',
      'ALARM-10909020',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"PMP-881","partName":"Dry Vacuum Pump","qty":1}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-CANON-02_D26-06-20_12:50:22.337',
      'PH-CANON-02',
      'LL1',
      'FAB_2',
      'PHOTO',
      'CANON_FPA_6300ES6A',
      'PROCESS',
      'IN_PROGRESS',
      1781959822337,
      NULL,
      47,
      FALSE,
      'PR-TEMP-101',
      'Process Chamber Temperature Uniformity Fail',
      'ALARM-10911011',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":2}]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-03_D26-06-19_22:32:21.621',
      'ET-LAM-03',
      'LL2',
      'FAB_3',
      'ETCH',
      'LAM_KIYO_CX',
      'UTILITY',
      'ACTION_DONE',
      1781908341621,
      1781916981621,
      144,
      TRUE,
      'UT-CW-202',
      'Cooling Water Flow Rate Low',
      'ALARM-10922022',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1781918541621}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"SEN-FLW-01","partName":"Coolant Flow Sensor","qty":3}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-AMAT-04_D26-06-19_12:45:20.832',
      'CVD-AMAT-04',
      'TM1',
      'FAB_1',
      'CVD',
      'AMAT_PRODUCER',
      'SOFTWARE',
      'VERIFIED',
      1781873120832,
      1781882780832,
      161,
      FALSE,
      'SW-SEQ-303',
      'Sequence Interlock Abort',
      'ALARM-10933033',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1781884760832}',
      '[]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-05_D26-06-18_14:19:19.970',
      'CMP-EBARA-05',
      'TM2',
      'FAB_2',
      'CMP',
      'EBARA_F_REX',
      'PREVENTIVE',
      'CLOSED',
      1781792359970,
      1781803039970,
      178,
      FALSE,
      'PM-CHM-001',
      'Periodic Chamber Wet Cleaning PM',
      'ALARM-10940010',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1781803339970}',
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":2},{"replacementType":"REPLACEMENT_PART","partNo":"BLW-104","partName":"Bellows Seal Assembly","qty":2}]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-ASM-06_D26-06-17_21:14:19.035',
      'DIFF-ASM-06',
      'CH1',
      'FAB_3',
      'DIFF',
      'ASM_A412',
      'HARDWARE',
      'DOWN_OCCURRED',
      1781730859035,
      NULL,
      0,
      FALSE,
      'HW-ESC-701',
      'ESC Chuck Helium Leak Check Fail',
      'ALARM-10957011',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"ESC-CHUCK-01","partName":"Electrostatic Chuck","qty":3}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-01_D26-06-17_08:40:19.027',
      'IMP-VARIAN-01',
      'CH2',
      'FAB_1',
      'IMP',
      'VARIAN_VIISTA',
      'HARDWARE',
      'IN_PROGRESS',
      1781685619027,
      NULL,
      22,
      TRUE,
      'HW-PRS-108',
      'Manometer Sensor Drift Error',
      'ALARM-10961088',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"SEN-PRS-02","partName":"Capacitance Manometer Gauge","qty":1}]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-DNS-02_D26-06-17_01:27:18.946',
      'CLN-DNS-02',
      NULL,
      'FAB_2',
      'CLEAN',
      'DNS_SS_3000',
      'HARDWARE',
      'ACTION_DONE',
      1781659638946,
      1781673378946,
      229,
      FALSE,
      'GAS-MFC-550',
      'Ar Gas MFC Zero Drift Detected',
      'ALARM-10975501',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1781674938946}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MFC-550","partName":"Ar Gas MFC","qty":2}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-ASML-03_D26-06-16_04:45:18.792',
      'PH-ASML-03',
      'Ch-A',
      'FAB_3',
      'PHOTO',
      'ASML_TWINSCAN',
      'HARDWARE',
      'VERIFIED',
      1781585118792,
      1781599878792,
      246,
      FALSE,
      'HW-SEAL-204',
      'Bellows Seal Fatigue Rupture Warning',
      'ALARM-10982044',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1781601858792}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"BLW-104","partName":"Bellows Seal Assembly","qty":3},{"replacementType":"USE_MATERIAL","partNo":"OR-5542","partName":"FFKM O-Ring","qty":3}]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-04_D26-06-15_13:24:18.565',
      'ET-LAM-04',
      'Ch-B',
      'FAB_1',
      'ETCH',
      'LAM_VERSYS',
      'PROCESS',
      'CLOSED',
      1781529858565,
      1781545638565,
      263,
      FALSE,
      'PR-EPD-302',
      'Optical Emission Endpoint Signal Abnormal',
      'ALARM-10993022',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1781545938565}',
      '[]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-TEL-05_D26-06-15_03:24:18.265',
      'CVD-TEL-05',
      'Ch-C',
      'FAB_2',
      'CVD',
      'TEL_TRIAS',
      'HARDWARE',
      'DOWN_OCCURRED',
      1781493858265,
      NULL,
      0,
      TRUE,
      'HW-VAC-302',
      'Vacuum Leak Detected',
      'ALARM-11005021',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":2},{"replacementType":"REPLACEMENT_PART","partNo":"MTR-552","partName":"Servo Motor","qty":2}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-KC-06_D26-06-14_03:55:17.892',
      'CMP-KC-06',
      'PM1',
      'FAB_3',
      'CMP',
      'KC_TECH_CMP_300',
      'SOFTWARE',
      'IN_PROGRESS',
      1781409317892,
      NULL,
      57,
      FALSE,
      'SW-CTRL-105',
      'Controller Communication Loss',
      'ALARM-11018822',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-01_D26-06-13_09:47:17.446',
      'DIFF-KOKUSAI-01',
      'PM2',
      'FAB_1',
      'DIFF',
      'KOKUSAI_ADVANCED',
      'HARDWARE',
      'ACTION_DONE',
      1781344037446,
      1781362877446,
      314,
      FALSE,
      'HW-HEAT-401',
      'Heater Temp Out of Range',
      'ALARM-11023044',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1781364437446}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":1}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-02_D26-06-12_20:10:16.927',
      'IMP-AXCELIS-02',
      'PM3',
      'FAB_2',
      'IMP',
      'AXCELIS_PURION_H',
      'PROCESS',
      'VERIFIED',
      1781295016927,
      1781314876927,
      331,
      FALSE,
      'PR-SLRY-002',
      'Slurry Supply Pressure Low',
      'ALARM-11031102',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1781316856927}',
      '[{"replacementType":"USE_MATERIAL","partNo":"PR-PAD-01","partName":"Polishing Pad","qty":2}]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-SEMES-03_D26-06-12_11:54:16.335',
      'CLN-SEMES-03',
      'PM4',
      'FAB_3',
      'CLEAN',
      'SEMES_IRIS',
      'UTILITY',
      'CLOSED',
      1781265256335,
      1781286136335,
      348,
      TRUE,
      'UT-GAS-901',
      'N2 Gas Supply Abnormality',
      'ALARM-11049021',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1781286436335}',
      '[]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-NIKON-04_D26-06-11_14:09:15.670',
      'PH-NIKON-04',
      'LL1',
      'FAB_1',
      'PHOTO',
      'NIKON_NSR_S620D',
      'HARDWARE',
      'DOWN_OCCURRED',
      1781186955670,
      NULL,
      0,
      FALSE,
      'RF-GEN-102',
      'RF Matcher Reflected Power High',
      'ALARM-11054401',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"RF-GEN-102","partName":"RF Generator Module","qty":1}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-AMAT-05_D26-06-10_21:45:14.932',
      'ET-AMAT-05',
      'LL2',
      'FAB_2',
      'ETCH',
      'AMAT_CENTRIS_SYM3',
      'OPTICAL',
      'IN_PROGRESS',
      1781127914932,
      NULL,
      32,
      FALSE,
      'OPT-LNS-201',
      'Illumination Sensor Calibration Error',
      'ALARM-11066602',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-JUSUNG-06_D26-06-10_10:42:14.121',
      'CVD-JUSUNG-06',
      'TM1',
      'FAB_3',
      'CVD',
      'JUSUNG_EUREKA',
      'HARDWARE',
      'ACTION_DONE',
      1781088134121,
      1781090474121,
      39,
      FALSE,
      'ION-SRC-501',
      'Ion Source Filament Life Exceeded',
      'ALARM-11077705',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1781092034121}',
      '[{"replacementType":"USE_MATERIAL","partNo":"FIL-501","partName":"Ion Source Filament","qty":3}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-01_D26-06-10_04:10:13.237',
      'CMP-AMAT-01',
      'TM2',
      'FAB_1',
      'CMP',
      'AMAT_REFLEXION',
      'HARDWARE',
      'VERIFIED',
      1781064613237,
      1781067973237,
      56,
      TRUE,
      'CHM-NOZ-303',
      'Chemical Dispense Nozzle Clogging',
      'ALARM-11082209',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1781069953237}',
      '[{"replacementType":"USE_MATERIAL","partNo":"NOZ-303","partName":"Chemical Nozzle Tip","qty":1}]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-02_D26-06-09_08:59:12.280',
      'DIFF-TEL-02',
      'CH1',
      'FAB_2',
      'DIFF',
      'TEL_ALPHA',
      'HARDWARE',
      'CLOSED',
      1780995552280,
      1780999932280,
      73,
      FALSE,
      'VAC-PMP-801',
      'Dry Vacuum Pump Overload',
      'ALARM-11098012',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1781000232280}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"VAC-PMP-801","partName":"Vacuum Pump Unit","qty":2}]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-03_D26-06-08_18:19:12.250',
      'IMP-AMAT-03',
      'CH2',
      'FAB_3',
      'IMP',
      'AMAT_VIISTA_TRIDENT',
      'HARDWARE',
      'DOWN_OCCURRED',
      1780942752250,
      NULL,
      0,
      FALSE,
      'WFR-STG-404',
      'Wafer Stage Interferometer Mirror Dirty',
      'ALARM-11104040',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-PSK-04_D26-06-08_09:00:12.147',
      'CLN-PSK-04',
      NULL,
      'FAB_1',
      'CLEAN',
      'PSK_SUPRA',
      'HARDWARE',
      'IN_PROGRESS',
      1780909212147,
      NULL,
      67,
      FALSE,
      'GAS-MFC-202',
      'CF4 Gas MFC Flow Hunting',
      'ALARM-11112020',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MFC-202","partName":"Mass Flow Controller","qty":1}]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-ASML-05_D26-06-07_10:12:11.971',
      'PH-ASML-05',
      'Ch-A',
      'FAB_2',
      'PHOTO',
      'ASML_NXT_1980DI',
      'CONSUMABLE',
      'ACTION_DONE',
      1780827131971,
      1780834571971,
      124,
      TRUE,
      'MEC-PAD-101',
      'Polishing Pad Lifetime Expired',
      'ALARM-11121010',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1780836131971}',
      '[{"replacementType":"USE_MATERIAL","partNo":"MEC-PAD-101","partName":"Conditioner Disk","qty":2}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-TEL-06_D26-06-06_16:45:11.722',
      'ET-TEL-06',
      'Ch-B',
      'FAB_3',
      'ETCH',
      'TEL_TACTRAS',
      'HARDWARE',
      'VERIFIED',
      1780764311722,
      1780772771722,
      141,
      FALSE,
      'MEC-BOT-502',
      'Boat Elevator Vertical Lead Screw Belt Loose',
      'ALARM-11135020',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1780774751722}',
      '[]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-ASM-01_D26-06-06_04:39:11.400',
      'CVD-ASM-01',
      'Ch-C',
      'FAB_1',
      'CVD',
      'ASM_EAGLE_12',
      'HARDWARE',
      'CLOSED',
      1780720751400,
      1780730231400,
      158,
      FALSE,
      'HW-VAL-301',
      'Throttle Valve Encoder Signal Error',
      'ALARM-11143010',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1780730531400}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"VAL-301","partName":"Throttle Valve Assembly","qty":1},{"replacementType":"REPLACEMENT_PART","partNo":"PN-001","partName":"Valve Assembly","qty":1}]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-02_D26-06-05_21:04:11.005',
      'CMP-EBARA-02',
      'PM1',
      'FAB_2',
      'CMP',
      'EBARA_F_REX',
      'HARDWARE',
      'DOWN_OCCURRED',
      1780693451005,
      NULL,
      0,
      FALSE,
      'HW-PMP-902',
      'Chamber Base Vacuum Timeout',
      'ALARM-11159020',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"PMP-881","partName":"Dry Vacuum Pump","qty":2}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-ASM-03_D26-06-05_00:50:10.537',
      'DIFF-ASM-03',
      'PM2',
      'FAB_3',
      'DIFF',
      'ASM_A412',
      'PROCESS',
      'IN_PROGRESS',
      1780620610537,
      NULL,
      42,
      TRUE,
      'PR-TEMP-101',
      'Process Chamber Temperature Uniformity Fail',
      'ALARM-11161011',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":3}]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-04_D26-06-04_09:07:09.996',
      'IMP-VARIAN-04',
      'PM3',
      'FAB_1',
      'IMP',
      'VARIAN_VIISTA',
      'UTILITY',
      'ACTION_DONE',
      1780564029996,
      1780576569996,
      209,
      FALSE,
      'UT-CW-202',
      'Cooling Water Flow Rate Low',
      'ALARM-11172022',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1780578129996}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"SEN-FLW-01","partName":"Coolant Flow Sensor","qty":1}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-TEL-05_D26-06-03_22:45:09.382',
      'CLN-TEL-05',
      'PM4',
      'FAB_2',
      'CLEAN',
      'TEL_CELLESSE',
      'SOFTWARE',
      'VERIFIED',
      1780526709382,
      1780540269382,
      226,
      FALSE,
      'SW-SEQ-303',
      'Sequence Interlock Abort',
      'ALARM-11183033',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1780542249382}',
      '[]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-CANON-06_D26-06-02_23:44:08.695',
      'PH-CANON-06',
      'LL1',
      'FAB_3',
      'PHOTO',
      'CANON_FPA_6300ES6A',
      'PREVENTIVE',
      'CLOSED',
      1780443848695,
      1780458428695,
      243,
      FALSE,
      'PM-CHM-001',
      'Periodic Chamber Wet Cleaning PM',
      'ALARM-11190010',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1780458728695}',
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":3},{"replacementType":"REPLACEMENT_PART","partNo":"BLW-104","partName":"Bellows Seal Assembly","qty":3}]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-01_D26-06-02_05:14:07.935',
      'ET-LAM-01',
      'LL2',
      'FAB_1',
      'ETCH',
      'LAM_KIYO_CX',
      'HARDWARE',
      'DOWN_OCCURRED',
      1780377247935,
      NULL,
      0,
      TRUE,
      'HW-ESC-701',
      'ESC Chuck Helium Leak Check Fail',
      'ALARM-11207011',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"ESC-CHUCK-01","partName":"Electrostatic Chuck","qty":1}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-AMAT-02_D26-06-01_16:05:07.102',
      'CVD-AMAT-02',
      'TM1',
      'FAB_2',
      'CVD',
      'AMAT_PRODUCER',
      'HARDWARE',
      'IN_PROGRESS',
      1780329907102,
      NULL,
      17,
      FALSE,
      'HW-PRS-108',
      'Manometer Sensor Drift Error',
      'ALARM-11211088',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"SEN-PRS-02","partName":"Capacitance Manometer Gauge","qty":2}]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-KC-03_D26-06-01_07:27:06.196',
      'CMP-KC-03',
      'TM2',
      'FAB_3',
      'CMP',
      'KC_TECH_CMP_300',
      'HARDWARE',
      'ACTION_DONE',
      1780298826196,
      1780316466196,
      294,
      FALSE,
      'GAS-MFC-550',
      'Ar Gas MFC Zero Drift Detected',
      'ALARM-11225501',
      '{"empNo":"TECH-1003","name":"최수리","jobTitle":"과장","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1780318026196}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"MFC-550","partName":"Ar Gas MFC","qty":3}]',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-04_D26-05-31_10:10:05.217',
      'DIFF-KOKUSAI-04',
      'CH1',
      'FAB_1',
      'DIFF',
      'KOKUSAI_ADVANCED',
      'HARDWARE',
      'VERIFIED',
      1780222205217,
      1780240865217,
      311,
      FALSE,
      'HW-SEAL-204',
      'Bellows Seal Fatigue Rupture Warning',
      'ALARM-11232044',
      '{"empNo":"TECH-1004","name":"강보전","jobTitle":"대리","shift":"C"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1780242845217}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"BLW-104","partName":"Bellows Seal Assembly","qty":1},{"replacementType":"USE_MATERIAL","partNo":"OR-5542","partName":"FFKM O-Ring","qty":1}]',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-05_D26-05-30_17:24:05.165',
      'IMP-AXCELIS-05',
      'CH2',
      'FAB_2',
      'IMP',
      'AXCELIS_PURION_H',
      'PROCESS',
      'CLOSED',
      1780161845165,
      1780181525165,
      328,
      TRUE,
      'PR-EPD-302',
      'Optical Emission Endpoint Signal Abnormal',
      'ALARM-11243022',
      '{"empNo":"TECH-1005","name":"윤설비","jobTitle":"사원","shift":"B"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1780181825165}',
      '[]',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CLN-DNS-06_D26-05-30_05:59:05.040',
      'CLN-DNS-06',
      NULL,
      'FAB_3',
      'CLEAN',
      'DNS_SS_3000',
      'HARDWARE',
      'DOWN_OCCURRED',
      1780120745040,
      NULL,
      0,
      FALSE,
      'HW-VAC-302',
      'Vacuum Leak Detected',
      'ALARM-11255021',
      '{"empNo":"TECH-1006","name":"한엔진","jobTitle":"주임","shift":"C"}',
      NULL,
      '[{"replacementType":"USE_MATERIAL","partNo":"OR-9021","partName":"O-Ring Kit","qty":3},{"replacementType":"REPLACEMENT_PART","partNo":"MTR-552","partName":"Servo Motor","qty":3}]',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'PH-ASML-01_D26-05-29_23:55:04.842',
      'PH-ASML-01',
      'Ch-A',
      'FAB_1',
      'PHOTO',
      'ASML_TWINSCAN',
      'SOFTWARE',
      'IN_PROGRESS',
      1780098904842,
      NULL,
      52,
      FALSE,
      'SW-CTRL-105',
      'Controller Communication Loss',
      'ALARM-11268822',
      '{"empNo":"TECH-1007","name":"오점검","jobTitle":"과장","shift":"A"}',
      NULL,
      '[]',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ET-LAM-02_D26-05-29_04:22:04.571',
      'ET-LAM-02',
      'Ch-B',
      'FAB_2',
      'ETCH',
      'LAM_VERSYS',
      'HARDWARE',
      'ACTION_DONE',
      1780028524571,
      1780051264571,
      379,
      FALSE,
      'HW-HEAT-401',
      'Heater Temp Out of Range',
      'ALARM-11273044',
      '{"empNo":"TECH-1008","name":"송유지","jobTitle":"대리","shift":"B"}',
      '{"empNo":"APP-2001","jobTitle":"파트장","name":"박공정","approvedAt":1780052824571}',
      '[{"replacementType":"REPLACEMENT_PART","partNo":"HT-200X","partName":"Heater Block","qty":2}]',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CVD-TEL-03_D26-05-28_14:10:04.227',
      'CVD-TEL-03',
      'Ch-C',
      'FAB_3',
      'CVD',
      'TEL_TRIAS',
      'PROCESS',
      'VERIFIED',
      1779977404227,
      1779979564227,
      36,
      TRUE,
      'PR-SLRY-002',
      'Slurry Supply Pressure Low',
      'ALARM-11281102',
      '{"empNo":"TECH-1009","name":"정보수","jobTitle":"주임","shift":"A"}',
      '{"empNo":"APP-2003","jobTitle":"파트장","name":"윤공정","approvedAt":1779981544227}',
      '[{"replacementType":"USE_MATERIAL","partNo":"PR-PAD-01","partName":"Polishing Pad","qty":3}]',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-04_D26-05-28_04:29:03.810',
      'CMP-AMAT-04',
      'PM1',
      'FAB_1',
      'CMP',
      'AMAT_REFLEXION',
      'UTILITY',
      'CLOSED',
      1779942543810,
      1779945723810,
      53,
      FALSE,
      'UT-GAS-901',
      'N2 Gas Supply Abnormality',
      'ALARM-11299021',
      '{"empNo":"TECH-1010","name":"백장비","jobTitle":"사원","shift":"C"}',
      '{"empNo":"APP-2005","jobTitle":"파트장","name":"류품질","approvedAt":1779946023810}',
      '[]',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-05_D26-05-27_06:09:03.320',
      'DIFF-TEL-05',
      'PM2',
      'FAB_2',
      'DIFF',
      'TEL_ALPHA',
      'HARDWARE',
      'DOWN_OCCURRED',
      1779862143320,
      NULL,
      0,
      FALSE,
      'RF-GEN-102',
      'RF Matcher Reflected Power High',
      'ALARM-11304401',
      '{"empNo":"TECH-1001","name":"이보전","jobTitle":"대리","shift":"A"}',
      NULL,
      '[{"replacementType":"REPLACEMENT_PART","partNo":"RF-GEN-102","partName":"RF Generator Module","qty":2}]',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_event_log (
      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,
      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,
      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,
      assigned_technician, approver, part_replacements, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-06_D26-05-26_12:20:02.757',
      'IMP-AMAT-06',
      'PM3',
      'FAB_3',
      'IMP',
      'AMAT_VIISTA_TRIDENT',
      'OPTICAL',
      'IN_PROGRESS',
      1779798002757,
      NULL,
      27,
      FALSE,
      'OPT-LNS-201',
      'Illumination Sensor Calibration Error',
      'ALARM-11316602',
      '{"empNo":"TECH-1002","name":"김정비","jobTitle":"사원","shift":"A"}',
      NULL,
      '[]',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

END;
/

COMMIT;

-- =====================================================================
-- 11. TB_DOWN_CONTENT (다운 이벤트 상세 본문 132건 데이터 적재)
-- =====================================================================
Prompt ****** Populating TB_DOWN_CONTENT table (132 rows) ....

BEGIN
  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-ASML-01_D26-08-07_10:15:22.123',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Vacuum Leak Detected</td></tr> <tr><th>에러 코드</th><td>HW-VAC-302 (ALARM-5021)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO ASML_NXT_1980DI 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-5021) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/0fc9edd7-e559-4449-b062-befe9d167350" data-file-id="0fc9edd7-e559-4449-b062-befe9d167350" data-name="colored_pencils.jpg" alt="colored_pencils.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>O-Ring Kit(OR-9021) - 2EA, Servo Motor(MTR-552) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'APP-2002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-03_D26-08-07_11:30:00.190',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-LAM-03_D26-08-07_11:30:00.190</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-LAM-03 / PM2</td></tr><tr><th>알람 코드</th><td>ALARM-8822 - SW-CTRL-105</td></tr><tr><th>상세 설명</th><td>Controller Communication Loss</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>LAM_KIYO_CX 가동 중 SOFTWARE 계통 이상 감지</li><li>진단 결과: Controller Communication Loss로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-TEL-02_D26-08-06_20:10:00.257',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Heater Temp Out of Range</td></tr> <tr><th>에러 코드</th><td>HW-HEAT-401 (ALARM-3044)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD TEL_TRIAS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-3044) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/b4ca862b-1e21-4207-ac94-0a1a9999d118" data-file-id="b4ca862b-1e21-4207-ac94-0a1a9999d118" data-name="dj_performance.jpg" alt="dj_performance.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>Heater Block(HT-200X) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-01_D26-08-06_15:40:00.324',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CMP-AMAT-01_D26-08-06_15:40:00.324</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CMP-AMAT-01 / Platen-1</td></tr><tr><th>알람 코드</th><td>ALARM-1029 - PR-SLRY-002</td></tr><tr><th>상세 설명</th><td>Slurry Flow Rate Low</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_REFLEXION 가동 중 PROCESS 계통 이상 감지</li><li>진단 결과: Slurry Flow Rate Low로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Slurry Filter</td><td>FLT-SL-05</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-KOKU-04_D26-08-06_08:05:00.391',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>N2 Gas Pressure Low</td></tr> <tr><th>에러 코드</th><td>UT-GAS-901 (ALARM-9912)</td></tr> <tr><th>공정 영향</th><td>DIFF 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>DIFF KOKUSAI_ADVANCED 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-9912) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/ebb4f8b8-8320-4847-872d-6d68d2f0f6bd" data-file-id="ebb4f8b8-8320-4847-872d-6d68d2f0f6bd" data-name="rainbow_umbrella.jpg" alt="rainbow_umbrella.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-TEL-01_D26-08-05_14:20:00.458',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-TEL-01_D26-08-05_14:20:00.458</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-TEL-01 / Ch-1</td></tr><tr><th>알람 코드</th><td>ALARM-4102 - RF-GEN-102</td></tr><tr><th>상세 설명</th><td>RF Matcher Reflection High</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>TEL_TACTRAS 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: RF Matcher Reflection High로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>RF Matcher Capacitor</td><td>CAP-RF-12</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'APP-2002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-NIKON-02_D26-08-05_09:10:00.525',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Illumination Uniformity Error</td></tr> <tr><th>에러 코드</th><td>OPT-LNS-201 (ALARM-6631)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO NIKON_NSR_S620D 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-6631) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/5752a1cf-5608-4808-b1af-0f22fa0c6883" data-file-id="5752a1cf-5608-4808-b1af-0f22fa0c6883" data-name="hot_air_balloon.jpg" alt="hot_air_balloon.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'APP-2004',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-01_D26-08-04_16:00:00.592',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - IMP-VARIAN-01_D26-08-04_16:00:00.592</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>IMP-VARIAN-01 / Source</td></tr><tr><th>알람 코드</th><td>ALARM-7721 - ION-SRC-501</td></tr><tr><th>상세 설명</th><td>Arc Chamber Filament Broken</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>VARIAN_VIISTA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Arc Chamber Filament Broken로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Filament Kit</td><td>FLM-ION-01</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-SEMES-01_D26-08-04_11:00:00.659',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Chemical Nozzle Pressure Low</td></tr> <tr><th>에러 코드</th><td>CHM-NOZ-303 (ALARM-2201)</td></tr> <tr><th>공정 영향</th><td>CLEAN 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CLEAN SEMES_IRIS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-2201) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/23a78118-999c-4f00-bb9e-568eeb776117" data-file-id="23a78118-999c-4f00-bb9e-568eeb776117" data-name="colorful_candies.jpg" alt="colorful_candies.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Nozzle Tip(NZ-TIP-03) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-AMAT-03_D26-08-03_18:20:00.726',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CVD-AMAT-03_D26-08-03_18:20:00.726</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CVD-AMAT-03 / Ch-C</td></tr><tr><th>알람 코드</th><td>ALARM-8109 - VAC-PMP-801</td></tr><tr><th>상세 설명</th><td>Dry Pump Overload Alarm</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_PRODUCER 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Dry Pump Overload Alarm로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Dry Pump 800L</td><td>PMP-DRY-800</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-ASML-02_D26-08-03_13:10:00.793',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Wafer Stage Positioning Error</td></tr> <tr><th>에러 코드</th><td>WFR-STG-404 (ALARM-5521)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO ASML_TWINSCAN 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-5521) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/795bfa21-b692-4e99-8c15-dc63888943ba" data-file-id="795bfa21-b692-4e99-8c15-dc63888943ba" data-name="colorful_building_balcony.jpg" alt="colorful_building_balcony.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'APP-2002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-01_D26-08-02_10:00:00.860',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-LAM-01_D26-08-02_10:00:00.860</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-LAM-01 / PM1</td></tr><tr><th>알람 코드</th><td>ALARM-3310 - GAS-MFC-202</td></tr><tr><th>상세 설명</th><td>CF4 MFC Flow Deviation</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>LAM_VERSYS 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: CF4 MFC Flow Deviation로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>MFC 500SCCM</td><td>MFC-CF4-500</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'APP-2004',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-01_D26-08-02_07:30:00.927',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Polishing Pad Life Expired</td></tr> <tr><th>에러 코드</th><td>MEC-PAD-101 (ALARM-1992)</td></tr> <tr><th>공정 영향</th><td>CMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CMP EBARA_F_REX 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-1992) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/def450f0-e2dd-4cbb-abab-042ab4a38dac" data-file-id="def450f0-e2dd-4cbb-abab-042ab4a38dac" data-name="colorful_straws.jpg" alt="colorful_straws.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>CMP Pad IC1000(PAD-IC-1000) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-03_D26-08-01_22:00:00.994',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - DIFF-TEL-03_D26-08-01_22:00:00.994</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>DIFF-TEL-03 / Boat-A</td></tr><tr><th>알람 코드</th><td>ALARM-9011 - MEC-BOT-502</td></tr><tr><th>상세 설명</th><td>Quartz Boat Elevator Jam</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>TEL_ALPHA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Quartz Boat Elevator Jam로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-TEL-01_D26-08-01_15:10:00.061',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Throttle Valve Control Error</td></tr> <tr><th>에러 코드</th><td>HW-VAL-301 (ALARM-3112)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD TEL_TRIAS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-3112) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/929ec290-20b1-4799-b55d-654ca40e3bd3" data-file-id="929ec290-20b1-4799-b55d-654ca40e3bd3" data-name="paint_palette.jpg" alt="paint_palette.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>Throttle Valve Motor(MTR-TV-01) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-04_D26-08-06_11:55:00.155',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-LAM-04_D26-08-06_11:55:00.155</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-LAM-04 / Ch-B</td></tr><tr><th>알람 코드</th><td>ALARM-10159020 - HW-PMP-902</td></tr><tr><th>상세 설명</th><td>Chamber Base Vacuum Timeout</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>LAM_VERSYS 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Chamber Base Vacuum Timeout로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Dry Vacuum Pump</td><td>PMP-881</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-TEL-05_D26-08-05_19:40:59.987',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Process Chamber Temperature Uniformity Fail</td></tr> <tr><th>에러 코드</th><td>PR-TEMP-101 (ALARM-10161011)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD TEL_TRIAS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10161011) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/899b4fce-29a5-4041-8567-7477648f18b0" data-file-id="899b4fce-29a5-4041-8567-7477648f18b0" data-name="paint_buckets_and_brush.jpg" alt="paint_buckets_and_brush.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>Heater Block(HT-200X) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-KC-06_D26-08-05_07:57:59.746',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CMP-KC-06_D26-08-05_07:57:59.746</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CMP-KC-06 / PM1</td></tr><tr><th>알람 코드</th><td>ALARM-10172022 - UT-CW-202</td></tr><tr><th>상세 설명</th><td>Cooling Water Flow Rate Low</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>KC_TECH_CMP_300 가동 중 UTILITY 계통 이상 감지</li><li>진단 결과: Cooling Water Flow Rate Low로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Coolant Flow Sensor</td><td>SEN-FLW-01</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-01_D26-08-05_01:35:59.432',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Sequence Interlock Abort</td></tr> <tr><th>에러 코드</th><td>SW-SEQ-303 (ALARM-10183033)</td></tr> <tr><th>공정 영향</th><td>DIFF 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>DIFF KOKUSAI_ADVANCED 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10183033) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/2fed3cfe-1cb0-474e-ab73-e9e0e20fc03c" data-file-id="2fed3cfe-1cb0-474e-ab73-e9e0e20fc03c" data-name="macbook_rgb_lighting.jpg" alt="macbook_rgb_lighting.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-02_D26-08-04_06:34:59.045',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - IMP-AXCELIS-02_D26-08-04_06:34:59.045</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>IMP-AXCELIS-02 / PM3</td></tr><tr><th>알람 코드</th><td>ALARM-10190010 - PM-CHM-001</td></tr><tr><th>상세 설명</th><td>Periodic Chamber Wet Cleaning PM</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AXCELIS_PURION_H 가동 중 PREVENTIVE 계통 이상 감지</li><li>진단 결과: Periodic Chamber Wet Cleaning PM로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>O-Ring Kit</td><td>OR-9021</td><td>2</td></tr><tr><td>Bellows Seal Assembly</td><td>BLW-104</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-SEMES-03_D26-08-03_16:04:58.585',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>ESC Chuck Helium Leak Check Fail</td></tr> <tr><th>에러 코드</th><td>HW-ESC-701 (ALARM-10207011)</td></tr> <tr><th>공정 영향</th><td>CLEAN 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CLEAN SEMES_IRIS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10207011) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/71ec8adb-9d9f-4f00-8c57-22e38239d8d0" data-file-id="71ec8adb-9d9f-4f00-8c57-22e38239d8d0" data-name="colored_pencils.jpg" alt="colored_pencils.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>Electrostatic Chuck(ESC-CHUCK-01) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-NIKON-04_D26-08-03_06:55:58.052',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - PH-NIKON-04_D26-08-03_06:55:58.052</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>PH-NIKON-04 / LL1</td></tr><tr><th>알람 코드</th><td>ALARM-10211088 - HW-PRS-108</td></tr><tr><th>상세 설명</th><td>Manometer Sensor Drift Error</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>NIKON_NSR_S620D 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Manometer Sensor Drift Error로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Capacitance Manometer Gauge</td><td>SEN-PRS-02</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-AMAT-05_D26-08-02_08:17:57.446',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Ar Gas MFC Zero Drift Detected</td></tr> <tr><th>에러 코드</th><td>GAS-MFC-550 (ALARM-10225501)</td></tr> <tr><th>공정 영향</th><td>ETCH 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>ETCH AMAT_CENTRIS_SYM3 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10225501) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/6b354bbc-06fa-4e0b-9d08-e7eafdf8e677" data-file-id="6b354bbc-06fa-4e0b-9d08-e7eafdf8e677" data-name="dj_performance.jpg" alt="dj_performance.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Ar Gas MFC(MFC-550) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-JUSUNG-06_D26-08-01_15:00:56.767',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CVD-JUSUNG-06_D26-08-01_15:00:56.767</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CVD-JUSUNG-06 / TM1</td></tr><tr><th>알람 코드</th><td>ALARM-10232044 - HW-SEAL-204</td></tr><tr><th>상세 설명</th><td>Bellows Seal Fatigue Rupture Warning</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>JUSUNG_EUREKA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Bellows Seal Fatigue Rupture Warning로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Bellows Seal Assembly</td><td>BLW-104</td><td>3</td></tr><tr><td>FFKM O-Ring</td><td>OR-5542</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-01_D26-08-01_02:14:56.015',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Optical Emission Endpoint Signal Abnormal</td></tr> <tr><th>에러 코드</th><td>PR-EPD-302 (ALARM-10243022)</td></tr> <tr><th>공정 영향</th><td>CMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CMP AMAT_REFLEXION 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10243022) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/4a9414c4-8a10-4364-b987-c1c8dbb3b91f" data-file-id="4a9414c4-8a10-4364-b987-c1c8dbb3b91f" data-name="rainbow_umbrella.jpg" alt="rainbow_umbrella.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-02_D26-07-31_18:49:55.190',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - DIFF-TEL-02_D26-07-31_18:49:55.190</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>DIFF-TEL-02 / CH1</td></tr><tr><th>알람 코드</th><td>ALARM-10255021 - HW-VAC-302</td></tr><tr><th>상세 설명</th><td>Vacuum Leak Detected</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>TEL_ALPHA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Vacuum Leak Detected로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>O-Ring Kit</td><td>OR-9021</td><td>2</td></tr><tr><td>Servo Motor</td><td>MTR-552</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-03_D26-07-30_22:45:54.292',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Controller Communication Loss</td></tr> <tr><th>에러 코드</th><td>SW-CTRL-105 (ALARM-10268822)</td></tr> <tr><th>공정 영향</th><td>IMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>IMP AMAT_VIISTA_TRIDENT 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10268822) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/29c71299-899a-478e-95d8-08d6513509ae" data-file-id="29c71299-899a-478e-95d8-08d6513509ae" data-name="hot_air_balloon.jpg" alt="hot_air_balloon.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-PSK-04_D26-07-30_07:12:53.321',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CLN-PSK-04_D26-07-30_07:12:53.321</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CLN-PSK-04 / Main Frame</td></tr><tr><th>알람 코드</th><td>ALARM-10273044 - HW-HEAT-401</td></tr><tr><th>상세 설명</th><td>Heater Temp Out of Range</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>PSK_SUPRA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Heater Temp Out of Range로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Heater Block</td><td>HT-200X</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-ASML-05_D26-07-29_21:00:53.277',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Slurry Supply Pressure Low</td></tr> <tr><th>에러 코드</th><td>PR-SLRY-002 (ALARM-10281102)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO ASML_NXT_1980DI 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10281102) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/880bcdfb-b3ee-4f6f-b6c6-6334093a1708" data-file-id="880bcdfb-b3ee-4f6f-b6c6-6334093a1708" data-name="colorful_candies.jpg" alt="colorful_candies.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>Polishing Pad(PR-PAD-01) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-TEL-06_D26-07-28_21:19:53.160',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-TEL-06_D26-07-28_21:19:53.160</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-TEL-06 / Ch-B</td></tr><tr><th>알람 코드</th><td>ALARM-10299021 - UT-GAS-901</td></tr><tr><th>상세 설명</th><td>N2 Gas Supply Abnormality</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>TEL_TACTRAS 가동 중 UTILITY 계통 이상 감지</li><li>진단 결과: N2 Gas Supply Abnormality로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-ASM-01_D26-07-28_02:59:52.970',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>RF Matcher Reflected Power High</td></tr> <tr><th>에러 코드</th><td>RF-GEN-102 (ALARM-10304401)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD ASM_EAGLE_12 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10304401) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/a1441d71-629d-46c8-b2c5-6b9bd99a185f" data-file-id="a1441d71-629d-46c8-b2c5-6b9bd99a185f" data-name="colorful_building_balcony.jpg" alt="colorful_building_balcony.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>RF Generator Module(RF-GEN-102) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-02_D26-07-27_13:10:52.707',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CMP-EBARA-02_D26-07-27_13:10:52.707</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CMP-EBARA-02 / PM1</td></tr><tr><th>알람 코드</th><td>ALARM-10316602 - OPT-LNS-201</td></tr><tr><th>상세 설명</th><td>Illumination Sensor Calibration Error</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>EBARA_F_REX 가동 중 OPTICAL 계통 이상 감지</li><li>진단 결과: Illumination Sensor Calibration Error로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-ASM-03_D26-07-27_04:42:52.371',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Ion Source Filament Life Exceeded</td></tr> <tr><th>에러 코드</th><td>ION-SRC-501 (ALARM-10327705)</td></tr> <tr><th>공정 영향</th><td>DIFF 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>DIFF ASM_A412 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10327705) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/1adc5cd3-a595-4eec-a58c-95e43ba3e27f" data-file-id="1adc5cd3-a595-4eec-a58c-95e43ba3e27f" data-name="colorful_straws.jpg" alt="colorful_straws.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Ion Source Filament(FIL-501) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-04_D26-07-26_07:35:51.962',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - IMP-VARIAN-04_D26-07-26_07:35:51.962</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>IMP-VARIAN-04 / PM3</td></tr><tr><th>알람 코드</th><td>ALARM-10332209 - CHM-NOZ-303</td></tr><tr><th>상세 설명</th><td>Chemical Dispense Nozzle Clogging</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>VARIAN_VIISTA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Chemical Dispense Nozzle Clogging로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Chemical Nozzle Tip</td><td>NOZ-303</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-TEL-05_D26-07-25_14:59:51.480',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Dry Vacuum Pump Overload</td></tr> <tr><th>에러 코드</th><td>VAC-PMP-801 (ALARM-10348012)</td></tr> <tr><th>공정 영향</th><td>CLEAN 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CLEAN TEL_CELLESSE 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10348012) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/e8ab41a3-40f1-41e5-bf7a-f76f3f149fc8" data-file-id="e8ab41a3-40f1-41e5-bf7a-f76f3f149fc8" data-name="paint_palette.jpg" alt="paint_palette.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>Vacuum Pump Unit(VAC-PMP-801) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-CANON-06_D26-07-25_03:44:50.925',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - PH-CANON-06_D26-07-25_03:44:50.925</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>PH-CANON-06 / LL1</td></tr><tr><th>알람 코드</th><td>ALARM-10354040 - WFR-STG-404</td></tr><tr><th>상세 설명</th><td>Wafer Stage Interferometer Mirror Dirty</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>CANON_FPA_6300ES6A 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Wafer Stage Interferometer Mirror Dirty로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-01_D26-07-24_21:00:50.297',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>CF4 Gas MFC Flow Hunting</td></tr> <tr><th>에러 코드</th><td>GAS-MFC-202 (ALARM-10362020)</td></tr> <tr><th>공정 영향</th><td>ETCH 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>ETCH LAM_KIYO_CX 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10362020) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/63232ee5-1790-45a0-834c-5a136a5f3fd8" data-file-id="63232ee5-1790-45a0-834c-5a136a5f3fd8" data-name="paint_buckets_and_brush.jpg" alt="paint_buckets_and_brush.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>Mass Flow Controller(MFC-202) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-AMAT-02_D26-07-24_01:37:49.596',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CVD-AMAT-02_D26-07-24_01:37:49.596</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CVD-AMAT-02 / TM1</td></tr><tr><th>알람 코드</th><td>ALARM-10371010 - MEC-PAD-101</td></tr><tr><th>상세 설명</th><td>Polishing Pad Lifetime Expired</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_PRODUCER 가동 중 CONSUMABLE 계통 이상 감지</li><li>진단 결과: Polishing Pad Lifetime Expired로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Conditioner Disk</td><td>MEC-PAD-101</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-KC-03_D26-07-23_11:35:48.822',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Boat Elevator Vertical Lead Screw Belt Loose</td></tr> <tr><th>에러 코드</th><td>MEC-BOT-502 (ALARM-10385020)</td></tr> <tr><th>공정 영향</th><td>CMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CMP KC_TECH_CMP_300 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10385020) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/18c3f8c2-176e-48f4-915b-1a85eb9838ea" data-file-id="18c3f8c2-176e-48f4-915b-1a85eb9838ea" data-name="macbook_rgb_lighting.jpg" alt="macbook_rgb_lighting.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-04_D26-07-23_02:04:47.975',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - DIFF-KOKUSAI-04_D26-07-23_02:04:47.975</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>DIFF-KOKUSAI-04 / CH1</td></tr><tr><th>알람 코드</th><td>ALARM-10393010 - HW-VAL-301</td></tr><tr><th>상세 설명</th><td>Throttle Valve Encoder Signal Error</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>KOKUSAI_ADVANCED 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Throttle Valve Encoder Signal Error로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Throttle Valve Assembly</td><td>VAL-301</td><td>1</td></tr><tr><td>Valve Assembly</td><td>PN-001</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-05_D26-07-22_03:54:47.055',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Chamber Base Vacuum Timeout</td></tr> <tr><th>에러 코드</th><td>HW-PMP-902 (ALARM-10409020)</td></tr> <tr><th>공정 영향</th><td>IMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>IMP AXCELIS_PURION_H 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10409020) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/ff9d3526-b1fa-48ac-a87e-c278eebeb23f" data-file-id="ff9d3526-b1fa-48ac-a87e-c278eebeb23f" data-name="colored_pencils.jpg" alt="colored_pencils.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>Dry Vacuum Pump(PMP-881) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-DNS-06_D26-07-21_10:15:46.062',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CLN-DNS-06_D26-07-21_10:15:46.062</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CLN-DNS-06 / Main Frame</td></tr><tr><th>알람 코드</th><td>ALARM-10411011 - PR-TEMP-101</td></tr><tr><th>상세 설명</th><td>Process Chamber Temperature Uniformity Fail</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>DNS_SS_3000 가동 중 PROCESS 계통 이상 감지</li><li>진단 결과: Process Chamber Temperature Uniformity Fail로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Heater Block</td><td>HT-200X</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-ASML-01_D26-07-20_21:57:45.996',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Cooling Water Flow Rate Low</td></tr> <tr><th>에러 코드</th><td>UT-CW-202 (ALARM-10422022)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO ASML_TWINSCAN 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10422022) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/859b7e1f-427c-4c2e-85a1-1b4592b4c222" data-file-id="859b7e1f-427c-4c2e-85a1-1b4592b4c222" data-name="dj_performance.jpg" alt="dj_performance.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Coolant Flow Sensor(SEN-FLW-01) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-02_D26-07-20_14:10:45.857',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-LAM-02_D26-07-20_14:10:45.857</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-LAM-02 / Ch-B</td></tr><tr><th>알람 코드</th><td>ALARM-10433033 - SW-SEQ-303</td></tr><tr><th>상세 설명</th><td>Sequence Interlock Abort</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>LAM_VERSYS 가동 중 SOFTWARE 계통 이상 감지</li><li>진단 결과: Sequence Interlock Abort로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-TEL-03_D26-07-19_17:44:45.645',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Periodic Chamber Wet Cleaning PM</td></tr> <tr><th>에러 코드</th><td>PM-CHM-001 (ALARM-10440010)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD TEL_TRIAS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10440010) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/c5fd074b-2452-4fb8-9c6c-4a1f9a95bdaf" data-file-id="c5fd074b-2452-4fb8-9c6c-4a1f9a95bdaf" data-name="rainbow_umbrella.jpg" alt="rainbow_umbrella.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>O-Ring Kit(OR-9021) - 3EA, Bellows Seal Assembly(BLW-104) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-04_D26-07-19_02:39:45.360',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CMP-AMAT-04_D26-07-19_02:39:45.360</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CMP-AMAT-04 / PM1</td></tr><tr><th>알람 코드</th><td>ALARM-10457011 - HW-ESC-701</td></tr><tr><th>상세 설명</th><td>ESC Chuck Helium Leak Check Fail</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_REFLEXION 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: ESC Chuck Helium Leak Check Fail로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Electrostatic Chuck</td><td>ESC-CHUCK-01</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-05_D26-07-18_16:05:45.002',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Manometer Sensor Drift Error</td></tr> <tr><th>에러 코드</th><td>HW-PRS-108 (ALARM-10461088)</td></tr> <tr><th>공정 영향</th><td>DIFF 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>DIFF TEL_ALPHA 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10461088) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/f77c848f-ef53-406b-9f3e-5fcc22a5c398" data-file-id="f77c848f-ef53-406b-9f3e-5fcc22a5c398" data-name="hot_air_balloon.jpg" alt="hot_air_balloon.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>Capacitance Manometer Gauge(SEN-PRS-02) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-06_D26-07-17_16:52:44.571',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - IMP-AMAT-06_D26-07-17_16:52:44.571</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>IMP-AMAT-06 / PM3</td></tr><tr><th>알람 코드</th><td>ALARM-10475501 - GAS-MFC-550</td></tr><tr><th>상세 설명</th><td>Ar Gas MFC Zero Drift Detected</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_VIISTA_TRIDENT 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Ar Gas MFC Zero Drift Detected로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Ar Gas MFC</td><td>MFC-550</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-SEMES-01_D26-07-16_22:10:44.067',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Bellows Seal Fatigue Rupture Warning</td></tr> <tr><th>에러 코드</th><td>HW-SEAL-204 (ALARM-10482044)</td></tr> <tr><th>공정 영향</th><td>CLEAN 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CLEAN SEMES_IRIS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10482044) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/a2aeb553-1db0-4471-a046-1d335e18f21f" data-file-id="a2aeb553-1db0-4471-a046-1d335e18f21f" data-name="colorful_candies.jpg" alt="colorful_candies.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>Bellows Seal Assembly(BLW-104) - 1EA, FFKM O-Ring(OR-5542) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-NIKON-02_D26-07-16_08:49:43.490',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - PH-NIKON-02_D26-07-16_08:49:43.490</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>PH-NIKON-02 / LL1</td></tr><tr><th>알람 코드</th><td>ALARM-10493022 - PR-EPD-302</td></tr><tr><th>상세 설명</th><td>Optical Emission Endpoint Signal Abnormal</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>NIKON_NSR_S620D 가동 중 PROCESS 계통 이상 감지</li><li>진단 결과: Optical Emission Endpoint Signal Abnormal로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-AMAT-03_D26-07-16_00:49:42.840',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Vacuum Leak Detected</td></tr> <tr><th>에러 코드</th><td>HW-VAC-302 (ALARM-10505021)</td></tr> <tr><th>공정 영향</th><td>ETCH 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>ETCH AMAT_CENTRIS_SYM3 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10505021) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/c571e465-c72f-41ae-b05e-2644dfdf373c" data-file-id="c571e465-c72f-41ae-b05e-2644dfdf373c" data-name="colorful_building_balcony.jpg" alt="colorful_building_balcony.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>O-Ring Kit(OR-9021) - 3EA, Servo Motor(MTR-552) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-JUSUNG-04_D26-07-15_03:20:42.117',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CVD-JUSUNG-04_D26-07-15_03:20:42.117</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CVD-JUSUNG-04 / TM1</td></tr><tr><th>알람 코드</th><td>ALARM-10518822 - SW-CTRL-105</td></tr><tr><th>상세 설명</th><td>Controller Communication Loss</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>JUSUNG_EUREKA 가동 중 SOFTWARE 계통 이상 감지</li><li>진단 결과: Controller Communication Loss로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-05_D26-07-14_11:12:41.321',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Heater Temp Out of Range</td></tr> <tr><th>에러 코드</th><td>HW-HEAT-401 (ALARM-10523044)</td></tr> <tr><th>공정 영향</th><td>CMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CMP EBARA_F_REX 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10523044) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/9b39fad0-49f4-4549-bed5-779018bfb865" data-file-id="9b39fad0-49f4-4549-bed5-779018bfb865" data-name="colorful_straws.jpg" alt="colorful_straws.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Heater Block(HT-200X) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-ASM-06_D26-07-13_23:35:40.452',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - DIFF-ASM-06_D26-07-13_23:35:40.452</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>DIFF-ASM-06 / CH1</td></tr><tr><th>알람 코드</th><td>ALARM-10531102 - PR-SLRY-002</td></tr><tr><th>상세 설명</th><td>Slurry Supply Pressure Low</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>ASM_A412 가동 중 PROCESS 계통 이상 감지</li><li>진단 결과: Slurry Supply Pressure Low로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Polishing Pad</td><td>PR-PAD-01</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-01_D26-07-13_17:19:39.510',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>N2 Gas Supply Abnormality</td></tr> <tr><th>에러 코드</th><td>UT-GAS-901 (ALARM-10549021)</td></tr> <tr><th>공정 영향</th><td>IMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>IMP VARIAN_VIISTA 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10549021) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/2b903df5-5e91-43c4-8a89-ee33ec120806" data-file-id="2b903df5-5e91-43c4-8a89-ee33ec120806" data-name="paint_palette.jpg" alt="paint_palette.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-PSK-02_D26-07-12_21:34:39.495',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CLN-PSK-02_D26-07-12_21:34:39.495</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CLN-PSK-02 / Main Frame</td></tr><tr><th>알람 코드</th><td>ALARM-10554401 - RF-GEN-102</td></tr><tr><th>상세 설명</th><td>RF Matcher Reflected Power High</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>PSK_SUPRA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: RF Matcher Reflected Power High로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>RF Generator Module</td><td>RF-GEN-102</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-ASML-03_D26-07-12_07:10:39.407',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Illumination Sensor Calibration Error</td></tr> <tr><th>에러 코드</th><td>OPT-LNS-201 (ALARM-10566602)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO ASML_NXT_1980DI 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10566602) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/ecf9d901-7b80-4791-9a08-8e19d2ced296" data-file-id="ecf9d901-7b80-4791-9a08-8e19d2ced296" data-name="paint_buckets_and_brush.jpg" alt="paint_buckets_and_brush.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-TEL-04_D26-07-11_22:07:39.246',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-TEL-04_D26-07-11_22:07:39.246</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-TEL-04 / Ch-B</td></tr><tr><th>알람 코드</th><td>ALARM-10577705 - ION-SRC-501</td></tr><tr><th>상세 설명</th><td>Ion Source Filament Life Exceeded</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>TEL_TACTRAS 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Ion Source Filament Life Exceeded로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Ion Source Filament</td><td>FIL-501</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-ASM-05_D26-07-10_23:35:39.012',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Chemical Dispense Nozzle Clogging</td></tr> <tr><th>에러 코드</th><td>CHM-NOZ-303 (ALARM-10582209)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD ASM_EAGLE_12 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10582209) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/5b1daa00-44ac-4646-941b-f57e9527a8b2" data-file-id="5b1daa00-44ac-4646-941b-f57e9527a8b2" data-name="macbook_rgb_lighting.jpg" alt="macbook_rgb_lighting.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>Chemical Nozzle Tip(NOZ-303) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-KC-06_D26-07-10_06:24:38.705',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CMP-KC-06_D26-07-10_06:24:38.705</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CMP-KC-06 / PM1</td></tr><tr><th>알람 코드</th><td>ALARM-10598012 - VAC-PMP-801</td></tr><tr><th>상세 설명</th><td>Dry Vacuum Pump Overload</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>KC_TECH_CMP_300 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Dry Vacuum Pump Overload로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Vacuum Pump Unit</td><td>VAC-PMP-801</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-01_D26-07-09_17:44:38.325',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Wafer Stage Interferometer Mirror Dirty</td></tr> <tr><th>에러 코드</th><td>WFR-STG-404 (ALARM-10604040)</td></tr> <tr><th>공정 영향</th><td>DIFF 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>DIFF KOKUSAI_ADVANCED 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10604040) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/b335e458-1aac-48ad-810c-0e9c343a7f3a" data-file-id="b335e458-1aac-48ad-810c-0e9c343a7f3a" data-name="colored_pencils.jpg" alt="colored_pencils.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-02_D26-07-09_10:25:37.872',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - IMP-AXCELIS-02_D26-07-09_10:25:37.872</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>IMP-AXCELIS-02 / PM3</td></tr><tr><th>알람 코드</th><td>ALARM-10612020 - GAS-MFC-202</td></tr><tr><th>상세 설명</th><td>CF4 Gas MFC Flow Hunting</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AXCELIS_PURION_H 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: CF4 Gas MFC Flow Hunting로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Mass Flow Controller</td><td>MFC-202</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-TEL-03_D26-07-08_13:37:37.346',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Polishing Pad Lifetime Expired</td></tr> <tr><th>에러 코드</th><td>MEC-PAD-101 (ALARM-10621010)</td></tr> <tr><th>공정 영향</th><td>CLEAN 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CLEAN TEL_CELLESSE 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10621010) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/1a4a64e7-f574-413f-9d57-1680f185de8a" data-file-id="1a4a64e7-f574-413f-9d57-1680f185de8a" data-name="dj_performance.jpg" alt="dj_performance.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Conditioner Disk(MEC-PAD-101) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-CANON-04_D26-07-07_22:10:36.747',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - PH-CANON-04_D26-07-07_22:10:36.747</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>PH-CANON-04 / LL1</td></tr><tr><th>알람 코드</th><td>ALARM-10635020 - MEC-BOT-502</td></tr><tr><th>상세 설명</th><td>Boat Elevator Vertical Lead Screw Belt Loose</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>CANON_FPA_6300ES6A 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Boat Elevator Vertical Lead Screw Belt Loose로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-05_D26-07-07_12:04:36.075',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Throttle Valve Encoder Signal Error</td></tr> <tr><th>에러 코드</th><td>HW-VAL-301 (ALARM-10643010)</td></tr> <tr><th>공정 영향</th><td>ETCH 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>ETCH LAM_KIYO_CX 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10643010) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/46b6ef43-e623-437d-ba54-ce2a49b05a1b" data-file-id="46b6ef43-e623-437d-ba54-ce2a49b05a1b" data-name="rainbow_umbrella.jpg" alt="rainbow_umbrella.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>Throttle Valve Assembly(VAL-301) - 2EA, Valve Assembly(PN-001) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-AMAT-06_D26-07-06_12:29:35.330',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CVD-AMAT-06_D26-07-06_12:29:35.330</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CVD-AMAT-06 / TM1</td></tr><tr><th>알람 코드</th><td>ALARM-10659020 - HW-PMP-902</td></tr><tr><th>상세 설명</th><td>Chamber Base Vacuum Timeout</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_PRODUCER 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Chamber Base Vacuum Timeout로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Dry Vacuum Pump</td><td>PMP-881</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-01_D26-07-05_18:15:34.512',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Process Chamber Temperature Uniformity Fail</td></tr> <tr><th>에러 코드</th><td>PR-TEMP-101 (ALARM-10661011)</td></tr> <tr><th>공정 영향</th><td>CMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CMP AMAT_REFLEXION 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10661011) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/2bd7bfb5-a175-4fc7-9803-93d784cc7335" data-file-id="2bd7bfb5-a175-4fc7-9803-93d784cc7335" data-name="hot_air_balloon.jpg" alt="hot_air_balloon.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>Heater Block(HT-200X) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-02_D26-07-05_04:32:33.621',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - DIFF-TEL-02_D26-07-05_04:32:33.621</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>DIFF-TEL-02 / CH1</td></tr><tr><th>알람 코드</th><td>ALARM-10672022 - UT-CW-202</td></tr><tr><th>상세 설명</th><td>Cooling Water Flow Rate Low</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>TEL_ALPHA 가동 중 UTILITY 계통 이상 감지</li><li>진단 결과: Cooling Water Flow Rate Low로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Coolant Flow Sensor</td><td>SEN-FLW-01</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-03_D26-07-04_20:10:32.657',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Sequence Interlock Abort</td></tr> <tr><th>에러 코드</th><td>SW-SEQ-303 (ALARM-10683033)</td></tr> <tr><th>공정 영향</th><td>IMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>IMP AMAT_VIISTA_TRIDENT 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10683033) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/e7561f16-7da5-4cfe-92d5-33ce4fe05da5" data-file-id="e7561f16-7da5-4cfe-92d5-33ce4fe05da5" data-name="colorful_candies.jpg" alt="colorful_candies.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-DNS-04_D26-07-03_23:09:32.620',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CLN-DNS-04_D26-07-03_23:09:32.620</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CLN-DNS-04 / Main Frame</td></tr><tr><th>알람 코드</th><td>ALARM-10690010 - PM-CHM-001</td></tr><tr><th>상세 설명</th><td>Periodic Chamber Wet Cleaning PM</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>DNS_SS_3000 가동 중 PREVENTIVE 계통 이상 감지</li><li>진단 결과: Periodic Chamber Wet Cleaning PM로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>O-Ring Kit</td><td>OR-9021</td><td>1</td></tr><tr><td>Bellows Seal Assembly</td><td>BLW-104</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-ASML-05_D26-07-03_06:39:32.510',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>ESC Chuck Helium Leak Check Fail</td></tr> <tr><th>에러 코드</th><td>HW-ESC-701 (ALARM-10707011)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO ASML_TWINSCAN 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10707011) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/3df8a027-7636-411e-a263-a981952ae0f7" data-file-id="3df8a027-7636-411e-a263-a981952ae0f7" data-name="colorful_building_balcony.jpg" alt="colorful_building_balcony.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>Electrostatic Chuck(ESC-CHUCK-01) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-06_D26-07-02_19:30:32.327',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-LAM-06_D26-07-02_19:30:32.327</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-LAM-06 / Ch-B</td></tr><tr><th>알람 코드</th><td>ALARM-10711088 - HW-PRS-108</td></tr><tr><th>상세 설명</th><td>Manometer Sensor Drift Error</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>LAM_VERSYS 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Manometer Sensor Drift Error로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Capacitance Manometer Gauge</td><td>SEN-PRS-02</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-TEL-01_D26-07-02_12:52:32.071',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Ar Gas MFC Zero Drift Detected</td></tr> <tr><th>에러 코드</th><td>GAS-MFC-550 (ALARM-10725501)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD TEL_TRIAS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10725501) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/13832ea3-1745-4be7-bc4c-e191a90b5d73" data-file-id="13832ea3-1745-4be7-bc4c-e191a90b5d73" data-name="colorful_straws.jpg" alt="colorful_straws.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Ar Gas MFC(MFC-550) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-02_D26-07-01_17:35:31.742',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CMP-EBARA-02_D26-07-01_17:35:31.742</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CMP-EBARA-02 / PM1</td></tr><tr><th>알람 코드</th><td>ALARM-10732044 - HW-SEAL-204</td></tr><tr><th>상세 설명</th><td>Bellows Seal Fatigue Rupture Warning</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>EBARA_F_REX 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Bellows Seal Fatigue Rupture Warning로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Bellows Seal Assembly</td><td>BLW-104</td><td>2</td></tr><tr><td>FFKM O-Ring</td><td>OR-5542</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-ASM-03_D26-07-01_02:49:31.340',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Optical Emission Endpoint Signal Abnormal</td></tr> <tr><th>에러 코드</th><td>PR-EPD-302 (ALARM-10743022)</td></tr> <tr><th>공정 영향</th><td>DIFF 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>DIFF ASM_A412 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10743022) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/58c61097-b100-4312-956e-9298409afb9d" data-file-id="58c61097-b100-4312-956e-9298409afb9d" data-name="paint_palette.jpg" alt="paint_palette.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-04_D26-06-30_17:24:30.865',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - IMP-VARIAN-04_D26-06-30_17:24:30.865</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>IMP-VARIAN-04 / PM3</td></tr><tr><th>알람 코드</th><td>ALARM-10755021 - HW-VAC-302</td></tr><tr><th>상세 설명</th><td>Vacuum Leak Detected</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>VARIAN_VIISTA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Vacuum Leak Detected로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>O-Ring Kit</td><td>OR-9021</td><td>1</td></tr><tr><td>Servo Motor</td><td>MTR-552</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-SEMES-05_D26-06-29_19:20:30.317',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Controller Communication Loss</td></tr> <tr><th>에러 코드</th><td>SW-CTRL-105 (ALARM-10768822)</td></tr> <tr><th>공정 영향</th><td>CLEAN 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CLEAN SEMES_IRIS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10768822) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/d4249cf8-8226-4696-975c-d5172c98c36f" data-file-id="d4249cf8-8226-4696-975c-d5172c98c36f" data-name="paint_buckets_and_brush.jpg" alt="paint_buckets_and_brush.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-NIKON-06_D26-06-29_01:47:29.696',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - PH-NIKON-06_D26-06-29_01:47:29.696</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>PH-NIKON-06 / LL1</td></tr><tr><th>알람 코드</th><td>ALARM-10773044 - HW-HEAT-401</td></tr><tr><th>상세 설명</th><td>Heater Temp Out of Range</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>NIKON_NSR_S620D 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Heater Temp Out of Range로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Heater Block</td><td>HT-200X</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-AMAT-01_D26-06-28_13:35:29.002',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Slurry Supply Pressure Low</td></tr> <tr><th>에러 코드</th><td>PR-SLRY-002 (ALARM-10781102)</td></tr> <tr><th>공정 영향</th><td>ETCH 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>ETCH AMAT_CENTRIS_SYM3 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10781102) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/2f4bdabf-21af-498c-8905-c65bad361b94" data-file-id="2f4bdabf-21af-498c-8905-c65bad361b94" data-name="macbook_rgb_lighting.jpg" alt="macbook_rgb_lighting.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>Polishing Pad(PR-PAD-01) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-JUSUNG-02_D26-06-28_05:54:28.235',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CVD-JUSUNG-02_D26-06-28_05:54:28.235</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CVD-JUSUNG-02 / TM1</td></tr><tr><th>알람 코드</th><td>ALARM-10799021 - UT-GAS-901</td></tr><tr><th>상세 설명</th><td>N2 Gas Supply Abnormality</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>JUSUNG_EUREKA 가동 중 UTILITY 계통 이상 감지</li><li>진단 결과: N2 Gas Supply Abnormality로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-KC-03_D26-06-27_09:34:27.395',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>RF Matcher Reflected Power High</td></tr> <tr><th>에러 코드</th><td>RF-GEN-102 (ALARM-10804401)</td></tr> <tr><th>공정 영향</th><td>CMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CMP KC_TECH_CMP_300 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10804401) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/172a5f2f-e2fd-4391-908c-43d3da7c549c" data-file-id="172a5f2f-e2fd-4391-908c-43d3da7c549c" data-name="colored_pencils.jpg" alt="colored_pencils.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>RF Generator Module(RF-GEN-102) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-04_D26-06-26_17:45:26.482',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - DIFF-KOKUSAI-04_D26-06-26_17:45:26.482</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>DIFF-KOKUSAI-04 / CH1</td></tr><tr><th>알람 코드</th><td>ALARM-10816602 - OPT-LNS-201</td></tr><tr><th>상세 설명</th><td>Illumination Sensor Calibration Error</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>KOKUSAI_ADVANCED 가동 중 OPTICAL 계통 이상 감지</li><li>진단 결과: Illumination Sensor Calibration Error로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-05_D26-06-26_07:17:25.496',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Ion Source Filament Life Exceeded</td></tr> <tr><th>에러 코드</th><td>ION-SRC-501 (ALARM-10827705)</td></tr> <tr><th>공정 영향</th><td>IMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>IMP AXCELIS_PURION_H 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10827705) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/ce1cabf1-37ee-4fa4-b391-4c1668be0a26" data-file-id="ce1cabf1-37ee-4fa4-b391-4c1668be0a26" data-name="dj_performance.jpg" alt="dj_performance.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Ion Source Filament(FIL-501) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-PSK-06_D26-06-25_08:10:25.437',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CLN-PSK-06_D26-06-25_08:10:25.437</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CLN-PSK-06 / Main Frame</td></tr><tr><th>알람 코드</th><td>ALARM-10832209 - CHM-NOZ-303</td></tr><tr><th>상세 설명</th><td>Chemical Dispense Nozzle Clogging</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>PSK_SUPRA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Chemical Dispense Nozzle Clogging로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Chemical Nozzle Tip</td><td>NOZ-303</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-ASML-01_D26-06-24_13:34:25.305',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Dry Vacuum Pump Overload</td></tr> <tr><th>에러 코드</th><td>VAC-PMP-801 (ALARM-10848012)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO ASML_NXT_1980DI 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10848012) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/0696fe38-a6d0-46ea-a0b3-7684d508a0c8" data-file-id="0696fe38-a6d0-46ea-a0b3-7684d508a0c8" data-name="rainbow_umbrella.jpg" alt="rainbow_umbrella.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>Vacuum Pump Unit(VAC-PMP-801) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-TEL-02_D26-06-24_00:19:25.100',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-TEL-02_D26-06-24_00:19:25.100</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-TEL-02 / Ch-B</td></tr><tr><th>알람 코드</th><td>ALARM-10854040 - WFR-STG-404</td></tr><tr><th>상세 설명</th><td>Wafer Stage Interferometer Mirror Dirty</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>TEL_TACTRAS 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Wafer Stage Interferometer Mirror Dirty로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-ASM-03_D26-06-23_15:35:24.822',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>CF4 Gas MFC Flow Hunting</td></tr> <tr><th>에러 코드</th><td>GAS-MFC-202 (ALARM-10862020)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD ASM_EAGLE_12 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10862020) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/ed58ceaa-a931-4f14-870a-3aeec2261aac" data-file-id="ed58ceaa-a931-4f14-870a-3aeec2261aac" data-name="hot_air_balloon.jpg" alt="hot_air_balloon.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>Mass Flow Controller(MFC-202) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-04_D26-06-22_18:12:24.471',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CMP-AMAT-04_D26-06-22_18:12:24.471</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CMP-AMAT-04 / PM1</td></tr><tr><th>알람 코드</th><td>ALARM-10871010 - MEC-PAD-101</td></tr><tr><th>상세 설명</th><td>Polishing Pad Lifetime Expired</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_REFLEXION 가동 중 CONSUMABLE 계통 이상 감지</li><li>진단 결과: Polishing Pad Lifetime Expired로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Conditioner Disk</td><td>MEC-PAD-101</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-05_D26-06-22_02:10:24.047',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Boat Elevator Vertical Lead Screw Belt Loose</td></tr> <tr><th>에러 코드</th><td>MEC-BOT-502 (ALARM-10885020)</td></tr> <tr><th>공정 영향</th><td>DIFF 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>DIFF TEL_ALPHA 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10885020) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/15a6bc63-72b3-4237-9936-15fe15775e1d" data-file-id="15a6bc63-72b3-4237-9936-15fe15775e1d" data-name="colorful_candies.jpg" alt="colorful_candies.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-06_D26-06-21_14:39:23.550',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - IMP-AMAT-06_D26-06-21_14:39:23.550</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>IMP-AMAT-06 / PM3</td></tr><tr><th>알람 코드</th><td>ALARM-10893010 - HW-VAL-301</td></tr><tr><th>상세 설명</th><td>Throttle Valve Encoder Signal Error</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_VIISTA_TRIDENT 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Throttle Valve Encoder Signal Error로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Throttle Valve Assembly</td><td>VAL-301</td><td>3</td></tr><tr><td>Valve Assembly</td><td>PN-001</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-TEL-01_D26-06-21_08:29:22.980',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Chamber Base Vacuum Timeout</td></tr> <tr><th>에러 코드</th><td>HW-PMP-902 (ALARM-10909020)</td></tr> <tr><th>공정 영향</th><td>CLEAN 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CLEAN TEL_CELLESSE 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10909020) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/8bd00230-3e78-4bb3-84f4-472815fac6d8" data-file-id="8bd00230-3e78-4bb3-84f4-472815fac6d8" data-name="colorful_building_balcony.jpg" alt="colorful_building_balcony.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>Dry Vacuum Pump(PMP-881) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-CANON-02_D26-06-20_12:50:22.337',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - PH-CANON-02_D26-06-20_12:50:22.337</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>PH-CANON-02 / LL1</td></tr><tr><th>알람 코드</th><td>ALARM-10911011 - PR-TEMP-101</td></tr><tr><th>상세 설명</th><td>Process Chamber Temperature Uniformity Fail</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>CANON_FPA_6300ES6A 가동 중 PROCESS 계통 이상 감지</li><li>진단 결과: Process Chamber Temperature Uniformity Fail로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Heater Block</td><td>HT-200X</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-03_D26-06-19_22:32:21.621',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Cooling Water Flow Rate Low</td></tr> <tr><th>에러 코드</th><td>UT-CW-202 (ALARM-10922022)</td></tr> <tr><th>공정 영향</th><td>ETCH 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>ETCH LAM_KIYO_CX 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10922022) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/cde89ff2-af6e-4a08-8f29-c265082229aa" data-file-id="cde89ff2-af6e-4a08-8f29-c265082229aa" data-name="colorful_straws.jpg" alt="colorful_straws.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Coolant Flow Sensor(SEN-FLW-01) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-AMAT-04_D26-06-19_12:45:20.832',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CVD-AMAT-04_D26-06-19_12:45:20.832</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CVD-AMAT-04 / TM1</td></tr><tr><th>알람 코드</th><td>ALARM-10933033 - SW-SEQ-303</td></tr><tr><th>상세 설명</th><td>Sequence Interlock Abort</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_PRODUCER 가동 중 SOFTWARE 계통 이상 감지</li><li>진단 결과: Sequence Interlock Abort로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-05_D26-06-18_14:19:19.970',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Periodic Chamber Wet Cleaning PM</td></tr> <tr><th>에러 코드</th><td>PM-CHM-001 (ALARM-10940010)</td></tr> <tr><th>공정 영향</th><td>CMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CMP EBARA_F_REX 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10940010) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/451e40a6-3251-4423-b28e-1320f202ff42" data-file-id="451e40a6-3251-4423-b28e-1320f202ff42" data-name="paint_palette.jpg" alt="paint_palette.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>O-Ring Kit(OR-9021) - 2EA, Bellows Seal Assembly(BLW-104) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-ASM-06_D26-06-17_21:14:19.035',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - DIFF-ASM-06_D26-06-17_21:14:19.035</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>DIFF-ASM-06 / CH1</td></tr><tr><th>알람 코드</th><td>ALARM-10957011 - HW-ESC-701</td></tr><tr><th>상세 설명</th><td>ESC Chuck Helium Leak Check Fail</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>ASM_A412 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: ESC Chuck Helium Leak Check Fail로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Electrostatic Chuck</td><td>ESC-CHUCK-01</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-01_D26-06-17_08:40:19.027',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Manometer Sensor Drift Error</td></tr> <tr><th>에러 코드</th><td>HW-PRS-108 (ALARM-10961088)</td></tr> <tr><th>공정 영향</th><td>IMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>IMP VARIAN_VIISTA 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10961088) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/55fbb235-89c0-416a-a1d6-326ff2fbcba6" data-file-id="55fbb235-89c0-416a-a1d6-326ff2fbcba6" data-name="paint_buckets_and_brush.jpg" alt="paint_buckets_and_brush.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>Capacitance Manometer Gauge(SEN-PRS-02) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-DNS-02_D26-06-17_01:27:18.946',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CLN-DNS-02_D26-06-17_01:27:18.946</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CLN-DNS-02 / Main Frame</td></tr><tr><th>알람 코드</th><td>ALARM-10975501 - GAS-MFC-550</td></tr><tr><th>상세 설명</th><td>Ar Gas MFC Zero Drift Detected</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>DNS_SS_3000 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Ar Gas MFC Zero Drift Detected로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Ar Gas MFC</td><td>MFC-550</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-ASML-03_D26-06-16_04:45:18.792',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Bellows Seal Fatigue Rupture Warning</td></tr> <tr><th>에러 코드</th><td>HW-SEAL-204 (ALARM-10982044)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO ASML_TWINSCAN 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-10982044) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/8319243e-d251-4bbb-b78c-4d2b23008806" data-file-id="8319243e-d251-4bbb-b78c-4d2b23008806" data-name="macbook_rgb_lighting.jpg" alt="macbook_rgb_lighting.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>Bellows Seal Assembly(BLW-104) - 3EA, FFKM O-Ring(OR-5542) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-04_D26-06-15_13:24:18.565',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-LAM-04_D26-06-15_13:24:18.565</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-LAM-04 / Ch-B</td></tr><tr><th>알람 코드</th><td>ALARM-10993022 - PR-EPD-302</td></tr><tr><th>상세 설명</th><td>Optical Emission Endpoint Signal Abnormal</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>LAM_VERSYS 가동 중 PROCESS 계통 이상 감지</li><li>진단 결과: Optical Emission Endpoint Signal Abnormal로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-TEL-05_D26-06-15_03:24:18.265',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Vacuum Leak Detected</td></tr> <tr><th>에러 코드</th><td>HW-VAC-302 (ALARM-11005021)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD TEL_TRIAS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11005021) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/418c0bde-6e76-4a37-883a-03c04bce6e95" data-file-id="418c0bde-6e76-4a37-883a-03c04bce6e95" data-name="colored_pencils.jpg" alt="colored_pencils.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>O-Ring Kit(OR-9021) - 2EA, Servo Motor(MTR-552) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-KC-06_D26-06-14_03:55:17.892',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CMP-KC-06_D26-06-14_03:55:17.892</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CMP-KC-06 / PM1</td></tr><tr><th>알람 코드</th><td>ALARM-11018822 - SW-CTRL-105</td></tr><tr><th>상세 설명</th><td>Controller Communication Loss</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>KC_TECH_CMP_300 가동 중 SOFTWARE 계통 이상 감지</li><li>진단 결과: Controller Communication Loss로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-01_D26-06-13_09:47:17.446',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Heater Temp Out of Range</td></tr> <tr><th>에러 코드</th><td>HW-HEAT-401 (ALARM-11023044)</td></tr> <tr><th>공정 영향</th><td>DIFF 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>DIFF KOKUSAI_ADVANCED 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11023044) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/3b93b083-4b54-4057-a4b8-2a56eeaeb1c0" data-file-id="3b93b083-4b54-4057-a4b8-2a56eeaeb1c0" data-name="dj_performance.jpg" alt="dj_performance.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Heater Block(HT-200X) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-02_D26-06-12_20:10:16.927',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - IMP-AXCELIS-02_D26-06-12_20:10:16.927</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>IMP-AXCELIS-02 / PM3</td></tr><tr><th>알람 코드</th><td>ALARM-11031102 - PR-SLRY-002</td></tr><tr><th>상세 설명</th><td>Slurry Supply Pressure Low</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AXCELIS_PURION_H 가동 중 PROCESS 계통 이상 감지</li><li>진단 결과: Slurry Supply Pressure Low로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Polishing Pad</td><td>PR-PAD-01</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-SEMES-03_D26-06-12_11:54:16.335',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>N2 Gas Supply Abnormality</td></tr> <tr><th>에러 코드</th><td>UT-GAS-901 (ALARM-11049021)</td></tr> <tr><th>공정 영향</th><td>CLEAN 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CLEAN SEMES_IRIS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11049021) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/1f44f0cc-e94d-462f-a7c0-abc02b0161a3" data-file-id="1f44f0cc-e94d-462f-a7c0-abc02b0161a3" data-name="rainbow_umbrella.jpg" alt="rainbow_umbrella.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-NIKON-04_D26-06-11_14:09:15.670',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - PH-NIKON-04_D26-06-11_14:09:15.670</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>PH-NIKON-04 / LL1</td></tr><tr><th>알람 코드</th><td>ALARM-11054401 - RF-GEN-102</td></tr><tr><th>상세 설명</th><td>RF Matcher Reflected Power High</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>NIKON_NSR_S620D 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: RF Matcher Reflected Power High로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>RF Generator Module</td><td>RF-GEN-102</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-AMAT-05_D26-06-10_21:45:14.932',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Illumination Sensor Calibration Error</td></tr> <tr><th>에러 코드</th><td>OPT-LNS-201 (ALARM-11066602)</td></tr> <tr><th>공정 영향</th><td>ETCH 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>ETCH AMAT_CENTRIS_SYM3 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11066602) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/f9c5cb77-b0af-4bb9-b251-0faf640d3cf6" data-file-id="f9c5cb77-b0af-4bb9-b251-0faf640d3cf6" data-name="hot_air_balloon.jpg" alt="hot_air_balloon.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-JUSUNG-06_D26-06-10_10:42:14.121',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CVD-JUSUNG-06_D26-06-10_10:42:14.121</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CVD-JUSUNG-06 / TM1</td></tr><tr><th>알람 코드</th><td>ALARM-11077705 - ION-SRC-501</td></tr><tr><th>상세 설명</th><td>Ion Source Filament Life Exceeded</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>JUSUNG_EUREKA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Ion Source Filament Life Exceeded로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Ion Source Filament</td><td>FIL-501</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-01_D26-06-10_04:10:13.237',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Chemical Dispense Nozzle Clogging</td></tr> <tr><th>에러 코드</th><td>CHM-NOZ-303 (ALARM-11082209)</td></tr> <tr><th>공정 영향</th><td>CMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CMP AMAT_REFLEXION 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11082209) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/f79d5d23-8dd8-4b3b-ad08-2ad28822d941" data-file-id="f79d5d23-8dd8-4b3b-ad08-2ad28822d941" data-name="colorful_candies.jpg" alt="colorful_candies.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>Chemical Nozzle Tip(NOZ-303) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-02_D26-06-09_08:59:12.280',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - DIFF-TEL-02_D26-06-09_08:59:12.280</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>DIFF-TEL-02 / CH1</td></tr><tr><th>알람 코드</th><td>ALARM-11098012 - VAC-PMP-801</td></tr><tr><th>상세 설명</th><td>Dry Vacuum Pump Overload</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>TEL_ALPHA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Dry Vacuum Pump Overload로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Vacuum Pump Unit</td><td>VAC-PMP-801</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-03_D26-06-08_18:19:12.250',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Wafer Stage Interferometer Mirror Dirty</td></tr> <tr><th>에러 코드</th><td>WFR-STG-404 (ALARM-11104040)</td></tr> <tr><th>공정 영향</th><td>IMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>IMP AMAT_VIISTA_TRIDENT 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11104040) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/62b094cf-a760-4aa2-8314-bc48791ca34e" data-file-id="62b094cf-a760-4aa2-8314-bc48791ca34e" data-name="colorful_building_balcony.jpg" alt="colorful_building_balcony.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-PSK-04_D26-06-08_09:00:12.147',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CLN-PSK-04_D26-06-08_09:00:12.147</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CLN-PSK-04 / Main Frame</td></tr><tr><th>알람 코드</th><td>ALARM-11112020 - GAS-MFC-202</td></tr><tr><th>상세 설명</th><td>CF4 Gas MFC Flow Hunting</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>PSK_SUPRA 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: CF4 Gas MFC Flow Hunting로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Mass Flow Controller</td><td>MFC-202</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-ASML-05_D26-06-07_10:12:11.971',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Polishing Pad Lifetime Expired</td></tr> <tr><th>에러 코드</th><td>MEC-PAD-101 (ALARM-11121010)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO ASML_NXT_1980DI 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11121010) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/cbf26501-6aa3-42f3-a4c0-668fd565e093" data-file-id="cbf26501-6aa3-42f3-a4c0-668fd565e093" data-name="colorful_straws.jpg" alt="colorful_straws.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Conditioner Disk(MEC-PAD-101) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-TEL-06_D26-06-06_16:45:11.722',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-TEL-06_D26-06-06_16:45:11.722</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-TEL-06 / Ch-B</td></tr><tr><th>알람 코드</th><td>ALARM-11135020 - MEC-BOT-502</td></tr><tr><th>상세 설명</th><td>Boat Elevator Vertical Lead Screw Belt Loose</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>TEL_TACTRAS 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Boat Elevator Vertical Lead Screw Belt Loose로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-ASM-01_D26-06-06_04:39:11.400',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Throttle Valve Encoder Signal Error</td></tr> <tr><th>에러 코드</th><td>HW-VAL-301 (ALARM-11143010)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD ASM_EAGLE_12 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11143010) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/d7071163-88c0-42fc-af91-1abd010f6ce3" data-file-id="d7071163-88c0-42fc-af91-1abd010f6ce3" data-name="paint_palette.jpg" alt="paint_palette.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>Throttle Valve Assembly(VAL-301) - 1EA, Valve Assembly(PN-001) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-EBARA-02_D26-06-05_21:04:11.005',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CMP-EBARA-02_D26-06-05_21:04:11.005</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CMP-EBARA-02 / PM1</td></tr><tr><th>알람 코드</th><td>ALARM-11159020 - HW-PMP-902</td></tr><tr><th>상세 설명</th><td>Chamber Base Vacuum Timeout</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>EBARA_F_REX 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Chamber Base Vacuum Timeout로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Dry Vacuum Pump</td><td>PMP-881</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-ASM-03_D26-06-05_00:50:10.537',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Process Chamber Temperature Uniformity Fail</td></tr> <tr><th>에러 코드</th><td>PR-TEMP-101 (ALARM-11161011)</td></tr> <tr><th>공정 영향</th><td>DIFF 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>DIFF ASM_A412 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11161011) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/4b973190-b21c-429d-8c07-b88d27fe084d" data-file-id="4b973190-b21c-429d-8c07-b88d27fe084d" data-name="paint_buckets_and_brush.jpg" alt="paint_buckets_and_brush.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>Heater Block(HT-200X) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-VARIAN-04_D26-06-04_09:07:09.996',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - IMP-VARIAN-04_D26-06-04_09:07:09.996</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>IMP-VARIAN-04 / PM3</td></tr><tr><th>알람 코드</th><td>ALARM-11172022 - UT-CW-202</td></tr><tr><th>상세 설명</th><td>Cooling Water Flow Rate Low</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>VARIAN_VIISTA 가동 중 UTILITY 계통 이상 감지</li><li>진단 결과: Cooling Water Flow Rate Low로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Coolant Flow Sensor</td><td>SEN-FLW-01</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-TEL-05_D26-06-03_22:45:09.382',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Sequence Interlock Abort</td></tr> <tr><th>에러 코드</th><td>SW-SEQ-303 (ALARM-11183033)</td></tr> <tr><th>공정 영향</th><td>CLEAN 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CLEAN TEL_CELLESSE 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11183033) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/7ce95368-bc18-4ebd-80c0-af2a2ad02b50" data-file-id="7ce95368-bc18-4ebd-80c0-af2a2ad02b50" data-name="macbook_rgb_lighting.jpg" alt="macbook_rgb_lighting.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-CANON-06_D26-06-02_23:44:08.695',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - PH-CANON-06_D26-06-02_23:44:08.695</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>PH-CANON-06 / LL1</td></tr><tr><th>알람 코드</th><td>ALARM-11190010 - PM-CHM-001</td></tr><tr><th>상세 설명</th><td>Periodic Chamber Wet Cleaning PM</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>CANON_FPA_6300ES6A 가동 중 PREVENTIVE 계통 이상 감지</li><li>진단 결과: Periodic Chamber Wet Cleaning PM로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>O-Ring Kit</td><td>OR-9021</td><td>3</td></tr><tr><td>Bellows Seal Assembly</td><td>BLW-104</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-01_D26-06-02_05:14:07.935',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>ESC Chuck Helium Leak Check Fail</td></tr> <tr><th>에러 코드</th><td>HW-ESC-701 (ALARM-11207011)</td></tr> <tr><th>공정 영향</th><td>ETCH 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>ETCH LAM_KIYO_CX 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11207011) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/5c807e65-6807-42e1-befd-c70e1b9a481a" data-file-id="5c807e65-6807-42e1-befd-c70e1b9a481a" data-name="colored_pencils.jpg" alt="colored_pencils.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>Electrostatic Chuck(ESC-CHUCK-01) - 1EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-AMAT-02_D26-06-01_16:05:07.102',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CVD-AMAT-02_D26-06-01_16:05:07.102</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CVD-AMAT-02 / TM1</td></tr><tr><th>알람 코드</th><td>ALARM-11211088 - HW-PRS-108</td></tr><tr><th>상세 설명</th><td>Manometer Sensor Drift Error</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_PRODUCER 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Manometer Sensor Drift Error로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Capacitance Manometer Gauge</td><td>SEN-PRS-02</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-KC-03_D26-06-01_07:27:06.196',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Ar Gas MFC Zero Drift Detected</td></tr> <tr><th>에러 코드</th><td>GAS-MFC-550 (ALARM-11225501)</td></tr> <tr><th>공정 영향</th><td>CMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CMP KC_TECH_CMP_300 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11225501) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/2ed12966-5140-4c65-a748-b630e80e53dc" data-file-id="2ed12966-5140-4c65-a748-b630e80e53dc" data-name="dj_performance.jpg" alt="dj_performance.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">ACTION_DONE</span></td></tr> <tr><th>교체 부품</th><td>Ar Gas MFC(MFC-550) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-KOKUSAI-04_D26-05-31_10:10:05.217',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - DIFF-KOKUSAI-04_D26-05-31_10:10:05.217</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>DIFF-KOKUSAI-04 / CH1</td></tr><tr><th>알람 코드</th><td>ALARM-11232044 - HW-SEAL-204</td></tr><tr><th>상세 설명</th><td>Bellows Seal Fatigue Rupture Warning</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>KOKUSAI_ADVANCED 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Bellows Seal Fatigue Rupture Warning로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Bellows Seal Assembly</td><td>BLW-104</td><td>1</td></tr><tr><td>FFKM O-Ring</td><td>OR-5542</td><td>1</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1004',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AXCELIS-05_D26-05-30_17:24:05.165',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Optical Emission Endpoint Signal Abnormal</td></tr> <tr><th>에러 코드</th><td>PR-EPD-302 (ALARM-11243022)</td></tr> <tr><th>공정 영향</th><td>IMP 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>IMP AXCELIS_PURION_H 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11243022) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/a12e8509-c79d-49a9-9b07-3bb50dc90d98" data-file-id="a12e8509-c79d-49a9-9b07-3bb50dc90d98" data-name="rainbow_umbrella.jpg" alt="rainbow_umbrella.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">CLOSED</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CLN-DNS-06_D26-05-30_05:59:05.040',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CLN-DNS-06_D26-05-30_05:59:05.040</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CLN-DNS-06 / Main Frame</td></tr><tr><th>알람 코드</th><td>ALARM-11255021 - HW-VAC-302</td></tr><tr><th>상세 설명</th><td>Vacuum Leak Detected</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>DNS_SS_3000 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Vacuum Leak Detected로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>O-Ring Kit</td><td>OR-9021</td><td>3</td></tr><tr><td>Servo Motor</td><td>MTR-552</td><td>3</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1006',
      SYSTIMESTAMP,
      'TECH-1006',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'PH-ASML-01_D26-05-29_23:55:04.842',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Controller Communication Loss</td></tr> <tr><th>에러 코드</th><td>SW-CTRL-105 (ALARM-11268822)</td></tr> <tr><th>공정 영향</th><td>PHOTO 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>PHOTO ASML_TWINSCAN 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11268822) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/9164d622-2684-49bf-8d66-55dacd80df86" data-file-id="9164d622-2684-49bf-8d66-55dacd80df86" data-name="hot_air_balloon.jpg" alt="hot_air_balloon.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">IN_PROGRESS</span></td></tr> <tr><th>교체 부품</th><td>부품 교체 없음 (캘리브레이션/소프트웨어 리셋)</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'ET-LAM-02_D26-05-29_04:22:04.571',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ET-LAM-02_D26-05-29_04:22:04.571</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>ET-LAM-02 / Ch-B</td></tr><tr><th>알람 코드</th><td>ALARM-11273044 - HW-HEAT-401</td></tr><tr><th>상세 설명</th><td>Heater Temp Out of Range</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>LAM_VERSYS 가동 중 HARDWARE 계통 이상 감지</li><li>진단 결과: Heater Temp Out of Range로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr><tr><td>Heater Block</td><td>HT-200X</td><td>2</td></tr></table><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1008',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CVD-TEL-03_D26-05-28_14:10:04.227',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>Slurry Supply Pressure Low</td></tr> <tr><th>에러 코드</th><td>PR-SLRY-002 (ALARM-11281102)</td></tr> <tr><th>공정 영향</th><td>CVD 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>CVD TEL_TRIAS 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11281102) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/70b8cb97-7be5-427e-adb2-ae927fd9bb51" data-file-id="70b8cb97-7be5-427e-adb2-ae927fd9bb51" data-name="colorful_candies.jpg" alt="colorful_candies.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--success">VERIFIED</span></td></tr> <tr><th>교체 부품</th><td>Polishing Pad(PR-PAD-01) - 3EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>단품 점검 및 신호 정상화 확인 완료</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'CMP-AMAT-04_D26-05-28_04:29:03.810',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - CMP-AMAT-04_D26-05-28_04:29:03.810</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>CMP-AMAT-04 / PM1</td></tr><tr><th>알람 코드</th><td>ALARM-11299021 - UT-GAS-901</td></tr><tr><th>상세 설명</th><td>N2 Gas Supply Abnormality</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_REFLEXION 가동 중 UTILITY 계통 이상 감지</li><li>진단 결과: N2 Gas Supply Abnormality로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1010',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'DIFF-TEL-05_D26-05-27_06:09:03.320',
      '<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>RF Matcher Reflected Power High</td></tr> <tr><th>에러 코드</th><td>RF-GEN-102 (ALARM-11304401)</td></tr> <tr><th>공정 영향</th><td>DIFF 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class="rpt-marker"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>DIFF TEL_ALPHA 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(ALARM-11304401) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder"><img src="/feature/file-handler/view/75ac2f32-5c80-407e-86b8-0b332c6f6e36" data-file-id="75ac2f32-5c80-407e-86b8-0b332c6f6e36" data-name="colorful_building_balcony.jpg" alt="colorful_building_balcony.jpg" style="width: 280px;" class="fr-fic fr-dib"></div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="rpt-tag--warn">DOWN_OCCURRED</span></td></tr> <tr><th>교체 부품</th><td>RF Generator Module(RF-GEN-102) - 2EA</td></tr> </table> <div class="rpt-sub-title"><span class="rpt-marker"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>부품 수급 및 교체 작업 준비 중</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_down_content (
      down_event_id, content_html, created_by, created_at, updated_by, updated_at
  ) VALUES (
      'IMP-AMAT-06_D26-05-26_12:20:02.757',
      '<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - IMP-AMAT-06_D26-05-26_12:20:02.757</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>IMP-AMAT-06 / PM3</td></tr><tr><th>알람 코드</th><td>ALARM-11316602 - OPT-LNS-201</td></tr><tr><th>상세 설명</th><td>Illumination Sensor Calibration Error</td></tr></table><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 관련 이미지 없음</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>AMAT_VIISTA_TRIDENT 가동 중 OPTICAL 계통 이상 감지</li><li>진단 결과: Illumination Sensor Calibration Error로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>설비 상태 진단 및 조치 진행 중.</p><p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p><div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>',
      'TECH-1002',
      SYSTIMESTAMP,
      'TECH-1002',
      SYSTIMESTAMP
  );

END;
/

-- =====================================================================
-- 12. TB_ATTACHED_FILE (첨부파일 및 에디터 이미지 66건 데이터 적재)
-- =====================================================================
Prompt ****** Populating TB_ATTACHED_FILE table (66 rows) ....

BEGIN
  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '0fc9edd7-e559-4449-b062-befe9d167350',
      'DOWN_ATTACHMENT',
      'PH-ASML-01_D26-08-07_10:15:22.123',
      'colored_pencils.jpg',
      '0fc9edd7-e559-4449-b062-befe9d167350.jpg',
      'D:\inform-note-workspace\files\0fc9edd7-e559-4449-b062-befe9d167350.jpg',
      233236,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'APP-2002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'b4ca862b-1e21-4207-ac94-0a1a9999d118',
      'DOWN_CONTENT_INLINE',
      'CVD-TEL-02_D26-08-06_20:10:00.257',
      'dj_performance.jpg',
      'b4ca862b-1e21-4207-ac94-0a1a9999d118.jpg',
      'D:\inform-note-workspace\files\b4ca862b-1e21-4207-ac94-0a1a9999d118.jpg',
      66899,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ebb4f8b8-8320-4847-872d-6d68d2f0f6bd',
      'DOWN_ATTACHMENT',
      'DIFF-KOKU-04_D26-08-06_08:05:00.391',
      'rainbow_umbrella.jpg',
      'ebb4f8b8-8320-4847-872d-6d68d2f0f6bd.jpg',
      'D:\inform-note-workspace\files\ebb4f8b8-8320-4847-872d-6d68d2f0f6bd.jpg',
      5747317,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '5752a1cf-5608-4808-b1af-0f22fa0c6883',
      'DOWN_CONTENT_INLINE',
      'PH-NIKON-02_D26-08-05_09:10:00.525',
      'hot_air_balloon.jpg',
      '5752a1cf-5608-4808-b1af-0f22fa0c6883.jpg',
      'D:\inform-note-workspace\files\5752a1cf-5608-4808-b1af-0f22fa0c6883.jpg',
      91360,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'APP-2004',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '23a78118-999c-4f00-bb9e-568eeb776117',
      'DOWN_ATTACHMENT',
      'CLN-SEMES-01_D26-08-04_11:00:00.659',
      'colorful_candies.jpg',
      '23a78118-999c-4f00-bb9e-568eeb776117.jpg',
      'D:\inform-note-workspace\files\23a78118-999c-4f00-bb9e-568eeb776117.jpg',
      75023,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '795bfa21-b692-4e99-8c15-dc63888943ba',
      'DOWN_CONTENT_INLINE',
      'PH-ASML-02_D26-08-03_13:10:00.793',
      'colorful_building_balcony.jpg',
      '795bfa21-b692-4e99-8c15-dc63888943ba.jpg',
      'D:\inform-note-workspace\files\795bfa21-b692-4e99-8c15-dc63888943ba.jpg',
      195156,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'APP-2002',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'def450f0-e2dd-4cbb-abab-042ab4a38dac',
      'DOWN_ATTACHMENT',
      'CMP-EBARA-01_D26-08-02_07:30:00.927',
      'colorful_straws.jpg',
      'def450f0-e2dd-4cbb-abab-042ab4a38dac.jpg',
      'D:\inform-note-workspace\files\def450f0-e2dd-4cbb-abab-042ab4a38dac.jpg',
      247694,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '929ec290-20b1-4799-b55d-654ca40e3bd3',
      'DOWN_CONTENT_INLINE',
      'CVD-TEL-01_D26-08-01_15:10:00.061',
      'paint_palette.jpg',
      '929ec290-20b1-4799-b55d-654ca40e3bd3.jpg',
      'D:\inform-note-workspace\files\929ec290-20b1-4799-b55d-654ca40e3bd3.jpg',
      200418,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '899b4fce-29a5-4041-8567-7477648f18b0',
      'DOWN_ATTACHMENT',
      'CVD-TEL-05_D26-08-05_19:40:59.987',
      'paint_buckets_and_brush.jpg',
      '899b4fce-29a5-4041-8567-7477648f18b0.jpg',
      'D:\inform-note-workspace\files\899b4fce-29a5-4041-8567-7477648f18b0.jpg',
      142399,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '2fed3cfe-1cb0-474e-ab73-e9e0e20fc03c',
      'DOWN_CONTENT_INLINE',
      'DIFF-KOKUSAI-01_D26-08-05_01:35:59.432',
      'macbook_rgb_lighting.jpg',
      '2fed3cfe-1cb0-474e-ab73-e9e0e20fc03c.jpg',
      'D:\inform-note-workspace\files\2fed3cfe-1cb0-474e-ab73-e9e0e20fc03c.jpg',
      46229,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '71ec8adb-9d9f-4f00-8c57-22e38239d8d0',
      'DOWN_ATTACHMENT',
      'CLN-SEMES-03_D26-08-03_16:04:58.585',
      'colored_pencils.jpg',
      '71ec8adb-9d9f-4f00-8c57-22e38239d8d0.jpg',
      'D:\inform-note-workspace\files\71ec8adb-9d9f-4f00-8c57-22e38239d8d0.jpg',
      233236,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '6b354bbc-06fa-4e0b-9d08-e7eafdf8e677',
      'DOWN_CONTENT_INLINE',
      'ET-AMAT-05_D26-08-02_08:17:57.446',
      'dj_performance.jpg',
      '6b354bbc-06fa-4e0b-9d08-e7eafdf8e677.jpg',
      'D:\inform-note-workspace\files\6b354bbc-06fa-4e0b-9d08-e7eafdf8e677.jpg',
      66899,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '4a9414c4-8a10-4364-b987-c1c8dbb3b91f',
      'DOWN_ATTACHMENT',
      'CMP-AMAT-01_D26-08-01_02:14:56.015',
      'rainbow_umbrella.jpg',
      '4a9414c4-8a10-4364-b987-c1c8dbb3b91f.jpg',
      'D:\inform-note-workspace\files\4a9414c4-8a10-4364-b987-c1c8dbb3b91f.jpg',
      5747317,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '29c71299-899a-478e-95d8-08d6513509ae',
      'DOWN_CONTENT_INLINE',
      'IMP-AMAT-03_D26-07-30_22:45:54.292',
      'hot_air_balloon.jpg',
      '29c71299-899a-478e-95d8-08d6513509ae.jpg',
      'D:\inform-note-workspace\files\29c71299-899a-478e-95d8-08d6513509ae.jpg',
      91360,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '880bcdfb-b3ee-4f6f-b6c6-6334093a1708',
      'DOWN_ATTACHMENT',
      'PH-ASML-05_D26-07-29_21:00:53.277',
      'colorful_candies.jpg',
      '880bcdfb-b3ee-4f6f-b6c6-6334093a1708.jpg',
      'D:\inform-note-workspace\files\880bcdfb-b3ee-4f6f-b6c6-6334093a1708.jpg',
      75023,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'a1441d71-629d-46c8-b2c5-6b9bd99a185f',
      'DOWN_CONTENT_INLINE',
      'CVD-ASM-01_D26-07-28_02:59:52.970',
      'colorful_building_balcony.jpg',
      'a1441d71-629d-46c8-b2c5-6b9bd99a185f.jpg',
      'D:\inform-note-workspace\files\a1441d71-629d-46c8-b2c5-6b9bd99a185f.jpg',
      195156,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '1adc5cd3-a595-4eec-a58c-95e43ba3e27f',
      'DOWN_ATTACHMENT',
      'DIFF-ASM-03_D26-07-27_04:42:52.371',
      'colorful_straws.jpg',
      '1adc5cd3-a595-4eec-a58c-95e43ba3e27f.jpg',
      'D:\inform-note-workspace\files\1adc5cd3-a595-4eec-a58c-95e43ba3e27f.jpg',
      247694,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'e8ab41a3-40f1-41e5-bf7a-f76f3f149fc8',
      'DOWN_CONTENT_INLINE',
      'CLN-TEL-05_D26-07-25_14:59:51.480',
      'paint_palette.jpg',
      'e8ab41a3-40f1-41e5-bf7a-f76f3f149fc8.jpg',
      'D:\inform-note-workspace\files\e8ab41a3-40f1-41e5-bf7a-f76f3f149fc8.jpg',
      200418,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '63232ee5-1790-45a0-834c-5a136a5f3fd8',
      'DOWN_ATTACHMENT',
      'ET-LAM-01_D26-07-24_21:00:50.297',
      'paint_buckets_and_brush.jpg',
      '63232ee5-1790-45a0-834c-5a136a5f3fd8.jpg',
      'D:\inform-note-workspace\files\63232ee5-1790-45a0-834c-5a136a5f3fd8.jpg',
      142399,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '18c3f8c2-176e-48f4-915b-1a85eb9838ea',
      'DOWN_CONTENT_INLINE',
      'CMP-KC-03_D26-07-23_11:35:48.822',
      'macbook_rgb_lighting.jpg',
      '18c3f8c2-176e-48f4-915b-1a85eb9838ea.jpg',
      'D:\inform-note-workspace\files\18c3f8c2-176e-48f4-915b-1a85eb9838ea.jpg',
      46229,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ff9d3526-b1fa-48ac-a87e-c278eebeb23f',
      'DOWN_ATTACHMENT',
      'IMP-AXCELIS-05_D26-07-22_03:54:47.055',
      'colored_pencils.jpg',
      'ff9d3526-b1fa-48ac-a87e-c278eebeb23f.jpg',
      'D:\inform-note-workspace\files\ff9d3526-b1fa-48ac-a87e-c278eebeb23f.jpg',
      233236,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '859b7e1f-427c-4c2e-85a1-1b4592b4c222',
      'DOWN_CONTENT_INLINE',
      'PH-ASML-01_D26-07-20_21:57:45.996',
      'dj_performance.jpg',
      '859b7e1f-427c-4c2e-85a1-1b4592b4c222.jpg',
      'D:\inform-note-workspace\files\859b7e1f-427c-4c2e-85a1-1b4592b4c222.jpg',
      66899,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'c5fd074b-2452-4fb8-9c6c-4a1f9a95bdaf',
      'DOWN_ATTACHMENT',
      'CVD-TEL-03_D26-07-19_17:44:45.645',
      'rainbow_umbrella.jpg',
      'c5fd074b-2452-4fb8-9c6c-4a1f9a95bdaf.jpg',
      'D:\inform-note-workspace\files\c5fd074b-2452-4fb8-9c6c-4a1f9a95bdaf.jpg',
      5747317,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'f77c848f-ef53-406b-9f3e-5fcc22a5c398',
      'DOWN_CONTENT_INLINE',
      'DIFF-TEL-05_D26-07-18_16:05:45.002',
      'hot_air_balloon.jpg',
      'f77c848f-ef53-406b-9f3e-5fcc22a5c398.jpg',
      'D:\inform-note-workspace\files\f77c848f-ef53-406b-9f3e-5fcc22a5c398.jpg',
      91360,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'a2aeb553-1db0-4471-a046-1d335e18f21f',
      'DOWN_ATTACHMENT',
      'CLN-SEMES-01_D26-07-16_22:10:44.067',
      'colorful_candies.jpg',
      'a2aeb553-1db0-4471-a046-1d335e18f21f.jpg',
      'D:\inform-note-workspace\files\a2aeb553-1db0-4471-a046-1d335e18f21f.jpg',
      75023,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'c571e465-c72f-41ae-b05e-2644dfdf373c',
      'DOWN_CONTENT_INLINE',
      'ET-AMAT-03_D26-07-16_00:49:42.840',
      'colorful_building_balcony.jpg',
      'c571e465-c72f-41ae-b05e-2644dfdf373c.jpg',
      'D:\inform-note-workspace\files\c571e465-c72f-41ae-b05e-2644dfdf373c.jpg',
      195156,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '9b39fad0-49f4-4549-bed5-779018bfb865',
      'DOWN_ATTACHMENT',
      'CMP-EBARA-05_D26-07-14_11:12:41.321',
      'colorful_straws.jpg',
      '9b39fad0-49f4-4549-bed5-779018bfb865.jpg',
      'D:\inform-note-workspace\files\9b39fad0-49f4-4549-bed5-779018bfb865.jpg',
      247694,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '2b903df5-5e91-43c4-8a89-ee33ec120806',
      'DOWN_CONTENT_INLINE',
      'IMP-VARIAN-01_D26-07-13_17:19:39.510',
      'paint_palette.jpg',
      '2b903df5-5e91-43c4-8a89-ee33ec120806.jpg',
      'D:\inform-note-workspace\files\2b903df5-5e91-43c4-8a89-ee33ec120806.jpg',
      200418,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ecf9d901-7b80-4791-9a08-8e19d2ced296',
      'DOWN_ATTACHMENT',
      'PH-ASML-03_D26-07-12_07:10:39.407',
      'paint_buckets_and_brush.jpg',
      'ecf9d901-7b80-4791-9a08-8e19d2ced296.jpg',
      'D:\inform-note-workspace\files\ecf9d901-7b80-4791-9a08-8e19d2ced296.jpg',
      142399,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '5b1daa00-44ac-4646-941b-f57e9527a8b2',
      'DOWN_CONTENT_INLINE',
      'CVD-ASM-05_D26-07-10_23:35:39.012',
      'macbook_rgb_lighting.jpg',
      '5b1daa00-44ac-4646-941b-f57e9527a8b2.jpg',
      'D:\inform-note-workspace\files\5b1daa00-44ac-4646-941b-f57e9527a8b2.jpg',
      46229,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'b335e458-1aac-48ad-810c-0e9c343a7f3a',
      'DOWN_ATTACHMENT',
      'DIFF-KOKUSAI-01_D26-07-09_17:44:38.325',
      'colored_pencils.jpg',
      'b335e458-1aac-48ad-810c-0e9c343a7f3a.jpg',
      'D:\inform-note-workspace\files\b335e458-1aac-48ad-810c-0e9c343a7f3a.jpg',
      233236,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '1a4a64e7-f574-413f-9d57-1680f185de8a',
      'DOWN_CONTENT_INLINE',
      'CLN-TEL-03_D26-07-08_13:37:37.346',
      'dj_performance.jpg',
      '1a4a64e7-f574-413f-9d57-1680f185de8a.jpg',
      'D:\inform-note-workspace\files\1a4a64e7-f574-413f-9d57-1680f185de8a.jpg',
      66899,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '46b6ef43-e623-437d-ba54-ce2a49b05a1b',
      'DOWN_ATTACHMENT',
      'ET-LAM-05_D26-07-07_12:04:36.075',
      'rainbow_umbrella.jpg',
      '46b6ef43-e623-437d-ba54-ce2a49b05a1b.jpg',
      'D:\inform-note-workspace\files\46b6ef43-e623-437d-ba54-ce2a49b05a1b.jpg',
      5747317,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '2bd7bfb5-a175-4fc7-9803-93d784cc7335',
      'DOWN_CONTENT_INLINE',
      'CMP-AMAT-01_D26-07-05_18:15:34.512',
      'hot_air_balloon.jpg',
      '2bd7bfb5-a175-4fc7-9803-93d784cc7335.jpg',
      'D:\inform-note-workspace\files\2bd7bfb5-a175-4fc7-9803-93d784cc7335.jpg',
      91360,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'e7561f16-7da5-4cfe-92d5-33ce4fe05da5',
      'DOWN_ATTACHMENT',
      'IMP-AMAT-03_D26-07-04_20:10:32.657',
      'colorful_candies.jpg',
      'e7561f16-7da5-4cfe-92d5-33ce4fe05da5.jpg',
      'D:\inform-note-workspace\files\e7561f16-7da5-4cfe-92d5-33ce4fe05da5.jpg',
      75023,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '3df8a027-7636-411e-a263-a981952ae0f7',
      'DOWN_CONTENT_INLINE',
      'PH-ASML-05_D26-07-03_06:39:32.510',
      'colorful_building_balcony.jpg',
      '3df8a027-7636-411e-a263-a981952ae0f7.jpg',
      'D:\inform-note-workspace\files\3df8a027-7636-411e-a263-a981952ae0f7.jpg',
      195156,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '13832ea3-1745-4be7-bc4c-e191a90b5d73',
      'DOWN_ATTACHMENT',
      'CVD-TEL-01_D26-07-02_12:52:32.071',
      'colorful_straws.jpg',
      '13832ea3-1745-4be7-bc4c-e191a90b5d73.jpg',
      'D:\inform-note-workspace\files\13832ea3-1745-4be7-bc4c-e191a90b5d73.jpg',
      247694,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '58c61097-b100-4312-956e-9298409afb9d',
      'DOWN_CONTENT_INLINE',
      'DIFF-ASM-03_D26-07-01_02:49:31.340',
      'paint_palette.jpg',
      '58c61097-b100-4312-956e-9298409afb9d.jpg',
      'D:\inform-note-workspace\files\58c61097-b100-4312-956e-9298409afb9d.jpg',
      200418,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'd4249cf8-8226-4696-975c-d5172c98c36f',
      'DOWN_ATTACHMENT',
      'CLN-SEMES-05_D26-06-29_19:20:30.317',
      'paint_buckets_and_brush.jpg',
      'd4249cf8-8226-4696-975c-d5172c98c36f.jpg',
      'D:\inform-note-workspace\files\d4249cf8-8226-4696-975c-d5172c98c36f.jpg',
      142399,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '2f4bdabf-21af-498c-8905-c65bad361b94',
      'DOWN_CONTENT_INLINE',
      'ET-AMAT-01_D26-06-28_13:35:29.002',
      'macbook_rgb_lighting.jpg',
      '2f4bdabf-21af-498c-8905-c65bad361b94.jpg',
      'D:\inform-note-workspace\files\2f4bdabf-21af-498c-8905-c65bad361b94.jpg',
      46229,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '172a5f2f-e2fd-4391-908c-43d3da7c549c',
      'DOWN_ATTACHMENT',
      'CMP-KC-03_D26-06-27_09:34:27.395',
      'colored_pencils.jpg',
      '172a5f2f-e2fd-4391-908c-43d3da7c549c.jpg',
      'D:\inform-note-workspace\files\172a5f2f-e2fd-4391-908c-43d3da7c549c.jpg',
      233236,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ce1cabf1-37ee-4fa4-b391-4c1668be0a26',
      'DOWN_CONTENT_INLINE',
      'IMP-AXCELIS-05_D26-06-26_07:17:25.496',
      'dj_performance.jpg',
      'ce1cabf1-37ee-4fa4-b391-4c1668be0a26.jpg',
      'D:\inform-note-workspace\files\ce1cabf1-37ee-4fa4-b391-4c1668be0a26.jpg',
      66899,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '0696fe38-a6d0-46ea-a0b3-7684d508a0c8',
      'DOWN_ATTACHMENT',
      'PH-ASML-01_D26-06-24_13:34:25.305',
      'rainbow_umbrella.jpg',
      '0696fe38-a6d0-46ea-a0b3-7684d508a0c8.jpg',
      'D:\inform-note-workspace\files\0696fe38-a6d0-46ea-a0b3-7684d508a0c8.jpg',
      5747317,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'ed58ceaa-a931-4f14-870a-3aeec2261aac',
      'DOWN_CONTENT_INLINE',
      'CVD-ASM-03_D26-06-23_15:35:24.822',
      'hot_air_balloon.jpg',
      'ed58ceaa-a931-4f14-870a-3aeec2261aac.jpg',
      'D:\inform-note-workspace\files\ed58ceaa-a931-4f14-870a-3aeec2261aac.jpg',
      91360,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '15a6bc63-72b3-4237-9936-15fe15775e1d',
      'DOWN_ATTACHMENT',
      'DIFF-TEL-05_D26-06-22_02:10:24.047',
      'colorful_candies.jpg',
      '15a6bc63-72b3-4237-9936-15fe15775e1d.jpg',
      'D:\inform-note-workspace\files\15a6bc63-72b3-4237-9936-15fe15775e1d.jpg',
      75023,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '8bd00230-3e78-4bb3-84f4-472815fac6d8',
      'DOWN_CONTENT_INLINE',
      'CLN-TEL-01_D26-06-21_08:29:22.980',
      'colorful_building_balcony.jpg',
      '8bd00230-3e78-4bb3-84f4-472815fac6d8.jpg',
      'D:\inform-note-workspace\files\8bd00230-3e78-4bb3-84f4-472815fac6d8.jpg',
      195156,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'cde89ff2-af6e-4a08-8f29-c265082229aa',
      'DOWN_ATTACHMENT',
      'ET-LAM-03_D26-06-19_22:32:21.621',
      'colorful_straws.jpg',
      'cde89ff2-af6e-4a08-8f29-c265082229aa.jpg',
      'D:\inform-note-workspace\files\cde89ff2-af6e-4a08-8f29-c265082229aa.jpg',
      247694,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '451e40a6-3251-4423-b28e-1320f202ff42',
      'DOWN_CONTENT_INLINE',
      'CMP-EBARA-05_D26-06-18_14:19:19.970',
      'paint_palette.jpg',
      '451e40a6-3251-4423-b28e-1320f202ff42.jpg',
      'D:\inform-note-workspace\files\451e40a6-3251-4423-b28e-1320f202ff42.jpg',
      200418,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '55fbb235-89c0-416a-a1d6-326ff2fbcba6',
      'DOWN_ATTACHMENT',
      'IMP-VARIAN-01_D26-06-17_08:40:19.027',
      'paint_buckets_and_brush.jpg',
      '55fbb235-89c0-416a-a1d6-326ff2fbcba6.jpg',
      'D:\inform-note-workspace\files\55fbb235-89c0-416a-a1d6-326ff2fbcba6.jpg',
      142399,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '8319243e-d251-4bbb-b78c-4d2b23008806',
      'DOWN_CONTENT_INLINE',
      'PH-ASML-03_D26-06-16_04:45:18.792',
      'macbook_rgb_lighting.jpg',
      '8319243e-d251-4bbb-b78c-4d2b23008806.jpg',
      'D:\inform-note-workspace\files\8319243e-d251-4bbb-b78c-4d2b23008806.jpg',
      46229,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

END;
/

BEGIN
  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '418c0bde-6e76-4a37-883a-03c04bce6e95',
      'DOWN_ATTACHMENT',
      'CVD-TEL-05_D26-06-15_03:24:18.265',
      'colored_pencils.jpg',
      '418c0bde-6e76-4a37-883a-03c04bce6e95.jpg',
      'D:\inform-note-workspace\files\418c0bde-6e76-4a37-883a-03c04bce6e95.jpg',
      233236,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '3b93b083-4b54-4057-a4b8-2a56eeaeb1c0',
      'DOWN_CONTENT_INLINE',
      'DIFF-KOKUSAI-01_D26-06-13_09:47:17.446',
      'dj_performance.jpg',
      '3b93b083-4b54-4057-a4b8-2a56eeaeb1c0.jpg',
      'D:\inform-note-workspace\files\3b93b083-4b54-4057-a4b8-2a56eeaeb1c0.jpg',
      66899,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '1f44f0cc-e94d-462f-a7c0-abc02b0161a3',
      'DOWN_ATTACHMENT',
      'CLN-SEMES-03_D26-06-12_11:54:16.335',
      'rainbow_umbrella.jpg',
      '1f44f0cc-e94d-462f-a7c0-abc02b0161a3.jpg',
      'D:\inform-note-workspace\files\1f44f0cc-e94d-462f-a7c0-abc02b0161a3.jpg',
      5747317,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'f9c5cb77-b0af-4bb9-b251-0faf640d3cf6',
      'DOWN_CONTENT_INLINE',
      'ET-AMAT-05_D26-06-10_21:45:14.932',
      'hot_air_balloon.jpg',
      'f9c5cb77-b0af-4bb9-b251-0faf640d3cf6.jpg',
      'D:\inform-note-workspace\files\f9c5cb77-b0af-4bb9-b251-0faf640d3cf6.jpg',
      91360,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'f79d5d23-8dd8-4b3b-ad08-2ad28822d941',
      'DOWN_ATTACHMENT',
      'CMP-AMAT-01_D26-06-10_04:10:13.237',
      'colorful_candies.jpg',
      'f79d5d23-8dd8-4b3b-ad08-2ad28822d941.jpg',
      'D:\inform-note-workspace\files\f79d5d23-8dd8-4b3b-ad08-2ad28822d941.jpg',
      75023,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '62b094cf-a760-4aa2-8314-bc48791ca34e',
      'DOWN_CONTENT_INLINE',
      'IMP-AMAT-03_D26-06-08_18:19:12.250',
      'colorful_building_balcony.jpg',
      '62b094cf-a760-4aa2-8314-bc48791ca34e.jpg',
      'D:\inform-note-workspace\files\62b094cf-a760-4aa2-8314-bc48791ca34e.jpg',
      195156,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'cbf26501-6aa3-42f3-a4c0-668fd565e093',
      'DOWN_ATTACHMENT',
      'PH-ASML-05_D26-06-07_10:12:11.971',
      'colorful_straws.jpg',
      'cbf26501-6aa3-42f3-a4c0-668fd565e093.jpg',
      'D:\inform-note-workspace\files\cbf26501-6aa3-42f3-a4c0-668fd565e093.jpg',
      247694,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'd7071163-88c0-42fc-af91-1abd010f6ce3',
      'DOWN_CONTENT_INLINE',
      'CVD-ASM-01_D26-06-06_04:39:11.400',
      'paint_palette.jpg',
      'd7071163-88c0-42fc-af91-1abd010f6ce3.jpg',
      'D:\inform-note-workspace\files\d7071163-88c0-42fc-af91-1abd010f6ce3.jpg',
      200418,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '4b973190-b21c-429d-8c07-b88d27fe084d',
      'DOWN_ATTACHMENT',
      'DIFF-ASM-03_D26-06-05_00:50:10.537',
      'paint_buckets_and_brush.jpg',
      '4b973190-b21c-429d-8c07-b88d27fe084d.jpg',
      'D:\inform-note-workspace\files\4b973190-b21c-429d-8c07-b88d27fe084d.jpg',
      142399,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '7ce95368-bc18-4ebd-80c0-af2a2ad02b50',
      'DOWN_CONTENT_INLINE',
      'CLN-TEL-05_D26-06-03_22:45:09.382',
      'macbook_rgb_lighting.jpg',
      '7ce95368-bc18-4ebd-80c0-af2a2ad02b50.jpg',
      'D:\inform-note-workspace\files\7ce95368-bc18-4ebd-80c0-af2a2ad02b50.jpg',
      46229,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '5c807e65-6807-42e1-befd-c70e1b9a481a',
      'DOWN_ATTACHMENT',
      'ET-LAM-01_D26-06-02_05:14:07.935',
      'colored_pencils.jpg',
      '5c807e65-6807-42e1-befd-c70e1b9a481a.jpg',
      'D:\inform-note-workspace\files\5c807e65-6807-42e1-befd-c70e1b9a481a.jpg',
      233236,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '2ed12966-5140-4c65-a748-b630e80e53dc',
      'DOWN_CONTENT_INLINE',
      'CMP-KC-03_D26-06-01_07:27:06.196',
      'dj_performance.jpg',
      '2ed12966-5140-4c65-a748-b630e80e53dc.jpg',
      'D:\inform-note-workspace\files\2ed12966-5140-4c65-a748-b630e80e53dc.jpg',
      66899,
      'image/jpeg',
      'SAVED',
      'TECH-1003',
      SYSTIMESTAMP,
      'APP-2001',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      'a12e8509-c79d-49a9-9b07-3bb50dc90d98',
      'DOWN_ATTACHMENT',
      'IMP-AXCELIS-05_D26-05-30_17:24:05.165',
      'rainbow_umbrella.jpg',
      'a12e8509-c79d-49a9-9b07-3bb50dc90d98.jpg',
      'D:\inform-note-workspace\files\a12e8509-c79d-49a9-9b07-3bb50dc90d98.jpg',
      5747317,
      'image/jpeg',
      'SAVED',
      'TECH-1005',
      SYSTIMESTAMP,
      'APP-2005',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '9164d622-2684-49bf-8d66-55dacd80df86',
      'DOWN_CONTENT_INLINE',
      'PH-ASML-01_D26-05-29_23:55:04.842',
      'hot_air_balloon.jpg',
      '9164d622-2684-49bf-8d66-55dacd80df86.jpg',
      'D:\inform-note-workspace\files\9164d622-2684-49bf-8d66-55dacd80df86.jpg',
      91360,
      'image/jpeg',
      'SAVED',
      'TECH-1007',
      SYSTIMESTAMP,
      'TECH-1007',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '70b8cb97-7be5-427e-adb2-ae927fd9bb51',
      'DOWN_ATTACHMENT',
      'CVD-TEL-03_D26-05-28_14:10:04.227',
      'colorful_candies.jpg',
      '70b8cb97-7be5-427e-adb2-ae927fd9bb51.jpg',
      'D:\inform-note-workspace\files\70b8cb97-7be5-427e-adb2-ae927fd9bb51.jpg',
      75023,
      'image/jpeg',
      'SAVED',
      'TECH-1009',
      SYSTIMESTAMP,
      'APP-2003',
      SYSTIMESTAMP
  );

  INSERT INTO tb_attached_file (
      file_id, ref_type, ref_id, origin_file_name, stored_file_name,
      file_path, file_size, content_type, file_status, created_by, created_at,
      updated_by, updated_at
  ) VALUES (
      '75ac2f32-5c80-407e-86b8-0b332c6f6e36',
      'DOWN_CONTENT_INLINE',
      'DIFF-TEL-05_D26-05-27_06:09:03.320',
      'colorful_building_balcony.jpg',
      '75ac2f32-5c80-407e-86b8-0b332c6f6e36.jpg',
      'D:\inform-note-workspace\files\75ac2f32-5c80-407e-86b8-0b332c6f6e36.jpg',
      195156,
      'image/jpeg',
      'SAVED',
      'TECH-1001',
      SYSTIMESTAMP,
      'TECH-1001',
      SYSTIMESTAMP
  );

END;
/

COMMIT;

