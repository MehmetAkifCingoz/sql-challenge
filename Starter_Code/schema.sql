-- Departments table
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Department-Employee Relationship table
CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(10),
    PRIMARY KEY (emp_no, dept_no) ,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Department-Manager Relationship table
CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no INTEGER,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Employees table
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE
);

-- Salaries table
CREATE TABLE salaries (
    emp_no INTEGER,
    salary INTEGER,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Titles table
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(100)
);


