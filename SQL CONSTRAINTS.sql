-- CREATING DATABASE AND TABLE

-- How to create a database
CREATE DATABASE EMPLOYEE

-- how to use database
USE EMPLOYEE

-- how to delete database
DROP DATABASE order_new

-- How to create tale
CREATE TABLE employee(
ID INT,
NAME VARCHAR(30),
ADDRESS VARCHAR(50),
SALARY INT,
BONUS FLOAT
)

-- how to read table
SELECT * FROM employee

-- Insert Values
INSERT INTO employee VALUES (101,'MEGHA','INDIA',50000,4.5)
INSERT INTO employee VALUES (102,'MENAGHA','INDIA',70000,4.0)
INSERT INTO employee VALUES (103,'MEGHANA','INDIA',80000,3.5)

SELECT * FROM employee

-- Insert only few column values in the table
INSERT INTO employee(ID,NAME,SALARY) VALUES(104,'MAHA',95000)

-- SQL CONSTRAINTS
-- NOT NULL AND UNIQUE CONSTRAINTS

CREATE TABLE emp1(
ID INT,
EMAIL VARCHAR(30) NOT NULL,
PHONE VARCHAR(28) UNIQUE
)

SELECT * FROM emp1

INSERT INTO emp1 VALUES(1,'jones@gmail.com',143562)
INSERT INTO emp1 VALUES(2,'herder@gmail.com',2657854)

-- CHECK AND DEFAULT CONSTRAINTS

CREATE TABLE emp2(
ID INT,
AGE INT CHECK (AGE>18),
COUNTRY VARCHAR(28) DEFAULT 'INDIA'
)

INSERT INTO emp2 VALUES(1,27,'INDIA')
INSERT INTO emp2(ID,AGE) VALUES (2,19)

SELECT* FROM emp2

-- PRIMARY KEY AND UNIQUE KEY
CREATE TABLE emp3(
ID INT PRIMARY KEY,
EMAIL VARCHAR (25) UNIQUE
)

--FOREIGN KEY
CREATE TABLE DEPARTMENT1(
DEPT_ID INT PRIMARY KEY,
DEPT_NAME VARCHAR(25)
)

CREATE TABLE STUDENT1(
ID INT PRIMARY KEY,
NAME VARCHAR(30),
DEPT_ID INT
FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT1(DEPT_ID)
)


