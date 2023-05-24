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

