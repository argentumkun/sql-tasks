/*
Show 10 orders with the most line items, in order of total line items.
As a hint Using Orders and OrderDetails, you'll use Group by and count() functionality.
*/

USE Northwind
SELECT TOP 10 Orders.OrderID, COUNT(OrderDetails.OrderID) AS NumberOfLineItems
FROM Orders
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Orders.OrderID
ORDER BY NumberOfLineItems DESC
