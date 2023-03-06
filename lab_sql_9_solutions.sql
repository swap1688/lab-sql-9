# Lab | SQL Queries 9

# In this lab we will find the customers who were active in consecutive months of May and June. Follow the steps to complete the analysis.
USE sakila;
-- Create a table `rentals_may` to store the data from rental table with information for the month of May.
CREATE TABLE `rentals_may` (
rental_id int(11) default null,
rental_date datetime,
inventory_id int(11) default null,
customer_id int(11) default null,
return_date datetime,
staff_id int(11) default null,
last_update datetime
);

-- Insert values in the table `rentals_may` using the table rental, filtering values only for the month of May.
SELECT * FROM rental WHERE MONTH(rental_date) = 5; 

# To insert a values into the rentals_may table i have used 'Table Data Import Vizard'

SELECT * FROM rentals_may;

-- Create a table `rentals_june` to store the data from rental table with information for the month of June.
CREATE TABLE `rentals_june` (
rental_id int(11) default null,
rental_date datetime,
inventory_id int(11) default null,
customer_id int(11) default null,
return_date datetime,
staff_id int(11) default null,
last_update datetime
);

-- Insert values in the table `rentals_june` using the table rental, filtering values only for the month of June.
SELECT * FROM rental WHERE MONTH(rental_date) = 6;

# To insert a values into the rentals_june table i have used 'Table Data Import Vizard'
SELECT * FROM rentals_june;

-- Check the number of rentals for each customer for May.
SELECT distinct(customer_id), count(*) as 'no_of_rentals'
FROM rentals_may
GROUP BY customer_id
ORDER BY no_of_rentals DESC;

-- Check the number of rentals for each customer for June.
SELECT distinct(customer_id), count(*) as 'no_of_rentals'
FROM rentals_june
GROUP BY customer_id
ORDER BY no_of_rentals DESC;