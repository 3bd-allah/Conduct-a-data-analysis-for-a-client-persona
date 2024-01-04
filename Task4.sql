-- Task 4:
-- Lucky Shrub need location data for their clients and employees. To help them out, create an optimized query that outputs the following data:
-- The full name of all clients and employees from the Clients and Employees tables in the Lucky Shrub database.
-- The address of each person from the Addresses table.
-- The data should be ordered by the street name

with 
cte1 as (select c.fullName, a.street, a.county from clients c inner join addresses a on c.addressId = a.addressId order by street ) , 
cte2 as (select e.fullName, a.street, a.county from employees e inner join addresses a on e.addressId = a.addressId order by street) 
select * from cte1 
union all 
select * from cte2 ; 