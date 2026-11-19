# Assignment-5-DDL-Commands-and-Constraints
DDL Commands and Constraints- DA

## Tables Created
- Departments
- Location
- Employees

## What I Worked On

### 1. Database and Table Creation
Created a database named `employee` and three tables: Departments, Location and Employees

### 2. ALTER Commands
- Adding an email column.
- Changing the data type of designation.
- Removing the age column.
- Renaming hire_date to date_of_joining.

### 3. RENAME Command
Renamed the Departments table to Departments_Info and Location to Locations.

### 4. TRUNCATE Command
Used TRUNCATE to remove all records from the Employees table while keeping its structure.

### 5. DROP Command
Dropped the Employees table and the employee database as part of the assignment.

### 6.Constraints
Recreated the database and applied different constraints to maintain data accuracy:

- PRIMARY KEY – To keep IDs unique.
- NOT NULL – To make sure important fields not left empty.
- UNIQUE – To avoid duplicate department and location names.
- AUTO_INCREMENT – To generate location IDs automatically.
- ENUM – To allow only M or F for gender.
- CHECK – To ensure employee age is 18 or above.
- DEFAULT – To automatically set the current date as the hire date.
- FOREIGN KEY – To connect the Employees table with Departments and Location.


. Inserted sample records into the tables.
. Tested the constraints using INSERT queries.
. Checked the results using SELECT, DESC and SHOW TABLES commands.
