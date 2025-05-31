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


--- END FOR May 31, 2025 - Saturday