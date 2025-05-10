CREATE DATABASE ASSIGNMENT2;

USE ASSIGNMENT2;

CREATE TABLE COMPANY
(
COMPANYID INT PRIMARY KEY,
COMPANYNAME VARCHAR(45),
STREET  VARCHAR(45),
CITY  VARCHAR(45),
STATE  VARCHAR(2),
ZIP  VARCHAR(10)
);

INSERT INTO COMPANY (COMPANYID, COMPANYNAME, STREET, CITY, STATE, ZIP) VALUES
(1, 'Urban Outfitters, Inc.', '4659 Davis Burgs Suite 043', 'Hughesfurt', 'AZ', '76875'),
(2, 'Toll Brothers', '9294 Short Locks Suite 820', 'New Michellestad', 'CA', '25506'),
(3, 'Acme Corp', '870 Hebert Vista', 'West Philipberg', 'SC', '36556'),
(4, 'Globex Corporation', '292 Delacruz Pass Apt. 222', 'Thorntonton', 'NC', '06198'),
(5, 'Wayne Enterprises', '59118 Lisa Flats Suite 544', 'Lutzberg', 'NV', '72947'),
(6, 'Stark Industries', '92805 James Turnpike', 'Carrmouth', 'GA', '93500'),
(7, 'Wonka Industries', '278 Amy View Suite 011', 'Lawsonshire', 'MA', '50054'),
(8, 'Soylent Corp', '125 Ian Crossroad Apt. 593', 'South Deannaport', 'MS', '07347'),
(9, 'Cyberdyne Systems', '1607 Munoz River', 'Emilyshire', 'NH', '54532'),
(10, 'Tyrell Corporation', '74361 Davis Burg', 'Andrewfurt', 'UT', '86147'),
(11, 'Umbrella Corporation', '7877 Michaela Plain', 'Gibbsview', 'SD', '68116'),
(12, 'Hooli', '55170 Regina Lights', 'Michaelfurt', 'KY', '12717'),
(13, 'Massive Dynamic', '58504 Donald Neck', 'Lake Heatherborough', 'CT', '79741'),
(14, 'Vehement Capital Partners', '4017 Henson Key Apt. 710', 'Michaelbury', 'MO', '16328'),
(15, 'Genco Pura Olive Oil Company', '2949 Peters Shoals', 'West Charles', 'OK', '00313');

CREATE TABLE EMPLOYEE
(
EMPLOYEEID INT PRIMARY KEY,
FIRSTNAME VARCHAR(45),
LASTNAME VARCHAR(45),
SALARY DECIMAL(10,2),
HIREDATE DATE,
JOBTITLE VARCHAR(25),
EMAIL VARCHAR(25),
PHONE VARCHAR(12)
);

INSERT INTO EMPLOYEE (EMPLOYEEID, FIRSTNAME, LASTNAME, SALARY, HIREDATE, JOBTITLE, EMAIL, PHONE) VALUES
(1, 'Lesley', 'Bland', 111665.45, '2021-07-29', 'Hydrogeologist', 'lesley.bland@example.com', '123-456-7890'),
(2, 'Jack', 'Lee', 55397.99, '2022-07-08', 'Editor, magazine', 'jack.lee@example.com', '987-654-3210'),
(3, 'Jessica', 'Mendoza', 61112.93, '2018-08-06', 'Hydrologist', 'jes.mendoza@example.com', '720996375684'),
(4, 'Stephen', 'Brooks', 74353.81, '2021-10-23', 'Engineer, aeronautical', 'step.brooks@example.com', '644132380928'),
(5, 'Michael', 'Young', 95779.08, '2019-01-26', 'Glass blower/designer', 'michael.young@example.com', '642003373693'),
(6, 'Brianna', 'Watkins', 93179.86, '2017-08-15', 'Conservation officer', 'br.watkins@example.com', '795713844813'),
(7, 'Tyler', 'Mitchell', 77886.39, '2017-05-02', 'Television operator', 'tr.mitchell@example.com', '671194462090'),
(8, 'Shawn', 'Fitzgerald', 65177.04, '2018-02-18', 'Learning mentor', 'shawn.fitzge@example.com', '756519220900'),
(9, 'Aaron', 'Ramirez', 61415.31, '2016-07-12', 'Minerals surveyor', 'aa.ramirez@example.com', '775258725866'),
(10, 'Rachel', 'Martinez', 114630.67, '2023-05-23', 'Retail banker', 'ra.martinez@example.com', '781134385116'),
(11, 'George', 'Clark', 60108.76, '2015-11-09', 'Futures trader', 'george.clark@example.com', '726261419060'),
(12, 'David', 'Walker', 87740.13, '2016-10-10', 'Tax adviser', 'david.walker@example.com', '751003943153'),
(13, 'Emma', 'Gray', 113101.33, '2022-01-19', 'Freight forwarder', 'emma.gray@example.com', '794764865398'),
(14, 'Robert', 'Patterson', 100844.53, '2022-11-26', 'Geologist, wellsite', 'robert.patte@example.com', '734278952326'),
(15, 'Laura', 'Stewart', 62737.70, '2016-03-30', 'Community arts worker', 'laura.stewart@example.com', '795826049480');


