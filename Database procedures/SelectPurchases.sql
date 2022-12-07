USE TestDb
GO

CREATE PROCEDURE SelectPurchases
AS

SELECT  PurchaseId, FirstName, LastName, ProductName, Amount
FROM Purchases
INNER JOIN Clients
ON Purchases.ClientId = Clients.ClientId
INNER JOIN Products
ON Purchases.ProductId = Products.ProductId

GO