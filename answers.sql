-- Question 1: Show total payment amount for each payment date
-- Get top 5 latest payment dates with their total amounts
SELECT paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;
-- Question 2: Find average credit limit for each customer
-- Group by both customer name and country
SELECT customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName,
    country;
-- Question 3: Find total price of products ordered
-- Calculate total price as quantityOrdered * priceEach
SELECT productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode,
    quantityOrdered;
-- Question 4: Find highest payment amount for each check number
-- Use MAX function to get the highest amount per check
SELECT checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;