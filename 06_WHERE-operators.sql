
/* Comparison operators */

-- Retrieve all customers from germany

SELECT *
FROM customers 
WHERE country = 'Germany';		-- uppercase lowecase is very important


-- Retrieve all customers from germany

SELECT *
FROM customers 
WHERE country != 'Germany';		


-- Rt=etrive all customers with a score of 500 or more

SELECT *
FROM customers 
WHERE score >= 500;		


-- Rt=etrive all customers with a score of less than 500 

SELECT *
FROM customers 
WHERE score < 500;		




/*	Logical operator	*/

-- AND operator

SELECT *
FROM customers 
WHERE country = 'USA' and score > 500 ;		

-- OR opeerator

SELECT *
FROM customers 
WHERE country = 'USA' or score > 500 ;		

-- NOT operator

SELECT *
FROM customers 
WHERE NOT score < 500;	-- it reverses the condition	




/*	Range operator	*/

-- BETWEEN operator

SELECT *
FROM customers 
WHERE score BETWEEN 100 AND 900;	-- 100 AND 900 ARE INCLUSVE 	




/*	Membership operator	*/

-- IN operator (check if a value exists in a list)
-- NOT IN operator (oppposite of IN)




SELECT *
FROM customers 
WHERE country IN ('Germany' , 'USA');		


SELECT *
FROM customers 
WHERE country NOT IN ('Germany' , 'USA');		



/*	 Search operator 	*/

-- LIKE operator (case sensetive)

SELECT *
FROM customers 
WHERE first_name LIKE 'M%'; 	-- names start with 'M'

SELECT *
FROM customers 
WHERE first_name LIKE '%a'; 		-- names end with 'a'

SELECT *
FROM customers 
WHERE first_name LIKE '%e%'; 		-- names which contains 'e' anywhere 

SELECT *
FROM customers 
WHERE first_name LIKE '__r%'; 		-- third place of name should be r (1st 2nd will be anything)

















