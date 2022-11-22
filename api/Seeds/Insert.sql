-------------------Insert Spices---------
--Declare @JSON varchar(max)
--SELECT @JSON=BulkColumn 
--FROM 
--OPENROWSET 
--(
--BULK 'C:\Users\Rajneesh\source\repos\admin-brludn\Admin.Brludn.App\api\API-Master\spices-master.json'
--,Single_CLOB) AS import

--INSERT INTO Spices([NAME])
--SELECT * FROM OPENJSON (@JSON)
--WITH  (
--[name] varchar(100)
--)
--GO
---------------------------------------------------------------
--Declare @JSON varchar(max)
--SELECT @JSON=BulkColumn 
--FROM 
--OPENROWSET 
--(
--BULK 'C:\Users\Rajneesh\source\repos\admin-brludn\Admin.Brludn.App\api\API-Master\nutrients-master.json'
--,Single_CLOB) AS import

--INSERT INTO Nutrients([NAME])
--SELECT * FROM OPENJSON (@JSON)
--WITH  (
--[name] varchar(100)
--)
--GO
------------------------------------------------------------------------------------------

Declare @JSON varchar(max)
SELECT @JSON=BulkColumn 
FROM 
OPENROWSET 
(
BULK 'C:\Users\Rajneesh\source\repos\admin-brludn\Admin.Brludn.App\api\API-Master\ingredient-master.json'
,Single_CLOB) AS import

INSERT INTO ingredients([NAME])
SELECT * FROM OPENJSON (@JSON)
WITH  (
[name] varchar(100)
)
GO
