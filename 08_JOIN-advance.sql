
-- Advance JOIN (these type of join is not directly 
-- supported but we can achieve it using 'where')


-- LEFT ANTI JOIN (returns row from left that has no match in right)


-- Get all customers who havent placed any order 


SELECT * 
FROM customers c 
LEFT JOIN orders o 
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;	-- choosing the right key is very important
								-- for left anti we use key of right , and for 
								-- right anti we use key of left 
								-- generally table with FROM is right and table with JOIN is left

-- top 4 lines are same code for left join last one makes it anti left join




-- RIGHT ANTI JOIN (exact opposite of left anti join)
-- returns rows from right that hs no match in left


-- get all orders without matching customers 

SELECT * 
FROM customers c 
RIGHT JOIN orders o 
ON c.id = o.customer_id  
WHERE c.id IS NULL;

-- Alternative of right anti join

SELECT * 
FROM orders o 
LEFT JOIN customers c
ON c.id = o.customer_id
WHERE c.id IS NULL;



-- FULL ANTI JOIN (returns only rows that dont match in either tables)
-- it look like exact opposite of the inner join
-- but it is implemented by using FULL JOIN

SELECT *
FROM customers c 
FULL JOIN orders o
ON c.id = o.customer_id
WHERE 
	c.id IS NULL  
	OR
	o.customer_id IS NULL;





-- practice question 

--Get all customers along with their orders , 
-- but only for customers who have placed an order
-- without using inner join


-- Solving by full join
SELECT * 
FROM customers c
FULL JOIN orders o 
ON c.id = o.customer_id
WHERE  
	c.id  IS NOT NULL
	AND
	o.customer_id  IS NOT NULL
;



-- solving by left join
SELECT *
FROM customers c 
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;


-- solving by RIGHT join

SELECT *
FROM  orders o 
RIGHT JOIN customers c
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;






-- CROSS JOIN (combines every row from left with every row from right)
-- two table contains 3,4 rows then total output will be 3*4 = 12


-- it is rarely used
SELECT *
FROM customers c
CROSS JOIN orders o;



















