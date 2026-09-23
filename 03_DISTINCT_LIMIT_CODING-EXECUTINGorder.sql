

-- Working on MyDatabase


/*	DISTINCT	*/

-- Return all unique countries
SELECT DISTINCT country 
FROM customers;


/*	LIMIT	*/

-- RETRIEVE only three customers
SELECT *
FROM customers
LIMIT 3;

-- Retrive the top 3 customers with the highest scores

SELECT * 
FROM customers
ORDER BY score DESC
LIMIT 3;

-- Retrive the lowest 2 customers based on scores

SELECT * 
FROM customers
ORDER BY score ASC 
LIMIT 2;



/*	Coading order and Execution order	*/



CODING ORDER (how you must write SQL)
-------------------------------------
1. SELECT / SELECT DISTINCT
2. FROM
3. JOIN
4. WHERE
5. GROUP BY
6. HAVING
7. ORDER BY
8. LIMIT / OFFSET


EXECUTION ORDER (how PostgreSQL processes internally)
-----------------------------------------------------
1. FROM / JOIN      → choose tables and join them
2. WHERE            → filter rows
3. GROUP BY         → group rows
4. HAVING           → filter groups
5. SELECT           → choose columns/expressions
6. DISTINCT         → remove duplicates
7. ORDER BY         → sort results
8. LIMIT / OFFSET   → restrict number of rows
















