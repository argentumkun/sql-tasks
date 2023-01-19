/*
Find quantity of employees in each department. Departments is the same as a title in the Employees table.
*/

SELECT Title AS Department, COUNT(EmployeeID) AS 'qty of employees'
FROM Northwind.dbo.Employees
GROUP BY Title
