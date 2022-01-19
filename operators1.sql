create database Employee2

use Employee2;

create table Employee_Salary(
Emp_Name varchar(25), CTC decimal(10,2), InHand decimal(10,2)
);
insert into Employee_Salary values('Pratiksha', 500.0, 400.50);
insert into Employee_Salary values('Manoj', 500.00, 400.25);
insert into Employee_Salary values('Minni', 500.00, 400.0);
insert into Employee_Salary values('Sagar', 500.0, 400.0);
select * from Employee_Salary;

Alter table Employee_Salary add Bonus decimal(5,2);
update Employee_Salary set Bonus = 520.00 where Emp_name = 'Pratiksha';
update Employee_Salary set Bonus = 500 where Emp_name = 'sagar';
update Employee_Salary set Bonus = 500 where Emp_name = 'Manoj';
update Employee_Salary set Bonus = 600 where Emp_name = 'Minni';

select Emp_Name, CTC + Bonus as Total_Salary from Employee_Salary;

alter table Employee_Salary add Penalty int;
update Employee_Salary set Penalty = 500 where Emp_Name = 'Pratiksha';
update Employee_Salary set Penalty = 500 where Emp_Name = 'Manoj';
update Employee_Salary set Penalty = 500 where Emp_Name = 'Minni';

select Emp_name, CTC + Bonus - Penalty as NewSalary from Employee_Salary;
select Emp_name , Bonus*2 as NewBonus from Employee_Salary;
select Emp_Name, Penalty/2 as newPenalty from Employee_Salary;
Alter Table Employee_Salary add NewSalary Decimal(5,2);

select Emp_name, CTC, Bonus from Employee_Salary where Bonus>500;
select Emp_name, CTC, Bonus from Employee_Salary where Bonus<600;


select * from Employee_Salary;


alter table Employee_salary add city varchar(25);
update Employee_Salary set city = 'Delhi' where Emp_Name= 'Pratiksha';
update Employee_Salary set city = 'Delhi' where Emp_Name= 'Sagar';
update Employee_Salary set city = 'Gurgaon' where Emp_Name= 'Minni';
update Employee_Salary set city = 'Noida' where Emp_Name= 'Manoj';

select emp_name, CTC, city, Bonus From Employee_Salary where Bonus < 600 and City = 'Delhi';
select emp_name, CTC, city, Bonus From Employee_Salary where Bonus < 600 or City = 'Delhi';

select emp_name , CTC , Bonus, city from Employee_Salary where Bonus > All (Select Bonus from Employee_Salary where city = 'Delhi');

select Emp_Name,  Bonus from employee_salary where bonus between 500 and 600;
select Emp_Name,  Bonus from employee_salary where bonus in(500,600);