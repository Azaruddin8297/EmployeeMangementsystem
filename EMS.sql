create database EmplpoyeeMangement
use EmplpoyeeMangement

create table Employee
(
emp_ID int primary key,
fname varchar(30),
lname varchar(30),
gender Varchar(1), 
age int,
contact_add int,
emp_email varchar(50),
emp_password varchar(50)
);

insert into Employee values (1,'Shaik','Azaruddin','M',25, 1234 ,'ajarpopo@gmail.com','ajar')
insert into Employee values (2,'Shaik','Afridi','M',25, 12345 ,'afridi@gmail.com','Afridi'),
(3,'Shaik','Kousar','F',20, 123 ,'Kousar@gmail.com','Kousar'),
(4,'Shaik','Rafiq','M',55, 123456 ,'Rafiq@gmail.com','Rafiq'),
(5,'Shaik','Ishrathjaha','F',45, 12345 ,'Ishrathjaha@gmail.com','Ishrathjaha'),
(6,'Hulk','Banner','M',25, 123454 ,'hulk@gmail.com','Banner'),
(7,'iron','man','M',25, 123452 ,'iron@gmail.com','man'),
(8,'bruce','Batman','M',25, 123451 ,'Batman@gmail.com','Batman'),
(9,'clerk','SuperMan','M',25, 123452 ,'SuperMan@gmail.com','SuperMan'),
(10,'Hems','Thor','M',25, 12345 ,'Thor@gmail.com','Thor'),
(11,'Captian','America','M',25, 123451 ,'America@gmail.com','America'),
(12,'superstar','mahesh','M',25, 123453 ,'mahesh@gmail.com','mahesh'),
(13,'youngtiger','ntr','M',25, 123454 ,'ntr@gmail.com','ntr'),
(14,'ram','charan','M',25, 123451 ,'charan@gmail.com','charan'),
(15,'jai','balayya','M',25, 123415 ,'balayya@gmail.com','balayya'),
(16,'pawan','kalyan','M',25, 123415 ,'kalyan@gmail.com','kalyan')



select * from Employee
select * from Payroll
select * from JobDescription
select * from Payroll


create table JobDescription
(
job_ID int primary key,
job_dept varchar(30),
name varchar(30),
description varchar(30),
salary_range varchar(30)
)
alter table JobDescription 
drop column name

alter table JobDescription
add emp_ID int references Employee(emp_ID)



insert into JobDescription values(1001,'hr','Azaruddin','Recruite new Employees','10L-20L'),
(1002,'sales','Afridi','Manages sales dept','10L-20L'),
(1003,'hr','Rafiq','Recruite new Employees','10L-20L'),
(1004,'hr','Ameer','Recruite new Employees','10L-20L'),
(1005,'hr','Shafi','Recruite new Employees','10L-20L')
insert into JobDescription values(1006,'Engineer','Hulk','Construction','30L-50L'),
(1007,'it','Iron','Bulid new things','10L-20L'),
(1008,'Finance','Fury','Recruite new Employees','10L-20L'),
(1009,'Fixing','jakeer','fix computers','10L-20L'),
(1010,'Travels','Sameer','travelling','10L-20L')


update JobDescription
set emp_ID = 1 where job_ID = 1001

update JobDescription
set emp_ID = 2 where job_ID = 1002

update JobDescription
set emp_ID = 3 where job_ID = 1003

update JobDescription
set emp_ID = 4 where job_ID = 1004

update JobDescription
set emp_ID = 5 where job_ID = 1005

update JobDescription
set emp_ID = 6 where job_ID = 1006

update JobDescription
set emp_ID = 7 where job_ID = 1007

update JobDescription
set emp_ID = 8 where job_ID = 1008

update JobDescription
set emp_ID = 9 where job_ID = 1009

update JobDescription
set emp_ID = 10 where job_ID = 1010


create table BonusorSalary
(
Salary_ID int primary key,
job_ID int foreign key references jobDescription,
amount int,
annual date,
bonous date
)
select * from BonusorSalary

insert into BonusorSalary values (1 , 1001 , 4000 , '2020-12-12','2020-12-12')
insert into BonusorSalary values 
(2 , 1002 , 4500 , '2020-12-12','2020-12-12'),
(3 , 1003 , 4600 , '2020-12-12','2020-12-12'),
(4 , 1004 , 4700 , '2020-12-12','2020-12-12'),
(5 , 1005 , 4800 , '2020-12-12','2020-12-12')
insert into BonusorSalary values 
(6 , 1006 , 4500 , '2020-12-12','2020-12-31'),
(7 , 1007 , 4600 , '2020-12-12','2020-12-31'),
(8 , 1008 , 4700 , '2020-12-12','2020-12-31'),
(9 , 1009 , 4800 , '2020-12-12','2020-12-31'),
(10 , 1010 , 4800 , '2020-12-12','2020-12-31')


create table Payroll(
payroll_ID int primary key,
emp_ID int foreign key references Employee(emp_ID),
job_ID int foreign key references jobDescription(job_ID),
Salary_ID int foreign key references BonusorSalary(Salary_ID),
payroll_date date,
Report text,
total_amount int
)
select * from Payroll

insert into Payroll values(111,1,1001,1,'2023-05-31','Salary',40000)
insert into Payroll values(112,2,1002,2,'2023-05-31','Salary',50000),
(113,3,1003,3,'2023-05-31','Salary',60000),
(114,3,1004,4,'2023-05-31','Salary',70000),
(115,3,1005,5,'2023-05-31','Salary',80000)
insert into Payroll values(116,6,1006,6,'2023-05-31','Salary',50000),
(117,7,1007,7,'2023-05-31','Salary',60000),
(118,8,1008,8,'2023-05-31','Salary',70000),
(119,9,1009,9,'2023-05-31','Salary',80000),
(120,10,1010,10,'2023-05-31','Salary',80000)

create table UserDetails(
name varchar(20),
address varchar(20),
id int)
select * from UserDetails
insert into UserDetails values('Azar','atm',1),
('Kousar','atm',2),
('Afridi','atm',3),
('Rafiq','atm',4)

select * from UserDetails where name = 'azar'

update UserDetails set name = 'hulk' where address = 'atm'

delete UserDetails where id = 2

delete from UserDetails

drop table UserDetails

Truncate table UserDetails