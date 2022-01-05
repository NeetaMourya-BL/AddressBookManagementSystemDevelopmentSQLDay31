---- UC1 ----
show databases;
create database Employee_Payroll_Service;
use Employee_Payroll_Service;
---- UC2 ----
create table Employee_Payroll(
id int not null auto_increment,
name varchar(50) not null,
salary double not null,
startDate date not null,
primary key(id)
);
show tables;
---- UC3 ----
insert into employee_payroll (name,salary,startDate)
values('Neeta',500000.0,'2021-01-11');
insert into employee_payroll (name,salary,startDate)
values('Prakash',300000.0,'2021-01-11');
insert into employee_payroll (name,salary,startDate)
values('Aman',25000.0,'2021-11-01');
---- UC4 ----
select * from employee_payroll;
---- UC5 ----
select * from employee_payroll where name='Prakash';
select * from employee_payroll where startDate 
between'2021-04-10' and date(now());
---- UC6 ----
alter table employee_payroll add gender char(1);
update employee_payroll set gender ='M' where id>1;
update employee_payroll set gender ='F' where id=1;
---- UC7 ----
select sum(salary) from employee_payroll;
select gender, sum(salary) from employee_payroll where gender ='F'group by gender;
select gender, sum(salary) from employee_payroll where gender ='M'group by gender;
select gender, min(salary) from employee_payroll where gender ='F'group by gender;
select gender, min(salary) from employee_payroll where gender ='M'group by gender;
select gender, max(salary) from employee_payroll where gender ='F'group by gender;
select gender, max(salary) from employee_payroll where gender ='M'group by gender;
select gender, avg(salary) from employee_payroll where gender ='F'group by gender;
select gender, avg(salary) from employee_payroll where gender ='M'group by gender;
select gender, count(salary) from employee_payroll where gender ='F'group by gender;
select gender, count(salary) from employee_payroll where gender ='M'group by gender;