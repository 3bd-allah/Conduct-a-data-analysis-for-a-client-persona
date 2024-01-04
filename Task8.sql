-- Task 8:
-- Lucky Shrub need a summary of their client's details, including their addresses, order details and the products they purchased. 
-- Help them out by creating a virtual table called DataSummary that joins together the four tables that contain this data. 
-- These four tables are as follows:
-- 1) Clients,
-- 2) Addresses,
-- 3) Orders,
-- 4) and Products.
--  => The virtual table must display the following data:
-- 		The full name and contact number for each client from the Clients table.
-- 		The county that each client lives in from the Addresses table.
-- 		The name of the product they purchased from the Products table.
-- 		The ProductID, cost and date of each order from the Orders table.
-- The virtual table should show relevant data for year 2022 only. 
-- Order the data by the cost of the highest order. 

create view DataSummary as (
select 	
	c.FullName, 
    c.ContactNumber, 
    a.County, 
    p.ProductName, 
    o.ProductID, 
    o.Cost, 
    o.Date
from clients c 
	inner join addresses a on c.AddressID = a.AddressID
	inner join orders o on c.clientId = o.clientId
	inner join products p on p.ProductID = o.ProductID
where year(date) = 2022
order by o.Cost desc
); 

select * from DataSummary; 
drop view DataSummary ; 