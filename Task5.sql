-- Task 5:
-- Lucky Shrub need to find out what quantities of wood panels they are selling. The wood panels product has a Product ID of P2. 
-- The following query returns the total quantity of this product as sold in the years 2020, 2021 and 2022:


SELECT CONCAT (SUM(Cost), " (2020)") AS "Total sum of P2 Product" FROM Orders WHERE YEAR (Date) = 2020 AND ProductID = "P2" 
UNION 
SELECT CONCAT (SUM(Cost), "(2021)") FROM Orders WHERE YEAR (Date) = 2021 AND ProductID = "P2" 
UNION 
SELECT CONCAT (SUM(Cost), "(2022)") FROM Orders WHERE YEAR (Date) = 2022 AND ProductID = "P2";

-- our task is to optimize this query by recreating it as a common table expression (CTE).

with 
cte1 as (select concat(sum(cost), " (2020)") as "Total sum of P2 Product" from orders Where year(date) = 2020 and ProductId = "P2" ), 
cte2 as (select concat(sum(cost), " (2021)") from orders Where year(date) = 2021 and ProductId = "P2" ), 
cte3 as (select concat(sum(cost), " (2022)") from orders Where year(date) = 2022 and ProductId = "P2" )
select * from cte1 
union 
select * from cte2 
union 
select * from cte3 ; 