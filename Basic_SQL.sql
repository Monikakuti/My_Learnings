--SQL (Structured Query Language) is used to interact with databases. It's how we read, insert, update, and delete data.

create database Practice1; -- CREATING DATABASE

use Practice1; -- USING DATABASE

-- CREATING A TABLE
CREATE TABLE employees (
  id INT,
  name VARCHAR(100),
  department VARCHAR(50),
  salary INT
);

--INSERTING DATA 
INSERT INTO employees (id, name, department, salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'IT', 60000),
(3, 'Charlie', 'IT', 70000),
(4, 'Diana', 'Sales', 40000),
(5, 'Edward', 'HR', 55000);

-- DISPLAY ALL THE DATA 
SELECT * FROM employees;

--SELECT SPECIFIC COLUMNS
SELECT name, salary FROM employees;

-- WHERE - FILTER
SELECT * FROM employees WHERE department = 'IT';

-- Show only the names of employees in the HR department.
SELECT name FROM employees WHERE department = 'HR';

-- Show all employees who earn more than 50000.
SELECT * FROM employees WHERE salary>50000;

-- Show name and salary of employees in the Sales department.
SELECT name,salary FROM employees WHERE department='Sales';

-- Show all data of employees with salary less than 60000.
SELECT * FROM employees WHERE salary<60000;

-- ORDER BY (SORTING)
SELECT * FROM employees ORDER BY salary ASC; --ASCENDING (DEFAULT)

SELECT * FROM employees ORDER BY salary DESC; --DECENDING

-- Show employees from HR department sorted by salary (high to low)
SELECT * FROM employees 
WHERE department='HR' 
ORDER BY salary DESC;

-- LIMIT – Show Top N Records
-- Show top 3 highest-paid employees
-- SELECT * FROM employees ORDER BY salary DESC LIMIT 3;(can't run in microsoft visual studio)
-- USING TOP 
SELECT TOP 3 * FROM employees
ORDER BY salary DESC;

-- show the 2 lowest-paid employees
SELECT TOP 2 * FROM employees
ORDER BY salary ASC;

-- Show all employee names sorted alphabetically
SELECT name FROM employees
ORDER BY name ASC;

-- Show names of IT employees sorted by salary (high to low).
SELECT name FROM employees
WHERE department='IT'
ORDER BY salary DESC;

-- Sort by department and then by salary (highest first) inside each department
SELECT * FROM employees
ORDER BY department DESC,salary DESC; --RIGHT ANS

SELECT * FROM employees
ORDER BY department,salary DESC; -- This does sort by department, but it sorts department ASC and then salary DESC within each department.