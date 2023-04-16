//*1) Create Database. */
CREATE DATABASE Day19DB;
use Day19DB;

//*2) Create Customer table with columns Customer Id, Customer Name,
Phone, Address.
Note: Make Customer Id as auto increment. */

CREATE TABLE Customer (
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(255),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);
SELECT * FROM Customer;

INSERT INTO Customer (CustomerName, Phone, Address) VALUES 
('mahesh', '7894561237', '12B shanti nagar'),
('akshay', '9871234565', '10D Shree Nagar'),
('Ganesh', '7845961235', '27A OM Nagar');
