-- Drop table if exists
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create new table to import data

CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR,
    PRIMARY KEY (title_id)
);

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date VARCHAR,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date VARCHAR,
    PRIMARY KEY (emp_no)
);

CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
	emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT
);

SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
