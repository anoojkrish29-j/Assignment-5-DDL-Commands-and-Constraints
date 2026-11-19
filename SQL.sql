CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) unique not null
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);

SHOW TABLES;

DESC Departments;

DESC Location;

DESC Employees;

ALTER TABLE Employees
ADD email VARCHAR(100);

ALTER TABLE Employees
MODIFY designation VARCHAR(200);

ALTER TABLE Employees
DROP COLUMN age;

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE Departments
TO Departments_Info;

RENAME TABLE Location
TO Locations;

SHOW TABLES;

TRUNCATE TABLE Employees;

DROP TABLE Employees;

DROP DATABASE employee;

DROP DATABASE IF EXISTS employee;

CREATE DATABASE Employee;

USE Employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,

    employee_name VARCHAR(50) NOT NULL,

    gender ENUM('M','F'),

    age INT CHECK (age >= 18),

    hire_date DATE DEFAULT (CURRENT_DATE),

    designation VARCHAR(100),

    department_id INT,

    location_id INT,

    salary DECIMAL(10,2),

    CONSTRAINT fk_employee_department
    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),

    CONSTRAINT fk_employee_location
    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);

INSERT INTO Departments
(department_id, department_name)
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO Location (location)
VALUES
('Trivandrum'),
('Kochi'),
('Kozhikode');

INSERT INTO Employees
(employee_id, employee_name, gender, age,
 designation, department_id, location_id, salary)
VALUES
(101, 'Arun', 'M', 25, 'Manager', 1, 1, 35000.00),
(102, 'Anjali', 'F', 28, 'Developer', 2, 2, 45000.00),
(103, 'Rahul', 'M', 30, 'Accountant', 3, 3, 30000.00);

SELECT * FROM Departments;

SELECT * FROM Location;

SELECT * FROM Employees;

INSERT INTO Departments
VALUES (4, 'HR');

INSERT INTO Employees
(employee_id, employee_name, gender, age)
VALUES (104, NULL, 'M', 25);

INSERT INTO Employees
(employee_id, employee_name, gender, age)
VALUES (105, 'John', 'X', 25);

INSERT INTO Employees
(employee_id, employee_name, gender, age, department_id)
VALUES (107, 'Sam', 'M', 25, 99);

SHOW TABLES;

DESC Departments;

DESC Location;

DESC Employees;

SHOW CREATE TABLE Employees;





























