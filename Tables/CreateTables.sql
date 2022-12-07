USE TestDb
GO
CREATE TABLE Clients (
ClientId int NOT NULL,
FirstName varchar(20),
LastName varchar(50),
CONSTRAINT PK_Client PRIMARY KEY (ClientId))

CREATE TABLE Products (
ProductId int NOT NULL,
ProductName varchar(20),
CONSTRAINT PK_Product PRIMARY KEY (ProductId))

CREATE TABLE Purchases (
PurchaseId int NOT NULL,
ClientId int,
ProductId int,
CONSTRAINT PK_Purchase PRIMARY KEY (PurchaseId),
CONSTRAINT FK_ClientId FOREIGN KEY (ClientId) REFERENCES Clients(ClientId),
CONSTRAINT FK_ProductId FOREIGN KEY (ProductId) REFERENCES Products(ProductId),
Amount int)
GO