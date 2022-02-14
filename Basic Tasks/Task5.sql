SELECT Products.ProductID, Products.ProductName, Suppliers.CompanyName
FROM [Northwind].[dbo].[Products]
INNER JOIN [Northwind].[dbo].[Suppliers] ON Products.SupplierID = Suppliers.SupplierID
ORDER BY Products.ProductID