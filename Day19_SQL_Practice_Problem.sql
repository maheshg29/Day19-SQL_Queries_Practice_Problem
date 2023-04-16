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

/*3) Add few customer details into customer table.*/
INSERT INTO Customer (CustomerName, Phone, Address) VALUES 
('mahesh', '7894561237', '12B shanti nagar'),
('akshay', '9871234565', '10D Shree Nagar'),
('Ganesh', '7845961235', '27A OM Nagar');

/*4) Add new columns like Country, Salary and Pincode and update values.*/
ALTER TABLE Customer ADD Country VARCHAR(50);
ALTER TABLE Customer ADD Salary DECIMAL(10,2);
ALTER TABLE Customer ADD Pincode VARCHAR(10);

UPDATE Customer SET Country='USA', Salary=55000.00, Pincode='424001' WHERE CustomerName='mahesh';
UPDATE Customer SET Country='Canada', Salary=66000.00, Pincode='456001' WHERE CustomerName='akshay';
UPDATE Customer SET Country='India', Salary=44000.00, Pincode='520140' WHERE CustomerName='Ganesh';

//*5) Update customer details based on customer name.*/
UPDATE Customer SET Country='UAE', Salary=35000.00, Pincode='424002' WHERE CustomerName='mahesh';

//*6) Show number of customers in each country.*/
SELECT Country, COUNT(*) AS NumCustomers 
FROM Customer 
GROUP BY Country;

/*7) Show maximum salary, minimum salary, total Salary and average salary
for the customers.*/
SELECT MAX(Salary) AS MaxSalary FROM Customer; 

SELECT MIN(Salary) AS MinSalary FROM Customer; 

SELECT SUM(Salary) AS MinSalary FROM Customer;

SELECT AVG(Salary) AS MinSalary FROM Customer;  


/*8) Create order table with columns order id, product name, quantity and
rating.*/
CREATE TABLE OrderTable (
  OrderId INT IDENTITY(1,1) PRIMARY KEY,
  ProductName VARCHAR(50),
  Quantity INT,
  Rating INT,
  CustomerId INT FOREIGN KEY REFERENCES Customer(CustomerId)
);

INSERT INTO OrderTable (ProductName,Quantity,Rating,CustomerId) VALUES
('Book', 10, 5,1),
('NoteBook', 9, 4, 2),
('Paper', 12, 3, 3);

SELECT * FROM OrderTable;

/*9) Fetch data from both tables.*/
SELECT OrderTable.ProductName , OrderTable.Quantity, Customer.CustomerName
FROM OrderTable
INNER JOIN Customer ON OrderTable.CustomerId=Customer.CustomerId;
