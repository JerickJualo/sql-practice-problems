--- START FOR June 7, 2025 - Saturday

---Solution for 1. List All Products


SELECT *
FROM Products;


---Solution for 2. Show Names and Prices Only


SELECT Name, Price
FROM Products;


---Solution for 3. Electronics Category Only


SELECT *
FROM Products
WHERE Category = 'Electronics'


---Solution for 4. Price > 50


SELECT * 
FROM Products
WHERE Price > 50;


---Solution for 5. Price BETWEEN 20 AND 80


SELECT *
FROM Products
WHERE Price BETWEEN 20 AND 80;


---Solution for 6. Count Total Products


SELECT COUNT(ProductID)
FROM Products;


---Solution for 7. Sort by Price (Ascending)


SELECT *
FROM Products
ORDER BY Price ASC;


---Solution for 8. Sort by Price (Descending)


SELECT *
FROM Products
ORDER BY Price DESC;


---Solution for 9. Sort by Category Then Price

SELECT * 
FROM Products
ORDER BY Category, Price ASC;  ---AND operator dont work, only on WHERE clause


---Solution for 10. Home Category, Sorted by Name


SELECT * 
FROM Products
WHERE Category = 'Home'
ORDER BY Name ASC;


---END For June 6, 2025 Saturday 10 Fundamental Problem SOLVES!




