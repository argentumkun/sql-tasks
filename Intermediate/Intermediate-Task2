/*
Select customers with no region (null in the Region field) to be at the end, instead of at the top,
where you’d normally find the null values. Within the same region, companies should be sorted by CustomerID.
As a hint you can create a field with the Case statement, which allows you do to if/then logic.
You want a field that is 1 when Region is null.
*/

SELECT CustomerID, CompanyName, ContactName, Region,
CASE
	WHEN Region IS NULL THEN 1
	ELSE 2
END AS Temp
FROM Northwind.dbo.Customers
ORDER BY Temp DESC, Region, CustomerID
