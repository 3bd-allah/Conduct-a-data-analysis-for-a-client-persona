-- Task 2:
-- Lucky Shrub need to evaluate the sales patterns for bags of artificial grass over the last three years. Help them out using the following steps:
-- Step 1: Create the EvaluateProduct stored procedure that outputs the total number of items sold during the last three years for the P1 Product ID. Input the ProductID when invoking the procedure.
-- Step 2: Call the procedure.
-- Step 3: Output the values into outside variables.
-- The screenshot below shows the total number of items sold during the last three years of the P1 ProductID.

DELIMITER //
CREATE PROCEDURE EvaluateProduct (in product_id varchar(10) , out items_2020 int , out items_2021 int , out items_2022 int)
BEGIN 
	SELECT sum(quantity) into items_2020 from orders where productID = product_id and year(date) = 2020 ;
    select sum(quantity) into items_2021 from orders where productID = product_id and year(date) = 2021 ; 
    select sum(quantity) into items_2022 from orders where productID = product_id and year(date) = 2022; 
	select items_2020 , items_2021, items_2022; 
END //

DELIMITER ; 

call EvaluateProduct('p1', @sold_items_2020, @sold_items_2021, @sold_items2022); 
