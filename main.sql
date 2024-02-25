-- # Queries

1. SELECT * FROM film;
2. SELECT DISTINCT release_year FROM film;
3. SELECT DISTINCT(release_year) FROM film;
4. SELECT DISTINCT rating FROM film;
5. SELECT COUNT(*) FROM payment;
6. SELECT COUNT(amount) FROM payment;
7. SELECT COUNT(DISTINCT amount) FROM payment;
8. SELECT * FROM customer WHERE first_name = 'Jared' AND last_name = 'Ely'; 
9. SELECT COUNT(title) FROM film WHERE rental_rate > 4 AND replacement_cost > 19.99 AND rating = 'R'; 
10. SELECT COUNT(*) FROM film WHERE rental_rate > 4 AND replacement_cost > 19.99 AND rating = 'R'; 
11. SELECT * FROM film WHERE rating='R' or rating='PG-13'; 
12. SELECT * FROM film WHERE rating!='R';
13. SELECT email FROM customer WHERE first_name='Nancy' AND last_name='Thomas';
14. SELECT description FROM film WHERE title='Outlaw Hanky';
15. SELECT phone FROM address WHERE address='259 Ipoh Drive';
16. SELECT store_id, first_name, last_name FROM customer ORDER BY store_id, first_name ASC;
17. SELECT first_name, last_name FROM customer ORDER BY store_id, first_name ASC;

18. SELECT * FROM payment
WHERE amount!=0.00
ORDER BY payment_date DESC
LIMIT 5;

19. SELECT * FROM payment
LIMIT 1;

20. SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

21. SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;

22. SELECT COUNT(*) FROM film
WHERE length <= 50;

23. SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9;

24. SELECT * FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

25. SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

26. SELECT COUNT(*) FROM payment
WHERE amount IN (0.99,1.98,1.99);

27. SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99,1.98,1.99);

28. SELECT * FROM customer
WHERE first_name IN ('John', 'Jake', 'Julie');

29. SELECT * FROM customer
WHERE first_name NOT IN ('John', 'Jake', 'Julie');

30. LIKE is case sensitive whereas ILIKE is case insensitive:

31. SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

32. SELECT * FROM customer
WHERE first_name ILIKE 'J%' AND last_name ILIKE 'S%';

33. SELECT * FROM customer
WHERE first_name LIKE '%er%';

34. SELECT * FROM customer
WHERE first_name LIKE '_her%';

35. SELECT * FROM customer
WHERE first_name NOT LIKE '_her%';

36. SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name;

-- ## CHALLENGES

1. How many payment transactions were greater than $5.00?
    
    SELECT COUNT(*) FROM payment
    WHERE amount > 5.0;
    
2. How many actors have a first name that starts with the letter P?
    
    SELECT COUNT(*) FROM actor
    WHERE first_name LIKE 'P%';
    
3. How many unique districts are our customers from?
 SELECT COUNT(DISTINCT district) FROM address;

4. Retrieve the list of names for those distinct districts from the previous question.
SELECT DISTINCT(district) FROM address;

5. How many films have a rating of R and a replacement cost between $5 and $15?
SELECT COUNT(*) FROM film
WHERE rating='R'
AND replacement_cost
BETWEEN 5 AND 15;

6. How many films have the word Truman somewhere in the title?
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';