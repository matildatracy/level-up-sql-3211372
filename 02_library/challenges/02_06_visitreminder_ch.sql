-- Prepare a report of the library patrons
-- who have checked out the fewest books.
select firstname, lastname, email, p.patronid, count(loanid) as Num_Books_Checked_Out
from loans l
join patrons p on l.patronid = p.patronid 
group by p.patronid 
order by Num_Books_Checked_Out
limit 10
