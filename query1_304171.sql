BEGIN 

SELECT DimE.EmployeeKey EMPLOYEEKEY, DimE.FIRSTNAME, DimE.LASTNAME, DimE.TITLE 
INTO AdventureWorksDW2019.dbo.stg_dimemp
FROM AdventureWorksDW2019.dbo.DimEmployee DimE
WHERE EmployeeKey between 270 and 275 

ALTER TABLE AdventureWorksDW2019.dbo.stg_dimemp ADD CONSTRAINT Employee_key PRIMARY KEY (EmployeeKey);
END

BEGIN 

CREATE TABLE AdventureWorksDW2019.dbo.scd_dimemp 
(EmployeeKey int , 
FirstName nvarchar(50) not null, 
LastName nvarchar(50) not null, 
Title nvarchar(50), 
StartDate datetime, 
EndDate datetime, 
PRIMARY KEY(EmployeeKey));

END;