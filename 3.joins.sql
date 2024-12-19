-- MySQL Joins

-- the join clause is used to combine rows from two or more tables , based on a related column between them 

        --  Supported Types of Joins in MySQL

        1. INNER join : it returns records that have matching values in the both side .

        EXAMLE : SELECT Students.Name , Classes.ClassName 
        FROM Students
        INNER JOIN Classes ON Students.ClassID = Classes.ID;


        
        2. Left Join : it returns all records from the left table , and the matched records from the right table 

        Example :SELECT Students.Name, 
        Classes.ClassName
        FROM Students
        LEFT JOIN Classes ON Students.ClassID = Classes.ID;

        3. Right jOin : returns all records from the right table and the matched records from the lrft table 
        4. Cross join : Returns all the records from both tables 