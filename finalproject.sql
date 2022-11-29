DROP DATABASE IF EXISTS rebu;
CREATE DATABASE rebu;
USE rebu;

CREATE TABLE driverInfo
(
driverID INT PRIMARY KEY AUTO_INCREMENT,
firstName VARCHAR(56) NOT NULL,
lastName VARCHAR(56) NOT NULL,
address VARCHAR(90) NOT NULL,
phoneNumber VARCHAR(10) NOT NULL,
emailAddress VARCHAR(100) NOT NULL
);

CREATE TABLE vehicleInfo
(
vehicleID INT PRIMARY KEY AUTO_INCREMENT,
vehicleMake VARCHAR(35) NOT NULL,
vehicleModel VARCHAR(35) NOT NULL,
vehicleYear INT NOT NULL,
vehiclePlateNumber VARCHAR(6) NOT NULL, 
driverID INT
);

CREATE TABLE insuranceInfo
(
insuranceID INT PRIMARY KEY AUTO_INCREMENT,
insuranceName VARCHAR(35) NOT NULL,
insurancePolicyNumber VARCHAR(35) NOT NULL,
driverID INT
);

CREATE TABLE driverConnectorInfo
(
driverID INT,
violationID INT
);

CREATE TABLE violationInfo
(
violationID INT PRIMARY KEY AUTO_INCREMENT,
violationName VARCHAR(35) NOT NULL
);


INSERT INTO driverInfo VALUES /*Inserting data for driverInfo Table*/
(1,"Viva","Arroyo",'74 ABC Drive','0123456789',"vsvillapena@gmail.com"),
(2,"Mike","Arroyo",'75 ABC Drive','0123456790',"mike@gmail.com"),
(3,"Isabella","Arroyo",'76 ABC Drive','0123456791',"isabella@gmail.com");

INSERT INTO vehicleInfo VALUES /*Inserting data for vehicleInfo Table*/
(1,"BMW","3-Series, M3",2000,'ABC555',1),
(2,"Cadillac","BLS",2010,'DEF333',2),
(3,"Kia","Optima",2010,'GHI222',3);

INSERT INTO insuranceInfo VALUES /*Inserting data for insuranceInfo Table*/
(1,"Aviva","POLB123456",1),
(2,"Economical","POLB123478",2),
(3,"Hagerty","POLB123489",3);

INSERT INTO driverConnectorInfo VALUES /*Inserting data for driverConnectorInfo Table*/
(1,1),
(2,2),
(3,3);

INSERT INTO violationInfo VALUES /*Inserting data for driverConnectorInfo Table*/
(1,"Unsafe Left or Right Turn"),
(2,"Improper Left/Righ Turn"),
(3,"Unsafe Move");


SELECT * FROM driverInfo;
SELECT * FROM vehicleInfo;
SELECT * FROM insuranceInfo;
SELECT * FROM driverConnectorInfo;
SELECT * FROM violationInfo;

