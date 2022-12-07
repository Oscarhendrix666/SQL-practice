select * from sakila.actor;
select actor_id, first_name from sakila.actor;
select actor_id, first_name as Nombre, last_name as Apellido from sakila.actor;
select * from sakila.city;
select * from sakila.country order by country ASC;
select * from sakila.customer order by first_name ASC;
select store_id as Tienda, first_name as Nombre, last_name as Apellido from sakila.customer order by Apellido Desc;
select distinct(amount) from sakila.payment order by amount ASC;
select * from sakila.actor where first_name = "DAN";
select * from sakila.city where city = "London";
select * from sakila.city where country_id = 102;
select * from sakila.customer where store_id = 1;
select * from sakila.inventory where film_id>50;
select * from sakila.payment where amount<3;
select * from sakila.staff where staff_id <>2;  #<> diferente 
select * from sakila.language where name<>'German';
select title, description, release_year from sakila.film where title ='IMPACT ALADDIN';
select * from sakila.payment where amount>0.99 order by amount ASC;
select * from sakila.country where country = 'Algeria';
select * from sakila.language where language_id = 2 or name = 'German';
select * from sakila.category where not name = 'Action';
select distinct(rating) from sakila.film where not rating = 'PG';

#and es utilizado para dos condiciones verdaderas
select * from sakila.payment
where customer_id = 36
and amount>0.99
and staff_id = 1;

select * from sakila.rental
where not staff_id = 1
and customer_id > 250
and inventory_id < 100;
