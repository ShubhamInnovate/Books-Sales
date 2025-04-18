-- ADV : 7) List the cities where customers who spent over $30 are located:
select distinct c.city , sum(o.Total_Amount) as Total_Amount
from customers c join orders o
on c.Customer_ID=o.customer_id
group by c.City
having Total_Amount > 30;