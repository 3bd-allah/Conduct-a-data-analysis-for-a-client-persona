-- Task 6:
-- Lucky Shrub want to know more about the activities of the clients who use their online store. 
-- The system logs the ClientID and the ProductID information for each activity in a JSON Properties column inside the Activity table. 
-- This occurs while clients browse through Lucky Shrub products online. 
-- The following screenshot shows the Activity table.

-- => Utilize the Properties data to output the following information:
-- 		The full name and contact number of each client from the Clients table.
-- 		The ProductID for all clients who performed activities.

Select 
	a.properties->>'$.ClientId' as CliendId, 
    a.properties->>'$.ProductID' as ProductId, 
    c.fullName, 
    c.ContactNumber
from clients c right join activity a 
on c.ClientID = a.Properties->>'$.ClientId'; 