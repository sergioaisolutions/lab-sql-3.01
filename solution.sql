USE sakila;

-- EXERCISE 1

ALTER TABLE sakila.staff
DROP COLUMN picture;

-- EXERCISE 2

SELECT * FROM sakila.customer
WHERE first_name = 'TAMMY' AND last_name = 'SANDERS';

INSERT INTO sakila.staff (first_name, last_name, address_id, email, store_id, active, username, password, last_update)
VALUES ('Tammy', 'Sanders', 79, 'Tammy.Sanders@sakilastaff.com', 2, 1, 'Tammy', NULL, '2006-02-15 04:57:20');

-- EXERCISE 3

SELECT f.film_id, f.title, i.inventory_id, i.store_id
FROM sakila.film f JOIN sakila.inventory i USING(film_id)
WHERE f.title = 'Academy Dinosaur' AND i.store_id = 1;

INSERT INTO sakila.rental (rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES ('2006-02-15 03:57:16', 1, 130, '2006-02-17 03:57:16', 1, '2006-02-15 03:57:16');