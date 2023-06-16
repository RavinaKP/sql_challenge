--List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.Last_Name, e.First_Name, e.Sex, s.salary
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT First_Name, Last_Name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name

SELECT d.dept_no, d.dept_name, dm.emp_no, e.Last_Name, e.First_Name
FROM departments AS d
JOIN dep_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT e.emp_no, e.Last_Name, e.First_Name, d.dept_no, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT First_Name, Last_Name, Sex
FROM employees
WHERE First_Name = 'Hercules' AND Last_Name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.Last_Name, e.First_Name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT e.emp_no, e.Last_Name, e.First_Name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT Last_Name, COUNT(*) AS Frequency_counts
FROM employees
GROUP BY Last_Name
ORDER BY Frequency_counts DESC;

