CREATE VIEW Emp_Salary AS
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no

SELECT * FROM emp_salary

------------

CREATE VIEW emp_1986 AS
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE EXTRACT(YEAR FROM employee.hire_date) = 1986;

SELECT * FROM emp_1986

------------

CREATE VIEW dept_managers AS
SELECT dept_manager.dept_no, department.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN department ON dept_manager.dept_no = department.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

SELECT * FROM dept_managers

------------

CREATE VIEW emp_departments AS
SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM Dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN department ON dept_emp.dept_no = department.dept_no;

SELECT * from emp_departments 

------------

CREATE VIEW hercules_b AS
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules' AND employees.last_name LIKE 'B%';

SELECT * from hercules_b

------------

CREATE VIEW sales_dept AS
SELECT employees.emp_no, employees.first_name, employees.last_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN department ON dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales';

SELECT * FROM sales_dept

------------

CREATE VIEW sales_development_dept AS
SELECT employees.emp_no, employees.first_name, employees.last_name, department.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN department ON dept_emp.dept_no = department.dept_no
WHERE department.dept_name IN ('Sales', 'Development');

SELECT * FROM sales_development_dept

------------

CREATE VIEW last_name_frequency AS
SELECT employees.last_name, COUNT(*) AS frequency
FROM employees
GROUP BY employees.last_name
ORDER BY frequency DESC;

SELECT * FROM last_name_frequency



















