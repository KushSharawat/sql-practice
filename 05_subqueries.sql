-- 05: Subqueries and multi-table analysis (patients and appointments)
-- Concepts: modulo filter, <> operator, scalar subqueries, IN subqueries, COUNT(DISTINCT), adding a FOREIGN KEY with ALTER TABLE
USE db1;

CREATE TABLE Patients(
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Age INT,
    Gender CHAR(1)
);

INSERT INTO Patients (PatientID, Name, City, Age, Gender) VALUES
(1, 'Ravi Mehta', 'Delhi', 45, 'M'),
(2, 'Anita Sharma', 'Delhi', 38, 'F'),
(3, 'Rahul Khanna', 'Mumbai', 50, 'M'),
(4, 'Sneha Kapoor', 'Delhi' , 29, 'F'),
(5, 'Amit Verma', 'Chennai', 55, 'M'),
(6, 'Priya Nair', 'Mumbai', 42, 'F'),
(7, 'Vikas Singh', 'Delhi', 33, 'M'),
(8, 'Neha Gupta', 'Pune', 40, 'F'),
(9, 'Suresh Iyer', 'Bangalore', 36, 'M'),
(10, 'Meera Joshi', 'Delhi', 47, 'F');

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorName VARCHAR(50),
    AppointmentDate DATE,
    City VARCHAR(50),
    Charges DECIMAL(10,2),
    Fee DECIMAL(10,2)
);

INSERT INTO Appointments (AppointmentID, PatientID, DoctorName, AppointmentDate, City, Charges, Fee) VALUES 
(1, 1, 'Dr. Sharma', '2024-07-10', 'Delhi', 900, 900),
(2, 2, 'Dr. Mehta', '2024-07-11', 'Delhi', 1500, 1500),
(3, 3, 'Dr. Sharma', '2024-07-12', 'Mumbai', 2000, 2000),
(4, 1, 'Dr. Mehta', '2024-07-15', 'Delhi', 1200, 1200),
(5, 4, 'Dr. Arora', '2024-07-16', 'Delhi', 2500, 2500),
(6, 5, 'Dr. Mehta', '2024-07-17', 'Chennai', 1100, 1100),
(7, 6, 'Dr. Sharma', '2024-07-18', 'Mumbai',3000, 3000),
(8, 7, 'Dr. Arora', '2024-07-19', 'Delhi', 2700, 2700),
(9, 8, 'Dr. Verma','2024-07-20', 'Pune', 1600, 1600),
(10, 9, 'Dr. Arora', '2024-07-21', 'Bangalore', 1800, 1800);

select*from Appointments
select*from Patients

select*from Appointments
where AppointmentID % 2 = 0

select*from Appointments
where DoctorName <> 'Dr. Sharma'
and
charges > 1600

select COUNT(*) as patients
from Patients
where city = (select City from Patients
                where Name = 'Ravi Mehta'
                )

select * from patients
where city = (select City from Patients
                where Name = 'Ravi Mehta'
                )

select distinct p.name, p. city, p.age
from Patients p

join Appointments a ON p. PatientID = a. PatientID

select TOP 10 DoctorName, COUNT (Distinct PatientID) as UniquePatients
from Appointments
group by DoctorName
order by COUNT (Distinct PatientID) Desc

select name from Patients
where PatientID IN (select PatientID from Appointments
where fee = (select MAX(fee) from Appointments)
)

ALTER TABLE APPOINTMENTS
ADD CONSTRAINT FK_PATIENT FOREIGN KEY (PATIENTID) REFERENCES PATIENTS (PATIENTID)