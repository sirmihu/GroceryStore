USE [TestDb]
GO
/****** Object:  StoredProcedure [dbo].[FeedTestDb]    Script Date: 2022-11-20 19:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[FeedTestDb]
AS

BEGIN TRY
BEGIN TRANSACTION FeedTestDbTran

INSERT INTO [dbo].[Clients] (FirstName, LastName)
VALUES
('Adam', 'Małysz'),
('Robert', 'Lewandowski'),
('Hubert', 'Urbański')

INSERT INTO [dbo].[Products] (ProductName)
VALUES 
('Chleb'),
('Bułka'),
('Pomidor'),
('Rzodkiewka')

INSERT INTO [dbo].[Purchases] (ClientId, ProductId, Amount)
VALUES 
(1, 2, 2),
(1, 3, 1),
(2, 1, 1),
(2, 3, 1),
(3, 2, 1),
(3, 4, 2)

COMMIT TRANSACTION FeedTestDbTran
END TRY

BEGIN CATCH
ROLLBACK TRANSACTION FeedTestDbTran
END CATCH

GO


