-- 02: Querying, filtering, sorting, updating and aggregating (customers)
-- Concepts: SELECT, aliases, WHERE, BETWEEN, IN, LIKE, ORDER BY, UPDATE, DELETE, TOP, ALTER TABLE, GROUP BY, HAVING
USE db1;



select * from customers

select name,email from customers

select age as liquid from customers

select name from customers
where city='haryana'

select*from customers
where age between 25 and 27

select*from customers
where age in(24,30,45)

select*from customers
where name like'a%'

select*from customers
where name like'%ini'

select*from customers
where name like'_d%'

select*from customers
order by age desc

select*from customers
order by name desc

update customers
set city= 'york',  age=100
where name = 'neha jain'

delete from customers
where name = 'neha jain'

select top 10 * from customers
order by city desc

alter table customers
add gender varchar(10)

alter table customers
alter column name varchar(200)

select city, count(customerid) as totalcustomers
from customers
group by city

select city, avg(age) as avgage
from customers
group by city
order by avgage desc

select city, count(*) as avgage
from customers
where age>25
group by city
having count(*)>1



