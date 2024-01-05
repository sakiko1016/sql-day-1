select * from actor 

--1 
select last_name
from actor 
where first_name like 'Wahlberg'

--2. How many payments were made between $3.99 and $5.99?
select * from payment 

select customer_id, amount
from payment 
where amount between 3.99 and 5.99

--3. What film does the store have the most of? (search in inventory)
select * from inventory
select film_id, count(film_id)
from inventory group by film_id order by count;

--4. How many customers have the last name ‘William’?
select * from customer

select last_name
from customer 
where last_name like 'William'

--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(*) AS rental_count
FROM rental
GROUP BY staff_id
ORDER BY rental_count DESC

--6. How many different district names are there?
select count(distinct last_name)
from customer
where last_name;

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count desc

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*) as num_customers
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)

SELECT amount, COUNT(*) AS rental_id
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING rental_id > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most
movies total?
SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC

