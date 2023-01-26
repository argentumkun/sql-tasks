/*
Select 5 ship countries with the highest average freight charges.
But instead of filtering for a particular year please use the last 12 months of order data, using as the end date the last OrderDate in Orders.
*/

SELECT TOP 5 ShipCountry, AVG(Freight) AS AvaregeFreight
FROM Northwind.dbo.Orders
WHERE OrderDate >= DATEADD(year, -1, (SELECT MAX(OrderDate) FROM Orders))
GROUP BY ShipCountry
ORDER BY AvaregeFreight DESC
