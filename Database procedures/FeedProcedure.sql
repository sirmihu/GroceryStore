USE TestDb
GO

CREATE PROCEDURE FeedTestDb
AS

INSERT INTO [dbo].[Clients] (FirstName, LastName)
VALUES ('Adam', 'Ma�ysz'),
('Robert', 'Lewandowski'),
('Hubert', 'Urba�ski')

INSERT INTO [dbo].[Products] (ProductName)
VALUES ('Chleb'),
('Bu�ka'),
('Pomidor'),
('Rzodkiewka')

INSERT INTO [dbo].[Purchases] (ClientId, ProductId, Amount)
VALUES (1, 2, 2),
(1, 3, 1),
(2, 1, 1),
(2, 3, 1),
(3, 2, 1),
(3, 4, 2)

GO