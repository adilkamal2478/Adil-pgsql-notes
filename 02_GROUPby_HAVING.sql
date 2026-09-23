
/*	GROUP BY 	*/

SELECT *
FROM customers;

-- FIND the total score for each country
SELECT 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country;



SELECT 
	country,
	first_name,
	SUM(score) AS total_score
FROM customers
GROUP BY country , first_name;



-- Find the total score and total number of customers for each country

SELECT 
	country,
	SUM(score),
	COUNT(id)
FROM customers
GROUP BY country;





/*	HAVING	*/

/* Find the average score of each
country considering only customers 
with a score not eqal to 0 , and 
return those countries with an average 
score greater than 430
*/


SELECT 
	country ,
	ROUND(AVG(score))AS avg_score
FROM customers 
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY avg_score DESC ;

















