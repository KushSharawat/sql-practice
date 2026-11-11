-- 03: Foreign keys and referential integrity (courses and students)
-- Concepts: FOREIGN KEY, multi-row INSERT; the last INSERT intentionally fails because course 105 does not exist
USE db1;

-- Foregin key

create table course(
courseid int primary key,
coursename varchar(100),
durationinmonths int,
)

insert into course (courseid,coursename,durationinmonths) values
(101,'data science',6),
(102,'web developer',8),
(103,'cyber security',4),
(104,'artificial intelligence',10)

select*from course

create table student(
studentid int primary key,
fullname varchar(100),
age int,
courseid int,
foreign key(courseid) references course(courseid)
)

insert into student (studentid,fullname,age,courseid) values
(1,'luffy',19,103),
(2,'nami',19,101),
(3,'robin',19,102),
(4,'zoro',19,104),
(5,'sanji',19,101),
(6,'zinbe',19,104),
(7,'chooper',19,102),
(8,'loki',19,103)

select*from student

-- error due to foregin key

insert into student (studentid,fullname,age,courseid) values
(9,'uffy',19,105)

