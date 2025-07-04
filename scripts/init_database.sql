/* Create database DataWarehouse and create schemas.
Goal : We have to create 'DataWarehouse' and schemas : gold, silver, bronze.
*/

-- Create Database 'DataWarehouse'

USE master;

-- Drop and recreate datawarehouse
IF EXISTS ( SELECT name FROM sys.databases WHERE name = N'DataWarehouse')

BEGIN
    ALTER DATABASE MaBase SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END
GO

-- Create database DataWarehouse

 CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Create Schémas 

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
