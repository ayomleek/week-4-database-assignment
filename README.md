# SQL Assignment – Week 4: Aggregate Functions

## Overview
This assignment practices analyzing data in the `sales` database using aggregate functions (`SUM`, `AVG`, `MAX`) together with `GROUP BY`, `ORDER BY`, and `LIMIT`.

## Repository Contents

| File | Description |
|------|-------------|
| `week4_queries.sql` | SQL queries for Questions 1–4 |
| `README.md` | Project documentation |
| `Screenshots` | Project documentation |

## Setup Instructions

1. Make sure the `sales` database exists (run `salesdb.sql` from Week 2 if needed).
2. Run the Week 4 script:
   ```bash
   mysql -u root -p < week4_queries.sql
   ```
   Or open `week4_queries.sql` in MySQL Workbench and click the lightning bolt to run it.

## Questions and Solutions

### Question 1: Total payment amount for each payment date
```sql
SELECT paymentDate,
       SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;
```
`SUM` totals the payments per date, `ORDER BY ... DESC` puts the latest dates first, and `LIMIT 5` keeps only the top 5.

### Question 2: Average credit limit of each customer
```sql
SELECT customerName,
       country,
       AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;
```
`AVG` calculates the average credit limit for each customer name and country group.

### Question 3: Total price of products ordered
```sql
SELECT productCode,
       quantityOrdered,
       SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;
```
The total price is the quantity ordered multiplied by the price of each item, summed for each product code and quantity group.

### Question 4: Highest payment amount for each check number
```sql
SELECT checkNumber,
       MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
```
`MAX` returns the highest payment amount for each check number.

## Concepts Practiced

| Concept | Used In |
|---------|---------|
| `SUM()` | Questions 1, 3 |
| `AVG()` | Question 2 |
| `MAX()` | Question 4 |
| `GROUP BY` | Questions 1–4 |
| `ORDER BY` | Question 1 |
| `LIMIT` | Question 1 |

## Author
**Name:** Ayom Leek
**Course:** Sql Database Management