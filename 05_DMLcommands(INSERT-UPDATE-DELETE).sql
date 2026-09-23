
-- Using MyDatabase

/*	INSERT   Manually	*/

-- Insert 3 customers details
INSERT INTO customers (id,first_name,country,score)
VALUES
	(7,'adil','india',206),
	(8,'Atif','nepal',207),
	(9,'Samar','bhutan',208);



SELECT *
FROM customers




/*	INSERT from another table	*/

-- insert data from 'customers' table into 'persons' table


INSERT INTO persons (id,person_name,birth_date,phone)
SELECT 
	id,
	first_name,
	NULL,				-- bcz birth_date allows null value
	'undefined'			-- phone does not allows null values so we have added a static value
FROM  customers 



SELECT * 
FROM persons;



/*	UPDATE	*/


-- Change the score of customers with id 6 to 0


SELECT * 
FROM customers;

UPDATE customers
SET score = 0
WHERE ID =6;


-- change the score of the customer with id=9 to 0 and update the country to 'UK'

SELECT *
FROM customers
WHERE ID = 9;

UPDATE customers 
SET score = 0 ,
	country = 'UK'
WHERE ID = 9;


-- UPDATE all customers with a NULL score by setting their score to 0

SELECT * 
FROM customers
WHERE score = NULL;


UPDATE customers
SET score = 0
WHERE score IS NULL;


/*	DELETE (Remove rows)	*/

-- DELETE all customers with an id > 5

DELETE FROM customers 
WHERE id > 5;

SELECT * 
FROM customers


-- DELETE all data from table person

DELETE FROM persons; 	-- it can also delte all rows

TRUNCATE TABLE persons 	-- always use truncate because it is way faster than the delete in deleting whole table


















