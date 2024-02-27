CREATE DATABASE IF NOT EXISTS CAR_RENTAL_DATABASE;

-- CREATING TABLES

CREATE TABLE IF NOT EXISTS BRANCH(
	BRANCH_ID VARCHAR(10) PRIMARY KEY NOT NULL 
    CONSTRAINT VALID_BRANCH_ID CHECK (BRANCH_ID REGEXP '^[BRAN]+[0-9]{6}$'),
    CITY VARCHAR(20) NOT NULL,
    STATE VARCHAR(20) NOT NULL,
    CONTACT DECIMAL(11,0) UNSIGNED NOT NULL
);

CREATE TABLE IF NOT EXISTS VEHICLE(
VEHICLE_ID VARCHAR(10) PRIMARY KEY NOT NULL
CONSTRAINT VALID_VEHICLE_ID CHECK (VEHICLE_ID REGEXP '^[VEH]+[0-9]{7}$'),
COST DECIMAL(4,2) NOT NULL,
MODEL VARCHAR(20) NOT NULL,
TYPE VARCHAR(15),
YEAR YEAR,
BRAND VARCHAR(20),
BRANCH_ID VARCHAR(10) DEFAULT 'BRAN000000',
CONSTRAINT FK_VEHICLE_BRANCH
FOREIGN KEY (BRANCH_ID) REFERENCES BRANCH(BRANCH_ID) 
ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS INSURANCE(
INSURANCE_ID VARCHAR(10) PRIMARY KEY
CONSTRAINT VALID_INSURANCE_ID CHECK (INSURANCE_ID REGEXP '^[INS]+[0-9]{7}$'),
INSURANCE_TYPE VARCHAR(50) NOT NULL,
DESCRIPTION VARCHAR(255),
COST DECIMAL(6,2) NOT NULL
);


CREATE TABLE IF NOT EXISTS CUSTOMER(
LICENSE VARCHAR(10) PRIMARY KEY NOT NULL
CONSTRAINT VALID_LICENSE CHECK(LICENSE REGEXP '^[LIC]+[0-9]{7}$'),
CONTACT DECIMAL(10,0) UNSIGNED NOT NULL,
EMAIL VARCHAR(50) NOT NULL
CONSTRAINT VALID_EMAIL 
CHECK (EMAIL REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
FIRST_NAME VARCHAR(20) NOT NULL,
LAST_NAME VARCHAR(20)
);


CREATE TABLE IF NOT EXISTS RENTAL(
RENTAL_ID VARCHAR(10) PRIMARY KEY NOT NULL
CONSTRAINT VALID_RENTAL_ID CHECK(RENTAL_ID REGEXP '^[REN]+[0-9]{7}$' ),
DROP_BRANCH VARCHAR(100) DEFAULT NULL,
PAYMENT_STATUS VARCHAR(100) ,
TOTAL_PRICE DECIMAL(8,2) ,
START_DATE DATE NOT NULL, -- FORMAT mm-dd-yyy will be set in website constraints
END_DATE DATE NOT NULL,
LICENSE VARCHAR(10) DEFAULT 'LIC0000000' NOT NULL,
VEHICLE_ID VARCHAR(10) DEFAULT 'VEH0000000' NOT NULL,
BRANCH_ID VARCHAR(10) DEFAULT 'BRAN000000' NOT NULL,
FOREIGN KEY (LICENSE) REFERENCES CUSTOMER(LICENSE) ON UPDATE CASCADE,
FOREIGN KEY (VEHICLE_ID) REFERENCES VEHICLE(VEHICLE_ID) ON UPDATE CASCADE,
FOREIGN KEY (BRANCH_ID) REFERENCES BRANCH(BRANCH_ID) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS R_I(
RENTAL_ID VARCHAR(10) NOT NULL,
INSURANCE_ID VARCHAR(10) NOT NULL,
PRIMARY KEY ( RENTAL_ID, INSURANCE_ID),
FOREIGN KEY (RENTAL_ID) REFERENCES RENTAL(RENTAL_ID) ON UPDATE CASCADE,
FOREIGN KEY (INSURANCE_ID) REFERENCES INSURANCE(INSURANCE_ID) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS REVIEW(
REVIEW_ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
RENTAL_ID VARCHAR(10) NOT NULL,
RATING INT CHECK (RATING BETWEEN 0 AND 10),
COMMENT VARCHAR(255)
);

ALTER TABLE BRANCH
DROP COLUMN LOCATION,
DROP COLUMN CONTACT,
ADD COLUMN CITY VARCHAR(50),
ADD COLUMN STATE VARCHAR(50),
ADD COLUMN CONTACT INT(10) UNSIGNED NOT NULL;

DROP TABLES branch;
DROP TABLE R_I;
DROP TABLE RENTAL;
DROP TABLE VEHICLE;
DROP TABLE CUSTOMER;
DROP TABLE INSURANCE;
DROP  TABLE BRANCH;
DROP TABLE REVIEW;