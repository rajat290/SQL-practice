-- Database Design ??
In SQL, "database design" refers to the process of structuring and organizing data within a database by defining tables, columns, relationships between them, and data types


-- Key points about database design in SQL:

Entities and Attributes:
Data is organized into entities (like "customers" or "products") which are further broken down into attributes (like "customer name" or "product price"). 
Relationships:
Defining how entities are related to each other (e.g., "a customer can place multiple orders") through primary and foreign keys. 
Data Types:
Assigning appropriate data types to each attribute (like "text" for names, "number" for prices) to ensure data integrity. 
Normalization:
A process to minimize data redundancy by structuring tables in a way that avoids unnecessary repetition. 
ER Diagrams:
A visual representation of the database design, showing entities, attributes, and relationships between them, often used to plan the structure before implementation


-- 1. How to create and Structure Tables 

we use SQL CREATE TABLE statement to define tables.

CREATETABLE Students (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(50),
    Age INT,
    ClassID INT 
);

-- 2. Understanding Relationships

In SQL, understanding relationships is crucial for designing relational databases. Relationships in a database are established through tables that share common data.
 There are several types of relationships, including
 1. one-to-one, 
 2. one-to-many, 
 3. many-to-many, and others 
 that define how tables connect and interact with each other. These relationships help maintain data integrity and improve the overall efficiency of queries and updates using SQL.

-- It's important to double-check specific relationship types and their implementations when designing your database schema.

-- 1. One-to-One: Example: A user has one profilE.


CREATE TABLE Users (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Profiles (
    ID INT PRIMARY KEY,
    UserID INT UNIQUE,
    Bio TEXT,
    FOREIGN KEY (UserID) REFERENCES Users(ID)
);

-- 2. One-to-Many: Example: A class has many students.
CREATE TABLE Classes (
    ID INT PRIMARY KEY,
    ClassName VARCHAR(50)
);
-- CREATE TABLE Classes: This statement creates a new table named Classes.
-- ID INT PRIMARY KEY: This defines a column named ID that stores integer values. It serves as the primary key, meaning each value in this column must be unique and cannot be null; it uniquely identifies each record in the Classes table.
-- ClassName VARCHAR(50): This defines a column named ClassName that stores text (string) values with a maximum length of 50 characters.

CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ID)
);
-- CREATE TABLE Students: This statement creates another table named Students.
-- ID INT PRIMARY KEY: Similar to the Classes table, this defines a column named ID as the primary key for the Students table.
-- Name VARCHAR(50): This defines a column named Name that stores string values representing the names of the students, with a maximum length of 50 characters.
-- ClassID INT: This defines a column named ClassID to store integer values. This column is intended to link each student to a specific class.
-- FOREIGN KEY (ClassID) REFERENCES Classes(ID): This establishes a foreign key relationship, meaning that the values in the ClassID column of the Students table must match an existing ID in the Classes table. This creates a link between students and their associated classes.

Summary
In summary, these two tables are structured to hold information about classes and students. Each student belongs to a class, and this relationship is enforced through the ClassID foreign key in the Students table, which references the ID in the Classes table.