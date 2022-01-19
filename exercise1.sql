create database EMP1;
use Emp1;

create table Employee(Employee_ID int not null constraint PK_Key primary key, Firstname varchar(50) not null, Lastname varchar(50), Salary decimal(10,3) not null,City varchar(20), DeptID	int default 0);

insert into Employee values(101, 'Kapil','Sharma',45000,'Delhi',1),
(102,'Sanjana','Mehta',50000,'Mumbai',3),
(103,'Varun','Singhal',40000, 'Mumbai',1),
(104,'Srinivas','Sharma',45000,'Chennai',2),
(105,'Ankitha','Verma', 50000,'Hyderabad',2),
(106,'Prem','Dsouza',35000,'Hyderabad',1),
(107,'Rohan','Roy',45000,'Delhi',3),
(108,'Keerthana', 'Rajgopalan', 40000, 'Chennai',1),
(109,'Rakesh','Roshan',35000, 'Hyderabad',2),
(110,'Lakshmi','Sidhar',50000, 'Bangalore',3),
(111, 'Prashanthi','Krishna',45000,'Bangalore',2);

select * from Employee;

select Employee_ID, Firstname, Salary from Employee where Salary<=35000;

select Employee_Id, Firstname from Employee where Firstname like '%a';
select Employee_Id, Firstname, Lastname from Employee where Lastname like '%a';

Select * from Employee where city = 'Delhi' or city = 'Mumbai';

select distinct Salary from Employee;

select Firstname, lastname, salary, salary*20/100 +Salary as ANNUAL_Sal from Employee;

select top 5 Salary, firstname from Employee order by salary desc;

select employee_ID, firstname, salary from Employee where salary > ALL(select salary from employee where city = 'chennai');

select *  from Employee where DeptID in (1,3);

select count (salary)as no_of_Emp, salary from employee group by Salary ;

select distinct salary from Employee order by Salary desc;

select max(salary) from Employee where Salary < (select max(salary) from Employee );

---WINDOW FUNCTIONS
select row_number() over(partition by city order by firstname)row_num, Firstname, Salary, City from employee;

select rank() over(partition by city order by salary)row_num, Firstname, Salary, City from employee;

select dense_rank() over(partition by city order by salary)row_num, Firstname, Salary, City from employee;

select * from (select Firstname , Salary, City ,rank() over (partition by salary order by city)cityrank from Employee)e

select * from (select Firstname , Salary, City ,rank() over (order by salary)cityrank from Employee)e

select * from (select Firstname , Salary, City ,dense_rank() over (Partition by city order by salary)sal_rank from Employee)e