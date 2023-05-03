CREATE TABLE titles(
	title_id CHAR(5), 
	title VARCHAR(30),
	PRIMARY KEY(title_id)
);

CREATE TABLE employees (
	emp_no SERIAL,
	emp_title CHAR(5),
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex CHAR(1),
	hire_date DATE,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_title) REFERENCES titles(title_id)
);
	
CREATE TABLE departments ( 
	dept_no CHAR(4),
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(dept_no)
);
	
CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager(
	dept_no CHAR(4),
	emp_no INT,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
	
CREATE TABLE dept_employee(
	emp_no INT,
	dept_no CHAR(4),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
	
	
	
	
	