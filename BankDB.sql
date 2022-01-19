create DATABASE Bank_DB;
use Bank_DB;

CREATE TABLE PERSONAL_INFO
(
Customer_ID varchar(5),
Customer_Name varchar(30) not null,
DOB date not null,
Contact_number bigint not null unique,
Mail_ID varchar(50),
Gender varchar(1),
Marital_Status varchar(10),
Citizenship varchar(10),
);

insert into PERSONAL_INFO(Customer_ID, Customer_Name, DOB, Contact_number, Mail_ID, Gender, Marital_Status, Citizenship)
values('11111', 'Ram', '1998-12-28', 4578961235, 'ram@gmail.com', 'M', 'Married', 'Indian'),
('11112', 'sham', '19990903', 2345678954, 'sham@gmail.com', 'M', 'Single', 'Indian');
select * from PERSONAL_INFO;
alter table dbo.PERSONAL_INFO
drop constraint UQ__PERSONAL__7521CDD3CFDB8597
alter table dbo.PERSONAL_INFO
drop column ID_DOC_NO;

alter table dbo.PERSONAL_INFO
drop constraint UQ__PERSONAL__305BADDF03F3B9C9;
alter table dbo.PERSONAL_INFO
drop constraint UQ__PERSONAL__8C1804FF9A94AD22;
alter table dbo.PERSONAL_INFO
drop constraint UQ__PERSONAL__9CA8E8206FDF9E11;

select * from personal_info;

create table Customer_refrence_Info
(
Customer_ID varchar(5) not null unique,
Reference_acc_name varchar(20),
Reference_acc_Number bigint not null unique,
Reference_acc_Address varchar(50),
);
insert into Customer_refrence_Info(Customer_ID, Reference_acc_name, Reference_acc_Number, Reference_acc_Address)
values('11111','Ram Singh', 123456789456123, 'Gurgaon, Haryana'),
('11112', 'Sham sharma', 321456987456123, 'Bhiwadi, Rajasthan');
select * from Customer_refrence_Info;

Create table Bank_Info
(
IFSC_CODE varchar(15),
Bank_Name varchar(25),
Branch_Name varchar(15),
);
insert into Bank_Info(IFSC_CODE, Bank_Name, Branch_Name)
values('HDFC000231', 'HDFC Bank', 'Bhiwadi'),
('IDFC01023', 'IDFC Bank', 'Gurgaon');
select * from Bank_Info;