CREATE TABLE CONTACT
(
CONTACTID int PRIMARY KEY,
COMPANYID INT,
FIRSTNAME VARCHAR(45),
LASTNAME VARCHAR(45),
STREET VARCHAR(45),
CITY VARCHAR(45),
STATE VARCHAR(2),
ZIP VARCHAR(10),
ISMAIN BOOLEAN,
EMAIL VARCHAR(45),
PHONE VARCHAR(12)
);

INSERT INTO CONTACT (CONTACTID, COMPANYID, FIRSTNAME, LASTNAME, STREET, CITY, STATE, ZIP, ISMAIN, EMAIL, PHONE) VALUES
(1, 2, 'Dianne', 'Connor', '22418 Erica Junction Apt. 632', 'Johnsonmouth', 'MA', '41165', TRUE, 'dianne.connor@example.com', '429109577789'),
(2, 14, 'David', 'Ortiz', '3184 Jason Road Suite 284', 'Thompsonfort', 'NY', '36934', FALSE, 'david.ortiz@example.com', '679384935054'),
(3, 13, 'Lauren', 'Bennett', '6338 Williams Lakes', 'Williamsfort', 'LA', '66158', FALSE, 'lauren.bennett@example.com', '704499777147'),
(4, 6, 'Chad', 'Sims', '28552 Porter Mount', 'Lake Amandaborough', 'MT', '64779', FALSE, 'chad.sims@example.com', '781194030814'),
(5, 8, 'Jacob', 'Reyes', '58285 Teresa Roads', 'Port Nathan', 'TN', '20992', TRUE, 'jacob.reyes@example.com', '749208252745'),
(6, 10, 'Jennifer', 'Taylor', '19698 Grant Shores Apt. 013', 'Port Davidtown', 'AZ', '25725', FALSE, 'jennifer.taylor@example.com', '718715351032'),
(7, 15, 'Brandon', 'Barnes', '6965 Wolfe Falls', 'Port Frankport', 'NM', '19727', FALSE, 'brandon.barnes@example.com', '799620612081'),
(8, 5, 'Amy', 'Freeman', '42906 Daniel Neck', 'Randallmouth', 'ND', '35699', FALSE, 'amy.freeman@example.com', '782089007295'),
(9, 4, 'Amber', 'Kelly', '157 William Island', 'Lake Barbara', 'TX', '31908', TRUE, 'amber.kelly@example.com', '757265333746'),
(10, 12, 'Melissa', 'Dixon', '74093 Ramos Bridge', 'Cherylburgh', 'RI', '80345', FALSE, 'melissa.dixon@example.com', '737194780343'),
(11, 1, 'Paul', 'Smith', '39405 Austin Rest', 'South Holly', 'IN', '12717', FALSE, 'paul.smith@example.com', '796194315712'),
(12, 3, 'Emily', 'Hernandez', '9820 Robert Divide', 'Martinezburgh', 'ID', '55612', TRUE, 'emily.hernandez@example.com', '762964020511'),
(13, 11, 'Kevin', 'Garrett', '73220 Barrett Junction', 'West Kim', 'IA', '22107', FALSE, 'kevin.garrett@example.com', '729819370114'),
(14, 7, 'Andrew', 'Schmidt', '11177 Vasquez Lock', 'Port Stevenfurt', 'OR', '03432', FALSE, 'andrew.schmidt@example.com', '763681701395'),
(15, 9, 'Joshua', 'Hale', '65580 Butler Trace Apt. 821', 'Thomasland', 'AR', '81367', TRUE, 'joshua.hale@example.com', '731072902042');


