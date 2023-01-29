/*
Get the number of products that were delivered by each supplier (company), which have a discount from the Unit Price more than 20%.
Order records are represented from the biggest to lowest discount.
*/

/*
The first SELECT statement is just for displaying available data that I am working with.
*/

USE Northwind
SELECT Suppliers.SupplierID, CompanyName AS 'CompanyName(Suppliers)', OrderID AS 'OrderID(OrderDetails)',
ProductName AS 'ProductName(Products)', Quantity AS 'Quantity(OrderDetails)',
OrderDetails.UnitPrice AS 'UnitPrice(OrderDetails)', Products.UnitPrice AS 'UnitPrice(Products)', Discount AS 'Discount(OrderDetails)'
FROM Suppliers
JOIN Products ON Suppliers.SupplierID = Products.SupplierID
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
WHERE Discount >= 0.2 /* should be "Discount > 0.2", I just wanted to see more records with different discount */
ORDER BY SupplierID

/*
The second SELECT statement shows the number of delivered products (with certain discount) for each supplier (sorted by amount of products).
But it does not sort records by discount.
*/

SELECT CompanyName, SUM(Quantity) AS TotalNumber--, AVG(Discount) AS Discount
FROM Suppliers
JOIN Products ON Suppliers.SupplierID = Products.SupplierID
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
--WHERE Discount > 0.2
WHERE (1 - OrderDetails.UnitPrice / Products.UnitPrice) > 0.2
GROUP BY Suppliers.CompanyName
ORDER BY TotalNumber DESC
