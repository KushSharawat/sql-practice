-- 04: Joins (employees and departments)
-- Concepts: INNER, LEFT, RIGHT and FULL JOIN, GROUP BY with HAVING across joined tables
USE db1;

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    ManagerName VARCHAR (100),
    Headquarter VARCHAR(100)
);

CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
EmpName VARCHAR(100),
Age INT,
DeptID INT, -- FK
FOREIGN KEY (DeptID) REFERENCES Departments (DeptID)
);

INSERT INTO Departments (DeptID, DeptName, ManagerName, Headquarter) VALUES
(1, 'HR', 'Priya Menon', 'Mumbai'),
(2, 'Finance', 'Raghav Sharma', 'Delhi'),
(3, 'Engineering', 'Deepak Verma', 'Bangalore'),
(4, 'Marketing', 'Sneha Iyer', 'Hyderabad'),
(5, 'Legal', 'Amit Desai', 'Chennai')

select*from Departments

INSERT INTO Employees (EmpID, EmpName, Age, DeptID) VALUES 
(101, 'Aarav Mehta', 28, 3), 
(102, 'Neha Singh', 31, 2), 
(103, 'Rohit Kapoor', 26, 1), 
(104, 'Anjali Rao', 29, 4), 
(105, 'Karan Patel', 27, 3), 
(106, 'Simran Kaur', 30, NULL)

select*from Employees
select*from Departments

select e.EmpName, d.Deptname, d.ManagerName, d.Headquarter
from Employees e
inner join Departments d
on e.DeptID = d.DeptID

select e.EmpName, d.Deptname, d.ManagerName, d.Headquarter
from Employees e
full join Departments d
on e.DeptID = d.DeptID

select e.EmpName, d.Deptname, d.ManagerName, d.Headquarter
from Employees e
left join Departments d
on e.DeptID = d.DeptID

select e.EmpName, d.Deptname, d.ManagerName, d.Headquarter
from Employees e
right join Departments d
on e.DeptID = d.DeptID

select d.Deptname, COUNT(e.EMPID) as totalemployeesover30
from Employees e
inner join Departments d
on e.DeptID = d.DeptID
where e.Age > 30
group by d.DeptName
order by totalemployeesover30 desc

select d.Deptname, COUNT(e.EMPID) as totalemployeesover25
from Employees e
inner join Departments d
on e.DeptID = d.DeptID
where e.Age > 25
group by d.DeptName
having
COUNT(e.EMPID) >= 2
order by d.DeptName



