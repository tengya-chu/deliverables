use sakila;
-- 1
select distinct rating from film;

-- 2
select distinct release_year from film;

-- 3
select distinct title from film
where title regexp 'ARMAGEDDON';

-- 4
select distinct title from film
where title regexp 'APOLLO';

-- 5 
select distinct title from film
where title regexp 'APOLLO$';

-- 6
select title from film
where title like '%DATE%';

-- 7 
select title from film
order by length(title) desc
limit 10;

-- 8 
select length from film 
order by length desc
limit 10;

-- 9 
select count(special_features) from film
where special_features like '%Behind the Scenes%';

-- 10 
select release_year, title from film 
order by release_year, title asc;



