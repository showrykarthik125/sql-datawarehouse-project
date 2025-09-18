/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it doesnot exists. 
    If the database exists, it uses it and tries to create three shemas 
    within the database: 'bronze', 'silver', and 'gold', It will try to check before creting them 
    whether they are already created or not.
*/
USE MASTER;
GO
-- CREATE DATABASE
IF NOT EXISTS (select * from sys.databases where name = 'DataWarehouse')
BEGIN
     CREATE DATABASE DataWarehouse;
END;
GO
USE DataWarehouse;
GO
-- CREATE Bronze Schema
IF NOT EXISTS (select * from sys.schemas where name = 'bronze')
BEGIN
     EXEC('CREATE SCHEMA bronze');
END;
GO
-- CREATE Silver Schema
IF NOT EXISTS (select * from sys.schemas where name = 'silver')
BEGIN
     EXEC('CREATE SCHEMA silver');
END;
GO
-- CREATE Gold Schema
IF NOT EXISTS (select * from sys.schemas where name = 'gold')
BEGIN
     EXEC('CREATE SCHEMA gold');
END;
GO

