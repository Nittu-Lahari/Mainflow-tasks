# Create table Employees
create table Employees (
    EmployeeID int AUTO_INCREMENT PRIMARY KEY,
    Name varchar(50) NOT NULL,
    Department varchar(50),
    HireDate date
);
# Insert values into Employees
insert into  Employees (Name, Department, HireDate) values
('Narender', 'HR', '2020-06-15'),
('Harish', 'Finance', '2018-03-22'),
('Anoop', 'IT', '2019-09-10'),
('Navoday', 'Marketing', '2021-01-05'),
('Ramesh', 'Finance', '2016-11-30');
select * from Employees;

# Modify Table Structure - Add New Columns
# Populate New Columns with Initial Values
alter table  Employees
add column LastUpdated date,
add column Status varchar(10) default 'Active';
update Employees 
set LastUpdated = CURDATE()
where EmployeeID > 0;

update Employees
set Status = 'Active', LastUpdated = CURDATE()
where EmployeeID > 0;
select * from Employees;

# Delete Records Based on Conditions
update Employees 
set Status = 'Inactive' 
where EmployeeID > 4 AND HireDate < '2019-01-01';

SELECT * FROM Employees 
WHERE Status = 'Inactive';

# Delete Inactive Records
delete from Employees 
where EmployeeID > 0 AND Status = 'Inactive';

# Delete Records Older than a Specific Date
delete from Employees 
where EmployeeID > 0 AND LastUpdated < '2024-01-01';

# Confirm Table Modifications
desc Employees;

# Checking Data After Deletion
select * from Employees;
