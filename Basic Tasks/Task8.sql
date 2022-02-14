ALTER TABLE [Northwind].[dbo].[OrderDetails] NOCHECK CONSTRAINT all

DELETE FROM [Northwind].[dbo].[Products]
WHERE UnitsInStock=0 AND UnitsOnOrder=0

ALTER TABLE OrderDetails CHECK CONSTRAINT all