-- ADV : 3) List customers who have placed at least 2 orders.
use book;
select c.name , c.customer_id , count(o.order_id)
from customers c join orders o
on c.customer_id= o.customer_id
group by c.name , c.customer_id
having count(order_id) > 2;