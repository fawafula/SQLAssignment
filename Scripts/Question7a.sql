--a. Write a SQL query that will produce a reverse-sorted list (alphabetically by name) 
--of customers (first and last names) whose last name begins with the letter ‘S.’
USE AvailityDB
GO

SELECT * 
FROM Customers
WHERE LastName LIKE 's%'
ORDER BY FirstName, LastName DESC