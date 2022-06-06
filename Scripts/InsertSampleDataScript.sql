USE AvailityDB
GO

INSERT INTO [dbo].[Customers](FirstName, LastName)
VALUES('John', 'Doe'),
      ('Jane','Doe'),
	  ('Kitty', 'Hawk'),
	  ('Slim', 'Jim')
GO

INSERT INTO [dbo].[Orders](OrerDate, CustomerId)
VALUES('2022-05-10', 1),
      ('2022-01-02', 1),
	  ('2022-03-10', 4),
	  ('2021-08-04', 4),
	  ('2021-09-10', 3),
	  ('2021-02-01', 3),
	  ('2022-06-10', 2),
	  ('2019-09-11', 2)

GO


INSERT INTO [dbo].[OrderLines](ItemName, Cost, Quantity, OrderId)
VALUES('Golden globe', 30000, 5, 2),
      ('Silver platter', 15000, 3, 1),
	  ('Some other thing', 0, 3, 4),
	  ('A precious metal', 10000, 1, 7),
	  ('Bronze medal', 6000, 2, 6),
	  ('Car', 35000, 1, 8),
	  ('House', 500000, 1, 5),
	  ('Farm', 1000000, 1, 3)
GO
