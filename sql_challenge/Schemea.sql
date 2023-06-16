-- First CREATE the departments table and import the data
CREATE TABLE departments (
  dept_no  VARCHAR(50) NOT NULL,
  dept_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (dept_no)		
);
-- Second CREATE the titles table and import the data
CREATE TABLE titles (
  title_id VARCHAR(50) NOT NULL,
  title VARCHAR(50) NOT NULL,
  PRIMARY KEY (title_id)	
);
-- Thirs CREATE the employees table and import the data
CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id VARCHAR(50) NOT NULL,
  birth_date DATE NOT NULL,
  first_Name VARCHAR(50) NOT NULL,
  last_Name VARCHAR(50) NOT NULL,
  sex VARCHAR(30) NOT NULL,
  hire_date DATE NOT NULL,
  PRIMARY KEY (emp_no),	
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)	
);
-- Forth CREATE the dept_emp table and import the data
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(50) NOT NULL, 
  primary key(emp_no,dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
-- Fifth CREATE the dept_manager table and import the data
CREATE TABLE dep_manager (
  dept_no VARCHAR(50) NOT NULL,
  emp_no INT,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- Sixth CREATE the dept_salary table and import the data
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

-- Verfy the imported data

SELECT *
FROM dep_manager;

SELECT *
FROM departments;

SELECT *
FROM dept_emp;

SELECT *
FROM employees;

SELECT *
FROM salaries;

SELECT *
FROM titles;





