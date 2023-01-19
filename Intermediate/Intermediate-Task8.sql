/*
Determine orders which are late. You can use a combination of the RequiredDate and ShippedDate.
If ShippedDate is actually after RequiredDate, you can be sure it's late.
*/

SELECT OrderID, RequiredDate, ShippedDate
FROM Northwind.dbo.Orders
WHERE ShippedDate > RequiredDate
