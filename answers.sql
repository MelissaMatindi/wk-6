-- Question 1: Employees and Offices (INNER JOIN)
SELECT e.firstName, 
       e.lastName, 
       e.email, 
       e.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;

-- Question 2: Products and Product Lines (LEFT JOIN)
SELECT p.productName, 
       p.productVendor, 
       pl.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;

-- Question 3: Orders and Customers (RIGHT JOIN)
SELECT o.orderDate, 
       o.shippedDate, 
       o.status, 
       o.customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;
