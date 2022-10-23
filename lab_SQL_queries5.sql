use sakila;
-- 1
alter table staff drop column picture;

-- 2 
select * from customer
where first_name = 'TAMMY' and last_name = 'SANDERS';

insert into staff(first_name, last_name, email, address_id, store_id, username)
values('TAMMY','SANDERS', 'TAMMY.SANDERS@sakilacustomer.org', 79, 2, 'tammy');

-- 3
select customer_id from customer where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select film_id from film where title = 'ACADEMY DINOSAUR';

select inventory_id from sakila.inventory where film_id = 1;

select * from sakila.staff;

insert into sakila.rental(rental_date, inventory_id, customer_id, staff_id)
values (curdate(), 1, 130, 1);

-- 4
select * from sakila.customer
where active = 0;

drop table if exists deleted_users;

CREATE TABLE deleted_users (
customer_id int UNIQUE NOT NULL,
email varchar(255) UNIQUE NOT NULL,
delete_date date
);

insert into deleted_users
select customer_id, email, curdate()
from skila.customer
where active = 0;

select * from deleted_users;

delete from skila.customer where active = 0;

-- check how many inactive users there are now
select * from skila.customer
where active = 0;

