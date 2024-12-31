CREATE DATABASE CP;
use CP;
-- Create the Country and Persons tables
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(255),
    Population INT,
    Area INT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(255),
    Lname VARCHAR(255),
    Population INT,
    Rating DECIMAL(3, 1),
    Country_Id INT,
    Country_name VARCHAR(255),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

-- Insert data into the Country table
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331002651, 9833517),
(2, 'Canada', 37742154, 9984670),
(3, 'UK', 67886011, 243610),
(4, 'India', 1380004385, 3287263),
(5, 'Australia', 25499884, 7692024),
(6, 'Germany', 83783942, 357022),
(7, 'France', 67022000, 643801),
(8, 'Japan', 126476461, 377975),
(9, 'China', 1393409038, 9596961),
(10, 'Brazil', 212559417, 8515767);

-- Insert data into the Persons table
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331002651, 4.8, 1, 'USA'),
(2, 'Jane', 'Smith', 37742154, 4.5, 2, 'Canada'),
(3, 'Mary', 'Johnson', 67886011, 4.9, 3, 'UK'),
(4, 'Michael', 'Brown', 1380004385, 4.7, 4, 'India'),
(5, 'Emily', 'Davis', 25499884, 3.9, 5, 'Australia'),
(6, 'James', 'Miller', 83783942, 4.6, 6, 'Germany'),
(7, 'Olivia', 'Wilson', 67022000, 5.0, 7, 'France'),
(8, 'Liam', 'Moore', 126476461, 4.2, 8, 'Japan'),
(9, 'Sophia', 'Taylor', 1393409038, 4.1, 9, 'China'),
(10, 'Benjamin', 'Anderson', 212559417, 4.3, 10, 'Brazil');

-- Query 1: List the distinct country names from the Persons table
SELECT DISTINCT Country_name FROM Persons;

-- Query 2: Select first names and last names from the Persons table with aliases
SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;

-- Query 3: Find all persons with a rating greater than 4.0
SELECT * FROM Persons WHERE Rating > 4.0;

-- Query 4: Find countries with a population greater than 10 lakhs
SELECT Country_name FROM Country WHERE Population > 1000000;

-- Query 5: Find persons who are from 'USA' or have a rating greater than 4.5
SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

-- Query 6: Find all persons where the country name is NULL
SELECT * FROM Persons WHERE Country_name IS NULL;

-- Query 7: Find all persons from the countries 'USA', 'Canada', and 'UK'
SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');

-- Query 8: Find all persons not from the countries 'India' and 'Australia'
SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');

-- Query 9: Find all countries with a population between 5 lakhs and 20 lakhs
SELECT Country_name FROM Country WHERE Population BETWEEN 500000 AND 2000000;

-- Query 10: Find all countries whose names do not start with 'C'
SELECT Country_name FROM Country WHERE Country_name NOT LIKE 'C%';

