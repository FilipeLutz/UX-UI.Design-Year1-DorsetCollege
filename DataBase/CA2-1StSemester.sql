/* 25956 - FILIPE LUTZ MARIANO */

DROP DATABASE IF EXISTS Multi_Business;

CREATE DATABASE Multi_Business;

USE Multi_Business;

/* Q1. Write the DDL SQL commands showing appropriate Data Types 
(Consider the data types provided in Q2) 
to create the tables by including the constraints of the primary and foreign keys. */

/* Create AGENTS table */

CREATE TABLE AGENTS (
    AGENT_CODE VARCHAR(5),
    AGENT_NAME VARCHAR(15),
    WORKING_AREA VARCHAR(15),
    COMMISSION DECIMAL(3,2),
    PHONE_NO VARCHAR(20),
    COUNTRY VARCHAR(20),
	PRIMARY KEY (AGENT_CODE)
    );

/* Create CUSTOMERS table */

CREATE TABLE CUSTOMERS (
    CUST_CODE VARCHAR(10),
    CUST_NAME VARCHAR(20),
    CUST_CITY VARCHAR(20),
    WORKING_AREA VARCHAR(20),
    CUST_COUNTRY VARCHAR(10),
    GRADE INT,
    OPENING_AMT VARCHAR(15),
    RECEIVE_AMT VARCHAR(15),
    PAYMENT_AMT VARCHAR(15),
    OUTSTANDING_AMT VARCHAR(15),
    PHONE_NO VARCHAR(15), 
    AGENT_CODE VARCHAR(5),
    PRIMARY KEY (CUST_CODE),
    FOREIGN KEY (AGENT_CODE) REFERENCES AGENTS (AGENT_CODE)
    );

/* Create ORDERS table */

CREATE TABLE ORDERS (
    ORD_NUM int,
    ORD_AMOUNT DECIMAL(6,2), 
    ADVANCE_AMOUNT DECIMAL(6,2), 
    ORD_DATE DATE, 
    CUST_CODE VARCHAR(10), 
    ORD_DESCRIPTION VARCHAR(10),
    PRIMARY KEY (ORD_NUM),
    FOREIGN KEY (CUST_CODE) REFERENCES CUSTOMERS (CUST_CODE)
    );

/* Q2. Write the DDL SQL commands to work on the tables as follows:
   (i) Write the SQL insert statements for each table for the data as mentioned below */

/* Insert statements for AGENTS table */

INSERT INTO AGENTS (AGENT_CODE, AGENT_NAME, WORKING_AREA, COMMISSION, PHONE_NO, COUNTRY)
VALUES 
('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', ''),
('A003', 'Alex ', 'London', 0.13, '075-12458969', ''),
('A008', 'Alford', 'New York', 0.12, '044-25874365', ''),
('A011', 'Ravi Kumar', 'Bangalore', 0.15, '077-45625874', ''),
('A010', 'Santakumar', 'Chennai', 0.14, '007-22388644', ''),
('A012', 'Lucida', 'San Jose', 0.12, '044-52981425', ''),
('A005', 'Anderson', 'Brisban', 0.13, '045-21447739', ''),
('A001', 'Subbarao', 'Bangalore', 0.14, '077-12346674', ''),
('A002', 'Mukesh', 'Mumbai', 0.11, '029-12358964', ''),
('A006', 'McDen', 'London', 0.15, '078-22255588', ''),
('A004', 'Ivan', 'Torento', 0.15, '008-22544166', ''),
('A009', 'Benjamin', 'Hampshair', 0.11, '008-22536178', ''),
('A013', 'Mark', 'Boston', 0.12, '043-09543484', '');

/* Insert statements for CUSTOMERS table */

