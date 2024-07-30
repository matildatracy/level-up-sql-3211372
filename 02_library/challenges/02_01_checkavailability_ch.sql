-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
select count(bookid) from books where title = 'Dracula'

SELECT
  (SELECT COUNT(Books.Title) 
    FROM Books 
    WHERE Books.Title = 'Dracula') - 
  (SELECT COUNT(Books.Title)
    FROM Books 
    JOIN Loans ON Books.BookID = Loans.BookID 
    WHERE Books.Title = 'Dracula' 
    AND Loans.ReturnedDate IS NULL)
  AS AvailableCopies;