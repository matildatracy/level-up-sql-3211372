-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
SELECT * FROM Customers
WHERE FirstName = 'Loretta' AND LastName = 'Hundey' AND Address = '6939 Elka Place';

INSERT INTO Orders (CustomerID, OrderDate)
VALUES(70, '2022-09-20 14:00:00');

SELECT * FROM Orders
WHERE CustomerID = 70
ORDER BY OrderDate DESC LIMIT 1;

SELECT DishID, Name FROM DISHES 
WHERE Name IN ('Tropical Blue Smoothie', 'House Salad', 'Mini Cheeseburgers');

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES
(1001, (SELECT DishID FROM DISHES WHERE Name = 'House Salad')),
(1001, (SELECT DishID FROM DISHES WHERE Name = 'Mini Cheeseburgers')),
(1001, (SELECT DishID FROM DISHES WHERE Name = 'Tropical Blue Smoothie'));

SELECT c.FirstName, c.LastName, o.OrderID, o.OrderDate, SUM(d.Price) as Total
FROM Orders o
JOIN Customers c on o.CustomerID = c.CustomerID
JOIN OrdersDishes od on o.OrderID = od.OrderID
JOIN Dishes d on od.DishID = d.DishID
WHERE o.OrderID = 1001
GROUP BY o.OrderID;