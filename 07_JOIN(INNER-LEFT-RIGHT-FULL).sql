
-- JOIN IS USED to join the columns
-- SET is used  to join the rows

-- INNER JOIN (Returns only matching rows from both tables )
-- order of the table in inner join is not that important



--Get all customers along with their orders , 
-- but only for customers who have placed an order
SELECT *
FROM customers;

SELECT *
FROM orders;


SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers  c
INNER JOIN orders  o
ON c.id = o.customer_id;







-- LEFT JOIN (Returns all rows from left and only amtching from right)
-- order of the tables is very important
-- Always use left join instead of right join


-- Get all customers along with thier orders ,
-- including those without orders


SELECT * 
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id;




-- RIGHT JOIN (Returns all rows from right and only matching from left)


-- Get all customers along with their orders , 
-- including orders without matching 

SELECT * 
FROM customers c 
RIGHT JOIN orders o 
ON c.id = o.customer_id;



-- GET all customers along with their orders ,
-- including orders without matching customers 
-- (using only LEFT JOIN)


SELECT * 
FROM orders o 
LEFT JOIN customers c 
ON c.id = o.customer_id;




-- FULL JOIN (RETURN all rows from both tables)


-- get all customers and all orders , even f there is no match

SELECT * 
FROM customers c
FULL JOIN orders o
ON c.id = o.customer_id;















