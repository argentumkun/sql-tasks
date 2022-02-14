SELECT ContactTitle, COUNT(*) AS 'qty'
FROM [Northwind].[dbo].[Customers]
GROUP BY ContactTitle