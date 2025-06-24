-- WHERE CLAUSE

SELECT *
FROM employee_salary
WHERE first_name = 'Tom'
;


SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM employee_salary
WHERE salary < 50000
;

SELECT *
FROM employee_demographics
WHERE gender = 'Female'
;

SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

-- AND OR NOT -- LOGICAL OPERATORS

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'leslie' AND age = 44) OR age > 55
;

-- LIKE STATEMENT --
-- %(anything) and _ (specific)

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%a%'
;


SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1977%'
;