-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424
update loans 
set returneddate = '2022-07-05'
where bookid in (select books.bookid from books where barcode in (6435968624, 5677520613, 8730298424))
and returneddate is null

select *
from loans 
where bookid in (select books.bookid from books where barcode in (6435968624, 5677520613, 8730298424))
order by returneddate desc