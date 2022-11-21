select A3 from bank.district;
select distinct A3 from bank.district;
select * from bank.order
where k_symbol in ('leasing', 'pojistine');

select * from bank.account
where district_id in (1,2,3,4,5);

select * from bank.account
where district_id between 1 and 5;

select * from bank.loan
where amount - payments between 1000 and 10000;

select distinct(type) from bank.card;

select * from bank.trans
where convert(date,date) between '1993-01-01' and '1993-01-15';

select count(*) from bank.loan
where status in ('C', 'D');

select distinct a2 from bank.district
where a2 regexp '^k';

select distinct a2 from bank.district
where a2 regexp 'k$';

select * from bank.district
where A3 like 'north%';

select * from bank.district
where a3 like 'north_M%';

select * from bank.district
where a2 regexp 'ch[e-r]';

select * from bank.district
where a2 regexp '^ch[e-r]';

select * from bank.trans
order by type;

select * from bank.trans
order by k_symbol;

select trans_id, type from bank.trans
order by balance;

select trans_id, type, balance from bank.trans
order by balance;

select * from bank.district
where a2 regexp 'cesk[ey]';

select * from bank.district
where a2 regexp 'ch[e-r]';




