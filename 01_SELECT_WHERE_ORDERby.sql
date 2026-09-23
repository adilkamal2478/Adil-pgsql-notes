
/*	SELECT and FROM	*/

-- RETRIEVE ALL customers data

SELECT * 
FROM customers;



-- RETRIEVE each customers name , country , and score

SELECT 
	first_name ,
	country,
	score
FROM customers;


/*	WHERE	*/

--  RETRIEVE customers with a score not equal to 0

SELECT * 
FROM customers
WHERE score > 0;

-- Customers from germany
SELECT * 
FROM customers
WHERE country = 'Germany';

-- name and country name of customers who is from germany

SELECT 
	first_name,
	country
FROM customers
WHERE country = 'Germany';



/*	ORDER BY	*/

-- RETRIEVE all customers and sort the result by the highest score first

SELECT * 
FROM customers
ORDER BY score DESC;

/*	NESTED ORDER BY	*/

-- RETRIVE all customers and sort the results by the country and then by the highest score.

SELECT * 
FROM customers
ORDER BY 
	country ASC,
	score DESC;








