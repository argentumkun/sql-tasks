/*
Show a list of the Orders that were made, including the Shipper that was used.
Show the OrderID, OrderDate (date only) and CompanyName of the Shipper, and sort by OrderID.
Show only those rows with an OrderID less than 11000.
*/

SELECT Orders.OrderID, CONVERT(DATE, Orders.OrderDate, 110) 'OrderDate', Shippers.CompanyName
FROM Northwind.dbo.Orders
INNER JOIN Northwind.dbo.Shippers ON Orders.ShipVia = Shippers.ShipperID
WHERE OrderID < 11000
ORDER BY Orders.OrderID
