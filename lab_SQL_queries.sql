use sakila;
select * from actor
where first_name = 'Scarlett';

select * from actor 
where last_name = 'Johansson';

select count(*) from rental;

select count(*) from film;

select min(rental_duration) from film;
select max(rental_duration) from film;

select min(length) as max_duration from film;
select max(length) as max_duration from film;

select avg(length) from film;

select CONCAT(FLOOR(avg(length)/60),'h ',floor((avg(length)%60)),'m') as average_in_hours from film;

select * from film
where length>180;

select concat(upper(left(lower(first_name), 1)),lower(substring(lower(first_name),2, length(first_name))), ' ',last_name, ' - ', lower(email) ) as formatted_email from customer;

select max(length(title)) as max_length from film
