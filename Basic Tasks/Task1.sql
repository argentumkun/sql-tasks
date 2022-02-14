SELECT OrderID, ProductID, UnitPrice, Quantity, UnitPrice * Quantity AS TotalPrice
FROM [Northwind].[dbo].[OrderDetails]
ORDER BY OrderID, ProductID