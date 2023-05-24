create database EmplpoyeeMangementSystem
use EmplpoyeeMangementSystem
create table Employee
(
emp_ID int primary key,
fname varchar(30),
lname varchar(30),
gender int, 
age int,
contact_add int,
emp_email varchar(50),
emp_password varchar(50)
);

select * from Employee

alter table Employee
alter column gender char

insert into Employee values (1,'Shaik','Azaruddin','M',25, 12345 ,'ajarpopo@gmail.com','password')
insert into Employee values (2,'Shaik','Afridi','M',25, 12345 ,'afridi@gmail.com','password'),
(3,'Shaik','Kousar','F',20, 12345 ,'Kousar@gmail.com','password'),
(4,'Shaik','Rafiq','M',55, 12345 ,'Rafiq@gmail.com','password'),
(5,'Shaik','Ishrathjaha','F',45, 12345 ,'Ishrathjaha@gmail.com','password'),
(6,'Hulk','Banner','M',25, 12345 ,'hulk@gmail.com','password'),
(7,'iron','man','M',25, 12345 ,'iron@gmail.com','password'),
(8,'bruce','Batman','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(9,'clerk','SuperMan','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(10,'Hems','Thor','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(11,'Captian','America','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(12,'superstar','mahesh','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(13,'youngtiger','ntr','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(14,'ram','charan','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(15,'jai','balayya','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(16,'pawan','kalyan','M',25, 12345 ,'ajarpopo@gmail.com','password')

create table user_id
(
admin_id int primary key,
fname varchar(30),
lname varchar(30),
gender char, 
age int,
contact_add int,
admin_email varchar(50),
admin_password varchar(50)
);


insert into user_id values (1,'Shaik','Shafi','M',25, 12345 ,'Shafi@gmail.com','password'),
(2,'Shaik','Ameer','M',25, 12345 ,'Ameer@gmail.com','password'),
(3,'Shaik','Rafath','F',20, 12345 ,'Rafath@gmail.com','password'),
(4,'Shaik','Zaiba','M',55, 12345 ,'Zaiba@gmail.com','password'),
(5,'Shaik','Ishrathjaha','F',45, 12345 ,'Ishrathjaha@gmail.com','password'),
(6,'Hulk','Banner','M',25, 12345 ,'hulk@gmail.com','password'),
(7,'iron','man','M',25, 12345 ,'iron@gmail.com','password'),
(8,'bruce','Batman','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(9,'clerk','SuperMan','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(10,'Hems','Thor','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(11,'Captian','America','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(12,'superstar','mahesh','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(13,'youngtiger','ntr','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(14,'ram','charan','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(15,'jai','balayya','M',25, 12345 ,'ajarpopo@gmail.com','password'),
(16,'pawan','kalyan','M',25, 12345 ,'ajarpopo@gmail.com','password')

select * from user_id

create table JobDescription
(
job_ID int primary key,
job_dept varchar(30),
name varchar(30),
description varchar(30),
salary_range varchar(30)
)

insert into JobDescription values(1001,'hr','Azaruddin','Recruite new Employees','10L-20L'),
(1002,'sales','Afridi','Manages sales dept','10L-20L'),
(1003,'hr','Rafiq','Recruite new Employees','10L-20L'),
(1004,'hr','Ameer','Recruite new Employees','10L-20L'),
(1005,'hr','Shafi','Recruite new Employees','10L-20L')

select * from JobDescription

create table bonusorsalary
(
Salary_ID int primary key,
job_ID int foreign key references jobDescription,
amount int,
annual date,
bonous date
)
select * from bonusorsalary

insert into bonusorsalary values (1 , 1001 , 4000 , '2020-12-12','2020-12-12')
insert into bonusorsalary values 
(2 , 1002 , 4500 , '2020-12-12','2020-12-12'),
(3 , 1003 , 4600 , '2020-12-12','2020-12-12'),
(4 , 1004 , 4700 , '2020-12-12','2020-12-12'),
(5 , 1005 , 4800 , '2020-12-12','2020-12-12')


create table Qualification(
qual_ID int primary key,
emp_ID int foreign key references Employee(emp_ID),
position varchar(30),
date_in date);

select * from Qualification

insert into Qualification values(101,1,'HR','2023-05-22')
insert into Qualification values(102,2,'HR','2023-05-22'),
(103,3,'Sales','2023-05-22'),
(104,4,'Manager','2023-05-22'),
(105,5,'PA','2023-05-22')


create table payroll(
payroll_ID int primary key,
emp_ID int foreign key references Employee(emp_ID),
job_ID int foreign key references jobDescription(job_ID),
Salary_ID int foreign key references bonusorsalary(Salary_ID),
payroll_date date,
Report text,
total_amount int
);
select * from payroll

insert into payroll values(111,1,1001,1,'2023-05-31','Salary',40000)
insert into payroll values(112,2,1002,2,'2023-05-31','Salary',50000),
(113,3,1003,3,'2023-05-31','Salary',60000),
(114,3,1004,4,'2023-05-31','Salary',70000),
(115,3,1005,5,'2023-05-31','Salary',80000)

select *from Employee as e 
full outer join Qualification as q on
e.emp_ID = q.emp_ID