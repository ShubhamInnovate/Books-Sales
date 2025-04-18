-- ADV : 2) Find the average price of books in the "Fantasy" genre.
select books.genre, round(avg(books.price), 2 )
from books join orders
on books.Book_ID=orders.Order_ID
group by books.Genre
having Genre='fantasy';

SELECT AVG(price) AS Average_Price
FROM Books
WHERE Genre = 'Fantasy';