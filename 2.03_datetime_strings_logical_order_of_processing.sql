select convert (date, date)
from bank.account;

select date_format(convert(date,date), '%Y-%M-%D') as formatted_date
from bank.loan;

select date_format(convert(date,date), '%Y') from bank.loan;

select * from bank.card;

select card_id, date_format(convert(SUBSTRING_INDEX (issued, ' ', 1), date), '%Y') as year_issued
from bank.card
where type = 'gold';

select min(date_format(convert(SUBSTRING_INDEX (issued, ' ', 1), date), '%Y')) as year_issued
from bank.card
where type = 'gold';

select date_format(convert(SUBSTRING_INDEX(issued, ' ', 1), date), '%M %D, %Y') as year_issued,
       date_format(convert(SUBSTRING_INDEX(issued, ' ', 1), date), '%d of %M of %Y') as fecha_emision
from bank.card;

select isnull(card_id) from bank;

select * from bank.order
where k_symbol is null;

select * from bank.order
where k_symbol is not null and  k_symbol = ' ';

select * from bank.trans
where amount is null or amount = ' ';

select sum(k_symbol = ' ') as k_symbol_empty, 
   sum(not k_symbol = ' ') as k_symbol_non_empty
from bank.trans;

select loan_id, account_id,
case
when status = 'A' then 'Good - Contract Finished'
when status = 'B' then 'Defaulter - Contract Finished'
when status = 'C' then 'Good - Contract Running'
else 'In Debt - Contract Running'
end as 'Status_Description'
from bank.loan;

-- lab query 3
select count(distinct last_name) 
from sakila.actor;

select count(distinct language_id)
from sakila.film;

select count(film_id) from sakila.film
where rating = 'PG-13';

select film_id, length from sakila.film
where release_year = '2006'
order by length desc
limit 10;

select datediff(max(rental_date), min(rental_date)) as active_days
from sakila.rental;

select *, date_format(rental_date, '%M') as month, date_format(rental_date, '%W') as weekday from sakila.rental
limit 20;

select *, 
case
when date_format(rental_date, '%W') in ('Saturday', 'Sunday') then 'weekend'
else 'workday'
end as 'day_type'
from sakila.rental
limit 20;

select date(max(rental_date)) - INTERVAL 30 DAY, date(max(rental_date))
from rental;

select count(*)
from rental 
where date(rental_date) between date ('2022-09-19') and date('2022-10-19');






