show databases;

UC1
create database Address_Book_Service_DB;
use Address_Book_Service_DB;
select database();

UC2
create table Address_Book(fName varchar(20), lName varchar(20), address varchar(20), city varchar (20), state varchar (20), zip varchar (10), phoneNumber varchar(15),email varchar(25));
describe tables;
drop table Address_Book;

UC3
insert into Address_Book(fName,lName,address,city,state,zip,phoneNumber,email) values('Neeta','Mourya','Dayalband','Bsp','CG',495001,9875235232,'neeta@gmail.com');
insert into Address_Book(fName,lName,address,city,state,zip,phoneNumber,email) values('Prakash','kashyap','Dayalband','Bsp','CG',495001,9875235232,'prakash@gmail.com');
select * from Address_Book;

UC4
UPDATE Address_Book SET fName = 'Neetu', City= 'BSP' WHERE fName = 'Neeta';

UC5
DELETE FROM Address_Book WHERE fName='Prakash';

UC6
select fName from Address_Book where state='CG' and city='BSP';

UC7
SELECT city, LENGTH(city) AS LengthOfName FROM Address_Book;
SELECT state, LENGTH(state) AS LengthOfName FROM Address_Book;