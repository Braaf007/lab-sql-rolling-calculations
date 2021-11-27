-- Lab | SQL Rolling calculations

-- 1. Get number of monthly active customers.
select rj.customer_id, rm.customer_id, rm.rental_date, rj.rental_date
from rental_june rj
join rental_may rm
on rj.customer_id = rm.customer_id 
where rm.customer_id= rj.customer_id
group by rj.customer_id, rm.customer_id, rm.rental_date, rj.rental_date
order by count(rj.customer_id);

-- 2. Active users in the previous month.
