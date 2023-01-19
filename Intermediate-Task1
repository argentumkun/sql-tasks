/*
Define products that need reordering with the following condition:
UnitsInStock plus UnitsOnOrder are less than or equal to ReorderLevel and Discontinued flag is false (0).
*/

SELECT ProductName, UnitsInStock, UnitsOnOrder, UnitsInStock + UnitsOnOrder AS Summ, ReorderLevel, Discontinued
FROM Northwind.dbo.Products
WHERE UnitsInStock + UnitsOnOrder <= ReorderLevel AND Discontinued = 0
