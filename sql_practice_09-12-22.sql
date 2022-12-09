select inventory_id + film_id + store_id
from sakila.inventory;

select count(*) from sakila.category;
select avg(amount) from sakila.payment;
select avg(rental_duration) from sakila.film;
select max(length) from sakila.film;
select min(length) from sakila.film;
select count(rental_id) from sakila.rental;
select max(amount) from sakila.payment;
select sum(amount) as Total_Suma from sakila.payment;

select last_name from sakila.actor
group by last_name;

select last_name, count(*) from sakila.actor
group by last_name;

select c.customer_id, c.first_name, c.last_name, sum(p.amount) 
from sakila.payment p
inner join sakila.customer c on (c.customer_id = p.customer_id)
group by 1,2,3;

select c.customer_id, c.first_name, c.last_name, sum(p.amount) 
from sakila.payment p
inner join sakila.customer c on (c.customer_id = p.customer_id)
group by c.customer_id, c.first_name, c.last_name;

select customer_id, max(rental_date) from sakila.rental
group by customer_id;

select last_name, count(*) from sakila.actor
group by 1
having count(*) > 3;

select c.customer_id, c.last_name, c.first_name, sum(p.amount)
from sakila.payment p
inner join sakila.customer c on (p.customer_id = c.customer_id)
group by  1,2,3
having sum(p.amount) < 60
order by sum(p.amount) desc;

select last_name, count(*) from sakila.actor
group by last_name 
having count(*) > 3;

#¿Qué actores tienen el primer nombre 'Scarlett'? R: Damon y Bening
select * from sakila.actor
where first_name = 'Scarlett';

#¿Qué actores tienen el apellido "Johansson"? R: Matthew, Ray, Albert
select * from sakila.actor
where last_name ='Johansson';

#¿Cuántos apellidos de actores distintos hay?
select count(distinct(last_name)) from sakila.actor;

#¿Qué apellidos no se repiten?
select a.last_name, count(*) from sakila.actor a
group by a.last_name
having count(*) = 1;

#¿Qué actor ha aparecido en la mayoría de las películas?
select a.actor_id, a.first_name, a.last_name, count(a.actor_id) as film_count
from sakila.actor a
inner join sakila.film_actor f on (a.actor_id = f.actor_id)
group by a.actor_id
order by film_count Desc;

#¿Se puede alquilar ‘Academy Dinosaur’ en la tienda 1?
 select f.film_id, f.title, s.store_id, i.inventory_id  
 from sakila.inventory i
 inner join sakila.store s on (i.film_id = s.store_id)
 inner join sakila.film f on (i.film_id = f.film_id)
 where f.title = 'Academy Dinosaur' and
 s.store_id = 1;