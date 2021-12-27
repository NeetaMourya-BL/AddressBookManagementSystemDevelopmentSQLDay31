show databases;
create database Address_Book_Service_DB;
use Address_Book_Service_DB;
select database();
drop database Address_Book_Service_DB;
show databases;
create table Address_Book(fName varchar(20), lName varchar(20), address varchar(20), city varchar (20), state varchar (20), zip varchar (10), phoneNumber varchar(15),email varchar(25));
