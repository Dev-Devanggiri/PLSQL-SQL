
---- Solution ----

-- Q1
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id=2
GROUP BY customer_id
HAVING SUM(amount)>=110;
--Answer: 187 (id) with $110.81 and 148 (id) with 110.78

-- Q2
SELECT COUNT(title) FROM film
WHERE title LIKE 'J%';
-- Answer: 20

-- Q3
SELECT customer_id, first_name,last_name,address_id FROM customer
WHERE first_name LIKE 'E%' AND address_id <500
ORDER BY customer_id DESC
LIMIT 2
-- Answer: Eddie Tomlin with customer_id 434 and address_id 439
