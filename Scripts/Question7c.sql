--c.Amend the query from the previous question to 
-- only show those customers who have a total order value of more than $100 and less than $500 
--in the past six months.

USE AvailityDB
GO

SELECT SUM(ol.Cost) AS TotalCost
FROM OrderLines ol
	JOIN Orders o on o.OrderId = ol.OrderId
WHERE o.OrerDate >= DATEADD(MONTH, -6, CURRENT_TIMESTAMP) 
GROUP BY ol.Cost
HAVING ol.Cost BETWEEN 100 AND 500 