Create Database A5_Statistics;
use A5_Statistics;

CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  dept_id INT);

CREATE TABLE departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(100));
  
CREATE TABLE salaries (
  emp_id INT,
  salary DECIMAL(10, 2),
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id));
  
  
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Sales'),
(4, 'Marketing');

INSERT INTO employees (emp_id, first_name, last_name, dept_id) VALUES
(101, 'Alice', 'Morgan', 2),
(102, 'Bob', 'Smith', 1),
(103, 'Charlie', 'Brown', 2),
(104, 'David', 'Lee', 3),
(105, 'Eva', 'Martinez', 4);

INSERT INTO salaries (emp_id, salary) VALUES
(101, 85000),
(102, 65000),
(103, 90000),
(104, 70000),
(105, 72000);




Select * from employees;
Select * from departments;
Select * from salaries;

---- Tasks: 
# List top 5 highest-paid employees 
Select e.emp_id, e.first_name, e.last_name, s.Salary 
from Employees as e join Salaries as s 
on e.emp_id = s.emp_id 
Order by s.Salary DESC 
limit 5;


# Count employees in each department
Select d.dept_name, count(e.emp_id) as no_of_employee 
from departments as d 
join employees as e on d.dept_id = e.dept_id 
group by d.dept_name;


# Find average salary by department
Select d.dept_name, round(avg(s.Salary), 2) as avg_salary  
from departments as d 
join employees as e on d.dept_id = e.dept_id 
join Salaries as s on e.emp_id = s.emp_id
group by d.dept_name
order by avg_salary DESC;


# Use WHERE, GROUP BY, ORDER BY, HAVING, LIMIT
----- Departments with more than 1 employee - sorted by department name
Select d.dept_name, COUNT(e.emp_id) as num_employees
from Employees e
join departments d on e.dept_id = d.dept_id
group by d.dept_name
having COUNT(e.emp_id) > 1
order by d.dept_name ASC
limit 10;



# Apply filtering using BETWEEN, IN, LIKE
----- Employees with salary between 50000 and 80000:
Select e.first_name, e.last_name, s.Salary 
from Employees as e 
join Salaries as s on e.emp_id = s.emp_id 
where s.Salary Between 50000 and 80000
order by s.Salary DESC;

----- Employees in departments IN ('HR', 'Engineering'):
Select e.first_name, e.last_name, d.dept_name 
from Employees as e 
join Departments as d on e.dept_id = d.dept_id 
where d.dept_name in ('HR', 'Engineering');

----- Employees whose first name LIKE 'A%':
Select emp_id, first_name, last_name 
from Employees 
where first_name like 'A%';