CREATE TABLE CONTACTEMPLOYEE
(
CONTACTEMPLOYEEID INT PRIMARY KEY,
CONTACTID INT,
EMPLOYEEID INT,
CONTACTDATE DATE,
DESCRIPTION VARCHAR(100)
);

INSERT INTO CONTACTEMPLOYEE (CONTACTEMPLOYEEID, CONTACTID, EMPLOYEEID, CONTACTDATE, DESCRIPTION) VALUES
(1, 1, 2, '2024-04-12', 'Discussion with Jack Lee and Dianne Connor'),
(2, 3, 4, '2023-06-18', 'Presented Q2 sales figures'),
(3, 5, 6, '2022-11-05', 'Introduced new onboarding protocol'),
(4, 2, 3, '2023-08-24', 'Planned next fiscal year budget'),
(5, 7, 8, '2021-12-13', 'Reviewed compliance issues'),
(6, 8, 9, '2024-03-20', 'Scheduled site inspection'),
(7, 9, 10, '2023-09-01', 'Met to review logistics operations'),
(8, 4, 11, '2023-02-16', 'Assessed contractor performance'),
(9, 6, 12, '2022-07-08', 'Setup legal documentation review'),
(10, 10, 13, '2023-04-30', 'Confirmed international supplier contracts'),
(11, 11, 5, '2022-10-11', 'Audited financial statement changes'),
(12, 12, 14, '2021-06-27', 'Updated training and safety protocols'),
(13, 13, 7, '2023-11-14', 'Consulted on building code changes'),
(14, 14, 15, '2022-05-17', 'Held quarterly HR strategy meeting'),
(15, 15, 1, '2023-01-25', 'Evaluated partnership proposals');



UPDATE EMPLOYEE SET PHONE = '215-555-8800'
WHERE EMPLOYEEID = '1';

UPDATE COMPANY SET COMPANYNAME = 'Urban Outfitters'
WHERE COMPANYNAME = 'Urban Outfitters, Inc.';

DELETE FROM CONTACTEMPLOYEE WHERE CONTACTEMPLOYEEID = 1;

INSERT INTO CONTACTEMPLOYEE (CONTACTEMPLOYEEID, CONTACTID, EMPLOYEEID, CONTACTDATE, DESCRIPTION)
VALUES (1, 1, 2, '2024-04-12', 'Discussion with Jack Lee and Toll Brothers');

SELECT EMPLOYEE.FIRSTNAME, EMPLOYEE.LASTNAME FROM EMPLOYEE 
JOIN CONTACTEMPLOYEE ON EMPLOYEE.EMPLOYEEID = CONTACTEMPLOYEE.EMPLOYEEID
JOIN CONTACT  ON CONTACTEMPLOYEE.CONTACTID = CONTACT.CONTACTID
JOIN COMPANY  ON CONTACT.COMPANYID = COMPANY.COMPANYID
WHERE COMPANY.COMPANYNAME = 'Toll Brothers';

# Q.8
#The percent sign (%) represents zero, one, or multiple characters
#The underscore sign (_) represents one, single character

# Q.9
# Normalization is a process used to organize data efficiently within a relational database. 
# Normalization involves dividing a large table into smaller, related tables and defining relationships between them.

# Q.10
# A JOIN is used to combine rows from two or more tables, based on a related column between them.
# Types of Joins are Inner Join , Outer Join, Left Join , Right Join.

# Q.11
# DDL
# DDL stands for Data Definition Language. These statements define and modify the structure of the database.
# Common DDL Commands are CREATE , ALTER, DROP AND TRUNCATE.
 
# DML 
# DML stands for Data Manipulation Language. These statements are used for managing data within tables.
# DML Commands are INSERT, UPDATE and DELETE.

#DCL stands for Data Control Language. These statements manage access and permissions to the database.
#  DCL Commands are GRANT and REVOKE.


# Q.12
# The JOIN clause in MySQL is used to combine rows from two or more tables based on a related column between them. 
# Types of Joins are Inner Join , Outer Join, Left Join , Right Join.












