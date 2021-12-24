DROP TABLE IF EXISTS SALARY 
--CREATE TABLE FOR EMPLOYEES 
CREATE TABLE EMPLOYEES (
	EMP_NO INT NOT NULL,
	EMP_TITLE_ID VARCHAR(225) NOT NULL,
	BIRTH_DATE DATE NOT NULL,    
	FIRST_NAME VARCHAR(225) NOT NULL,
    LAST_NAME VARCHAR(225) NOT NULL,
    SEX VARCHAR(1) NOT NULL,
    HIRE_DATE DATE NOT NULL,
    PRIMARY KEY (EMP_NO)
);
--SELECT ALL TO SEE TABLE FORMAT AND IMPORT FILE TO ADD DATE
SELECT * FROM EMPLOYEES

--CREATE TABLE FOR SALARY ADD KEYS FOR REFERENCES IN OTHER TABLES
CREATE TABLE SALARY (
	EMP_NO INT NOT NULL,
	SALARY INT NOT NULL,
	PRIMARY KEY (EMP_NO),
		FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES(EMP_NO)
);

--SELECT ALL TO SEE TABLE FORMAT AND IMPORT FILE TO ADD DATE
SELECT * FROM SALARY

--CREATE TABLE FOR TITLES ADD PRIMARY KEY FOR TITLE
CREATE TABLE TITLE (
	TITLE_ID VARCHAR(225) NOT NULL,
	TITLE VARCHAR(225) NOT NULL,
	PRIMARY KEY (TITLE_ID)
);
--SELECT ALL TO SEE TABLE FORMAT AND IMPORT FILE TO ADD DATE
SELECT * FROM TITLE

--CREATE TABLE FOR DEPARTMENTS ADD PRIMARY KEY FOR DEPTS
CREATE TABLE DEPARTMENT (
	DEPT_NO VARCHAR(225) NOT NULL,
	DEPT_NAME VARCHAR(225) NOT NULL,
	PRIMARY KEY (DEPT_NO)
);

--SELECT ALL TO SEE TABLE FORMAT AND IMPORT FILE TO ADD DATE
SELECT * FROM DEPARTMENT

--CREATE TABLE FOR DEPARTMENT EMPLOYEE ADD PRIMARY KEY FOR DEPTS AND EMPLOYEES
CREATE TABLE DEPT_EMP (
	EMP_NO INT NOT NULL,
	DEPT_NO VARCHAR(225) NOT NULL,
	PRIMARY KEY (EMP_NO, DEPT_NO),
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES(EMP_NO),
	FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENT(DEPT_NO)
);

--SELECT ALL TO SEE TABLE FORMAT AND IMPORT FILE TO ADD DATE
SELECT * FROM DEPT_EMP

--CREATE TABLE FOR DEPARTMENT MANAGER ADD PRIMARY KEY FOR DEPTS AND EMPLOYEES
CREATE TABLE DEPT_MANAGER (
	DEPT_NO VARCHAR(225) NOT NULL,
	EMP_NO INT NOT NULL,
	PRIMARY KEY(DEPT_NO, EMP_NO),
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES(EMP_NO),
	FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENT(DEPT_NO)
);

--SELECT ALL TO SEE TABLE FORMAT AND IMPORT FILE TO ADD DATE
SELECT * FROM DEPT_MANAGER
