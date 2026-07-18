## 1. Display all customer details who have made more than 5 payments
SELECT *
FROM sakila.customer
WHERE customer_id IN
(
SELECT customer_id
FROM sakila.payment
GROUP BY customer_id
HAVING COUNT(*) > 5
);

## 2. Find the names of actors who have acted in more than 10 films
SELECT first_name, last_name
FROM sakila.actor
WHERE actor_id IN
(
SELECT actor_id
FROM sakila.film_actor
GROUP BY actor_id
HAVING COUNT(*) > 10
);

## 3. Find the names of customers who never made a payment

SELECT first_name, last_name
FROM sakila.customer
WHERE customer_id NOT IN
(
SELECT customer_id
FROM sakila.payment
);

## 4. List all films whose rental rate is higher than the average rental rate of all films
SELECT title, rental_rate
FROM sakila.film
WHERE rental_rate >
(
SELECT AVG(rental_rate)
FROM sakila.film
);

## 5. List the titles of films that were never rented
SELECT title
FROM sakila.film
WHERE film_id NOT IN
(
SELECT film_id
FROM sakila.inventory
WHERE inventory_id IN
(
SELECT inventory_id
FROM sakila.rental
)
);

## 6. Display the customers who rented films in the same month as customer with ID 5.
USE sakila;
WITH month_cte AS
(SELECT MONTH(rental_date) AS rent_month
FROM rental
WHERE customer_id = 5)
SELECT DISTINCT customer_id
FROM rental
WHERE MONTH(rental_date) = (SELECT rent_month FROM month_cte)
AND customer_id <> 5;

## 7. Find all staff members who handled a payment greater than the average payment amount.
USE sakila;
WITH avg_cte AS
(SELECT AVG(amount) AS avg_amount
FROM payment)
SELECT DISTINCT staff_id
FROM payment
WHERE amount > (SELECT avg_amount FROM avg_cte);

## 8. Show the title and rental duration of films whose rental duration is greater than the average.
USE sakila;
CREATE VIEW film_view AS
SELECT title, rental_duration
FROM film;
SELECT *
FROM film_view
WHERE rental_duration >
(SELECT AVG(rental_duration)
FROM film);

## 9. Find all customers who have the same address as customer with ID 1.
USE sakila;
CREATE VIEW customer_view AS
SELECT *
FROM customer;
SELECT *
FROM customer_view
WHERE address_id =
(SELECT address_id
FROM customer
WHERE customer_id = 1)
AND customer_id <> 1;

## 10. List all payments that are greater than the average of all payments.
USE sakila;
CREATE TEMPORARY TABLE avg_table AS
SELECT AVG(amount) AS avg_amount
FROM payment;
SELECT *
FROM payment
WHERE amount >
(SELECT avg_amount
FROM avg_table);