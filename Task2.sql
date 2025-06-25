/create database/
create database employee_management_system;
use employee_management_system;

alter table employees drop emp_age;

drop table department;

/create employee table/
CREATE TABLE employees (emp_id INT PRIMARY KEY,emp_name VARCHAR(50) NOT NULL,emp_email VARCHAR(100) UNIQUE,emp_age INT CHECK (emp_age >= 18),                 
emp_department_id INT,emp_join_date DATE DEFAULT (CURRENT_DATE));

/salary table/
CREATE TABLE salary (emp_id INT,salary_amnt INT,salary_date DATE DEFAULT (CURRENT_DATE),FOREIGN KEY (emp_id) REFERENCES employees(emp_id));

/department table/
CREATE TABLE department (dept_id INT auto_increment primary key,dept_name VARCHAR(50),location VARCHAR(50) DEFAULT 'CHENNAI');

/attendance table/
CREATE TABLE attendance (emp_id INT,attendance_date DATE,status VARCHAR(15),FOREIGN KEY (emp_id) REFERENCES employees(emp_id));

insert into employees (emp_id,emp_name,emp_email,emp_age,emp_department_id) values 
(1, 'John Doe', 'john.doe@example.com', 30, 101),
(2, 'Jane Smith', 'jane.smith@example.com', 28, 102),
(3, 'Bob Johnson', 'bob.johnson@example.com', 35, 103),
(4, 'Alice Brown', 'alice.brown@example.com', 25, 101),
(5, 'Mike Davis', 'mike.davis@example.com', 40, 102);

INSERT INTO salary (emp_id, salary_amnt) 
VALUES (1, 20000),(2, 30000),(3, 45000),(4, 14000),(5, 50000);

INSERT INTO department(dept_id,dept_name)values(001,'java'),(002,'php'),(003,'html'),(004,'python'),(005,'sql');

INSERT INTO attendance (emp_id, attendance_date, status) VALUES (1, '2024-05-05', 'present'),(2, '2024-05-05', 'present'),
(3, '2024-05-05', 'present'),(4, '2024-05-05', 'present'),(5, '2024-05-05', 'present');

SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM salary;
SELECT * FROM attendance;

update employees set emp_email='mike.d@abc.com' where emp_id=5;
update salary set salary_amnt=28000 where emp_id=4;

delete from employees where emp_id is null;

select*from employees where emp_email is null;
