-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.
select firstname, lastname, patronid
from patrons 
where firstname = 'Jack' and lastname = 'Vaan' and email = 'jvaan@wisdompets.com'

select title, bookid
from books 
where barcode in (2855934983, 4043822646) 

insert into loans (bookid, patronid, loandate, duedate)
values (11, 50, '2022-08-25', '2022-09-08'),
(93, 50, '2022-08-25', '2022-09-08')

select * from loans 
order by loanid desc