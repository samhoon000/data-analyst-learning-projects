-- Titanic Dataset SQL Mini Project
-- Project: Titanic Passenger Data Analysis using SQL
-- Skills Used: SELECT, WHERE, ORDER BY, LIMIT, LIKE, CASE, COUNT

------------------------------------------------------------
-- 1. Count Total Survivors
-- Finds how many passengers survived the disaster
------------------------------------------------------------
SELECT COUNT(Survived) AS Total_Survivors
FROM titanic
WHERE Survived = 1;

------------------------------------------------------------
-- 2. Top 5 Highest Fare Passengers
-- Displays passengers who paid the highest ticket fares
------------------------------------------------------------
SELECT Name, Sex, Age, Fare
FROM titanic
ORDER BY Fare DESC
LIMIT 5;

------------------------------------------------------------
-- 3. Passengers Older Than 30
-- Filters passengers whose age is above 30
------------------------------------------------------------
SELECT Name, Age, Survived
FROM titanic
WHERE Age > 30;

------------------------------------------------------------
-- 4. Passengers Whose Name Starts With A
-- Finds passengers whose names begin with letter A
------------------------------------------------------------
SELECT Name, Age, Sex, Survived
FROM titanic
WHERE Name LIKE 'A%';

------------------------------------------------------------
-- 5. Top 5 Oldest Passengers
-- Displays oldest passengers in dataset
------------------------------------------------------------
SELECT Name, Age, Sex, Survived
FROM titanic
ORDER BY Age DESC
LIMIT 5;

------------------------------------------------------------
-- 6. Categorize Passengers by Age Group
-- Child  : Below 18
-- Adult  : 18 to 59
-- Senior : 60 and above
------------------------------------------------------------
SELECT Name, Sex, Age,
CASE
    WHEN Age < 18 THEN 'Child'
    WHEN Age BETWEEN 18 AND 59 THEN 'Adult'
    ELSE 'Senior'
END AS Age_Category
FROM titanic;