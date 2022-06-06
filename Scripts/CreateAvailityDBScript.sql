IF EXISTS (SELECT * FROM sys.databases where name = 'AvailityDB')
DROP DATABASE AvailityDB;
GO

CREATE DATABASE AvailityDB
GO

USE[AvailityDB]
GO

DROP TABLE IF EXISTS [dbo].[Customers]
GO
CREATE TABLE Customers (
	CustId int NOT NULL IDENTITY,
	FirstName varchar(20),
	LastName varchar(20),
	PRIMARY KEY (CustId)
)
GO

DROP TABLE IF EXISTS [dbo].[Orders]
GO

CREATE TABLE Orders (
	OrderId int NOT NULL IDENTITY,
	OrerDate DATE NOT NULL,
	CustomerId int NOT NULL,
	PRIMARY KEY (OrderId),
	CONSTRAINT FK_CustomerOrder FOREIGN KEY (CustomerId) REFERENCES Customers(CustId)
);
GO

DROP TABLE IF EXISTS [dbo].[OrderLines]
GO
CREATE TABLE OrderLines(
	OrderLineId int NOT NULL IDENTITY,
	ItemName varchar(20) NOT NULL,
	Cost money,
	Quantity int,
	OrderId int NOT NULL,
	PRIMARY KEY (OrderLineId),
	CONSTRAINT FK_OrderOrderLine FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
)
GO