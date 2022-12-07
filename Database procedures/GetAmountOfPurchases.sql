USE TestDb
GO

CREATE PROCEDURE GetAmountOfPurchases
AS

SELECT ClientId, SUM(Amount) AS AmountOfPurchases
FROM Purchases
GROUP BY ClientId



GO