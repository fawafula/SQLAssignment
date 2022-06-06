--b.Write a SQL query that will show the total value of all orders each customer has placed
--in the past six months. 
--Any customer without any orders should show a $0 value.
USE AvailityDB
GO

SELECT SUM(ol.Cost) AS TotalCost
FROM OrderLines ol
	JOIN Orders o on o.OrderId = ol.OrderId
WHERE o.OrerDate >= DATEADD(MONTH, -6, CURRENT_TIMESTAMP) 
GROUP BY ol.Cost
HAVING ol.Cost <> 0 