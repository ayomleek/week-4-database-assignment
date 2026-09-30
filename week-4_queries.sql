-- =====================================================
-- Assignment: Week 4 - Aggregate Functions
-- Database  : sales
-- =====================================================
 
USE sales;
 
-- -----------------------------------------------------
-- Question 1: Total payment amount for each payment date
-- Top 5 latest payment dates
-- -----------------------------------------------------
SELECT paymentDate,
       SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- -----------------------------------------------------
-- Question 2: Average credit limit of each customer
-- Grouped by customer name and country
-- -----------------------------------------------------
SELECT customerName,
       country,
       AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;

-- -----------------------------------------------------
-- Question 3: Total price of products ordered
-- Grouped by product code and quantity ordered
-- -----------------------------------------------------
SELECT productCode,
       quantityOrdered,
       SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- -----------------------------------------------------
-- Question 4: Highest payment amount for each check number
-- -----------------------------------------------------
SELECT checkNumber,
       MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;