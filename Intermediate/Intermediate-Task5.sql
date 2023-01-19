/*
Select EmployeeID, LastName, OrderID, ProductName and Quantity and sort by OrderID and Product ID.
As a hint you'll need to do a join between 4 tables, displaying only those fields that are necessary.
*/

SELECT Employees.EmployeeID, LastName, Orders.OrderID, ProductName, Quantity
FROM Northwind.dbo.Employees
JOIN Northwind.dbo.Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN Northwind.dbo.OrderDetails ON OrderDetails.OrderID = Orders.OrderID
JOIN Northwind.dbo.Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY OrderID, Products.ProductID
