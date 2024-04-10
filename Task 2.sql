DROP TABLE Employee CASCADE CONSTRAINTS PURGE;
DROP TABLE SalesStaff;

CREATE TABLE Employee(
    EmployeeID VARCHAR(6) PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    City VARCHAR(18) DEFAULT 'CA',
    State VARCHAR(8),
    PersonalPhone Number(15) UNIQUE,
    Email VARCHAR(30) NOT NULL UNIQUE,
    DateHired DATE,
    Title VARCHAR(20) NOT NULL
);

CREATE TABLE SalesStaff(
    StaffID Number(6),
    EmployeeID VARCHAR(6),
    CommissionPct Number(2,2),
    SalesManager VARCHAR(30),
    SalesPerson VARCHAR(30),
    PRIMARY KEY (StaffID),
    CHECK (CommissionPct BETWEEN 20 AND 30),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)

);

INSERT INTO Employee (EmployeeID, FirstName, LastName, City, State, PersonalPhone, Email, DateHired, Title)
VALUES ('1000', 'Larry','Margaria','Sacramento','CA',1234567892,'LarryMarg@gmail.com',NULL,'Owner/Manager' );

INSERT INTO Employee (EmployeeID, FirstName, LastName, City, State, PersonalPhone, Email, DateHired, Title)
VALUES ('1001', 'Jim','Kaney','Newport','CA',1234567893,'JimKan@gmail.com',NULL,'AccountManager' );

INSERT INTO Employee (EmployeeID, FirstName, LastName, City, State, PersonalPhone, Email, DateHired, Title)
VALUES ('1002', 'Steve','Euro','Cambria','DEFAULT',1234567894,'SteveE@gmail.com',NULL,'Cashier' );

INSERT INTO Employee (EmployeeID, FirstName, LastName, City, State, PersonalPhone, Email, DateHired, Title)
VALUES ('1003', 'Alice','Credit','Lompoc','DEFAULT',1234567895,'Acredit@gmail.com',NULL,'Bookkeeper' );

INSERT INTO Employee (EmployeeID, FirstName, LastName, City, State, PersonalPhone, Email, DateHired, Title)
VALUES ('1004', 'Sherry','Sophmore','Grover Beach','CA',1234567896,'Sherrysop@gmail.com',NULL,'Intern' );

INSERT INTO Employee (EmployeeID, FirstName, LastName, City, State, PersonalPhone, Email, DateHired, Title)
VALUES ('1005', 'Mary','Long','Morro Bay','DEFAULT',1234567897,'MLong@gmail.com',NULL,'Sales Manager' );

INSERT INTO Employee (EmployeeID, FirstName, LastName, City, State, PersonalPhone, Email, DateHired, Title)
VALUES ('1006', 'Adam','Packer','Laguna Beach','CA',1234567898,'Apacker@gmail.com',NULL,'OWNER' );

INSERT INTO Employee (EmployeeID, FirstName, LastName, City, State, PersonalPhone, Email, DateHired, Title)
VALUES ('1007', 'Larry','Jones','Los Angeles','CA',1234567899,'LarryJones@gmail.com',NULL,'OWNER' );

CREATE OR REPLACE VIEW EmployeeContact
AS SELECT FirstName, LastName, PersonalPhone, Email
FROM Employee
ORDER BY LastName;

