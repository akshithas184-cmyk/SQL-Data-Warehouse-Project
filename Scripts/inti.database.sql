/*
==========================================================================
Create Database and Schemas
==========================================================================
Script purpose:
	This script creates a new database named 'DataWarehouse' after checking if it aready exist,
	If the database exists, it is dropped and recreated. Additionally, th script sets up three schemas
	within the database:'bronze', 'silver' and 'gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' databse if it exist.
	All data in the database will be permanently deleted. Procedd with caution
	and ensure you have proper backups before runnng this script.
*/


USE master;
GO

--Drop and recreate the 'DataWarhoue' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE Datawarehouse;
GO

--Create Schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

