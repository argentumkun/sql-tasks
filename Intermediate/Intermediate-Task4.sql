/*
Find the list of the same Postal Codes between Suppliers and Customers tables.
*/

USE Northwind
SELECT SupplierID, CustomerID, Suppliers.PostalCode
FROM Suppliers
INNER JOIN Customers
ON Suppliers.PostalCode = Customers.PostalCode
