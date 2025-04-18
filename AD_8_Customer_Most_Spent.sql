-- ADV : 8) Find the customer who spent the most on orders:
select c.name , sum(o.Total_Amount) as TA 
from orders o join customers c
on o.customer_id=o.customer_id
group by c.Name order by TA desc limit 1;

SELECT c.customer_id, c.name, SUM(o.total_amount) AS Total_Spent
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY Total_spent Desc LIMIT 1;