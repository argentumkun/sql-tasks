/*
Delete records from the Products table which are not available in stock and weren't ordered.
*/

ALTER TABLE Northwind.dbo.OrderDetails NOCHECK CONSTRAINT [FK_Order_Details_Products]

DELETE FROM Northwind.dbo.Products
WHERE UnitsInStock=0 AND UnitsOnOrder=0

ALTER TABLE Northwind.dbo.OrderDetails CHECK CONSTRAINT [FK_Order_Details_Products]
