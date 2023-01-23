/*
Select EmployeeID, LastName, OrderID, ProductName and Quantity and sort by OrderID and Product ID.
As a hint you'll need to do a join between 4 tables, displaying only those fields that are necessary.
*/

USE Northwind
SELECT Employees.EmployeeID, LastName, Orders.OrderID, ProductName, Quantity
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY OrderID, Products.ProductID
