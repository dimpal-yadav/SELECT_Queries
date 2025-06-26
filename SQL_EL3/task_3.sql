-- Task 3: Writing Basic SELECT Queries

-- 1. Create Table: 'Employees'
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    age INTEGER,
    salary INTEGER
);

-- 2. Insert Sample Data
INSERT INTO Employees (emp_id, name, department, age, salary) VALUES
(1, 'Alice', 'HR', 30, 50000),
(2, 'Bob', 'Finance', 28, 55000),
(3, 'Charlie', 'IT', 25, 70000),
(4, 'David', 'IT', 35, 75000),
(5, 'Eva', 'HR', 27, 52000),
(6, 'Frank', 'Finance', 40, 80000),
(7, 'Grace', 'Marketing', 32, 48000),
(8, 'Hannah', 'IT', 29, 67000);

-- 3. SELECT Queries
-- a) Select all columns
SELECT * FROM Employees;

--  b) Select specific columns
SELECT name, department, salary FROM Employees;

--  c) WHERE clause: employees in IT department
SELECT * FROM Employees
WHERE department = 'IT';

--  d) WHERE with AND: IT employees earning more than 68000
SELECT * FROM Employees
WHERE department = 'IT' AND salary > 68000;

-- e) WHERE with OR: HR or Marketing department
SELECT name, department FROM Employees
WHERE department = 'HR' OR department = 'Marketing';

-- f) LIKE: Names starting with 'A'
SELECT * FROM Employees
WHERE name LIKE 'A%';

-- g) BETWEEN: Employees aged between 28 and 35
SELECT * FROM Employees
WHERE age BETWEEN 28 AND 35;

--  h) ORDER BY: Sort by salary (highest to lowest)
SELECT * FROM Employees
ORDER BY salary DESC;

-- i) LIMIT: Top 3 highest salaries
SELECT * FROM Employees
ORDER BY salary DESC
LIMIT 3;
