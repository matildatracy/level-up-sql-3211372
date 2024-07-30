-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
SELECT * FROM Customers 
WHERE Customers.FirstName = 'Cleo' AND Customers.LastName = 'Goldwater';

SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad';

UPDATE Customers 
SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad')
WHERE Customers.FirstName = 'Cleo' AND Customers.LastName = 'Goldwater';

SELECT * FROM Customers 
WHERE Customers.FirstName = 'Cleo' AND Customers.LastName = 'Goldwater';
