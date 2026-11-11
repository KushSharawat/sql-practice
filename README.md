# SQL Practice: SQL Server (T-SQL)

My hands-on SQL practice, written and run in **SQL Server Management Studio (SSMS)**. It works through the core skills a data analyst uses every day across four small datasets: customers, courses and students, employees and departments, and patients and appointments.

## Contents

| File | Dataset | Concepts covered |
|---|---|---|
| [`01_create_and_insert.sql`](01_create_and_insert.sql) | Customers | `CREATE DATABASE`, `CREATE TABLE`, constraints (`PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `DEFAULT`, `CHECK`), `INSERT` |
| [`02_filtering_and_aggregation.sql`](02_filtering_and_aggregation.sql) | Customers | `SELECT`, aliases, `WHERE`, `BETWEEN`, `IN`, `LIKE` wildcards, `ORDER BY`, `TOP`, `UPDATE`, `DELETE`, `ALTER TABLE`, `GROUP BY`, `HAVING`, `COUNT`/`AVG` |
| [`03_foreign_keys.sql`](03_foreign_keys.sql) | Courses & students | `FOREIGN KEY`, referential integrity (includes an insert that intentionally fails) |
| [`04_joins.sql`](04_joins.sql) | Employees & departments | `INNER`, `LEFT`, `RIGHT` and `FULL JOIN`, aggregating across joined tables with `HAVING` |
| [`05_subqueries.sql`](05_subqueries.sql) | Patients & appointments | Scalar and `IN` subqueries, `COUNT(DISTINCT)`, finding the highest fee, adding a foreign key with `ALTER TABLE` |

## Example queries

Departments with at least two employees over 25:

```sql
SELECT d.DeptName, COUNT(e.EmpID) AS TotalEmployeesOver25
FROM Employees e
INNER JOIN Departments d ON e.DeptID = d.DeptID
WHERE e.Age > 25
GROUP BY d.DeptName
HAVING COUNT(e.EmpID) >= 2
ORDER BY d.DeptName;
```

Patients who paid the highest fee:

```sql
SELECT Name FROM Patients
WHERE PatientID IN (
    SELECT PatientID FROM Appointments
    WHERE Fee = (SELECT MAX(Fee) FROM Appointments)
);
```

## How to run

1. Open SQL Server Management Studio (or Azure Data Studio) and connect to a local SQL Server instance (e.g. `.\SQLEXPRESS`).
2. Run the files in order, `01` to `05`. File `01` creates the `db1` database, and the others switch to it with `USE db1`.
3. Run statements one at a time (highlight a query, then press F5) to see each result.

All data is fictional sample data.
