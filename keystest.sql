create database sales

use sales;

create table salesman( salesman_id int not null constraint SK_Key Primary key, Name varchar(30) , Age int check(Age>=18) , city varchar(10), Commission decimal(5,2));

insert into salesman values(1001, 'Vijay Kumar', 19,'Delhi',123),
(1002, 'Sanjay Mehta', 20, 'Agra', 246),
(1003, 'Vishal Tanvar', 24, 'Patna', 110),
(1004, 'Varun vashishth', 20, 'Delhi', 100),
(1005, 'Mukul Dev', 23, 'Agra', 250),
(1006,'Vikrant singh', 24,'Gurgaon', 260),
(1007, 'Sonu kumar', 25, 'Gurgaon', 200);

select * from salesman;

create table orders(ord_no int not null , purch_amt money , ord_date date, customer_id int not null , salesman_id int not null );

alter table orders alter column ord_date varchar(10);

insert into orders values(70001, 150.5,'05-12-2012', 3005, 1002);
insert into orders values(70005,1005,'10-12-2012',3009,1004),
(70002, 65.2, '27-07-2012',3007, 1005),
(70007, 948.12, '16-08-2012',3001, 1002);

select * from orders;

alter table orders add constraint Ok_Key Primary key(ord_no);

alter table orders add constraint FK_Key foreign key(salesman_id) references salesman(salesman_id);

insert into orders values(70004, 405.0, '15-10-2012', 3006, 1008) ---it will give error
insert into orders values(70004, 405.0, '15-10-2012', 3006, 1007);

alter table orders add constraint UC_Key unique(customer_id);

alter table salesman add Bonus int default 500;
UPDATE salesman set bonus = 500 where city = 'delhi';
select * from salesman;

---Aggregate functions

select sum(purch_amt) from orders 

select Avg(purch_amt) from orders

select count(purch_amt) from orders 

select min(purch_amt) from orders 

select max(purch_amt) from orders

---Math functions

select ABS(-123.456)

select ceiling(123.6)

select floor(123.456)

select sqrt(16)

select square(12)

select round(124.6458, 2)

select power(2,5)

select rand()

select reverse(123.456)

select sign(123.456)


---string functions


select CONCAT('Prem','Ratan','Dhan','Payo')

select Lower('Pratiksha Kumari')

select upper('Pratiksha Kumari')

select SUBSTRING('Pratiksha Kumai' , 4,6)

select reverse('Pratiksha')

select CHARINDEX('P', 'Pratiksha')

select len('Pratiksha')

select concat_ws('.', 'www', 'google','com') as website	

select format(getdate(), 'dd/MM/yyyy')

select format(getdate(), 'dd MMMM yyyy, hh:mm:ss')

---dateTime functions

select CURRENT_TIMESTAMP as date

select dateadd(month, 2, '2020/11/25')

select datediff(month,'2020/11/25', '2021/05/13')

select DAY('2021/12/05')

