/*BEGIN 

CREATE TABLE AdventureWorksDW2019.dbo.CSV_Customers
(FirstName nvarchar(50), 
LastName nvarchar(50), 
EmailAddress nvarchar(50), 
Address nvarchar(50), 
City nvarchar(50),
Region nvarchar(50),
PhoneNumber nvarchar(50),
CREATE_TIMESTAMP datetime,
UPDATE_TIMESTAMP datetime);

END; */


SELECT * FROM AdventureWorksDW2019.dbo.CSV_Customers ORDER BY UPDATE_TIMESTAMP DESC, CREATE_TIMESTAMP DESC