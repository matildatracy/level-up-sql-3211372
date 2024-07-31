-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

select published, count(DISTINCT title) as pub_count 
from books 
group by published
order by pub_count desc

-- Report 2: Show the five books that have been
-- checked out the most.
select title, count(loanid) as check_count 
from loans 
join books on loans.bookid = books.bookid 
group by title 
order by check_count desc
limit 5