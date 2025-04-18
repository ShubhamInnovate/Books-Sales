-- Advance: 1) Retrieve the total number of books sold for each genre.
use book;
select b.genre , sum(o.quantity) as Total_Books_Sold
from books as b join orders as o
on b.book_id = o.book_id
group by b.genre
;