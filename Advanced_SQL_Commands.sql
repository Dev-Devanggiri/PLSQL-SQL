SHOW ALL; -- SHOW - shows the value of the run time parameter, will diusplay the current setting of run-time parameters

SHOW TIMEZONE; -- US/Eastern
SELECT NOW(); -- Current Date and Time like now it is 2020-08-12 12:17:19.39548-04
SELECT TIMEOFDAY(); -- Current Date and Time as a string Wed Aug 12 12:18:55.363360 2020 EDT

SELECT CURRENT_TIME; --12:20:05.332065-04:00
SELECT CURRENT_DATE; -- 2020-08-12

SELECT EXTRACT(YEAR FROM payment_date) AS myyear
FROM payment; -- get all years

SELECT EXTRACT(MONTH FROM payment_date) as pay_month
FROM payment; -- get all months

SELECT EXTRACT(QUARTER FROM payment_date) as pay_quarter
FROM payment; -- get all quarter

-- How old timestamp was in regards to our current stamp
SELECT AGE(payment_date) 
FROM payment; -- 13 years 5 mons 24 days 01:34:13.003423

-- To convert timestamp to text
SELECT TO_CHAR(payment_date,'HH24:MI:SS')
FROM payment;
SELECT TO_CHAR(payment_date,'mm/dd/YYYY')
FROM payment; -- US Standard
SELECT TO_CHAR(payment_date,'dd/mm/YYYY')
FROM payment; -- EU Standard



SELECT DISTINCT(TO_CHAR(payment_date,'MONTH')) 
FROM payment; -- March, May, Feburary, April

-- Situation 2: How many payments occured on a Monday
SELECT COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date)=1;
SELECT ROUND(rental_rate/replacement_cost,4)*100 AS percent_cost
FROM film;
-- put some 10% of deposit cost
SELECT 0.1*replacement_cost AS deposit
FROM film;


SELECT LENGTH(first_name) FROM customer; -- length of first names

SELECT first_name || last_name FROM customer ;-- no space between first and last name
-- Also no column name

SELECT first_name || ' ' || last_name AS Full_Name -- got spacing and column name
FROM customer;

SELECT upper(first_name) || ' ' || upper(last_name) AS Full_Name -- Upper cases
FROM customer;
-- To create email from first name and last name
SELECT lower(left(first_name,1)) || lower(last_name) || '@gmail.com'
AS customer_email
FROM customer;
