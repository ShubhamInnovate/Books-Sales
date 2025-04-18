-- ADV:9) Calculate the stock remaining after fulfilling all orders:
use book;
-- select sum(b.Stock)-sum(o.Quantity) as Remaining_Stock
-- from books b join orders o
-- on b.book_id=o.book_id

SELECT b.book_id, b.title, b.stock, COALESCE(SUM(o.quantity),0) AS Order_quantity,  
	b.stock- COALESCE(SUM(o.quantity),0) AS Remaining_Quantity
FROM books b
LEFT JOIN orders o ON b.book_id=o.book_id
GROUP BY b.book_id, b.title,b.stock ORDER BY b.book_id;
