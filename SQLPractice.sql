create database Sample1;
Use Sample1;

create table Worker(Worker_ID int not null Primary key , FirstName varchar(30) not null , LastName varchar(30), Salary int not null, Joining_date datetime,
Dept varchar(10));

insert into Worker values(001, 'Monika', 'Aurora', 100000, '2014-02-20 09:00:00', 'HR'),
(002,'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(003, 'Vishal','Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(004, 'Amitabh','Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(005, 'Vivek','Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(006, 'Vipul','Diwan', 200000, '2014-02-20 09:00:00', 'Account'),
(007, 'Satish','Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(008, 'Geetika','chauhan', 90000, '2014-04-11 09:00:00', 'Admin');

select * from Worker;

create table Bonus(Worker_Ref_ID int not null, Bonus_date Datetime, Bonus_amount int);

insert into Bonus values(1, '2016-02-20 00:00:00', 5000),
(2, '2016-06-11 00:00:00', 3000),
(3, '2016-02-20 00:00:00', 4000),
(1, '2016-02-20 00:00:00', 4500),
(2, '2016-06-11 00:00:00', 3500);

select * from Bonus;

create table Title(Worker_Ref_ID int not null, Worker_Title varchar(50), Affected_From datetime);

Insert into Title values(1, 'Manager', '2016-02-20 00:00:00'),
(2, 'Executive', '2016-06-11 00:00:00'),
(8, 'Executive', '2016-06-11 00:00:00'),
(5, 'Manager', '2016-02-20 00:00:00'),
(4, 'Asst. Manager', '2016-02-20 00:00:00'),
(7, 'Executive', '2016-02-20 00:00:00'),
(6, 'Lead', '2016-02-20 00:00:00'),
(3, 'Lead', '2016-02-20 00:00:00');

select * from Title;

select row_number() over(order by FirstName ) Row_num , Firstname, Lastname , Dept from worker order by Dept;

select row_number() over (Partition by Dept order by Firstname) Row_num, Firstname, Dept from Worker;

select RANK() over (order by dept) Rank_name , Firstname, Salary, dept from worker ;

select RANK() over (order by dept) Rank_name , Firstname, Salary, dept from worker order by dept;

select RANK() over (order by dept) Rank_name , Firstname, Salary, dept from worker order by FirstName;

select rank() over (Partition by Dept order by Firstname) Rank_num, Firstname, Dept from Worker;

select * from (select FirstName, Dept, Salary, rank() over(partition by dept order by firstname)Rank_Num from worker)e where dept = 'HR';

select Firstname, Salary, dense_rank() over(order by dept desc)Rank_num, Dept from worker;

select * from ( select Firstname, Lastname , salary,dept, dense_rank() over(partition by Dept order by Firstname)rank_num from Worker)e

select FirstName as Worker_Name from Worker;

Select Upper(FirstName) from Worker;

select distinct dept from Worker;

select SUBSTRING(FirstName,1, 3) from Worker;

select charindex('a',Firstname) from Worker where FirstName = 'Amitabh';

select distinct len(dept), dept from Worker;

select replace(FirstName, 'a','A') from Worker;

select CONCAT_ws('  ',Firstname ,Lastname ) as complete_Name from Worker

select * from Worker order by FirstName;

select * from Worker order by FirstName asc, Dept desc;

Select * from Worker where Dept like 'Admin%';

Select * from Worker where Dept ='Admin';

select * from Worker where FirstName like '_____h'






