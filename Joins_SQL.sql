use Practice;

CREATE TABLE employees(id int,name varchar(50),department varchar(50),salary int);

INSERT INTO employees(id,name,department,salary) VALUES
(1,'Moni','IT',25000),
(2,'Aswin','HR',40000);

SELECT * FROM employees;

CREATE TABLE departments(department varchar (50),manager varchar(50));

INSERT INTO departments(department,manager) VALUES
('IT','Rahul'),('HR','Priya');

SELECT * FROM departments;

--Type       | Returns
-- JOIN      | Only matching rows
--LEFT JOIN  | All left + matching right
--RIGHT JOIN | All right + matching left
--FULL JOIN  | All from both tables
--SELF JOIN  | Table joined with itself
--CROSS JOIN | All combinations (cartesian product)


-- 1. INNER JOIN
--✅ Returns rows only if there's a match in both tables
SELECT e.name, e.department, d.manager
FROM employees e
INNER JOIN departments d
ON e.department = d.department;


--🔹 2. LEFT JOIN
-- Returns all rows from the left table + matched rows from the right
SELECT e.name, e.department, d.manager
FROM employees e
LEFT JOIN departments d
ON e.department = d.department;
--🧠 Even if the department has no manager info, you’ll still see the employee (with NULL manager).


--🔹 3. RIGHT JOIN (not supported in all SQL versions)
--✅ Returns all rows from the right table + matched rows from the left
SELECT e.name, e.department, d.manager
FROM employees e
RIGHT JOIN departments d
ON e.department = d.department;
--🧠 Use this if you're more focused on the departments table.


--🔹 4. FULL OUTER JOIN
--✅ Returns all rows from both tables, even if there’s no match
SELECT e.name, e.department, d.manager
FROM employees e
FULL OUTER JOIN departments d
ON e.department = d.department;
--🧠 You’ll see everything — matched, unmatched from left, unmatched from right.


--🔹 5. Self Join
--✅ Join a table with itself!
--Use case: find employees in the same department as others.
SELECT A.name AS emp1, B.name AS emp2, A.department
FROM employees A
JOIN employees B
ON A.department = B.department
WHERE A.name <> B.name;