USE TestDb
GO

CREATE PROCEDURE SelectAllCustomers
AS

SELECT Clients.FirstName, Clients.LastName
FROM Clients

GO