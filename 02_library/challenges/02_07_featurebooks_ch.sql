-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
select title, author, barcode 
from books
where published between '1890' and '1899' 
and bookid not in (select bookid idea from loans l where returneddate is null)
order by title