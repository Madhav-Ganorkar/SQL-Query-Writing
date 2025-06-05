# SQL Query Writing: Employee Database Explorer

## 🎯 Objective
Use SQL to explore and extract insights from an employee database by writing queries using real-world filtering and aggregation techniques.

---

## 🗂️ Tables Used

1. **employees**  
   - `emp_id` (INT): Primary Key  
   - `first_name` (VARCHAR)  
   - `last_name` (VARCHAR)  
   - `dept_id` (INT): Foreign key to departments  

2. **departments**  
   - `dept_id` (INT): Primary Key  
   - `dept_name` (VARCHAR)  

3. **salaries**  
   - `emp_id` (INT): Foreign Key to employees  
   - `salary` (DECIMAL): Employee salary  

---

## 📁 File Structure

### 🔹 `employee_queries_part1.sql`
Contains:
- Table creation and sample data insertion
- Queries using:
  - `WHERE`
  - `GROUP BY`
  - `ORDER BY`
  - `HAVING`
  - `LIMIT`

### 🔹 `employee_queries_part2.sql`
Contains:
- Queries using filtering clauses:
  - `BETWEEN`
  - `IN`
  - `LIKE`

---

## 📊 Sample Queries Included

### ✅ Top 5 Highest-Paid Employees
```sql
SELECT e.emp_id, e.first_name, e.last_name, s.salary
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
ORDER BY s.salary DESC
LIMIT 5;
```

---

## 🚀 How to Run
Import the .sql files in any SQL tool (e.g., MySQL Workbench, PostgreSQL, SQLite).

Run the CREATE TABLE and INSERT statements.

Execute the queries to view the results.

---

## 🙌 Author
Name: Madhav Ganorkar
Assignment: SQL Query Writing – Masai School
