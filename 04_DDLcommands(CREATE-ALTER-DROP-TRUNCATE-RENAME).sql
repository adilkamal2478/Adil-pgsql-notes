

-- Using MYdatabase


/*	CREATE	*/

-- Creating a table persons
CREATE TABLE persons(
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
);

SELECT * 
FROM persons;


/*	ALTER	*/

-- Add a new column called email tot the persons table


ALTER TABLE persons
ADD COLUMN email VARCHAR(50) NOT NULL;


-- Remove the column phone from the persons table

ALTER TABLE persons
DROP COLUMN phone;


SELECT * 
FROM persons;


-- Delete the table persons from the database

DROP TABLE persons;

-- Remove all the rows of the table


TRUNCATE TABLE persons;

-- Rename table to clients

ALTER TABLE persons RENAME TO clients;

ALTER TABLE clients RENAME TO persons;








