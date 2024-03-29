USE [TestDb]
GO
/****** Object:  StoredProcedure [dbo].[FeedTestDb]    Script Date: 2022-11-20 19:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[DeleteTestDb]
AS

BEGIN TRY
BEGIN TRANSACTION DeleteTestDbTran

ALTER TABLE [dbo].[Purchases]
DROP CONSTRAINT 
PK_Purchase,
FK_ClientId,
FK_ProductId
TRUNCATE TABLE [dbo].[Purchases]

ALTER TABLE [dbo].[Clients]
DROP CONSTRAINT PK_Client
TRUNCATE TABLE [dbo].[Clients]

ALTER TABLE [dbo].[Products]
DROP CONSTRAINT PK_Product
TRUNCATE TABLE [dbo].[Products]


ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED (ClientId)

ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED (ProductId)

ALTER TABLE [dbo].[Purchases]
ADD CONSTRAINT [PK_Purchase] PRIMARY KEY CLUSTERED (PurchaseId),
CONSTRAINT FK_ClientId FOREIGN KEY (ClientId) REFERENCES Clients(ClientId),
CONSTRAINT FK_ProductId FOREIGN KEY (ProductId) REFERENCES Products(ProductId)

COMMIT TRANSACTION DeleteTestDbTran
END TRY

BEGIN CATCH
ROLLBACK TRANSACTION DeleteTestDbTran
END CATCH

GO

