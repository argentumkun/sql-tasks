/*
There are the fields UnitPrice and Quantity in the OrderDetails table. Create a new field, TotalPrice,
 which multiplies these two fields together. Additionally, show the OrderID, ProductID, UnitPrice, and Quantity.
 Order by OrderID and ProductID.
*/

SELECT OrderID, ProductID, UnitPrice, Quantity, UnitPrice * Quantity AS TotalPrice
FROM Northwind.dbo.OrderDetails
ORDER BY OrderID, ProductID
