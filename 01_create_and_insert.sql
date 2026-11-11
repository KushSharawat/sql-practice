-- 01: Database setup, table constraints and sample data (customers)
-- Concepts: CREATE DATABASE, PRIMARY KEY, NOT NULL, UNIQUE, DEFAULT, CHECK, INSERT

create database db1

use db1

create table customers(
customerid int primary key,
name varchar(60) not null,
email varchar(100) unique,
city varchar(80) default 'unknown',
age int check(age>=16)
)

insert into customers (customerid,name,email,city,age)
values(98349834,'akshu','akshu@gmail.com','haryana',24)
insert into customers (customerid,name,email,city,age)
values(98349995,'Akshu Mehta','akshu.mehta161@gmail.com','jodhpur',59);

insert into customers (customerid,name,email,city,age)
values(98349996,'Rahul Chopra','rahul.chopra162@gmail.com','chennai',22);

insert into customers (customerid,name,email,city,age)
values(98349997,'Priya Bansal','priya.bansal163@gmail.com','bhopal',35);

insert into customers (customerid,name,email,city,age)
values(98349998,'Aman Shah','aman.shah164@gmail.com','kochi',48);

insert into customers (customerid,name,email,city,age)
values(98349999,'Neha Jain','neha.jain165@gmail.com','lucknow',61);

insert into customers (customerid,name,email,city,age)
values(98350000,'Rohit Saini','rohit.saini166@gmail.com','surat',24);

insert into customers (customerid,name,email,city,age)
values(98350001,'Anjali Verma','anjali.verma167@gmail.com','delhi',37);

insert into customers (customerid,name,email,city,age)
values(98350002,'Karan Das','karan.das168@gmail.com','ludhiana',50);

insert into customers (customerid,name,email,city,age)
values(98350003,'Simran Sharma','simran.sharma169@gmail.com','dehradun',63);

insert into customers (customerid,name,email,city,age)
values(98350004,'Arjun Yadav','arjun.yadav170@gmail.com','bengaluru',26);

insert into customers (customerid,name,email,city,age)
values(98350005,'Pooja Rao','pooja.rao171@gmail.com','faridabad',39);

insert into customers (customerid,name,email,city,age)
values(98350006,'Vikas Patel','vikas.patel172@gmail.com','kanpur',52);

insert into customers (customerid,name,email,city,age)
values(98350007,'Sneha Gupta','sneha.gupta173@gmail.com','kolkata',65);

insert into customers (customerid,name,email,city,age)
values(98350008,'Mohit Kapoor','mohit.kapoor174@gmail.com','indore',28);

insert into customers (customerid,name,email,city,age)
values(98350009,'Kavya Singh','kavya.singh175@gmail.com','mysuru',41);

insert into customers (customerid,name,email,city,age)
values(98350010,'Nisha Reddy','nisha.reddy176@gmail.com','chandigarh',54);

insert into customers (customerid,name,email,city,age)
values(98350011,'Varun Mishra','varun.mishra177@gmail.com','patna',17);

insert into customers (customerid,name,email,city,age)
values(98350012,'Isha Kumar','isha.kumar178@gmail.com','mumbai',30);

insert into customers (customerid,name,email,city,age)
values(98350013,'Sahil Malhotra','sahil.malhotra179@gmail.com','noida',43);

insert into customers (customerid,name,email,city,age)
values(98350014,'Meera Joshi','meera.joshi180@gmail.com','shimla',56);

insert into customers (customerid,name,email,city,age)
values(98350015,'Aditya Mehta','aditya.mehta181@gmail.com','chennai',19);

insert into customers (customerid,name,email,city,age)
values(98350016,'Riya Chopra','riya.chopra182@gmail.com','bhopal',32);

insert into customers (customerid,name,email,city,age)
values(98350017,'Manish Bansal','manish.bansal183@gmail.com','kochi',45);

insert into customers (customerid,name,email,city,age)
values(98350018,'Tanya Shah','tanya.shah184@gmail.com','lucknow',58);

insert into customers (customerid,name,email,city,age)
values(98350019,'Deepak Jain','deepak.jain185@gmail.com','surat',21);

insert into customers (customerid,name,email,city,age)
values(98350020,'Aarav Saini','aarav.saini186@gmail.com','delhi',34);

insert into customers (customerid,name,email,city,age)
values(98350021,'Aisha Verma','aisha.verma187@gmail.com','ludhiana',47);

insert into customers (customerid,name,email,city,age)
values(98350022,'Kabir Das','kabir.das188@gmail.com','dehradun',60);

insert into customers (customerid,name,email,city,age)
values(98350023,'Maya Sharma','maya.sharma189@gmail.com','bengaluru',23);

insert into customers (customerid,name,email,city,age)
values(98350024,'Dev Yadav','dev.yadav190@gmail.com','faridabad',36);

insert into customers (customerid,name,email,city,age)
values(98350025,'Ibrahim Rao','ibrahim.rao191@gmail.com','kanpur',49);

insert into customers (customerid,name,email,city,age)
values(98350026,'Ethan Patel','ethan.patel192@gmail.com','kolkata',62);

insert into customers (customerid,name,email,city,age)
values(98350027,'Olivia Gupta','olivia.gupta193@gmail.com','indore',25);

insert into customers (customerid,name,email,city,age)
values(98350028,'Liam Kapoor','liam.kapoor194@gmail.com','mysuru',38);

insert into customers (customerid,name,email,city,age)
values(98350029,'Emma Singh','emma.singh195@gmail.com','chandigarh',51);

insert into customers (customerid,name,email,city,age)
values(98350030,'Noah Reddy','noah.reddy196@gmail.com','patna',64);

insert into customers (customerid,name,email,city,age)
values(98350031,'Sophia Mishra','sophia.mishra197@gmail.com','mumbai',27);

insert into customers (customerid,name,email,city,age)
values(98350032,'Lucas Kumar','lucas.kumar198@gmail.com','noida',40);

insert into customers (customerid,name,email,city,age)
values(98350033,'Amelia Malhotra','amelia.malhotra199@gmail.com','shimla',53);

insert into customers (customerid,name,email,city,age)
values(98350034,'Mason Joshi','mason.joshi200@gmail.com','hyderabad',16);

