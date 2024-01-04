-- Task 1:
-- Lucky Shrub need to find out what their average sale price, or cost was for a product in 2022.
-- You can help them with this task by creating a FindAverageCost() function that returns the average sale price value of all products in a specific year. This should be based on the user input.
-- The screenshot below shows the average cost returned from the FindAverageCost() function based on the user input of the year 2022:

CREATE FUNCTION FindAverageCost(inputYear int )
RETURNS Decimal (5,2) DETERMINISTIC 
RETURN (
	SELECT AVG(cost) FROM orders WHERE Year(date) = inputYear 
);

SELECT FindAverageCost(2022);