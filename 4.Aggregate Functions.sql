               Aggregate Functions

      Aggregate functions in SQL are operations that perform calculations on a set of values and return a single value.          

    --   Aggregate Functions: COUNT(), SUM(), AVG(), GROUP BY


1. COUNT(): it Count the number of rows.

SELECT COUNT (*) AS TotalStudents FROM Students;

2. SUM() : Calculate the total of a column 

SELECT SUM (Age) AS TotalAge FROM STudents;

3. AVG () Calculate the average value of a column 

SELECT AVG(Age) AS AverageAge FROM Students;

4. GROUP BY: it Groups data and apply aggregate functions.
SELECT ClassID, COUNT(*) AS StudentCount
FROM Students
GROUP BY ClassID;

-- This SQL query retrieves a count of students in each class from a table named "Students." 

-- - **SELECT ClassID**: This part specifies that we want to retrieve the ClassID, which identifies each class.
-- - **COUNT(*) AS StudentCount**: This function counts the total number of records (students) for each ClassID and labels that count as "StudentCount."
-- - **FROM Students**: Indicates that the data is being selected from the "Students" table.
-- - **GROUP BY ClassID**: This clause groups the results by ClassID, so the count of students is calculated separately for each class.

-- In summary, this query returns a list of classes along with the number of students enrolled in each class.