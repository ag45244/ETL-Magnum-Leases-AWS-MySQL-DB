show databases;

use MagnumBLMLeases;

CREATE TABLE details(
LEASE_NO VARCHAR(15) PRIMARY KEY,
PLOTTED VARCHAR(3),
GRANTEE VARCHAR(50),
SALE_DATE DATE,
EFFECTIVE_DATE_OF_LEASE DATE,
EXPIRATION_DATE DATE,
ACRES FLOAT,
COUNTY VARCHAR(50),
ST VARCHAR(10),
STATUS_COMMENTS VARCHAR(500),
EXPIRATION_YEAR INT,
TOWNSHIP VARCHAR(20),
RANGE_PLSS VARCHAR(20),
DESCRIPTION_I VARCHAR(500),
DESCRIPTION_II VARCHAR(500),
DESCRIPTION_III VARCHAR(500)
);

-- Child Tables

CREATE TABLE sale_info(
LEASE_NO VARCHAR(15) UNIQUE,
PARCEL_NO VARCHAR(30),
DUE_AT_SALE FLOAT,
DUE_AFTER_SALE FLOAT, 
TOTAL_PAID FLOAT,
AMOUNT_OF_RENTAL FLOAT,
FOREIGN KEY (LEASE_NO) REFERENCES details(LEASE_NO)
);

CREATE TABLE investment(
LEASE_NO VARCHAR(15) UNIQUE,
YEARS_RENEWED INT,
RENTALS_PAID FLOAT,
TOTAL_INVESTMENT FLOAT,
Estimated_Bonus FLOAT,
FOREIGN KEY (LEASE_NO) REFERENCES details(LEASE_NO)
);

CREATE TABLE interest(
LEASE_NO VARCHAR(15) UNIQUE,
UA float,
RA float,
KA float,
FOREIGN KEY (LEASE_NO) REFERENCES details(LEASE_NO)
);

CREATE TABLE recording(
LEASE_NO VARCHAR(15) UNIQUE,
RECORDED_LEASE VARCHAR(300),
DATE_FILED varchar(100),
OVERRIDES_PERC FLOAT,
Assignment_of_ORRI VARCHAR(300),
FOREIGN KEY (LEASE_NO) REFERENCES details(LEASE_NO)
);




 


