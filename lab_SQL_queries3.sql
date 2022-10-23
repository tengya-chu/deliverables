use sakila;

-- 1
select count(distinct last_name) from actor;

-- 2
select count(distinct language_id) from film;

-- 3;
select count(*) from film
where rating = 'PG-13';

-- 4
select * from film
where release_year = 2006
order by length desc
limit 10;
 
 -- 5
 select datediff(max(rental_date), min(rental_date)) as active_days from rental;
 
 -- 6 
select monthname(rental_date), weekday(rental_date) from rental
limit 20;

-- 7 
select rental_date,
case 
when weekday(rental_date)= '1' then 'workday' 
when weekday(rental_date)= '2' then 'workday'
when weekday(rental_date)= '3' then 'workday'
when weekday(rental_date)= '4' then 'workday'
when weekday(rental_date)= '5' then 'workday'
else 'weekend'
end as 'day_type'
from rental;

-- 8 
select date(max(rental_date))- INTERVAL 30 DAY, date(max(rental_date))
from rental;
select count(*)
from rental
where date(rental_date) between date('2006-01-15') and date('2006-02-14')
