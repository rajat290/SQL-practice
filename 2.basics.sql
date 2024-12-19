
                   --    Core SQL Queries 


-- Data Retrieval: SELECT, WHERE, ORDER BY, LIMIT


-- 1.SELECT: Retrieve specific columns or all columns from
SELECT Name , Age FROM Students;
SELECT * FROM Students;

-- 2. WHERE: Filter records based on a condition.
SELECT * FROM Students WHERE Age > 20;

-- 3. ORDER BY: Sort results in ascending or descending order.

SELECT * FROM Students ORDER BY Age DESC;

-- 4. LIMIT: Restrict the number of rows returned.
SELECT * FROM Students LIMIT 5;

         -- Data Manipulation: INSERT, UPDATE, DELETE


-- 1. INSERT: It is used to Add new records to a table.

INSERT INTRO Students (Name,Age) VALUES ('Rajat', 23);

--2.  UPDATE : It is used to modify an existing records 

UPDATE Students SET Age = 24 WHERE Name = 'Rajat';

-- 3. DELETE: IT used to Remove records from a table.
DELETE FROM students WHERE Name = 'Rajat';


