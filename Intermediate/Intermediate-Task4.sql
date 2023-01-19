/*
Find the list of the same Postal Codes between Suppliers and Customers tables.
*/

SELECT SupplierID, CustomerID, Suppliers.PostalCode
FROM Northwind.dbo.Suppliers
INNER JOIN Northwind.dbo.Customers
ON Suppliers.PostalCode = Customers.PostalCode
