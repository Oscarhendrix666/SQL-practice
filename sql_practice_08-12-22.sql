select * from sakila.customer
where first_name = 'MARY'
or first_name = 'PATRICIA';

select * from sakila.customer 
where first_name in ('MARY', 'PATRICIA');

select * from sakila.film where special_features 
in ('Trailers', 'Trailers,Delected Scenes')
and rating in ('G', 'NC-17')
and length > 100;

select * from sakila.category 
where name not in ('Action', 'Animation', 'Children');

select * from sakila.film_text
where title in ('ZORRO ARK', 'VIRGIN DAISY', 'UNITED PILOT');

select * from sakila.city 
where city in ('Chiayi','Dongying','Fukuyama','Kilis');

select * from sakila.rental 
where (customer_id between 300 and 350)
and staff_id = 1;

select * from sakila.payment
where amount not between 3 and 5;

select * from sakila.payment where (amount between 2.99 and 4.99) 
and staff_id = 2 and (customer_id between 1 and 2);

select * from sakila.address where city_id between 300 and 350;

select * from sakila.film
where (rental_rate between 0.99 and 2.99)
and length <= 50
and replacement_cost < 20;

select * from sakila.actor
where first_name like 'A%' and last_name like 'B%';

select * from sakila.actor
where first_name like '%A' and last_name like '%N';

select * from sakila.actor
where first_name like '%NE%' and last_name like '%RO%'; 

select * from sakila.actor
where first_name like 'A%E';

select * from sakila.film
where release_year = 2006 
and title like 'ALI%';

select f.title, f.description, f.release_year, l.name
from sakila.film f
inner join sakila.language l on (f.language_id = l.language_id);

select a.address as direccion, c.city as ciudad
from sakila.address a
inner join sakila.city c on (a.city_id = c.city_id);

select * from sakila.customer c
right join sakila.actor a on (c.last_name = a.last_name);

select 
c.customer_id, c.first_name, c.last_name,
a.actor_id, a.first_name, a.last_name
from sakila.customer c
left join sakila.actor a on (c.last_name = a.last_name);

select a.address, c.city, co.country
from sakila.address a
inner join sakila.city c on (a.city_id = c.city_id)
inner join sakila.country co on (c.country_id = co.country_id)
order by co.country Desc;

select c.first_name, a.address, s.store_id
from sakila.customer c
left join sakila.store s on (c.store_id = s.store_id)
left join sakila.address a on (c.address_id = a.address_id);

select r.rental_id, s.first_name 
from sakila.rental r
inner join sakila.staff s on (r.staff_id = s.staff_id);
