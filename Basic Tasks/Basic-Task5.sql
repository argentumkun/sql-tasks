/*
Show the associated Supplier for each product. Show the ProductID, ProductName, and the CompanyName of the Supplier. Sort by ProductID.
*/

SELECT Products.ProductID, Products.ProductName, Suppliers.CompanyName
FROM Northwind.dbo.Products
INNER JOIN Northwind.dbo.Suppliers ON Products.SupplierID = Suppliers.SupplierID
ORDER BY Products.ProductID
