/*
Find the list of the same Postal Codes between Suppliers and Customers tables.
*/

-- 1st variant - with JOIN. Not the best choice here.

/*
USE Northwind
SELECT SupplierID, CustomerID, Suppliers.PostalCode
FROM Suppliers
INNER JOIN Customers
ON Suppliers.PostalCode = Customers.PostalCode
*/

-- 2nd variant - with INTERSECT. This variant is preferable because it removes duplicates and shows nulls (unlike JOIN).

USE Northwind
SELECT PostalCode
FROM Suppliers
INTERSECT
SELECT PostalCode
FROM Customers
