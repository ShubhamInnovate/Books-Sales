-- ADV : 4) Find the most frequently ordered book:
use book;
select b.book_id  , b.title , b.genre , count(o.order_id) 
from books as b join orders as o
on b.book_id = o.book_id
group by b.book_id , b.title , b.genre
order by count(o.order_id) desc limit 1;

SELECT o.Book_id, b.title, COUNT(o.order_id) AS ORDER_COUNT
FROM orders o
JOIN books b ON o.book_id=b.book_id
GROUP BY o.book_id, b.title
ORDER BY ORDER_COUNT DESC LIMIT 1;