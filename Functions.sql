create database Functions
use Functions

create table Employee(
emp_ID int identity,
emp_Name varchar(30),
Dept varchar(30),
salary int not null)


select * from Employee

insert into Employee values ('azar', 'HR' , 90000) 

insert into Employee values ('afridi', 'MARKETING' , 90000),
('Kousar','SALES' ,80000 ),
('Rafiq','Manager',120000),
('IShrath','IT', 90000)

create function EmpDetailsbyId(@empid int)
returns table
as
return(
select emp_Name,salary from Employee where emp_ID = @empid
)

select * from dbo.EmpDetailsbyId(3)

    /*String*/

select UPPER(emp_Name) from Employee
select lower(emp_Name) from Employee
select substring(emp_Name,1,3), emp_Name from Employee
select CONCAT (emp_Name,Dept),emp_Name,Dept from Employee
select REPLACE(emp_Name,'azar','Hulk'),emp_Name,Dept from Employee
select ltrim ('           azar')
/*Date and time*/
select getdate()
select current_timestamp
select datepart (year , '2023-12-12')
select datepart (day , '2023-12-12')
select DATEDIFF(year,'2023-12-12','2025-06-03')
select DATEDIFF(day,'2023-12-12','2025-06-03')
select DATEADD(year , 2, '2023-12-12')
select DATEADD(day , 2, '2023-12-12')


/*Aggregat functions*/
select max(salary) from Employee
select min(salary) from Employee
select avg(salary) from Employee
select count(*) from Employee
select count(salary) from Employee
select sum(salary) from Employee
select distinct (sum(salary)) from Employee

create function DisplayMessage()
returns varchar(100)
as
begin
return 'Hello World'
end

select dbo.DisplayMessage()

create function Sum(@num1 as int , @num2 as int)
returns int
as
begin
return (@num1 + @num2)
end
select dbo.Sum(5,5)
select dbo.Sum(10,10)

create function CubicValue(@num as int)
returns int
as
begin
return (@num*@num*@num)
end

select dbo.CubicValue(3)

create function NetSales
(
@Price int, 
@quantity int, 
@discount int
)
returns int
as 
begin
return (@price * @quantity- @discount)
end


SELECT dbo.NetSales(10,2,1);

create function EmpDetailsTable()
returns table
as 
return(select * from Employee)

select * from EmpDetailsTable()

/*----------------------*/

CREATE TABLE Student (      
  id int PRIMARY KEY IDENTITY,     
  admission_no varchar(45) NOT NULL,  
  first_name varchar(45) NOT NULL,      
  last_name varchar(45) NOT NULL,  
  age int,  
  city varchar(25) NOT NULL      
)
  
CREATE TABLE Fee (   
  admission_no varchar(45) NOT NULL,  
  course varchar(45) NOT NULL,      
  amount_paid int,    
)

INSERT INTO Student (admission_no, first_name, last_name, age, city)       
VALUES (3354,'Luisa', 'Evans', 13, 'Texas'),       
(2135, 'Paul', 'Ward', 15, 'Alaska'),       
(4321, 'Peter', 'Bennett', 14, 'California'),    
(4213,'Carlos', 'Patterson', 17, 'New York'),       
(5112, 'Rose', 'Huges', 16, 'Florida'),  
(6113, 'Marielia', 'Simmons', 15, 'Arizona'),    
(7555,'Antonio', 'Butler', 14, 'New York'),       
(8345, 'Diego', 'Cox', 13, 'California')  
  
  
INSERT INTO Fee (admission_no, course, amount_paid)       
VALUES (3354,'Java', 20000),       
(7555, 'Android', 22000),       
(4321, 'Python', 18000),    
(8345,'SQL', 15000),       
(5112, 'Machine Learning', 30000)

SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
FROM Student  
INNER JOIN Fee  
ON Student.admission_no = Fee.admission_no

create index ix_Fee_amount_paid
on Fee(amount_paid asc)
sp_Helpindex Fee

select * from Fee

create procedure spStudent
as
begin
select * from Student where age<18
end
spStudent

create procedure spStudent2
@admission_no varchar(45),
@age int
as
begin
select id , admission_no,first_name,last_name,age,city from Student
where admission_no = @admission_no and age = @age
end
spStudent2 4213,17