CREATE DATABASE TECHSHOP;
USE TECHSHOP;
set sql_safe_updates=0;

CREATE TABLE Customers(
CustomerID INT PRIMARY KEY auto_increment,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
Phone CHAR(10) NOT NULL,
Address VARCHAR(150)
);

CREATE TABLE Products(
ProductID INT PRIMARY KEY auto_increment,
ProductName VARCHAR(50) NOT NULL,
Description TEXT NOT NULL,
Price DECIMAL(10,2) NOT NULL);

CREATE TABLE Orders(
OrderID INT PRIMARY KEY auto_increment,
CustomerID INT NOT NULL,
OrderDate DATE NOT NULL,
TotalAmount DECIMAL(10,2) NOT NULL,
FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID));

CREATE TABLE OrderDetails(
OrderDetailID INT PRIMARY KEY auto_increment,
OrderID INT NOT NULL,
FOREIGN KEY(OrderID) REFERENCES Orders(OrderID) on delete cascade,
ProductID INT NOT NULL,
FOREIGN KEY(ProductID) REFERENCES Products(ProductID),
Quantity INT NOT NULL);


CREATE TABLE INVENTORY(
InventoryID INT PRIMARY KEY auto_increment,
ProductID INT NOT NULL,
FOREIGN KEY(ProductID) REFERENCES Products(ProductID),
QuantityInStock INT NOT NULL,
LastStockUpdate DATETIME NOT NULL);

select * from orderdetails;
INSERT INTO Customers VALUES(1,'RANJANA','PATEL','ranjanapatel@gmail.com','0000000000','KHANDWA');
INSERT INTO Customers VALUES(2,'SHRISTI','SHARMA','shristisharma@gmail.com','0000000001','BHOPAL');
INSERT INTO Customers VALUES(3,'AAYUSHI','KARMA','aayushikarma@gmail.com','0000000002','KHARGONE');
INSERT INTO Customers VALUES(4,'HIMANSHI','SAHU','himanshisahu@gmail.com','0000000003','BHOPAL');
INSERT INTO Customers VALUES(5,'POOJA','PANDEY','poojapandey@gmail.com','0000000004','KHARGONE');
INSERT INTO Customers VALUES(6,'TANISHA','JAIN','tanishajain@gmail.com','0000000005','REWA');
INSERT INTO Customers VALUES(7,'SHUBHAM','PATIDAR','shubhampatidar@gmail.com','0000000006','BANGLORE');
INSERT INTO Customers VALUES(8,'TANMAY','CHOUDHARY','tanmaychoudhary@gmail.com','0000000007','BHOPAL');
INSERT INTO Customers VALUES(9,'NAMAN','RAGHUVANSHI','namanraghUvanshi@gmail.com','0000000008','CHENNAI');
INSERT INTO Customers VALUES(10,'VISHESH','SINGH','visheshsingh@gmail.com','0000000009','MUMBAI');

INSERT INTO Products VALUES(1,'HARDDISK','computer component that stores data',100);
INSERT INTO Products VALUES(2,'POWER BANK','compact, battery-based device',120);
INSERT INTO Products VALUES(3,'ADAPTER','compact, battery-based device',140);
INSERT INTO Products VALUES(4,'USB CABLE','compact, battery-based device',160);
INSERT INTO Products VALUES(5,'PEN DRIVE','compact, battery-based device',180);
INSERT INTO Products VALUES(6,'EARPHONES','compact, battery-based device',200);
INSERT INTO Products VALUES(7,'BLUETOOTH SPEAKER','compact, battery-based device',220);
INSERT INTO Products VALUES(8,'SMARTWATCH','compact, battery-based device',240);
INSERT INTO Products VALUES(9,'EARBUDS','compact, battery-based device',260);
INSERT INTO Products VALUES(10,'MOUSE','compact, battery-based device',300);


INSERT INTO Orders VALUES(101,1,'2018-01-15',300);
INSERT INTO Orders VALUES(102,2,'2018-03-20',240);
INSERT INTO Orders VALUES(103,3,'2020-01-16',120);
INSERT INTO Orders VALUES(104,4,'2021-02-10',420);
INSERT INTO Orders VALUES(105,5,'2021-03-18',320);
INSERT INTO Orders VALUES(106,6,'2022-04-11',100);
INSERT INTO Orders VALUES(107,7,'2022-11-30',280);
INSERT INTO Orders VALUES(108,8,'2023-01-22',720);
INSERT INTO Orders VALUES(109,9,'2023-08-27',220);
INSERT INTO Orders VALUES(110,10,'2023-09-01',180);


INSERT INTO OrderDetails VALUES(1,101,10,1);
INSERT INTO OrderDetails VALUES(2,102,2,2);
INSERT INTO OrderDetails VALUES(3,103,2,1);
INSERT INTO OrderDetails VALUES(4,104,3,3);
INSERT INTO OrderDetails VALUES(5,105,4,2);
INSERT INTO OrderDetails VALUES(6,106,1,1);
INSERT INTO OrderDetails VALUES(7,107,3,2);
INSERT INTO OrderDetails VALUES(8,108,8,3);
INSERT INTO OrderDetails VALUES(9,109,7,1);
INSERT INTO OrderDetails VALUES(10,110,5,1);


INSERT INTO INVENTORY VALUES
(1,1,10,'2023-01-10 08:00:00'),
(2,2,20,'2023-02-15 09:30:00'),
(3,3,20,'2023-03-20 12:45:00'),
(4,4,10,'2023-01-10 08:00:00'),
(5,5,20,'2023-01-10 08:00:00'),
(6,6,30,'2023-01-10 08:00:00'),
(7,7,20,'2023-01-10 08:00:00'),
(8,8,40,'2023-01-10 08:00:00'),
(9,9,40,'2023-01-10 08:00:00'),
(10,10,50,'2023-01-10 08:00:00')
;
