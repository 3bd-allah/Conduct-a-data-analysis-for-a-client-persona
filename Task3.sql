-- Task 3:
-- Lucky Shrub need to automate the orders process in their database. The database must insert a new record of data in response to the insertion of a new order in the Orders table. 
-- This new record of data must contain a new ID and the current date and time.
-- You can help Lucky Shrub by creating a trigger called UpdateAudit. This trigger must be invoked automatically AFTER a new order is inserted into the Orders table.
-- Remember: The AuditID is an auto increment key. Therefore, you don't need to insert it manually.
-- For example, when you insert three new orders in the Orders table, then three records of data are automatically inserted into the Audit table. This is shown in the following screenshot:

create table Audit (
AuditID int primary key auto_increment , 
OrderDateTime date 
);

create trigger UpdateAudit 
after insert on orders for each row 
insert into Audit (OrderDateTime) values (now()); 


 