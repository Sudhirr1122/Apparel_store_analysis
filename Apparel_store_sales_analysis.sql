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

select category,sum("Purchase Amount (USD)")sales
from customer_details
Group by 1
LIMIT 4;


3. Fetch the top 4 Categories with the highest sales

select category,sum("Purchase Amount (USD)")sales
from customer_details
Group by 1
LIMIT 4;

4. Fetch the percentage of top 5 Item Purchased.

select "Item Purchased",Round (COUNT (*) * 100.0 / (select COUNT (*) from customer_details),2)as total_percentage
from 
    customer_details
group by 
    "Item Purchased" 
ORDER by
    total_percentage desc
LIMIT 5;

5. Fetch the top 5 locations where most orders come from and tell the percentage of orders
from those locations.

select Gender, COUNT (*) * 100.0 / (select COUNT (*) from customer_details)as total_percentage
from customer_details
group by Gender;


6. Based on the Size column, tell the percentage of order contribution for each Size.
select "Size",Round (COUNT (*) * 100.0 / (select COUNT (*) from customer_details),2)as total_percentage
from 
    customer_details
group by 
    1 
ORDER by
    total_percentage desc;


7. Fetch the top 4 colors bought by the customers.

select "Color",Round (COUNT (*) * 100.0 / (select COUNT (*) from customer_details),2)as total_percentage
from 
    customer_details
group by 
    1 
ORDER by
    total_percentage DESC
LIMIT 4;

8. Fetch the Season which has the highest and second highest orders

select Season,count(*)total
from customer_details
group by 1
order by 2 DESC
LIMIT 2;

9. Fetch the rating which was given maximum times by the customer.

select Gender, COUNT (*) * 100.0 / (select COUNT (*) from customer_details)as total_percentage
from customer_details
group by Gender;


10. Which type of shipping has the highest amount of buyers?

select Gender, COUNT (*) * 100.0 / (select COUNT (*) from customer_details)as total_percentage
from customer_details
group by Gender;


11. How many buyers have not used Promo code?

select count("Promo Code Used")total
from customer_details
where "Promo Code Used"= NO;

12. How many buyers have purchased an item before?

select count("Promo Code Used")total
from customer_details
where "Promo Code Used"= NO;

13. What are the top 3 payment method of the buyers?

select "Payment Method",count("Payment Method") as total
from customer_details
group by 1
order by 2 desc
limit 3;

14. Which category has the most purchased amount?

select Category, sum("Purchase Amount (USD)") total
from customer_details
group by 1
order by 2 desc
limit 1;

15. Which gender has the most ratings?

select Gender, sum("Review Rating") as total_ratings
from customer_details
group by 1
order by 2 desc
limit 1












