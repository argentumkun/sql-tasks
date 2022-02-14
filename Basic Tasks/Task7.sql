SELECT Orders.OrderID, CONVERT(DATE, Orders.OrderDate, 110) 'OrderDate', Shippers.CompanyName
FROM [Northwind].[dbo].[Orders]
INNER JOIN [Northwind].[dbo].[Shippers] ON Orders.ShipVia = Shippers.ShipperID
WHERE OrderID < 11000
ORDER BY Orders.OrderID