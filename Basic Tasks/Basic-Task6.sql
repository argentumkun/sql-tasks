/*
Update Ship Region to “Eastern Connection” for Spain in Orders if it is NULL and Ship Postal Code is 28023.
*/

ALTER TABLE Northwind.dbo.Orders
ALTER COLUMN ShipRegion nvarchar(18)

UPDATE Northwind.dbo.Orders
SET ShipRegion = 'Eastern Connection'
WHERE ShipRegion IS NULL AND ShipPostalCode = '28023'
