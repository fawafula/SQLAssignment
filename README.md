# SQLAssignment
Given a database with tables
Customers(CustId, FirstName, LastName)
Orders(OrderId, CustomerId, OrderDate)
OrderLines(OrderLineId, OrderId, ItemName, Cost, Quantity)

a.	Write a SQL query that will produce a reverse-sorted list (alphabetically by name) of customers (first and last names) whose last name begins with the letter ‘S.’
b.	Write a SQL query that will show the total value of all orders each customer has placed in the past six months. Any customer without any orders should show a $0 value.
c.	Amend the query from the previous question to only show those customers who have a total order value of more than $100 and less than $500 in the past six months.
