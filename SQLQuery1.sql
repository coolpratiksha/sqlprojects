create database testdb;

use testdb;

create table Employee(
Emp_ID int,Emp_Name varchar(25),Contact_No varchar(12), Email_ID varchar(50)
);
insert into Employee values(1001,'Pratiksha','4567894645','pratiksha@gmail.com');
insert into Employee values(1002,'Manoj','4569871236','manoj@gmail.com');
insert into Employee values(1003,'Minni','1234567890','minni@yahoo.com');
insert into Employee values(1004,'Sagar','4523698741','sagar@gmail.com');
select* from Employee;

Alter table Employee add city varchar(20);
select * from Employee;

update Employee set city = 'Delhi' where Emp_ID = 1001;
update Employee set city = 'Agra' where Emp_ID = 1002;
update Employee set city = 'Gurgaon' where Emp_ID=  1003;
update Employee set city = 'Pune' where Emp_ID = 1004;
select * from Employee;

create table Employee_Salary(
Emp_Name varchar(25), CTC decimal(10,2), InHand decimal(10,2)
);
insert into Employee_Salary values('Pratiksha', 500.0, 400.50);
insert into Employee_Salary values('Manoj', 500.00, 400.25);
insert into Employee_Salary values('Minni', 500.00, 400.0);
insert into Employee_Salary values('Sagar', 500.0, 400.0);
select * from Employee_Salary;

Delete from Employee_Salary where Emp_Name = 'Minni';
select * from Emp1;


go
exec sp_rename 'Employee_Salary' , 'Emp_Salary';
exec sp_rename 'dbo.Employee' , 'dbo.Emp1';

select * from Emp_Salary;

