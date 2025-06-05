--May 31, 2025 - Saturday

--Solution for 1. List All Employees


SELECT * FROM Employees;


--Solution for 2. Show Names Only


SELECT FirstName, LastName FROM Employees;


---Solution for 3. Employees in Sales Department


SELECT EmployeeID, FirstName, LastName, Department
FROM Employees
WHERE Department = 'Sales';


--Solution for 4. High Earners (>60000)


SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Salary > 60000;


---Solution for 5. Employees Hired Before 2020


SELECT EmployeeID, FirstName, LastName, HireDate
FROM Employees
WHERE HireDate <= '2020-01-01;';


---Solution for 6. Count Employees


SELECT COUNT(EmployeeID)
FROM Employees;


---Solution for 7. Add New Employee


INSERT INTO Employees (FirstName, LastName, Email, Department, Salary, HireDate)
VALUES('Karen','Lee', 'karenlee@new.com','Hr', 47000.00, '2023-04-01');

SELECT *
FROM Employees
WHERE FirstName = 'Karen';

UPDATE Employees --ADDED THIS BECAUSE THE DEPARTMENT is "Hr" instead of "HR"
SET Department = 'HR'
WHERE FirstName = 'Karen';

---Solution for 8. Increase Salary for Alice Smith


UPDATE Employees
SET Salary =  58000
WHERE FirstName = 'Alice' AND LastName = 'Smith';

SELECT *
FROM Employees
WHERE FirstName = 'Alice' AND LastName = 'Smith';


---Solution for 9.  Remove EmployeeID 5


DELETE FROM Employees
WHERE EmployeeID = 5;

SELECT EmployeeID
FROM Employees;


---Solution for 10.  Sort by Last Name


SELECT EmployeeID, LastName
FROM Employees
ORDER BY LastName;


--- END FOR May 31, 2025 - Saturday (10 Problem Solved - Time Spend: 1Hr and 17 Minutes)


--- START FOR June 3, 2025 - Tuesday


---Solution for 11. Top 3 Highest Salaries


SELECT *
FROM Employees
ORDER BY Salary DESC
LIMIT 3;


---Solution for 12. Distinct Departments


SELECT DISTINCT Department
FROM Employees


---Solution for 13. Last Name Starting with “S”


SELECT EmployeeID, FirstName, LastName
FROM Employees
WHERE LastName LIKE 'S%';


---Solution for 14. Email Domain Filter


SELECT EmployeeID, FirstName, LastName, Email
FROM Employees
WHERE Email LIKE '%@example.com';


---Solution for 15. Raise for HR Department

UPDATE Employees
SET Salary = Salary + 5000
WHERE Department = 'HR'


SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
WHERE Department = 'HR'


---Solution for 16. Assign Department to Eva Davis

---FOR THIS PROBLEM WE ADD Eva Davis Back into the Database as we REMOVE them in 9. Remove EmployeeID 5
---CHECK THE Experimental Table and Data for 30 CRUD Problem
---The NEW EmployeeID of Eva Davis is 12, but i will change it to 5

UPDATE Employees
SET EmployeeID = 5
WHERE FirstName = 'Eva' and LastName = 'Davis';

UPDATE Employees
SET Department = 'Marketing'
WHERE EmployeeID = 5;

SELECT EmployeeID, FirstName, LastName, Department
FROM Employees
WHERE FirstName = 'Eva' and LastName = 'Davis';


---Solution for 17. Delete Low Earners

DELETE FROM Employees
WHERE Salary < 50000;

SELECT EmployeeID, Salary FROM Employees;


---Solution for 18. Bulk Insert and Count


INSERT INTO Employees (FirstName, LastName, Email, Department, Salary, HireDate) VALUES
('Jerick', 'Jualo', 'jerickjualo@example.com', 'HR', 70000, '2025-6-3'),
('Jerome', 'Jualo', 'jeromejualo@example.com', 'HR', 70000, '2025-9-24');

SELECT COUNT(EmployeeID)
FROM Employees;


---Solution for 19. Hires in 2021


SELECT EmployeeID, FirstName, HireDate
FROM Employees
WHERE HireDate > '2021-1-1' AND HireDate < '2021-12-31';
---THE OUTPUT IS ONLY EmployeeID 8 Because Eva Davis is deleted again in 17. Delete Low Earners as its Salary is only 45000


---Solution for 20. Average Salary

SELECT AVG(Salary)
FROM Employees;
---OR if you want to only display 2 decimal:
SELECT AVG(Salary):: NUMERIC(10,2)
FROM Employees;


---END FOR June 3, 2025 - Tuesday (10 Problem Solved - Time Spend: 1Hr and 34 Minutes)


---START FOR June 5, 2025 - Thursday (10 Problem Solved - Time Spend: )


---Solution for 21. Maximum Salary


SELECT MAX(Salary)
FROM Employees;


---Solution for 22. Minimum Salary


SELECT MIN(Salary)
FROM Employees;


---Solution for 23. Employees Named Bob


SELECT EmployeeID, FirstName, LastName
FROM Employees
WHERE FirstName = 'Bob';


---Solution for 24. Update Email Domains

UPDATE Employees
SET Email = REPLACE(Email, '@another.com', '@example.org') ---FREAKING HELL THIS LINE TAKES ME 30 MINUTES BEFORE DECIDING LET AI HELP ME ON THIS ONE
WHERE Email ILIKE '%@another.com'; ---Query this first		  BECAUSE I CANT FIND ANY ALTERNATIVE IN W3School SQL and PostgreSQL

SELECT EmployeeID, Email
FROM Employees
WHERE Email ILIKE '%@example.org';


---Solution for 25. Delete Recent Hires


DELETE 
FROM Employees
WHERE HireDate > '2022-1-1';

SELECT HireDate, FirstName, LastName
FROM Employees;


---Solution for 26. Salary Range Filter


SELECT EmployeeID, FirstName, Salary
FROM Employees
WHERE Salary BETWEEN 50000 AND 70000;


---Solution for 27. Exclude Sales Department


SELECT EmployeeID, FirstName, Department
FROM Employees
WHERE NOT Department = 'Sales';


---Solution for 28. NULL Department Entries


SELECT EmployeeID, FirstName, Department
FROM Employees
WHERE Department = NULL;


---Solution for 29. Count per Department

SELECT Department, COUNT(Department)
FROM Employees
GROUP BY Department;


---Solution for 30. Full Name Column


SELECT FirstName || ' ' || LastName AS FullName
FROM Employees


---END FOR June 5, 2025 - Thursday (10 Problem Solved - Time Spend: 1Hr and 11 Minutes)

---30 Fundamental CRUD Problems FINISHED SOLVING!