-- ADV : 6) Retrieve the total quantity of books sold by each author:
use book;
select b.author , b.title , b.genre , sum(o.quantity)  as Total_Sold
from books b join orders o
on b.book_id=o.book_id
group by b.author , b.title , b.genre;