INSERT INTO CUSTOMERS (CUST_CODE, CUST_NAME, CUST_CITY, WORKING_AREA, CUST_COUNTRY, GRADE, OPENING_AMT, RECEIVE_AMT, PAYMENT_AMT, OUTSTANDING_AMT, PHONE_NO, AGENT_CODE)
VALUES 
('C00013', 'Holmes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003'),
('C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008'),
('C00015', 'Stuart', 'London', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003'),
('C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008'),
('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002'),
('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010'),
('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005'),
('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004'),
('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009'),
('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012'),
('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004'),
('C00003', 'Martin', 'Torento', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004'),
('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002'),
('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001'),
('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010');

/* Insert statements for ORDERS table */

INSERT INTO ORDERS (ORD_NUM, ORD_AMOUNT, ADVANCE_AMOUNT, ORD_DATE, CUST_CODE, ORD_DESCRIPTION)
VALUES 
('200100', '1000.00', '600.00', '2022-01-10', 'C00013', 'SOD'),
('200107', '4500.00', '900.00', '2022-08-30', 'C00007', 'SOD'),
('200102', '2000.00', '300.00', '2022-05-25', 'C00012', 'SOD'),
('200114', '3500.00', '2000.00', '2022-08-15', 'C00002', 'SOD'),
('200122', '2500.00', '400.00', '2008-09-16', 'C00003', 'SOD'),
('200119', '4000.00', '700.00', '2008-09-16', 'C00007', 'SOD'),
('200121', '1500.00', '600.00', '2008-09-23', 'C00008', 'SOD'),
('200134', '4200.00', '1800.00', '2022-09-25', 'C00004', 'SOD'),
('200108', '4000.00', '600.00', '2008-02-15', 'C00008', 'SOD'),
('200109', '3500.00', '800.00', '2022-07-30', 'C00011', 'SOD'),
('200101', '3000.00', '1000.00', '2022-07-15', 'C00001', 'SOD'),
('200104', '1500.00', '500.00', '2022-03-13', 'C00006', 'SOD'),
('200106', '2500.00', '700.00', '2022-04-20', 'C00005', 'SOD'),
('200117', '800.00', '200.00', '2022-10-20', 'C00014', 'SOD'),
('200120', '500.00', '100.00', '2022-07-20', 'C00009', 'SOD'),
('200116', '500.00', '100.00', '2022-07-13', 'C00010', 'SOD'),
('200127', '2500.00', '400.00', '2022-07-20', 'C00015', 'SOD'),
('200128', '3500.00', '1500.00', '2022-07-20', 'C00009', 'SOD'),
('200135', '2000.00', '800.00', '2022-09-16', 'C00007', 'SOD'),
('200131', '900.00', '150.00', '2022-08-26', 'C00012', 'SOD'),
('200133', '1200.00', '400.00', '2022-06-29', 'C00009', 'SOD');


/* (ii) Write the following DML Statements 
   (NOTE, you might need safe-updates option to off to some of the updates, the command is “SET SQL_SAFE_UPDATES = 0;”): */

/* Update the safety of SQL to allow certain updates that might otherwise be restricted due to safety measures */

SET SQL_SAFE_UPDATES = 0;

/* Update the structure of the table AGENTS and add a new column 'POSITION'. */

ALTER TABLE AGENTS
ADD COLUMN POSITION VARCHAR(15);

/* Update the position column for AGENTS A008 Alford and A012 Lucida to “Manager”. */

UPDATE AGENTS
SET POSITION = 'Manager'
WHERE AGENT_CODE IN ('A008', 'A012');

/* Update the COMMISSION column in the table AGENTS from 0.12 to 0.15 for the Agent A008 Alford. */ 

UPDATE AGENTS
SET COMMISSION = 0.15
WHERE AGENT_CODE = 'A008';

/* (iii) Write the Delete Statements on the following tables
   Delete AGENT with AGENT_CODE of ‘A013’ */ 

DELETE FROM AGENTS
WHERE AGENT_CODE = 'A013';

/* Q3. Formulate the following queries using SQL (You need to provide single SQL for each question). */

/* (i).	How many customers whose agents are from the working area of ‘Hampshair’ have place order(s) between August and September 2022? */

SELECT COUNT(C.CUST_CODE) AS Num_Customers
FROM CUSTOMERS C
JOIN AGENTS A ON C.AGENT_CODE = A.AGENT_CODE
JOIN ORDERS O ON C.CUST_CODE = O.CUST_CODE
WHERE A.WORKING_AREA = 'Hampshair'
AND O.ORD_DATE BETWEEN '2022-08-01' AND '2022-09-30';

/* (ii) List all the CUSTOMERS details and the details of the agent who look after each of those customers. */

SELECT C.*, A.*
FROM CUSTOMERS C
JOIN AGENTS A ON C.AGENT_CODE = A.AGENT_CODE;

/* (iii) Calculate the total commissions amount (PAYMENT_AMT*COMMISSION) earned by each agent. */

SELECT A.AGENT_CODE, A.AGENT_NAME, SUM(PAYMENT_AMT * COMMISSION) AS TOTAL_COMMISSION
FROM AGENTS A
JOIN CUSTOMERS C ON A.AGENT_CODE = C.AGENT_CODE
GROUP BY AGENT_CODE, AGENT_NAME;

/* (iv) List the agents whose customer that they look after has placed at least one order in September 2022. */

SELECT DISTINCT A.*
FROM AGENTS A
JOIN CUSTOMERS C ON A.AGENT_CODE = C.AGENT_CODE
JOIN ORDERS O ON C.CUST_CODE = O.CUST_CODE
WHERE MONTH(O.ORD_DATE) = 09 AND YEAR(O.ORD_DATE) = 2022;

/* (v) In which month the customers have places the greatest number of orders. */

SELECT MONTH(ORD_DATE) AS Month_With_Most_Orders, COUNT(*) AS Total_Orders
FROM ORDERS
GROUP BY MONTH(ORD_DATE)
ORDER BY Total_Orders DESC
LIMIT 1;

/* (vi) Which agent’s customer placed the greatest number of orders. */

SELECT A.AGENT_CODE, A.AGENT_NAME, COUNT(o.ORD_NUM) AS Num_Orders
FROM AGENTS A
JOIN CUSTOMERS C ON A.AGENT_CODE = C.AGENT_CODE
JOIN ORDERS O ON C.CUST_CODE = O.CUST_CODE
GROUP BY A.AGENT_CODE, A.AGENT_NAME HAVING COUNT(o.ORD_NUM) = (4)
ORDER BY Num_Orders DESC
/*LIMIT 1*/;

/* (vii) Which agents and customers live/work in the same city. */

SELECT A.AGENT_CODE, A.AGENT_NAME, A.WORKING_AREA AS AGENT_CITY, 
C.CUST_CODE AS CUSTOMER_CODE , C.CUST_NAME AS CUSTOMER_NAME, C.CUST_CITY AS CUSTOMER_CITY
FROM AGENTS A
JOIN CUSTOMERS C ON A.WORKING_AREA = C.CUST_CITY;

/* (viii) List the agents whose customer has never placed an order yet. */

SELECT A.*
FROM AGENTS A
LEFT JOIN CUSTOMERS C ON A.AGENT_CODE = C.AGENT_CODE
LEFT JOIN ORDERS O ON C.CUST_CODE = O.CUST_CODE
WHERE O.CUST_CODE IS NULL;