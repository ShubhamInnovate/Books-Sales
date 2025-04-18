-- ADV : 5) Show the top 3 most expensive books of 'Fantasy' Genre :
select b.Book_ID,b.Title,b.Price from books b
where Genre="fantasy" order by b.Price desc limit 3;