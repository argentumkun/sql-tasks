SELECT FirstName AS 'First Name', LastName AS 'Last Name', HireDate AS 'Hire Date'
FROM [Northwind].[dbo].[Employees]
WHERE HireDate BETWEEN '1994-01-01 00:00:00' AND '1994-12-31 23:59:59'