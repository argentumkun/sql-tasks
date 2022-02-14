SELECT Title AS 'Department', COUNT(EmployeeID) AS 'qty of employees'
FROM [Northwind].[dbo].[Employees]
GROUP BY Title