1. Fetch the top 5 age groups which have the highest number of Customers.

SELECT 
    CASE 
        WHEN age < 18 THEN 'Kid'
        WHEN age BETWEEN 18 AND 24 THEN 'Young adults'
        WHEN age BETWEEN 25 AND 34 THEN 'Old adults'
        WHEN age BETWEEN 35 AND 54 THEN 'Middle age'
        WHEN age BETWEEN 55 AND 99 THEN 'Old'
        ELSE 'Unknown'
    END AS age_category,
    COUNT("Customer ID") AS total
FROM 
    customer_details
GROUP BY 
    age_category
ORDER BY 
    total DESC
LIMIT 5;


2. Fetch the top 4 Categories with the highest sales

SELECT category, SUM("Purchase Amount (USD)") AS sales
FROM customer_details
GROUP BY 1
LIMIT 4;



3. Fetch the top 4 Categories with the highest sales

SELECT category, SUM("Purchase Amount (USD)") AS sales
FROM customer_details
GROUP BY 1
LIMIT 4;


4. Fetch the percentage of top 5 Item Purchased.

SELECT "Item Purchased", ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_details), 2) AS total_percentage
FROM customer_details
GROUP BY "Item Purchased" 
ORDER BY total_percentage DESC
LIMIT 5;


5. Fetch the top 5 locations where most orders come from and tell the percentage of orders
from those locations.

SELECT Gender, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_details) AS total_percentage
FROM customer_details
GROUP BY Gender;



6. Based on the Size column, tell the percentage of order contribution for each Size.

SELECT "Size", ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_details), 2) AS total_percentage
FROM customer_details
GROUP BY 1 
ORDER BY total_percentage DESC;



7. Fetch the top 4 colors bought by the customers.

SELECT "Color", ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_details), 2) AS total_percentage
FROM customer_details
GROUP BY 1 
ORDER BY total_percentage DESC
LIMIT 4;


8. Fetch the Season which has the highest and second highest orders

SELECT Season, COUNT(*) AS total
FROM customer_details
GROUP BY 1
ORDER BY 2 DESC
LIMIT 2;


9. Fetch the rating which was given maximum times by the customer.

SELECT Gender, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_details) AS total_percentage
FROM customer_details
GROUP BY Gender;




10. Which type of shipping has the highest amount of buyers?

SELECT Gender, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_details) AS total_percentage
FROM customer_details
GROUP BY Gender;



11. How many buyers have not used Promo code?

SELECT COUNT("Promo Code Used") AS total
FROM customer_details
WHERE "Promo Code Used" = 'NO' or '';


12. How many buyers have purchased an item before?

SELECT COUNT("Promo Code Used") AS total
FROM customer_details
WHERE "Promo Code Used" = 'NO';



13. What are the top 3 payment method of the buyers?

SELECT "Payment Method", COUNT("Payment Method") AS total
FROM customer_details
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;


14. Which category has the most purchased amount?

SELECT Category, SUM("Purchase Amount (USD)") AS total
FROM customer_details
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

15. Which gender has the most ratings?

SELECT Gender, SUM("Review Rating") AS total_ratings
FROM customer_details
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;












