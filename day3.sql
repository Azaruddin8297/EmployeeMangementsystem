create table EmployeeSalary(
name varchar(30),
salary int not null)
alter table EmployeeSalary
add emp_ID int identity

insert into EmployeeSalary(name,salary) values('azar' , 10000),
('afridi',20000),
('Kousar',40000)
select month('2022-11-12')
select Avg(salary),sum(12*salary) from EmployeeSalary where name = 'azar'
select concat('azar',' ','uddin')
select len('azar')