------Creating database-------
CREATE DATABASE SalesDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price INT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Customers VALUES
(1,'Rahul Sharma','Delhi','India'),
(2,'Priya Singh','Mumbai','India'),
(3,'Amit Verma','Bangalore','India'),
(4,'John Miller','New York','USA'),
(5,'Emma Wilson','London','UK');



INSERT INTO Products VALUES
(101,'Laptop','Electronics',60000),
(102,'Smartphone','Electronics',30000),
(103,'Desk Chair','Furniture',7000),
(104,'Table','Furniture',12000),
(105,'Notebook','Stationery',100);


INSERT INTO Orders VALUES
(1,1,101,1,'2024-01-10'),
(2,2,102,2,'2024-01-15'),
(3,3,105,10,'2024-02-05'),
(4,1,103,1,'2024-02-20'),
(5,4,101,1,'2024-03-01'),
(6,5,104,1,'2024-03-12'),
(7,2,105,20,'2024-04-10'),
(8,3,102,1,'2024-04-15');


--------1️. View all customers-----
SELECT * FROM Customers;


--------2.View all products-------
SELECT * FROM Products;


---------3.Show customers from India-----
SELECT * FROM Customers
WHERE Country='India';


----------4.Show products price greater than 10000-----
SELECT ProductName, Price
FROM Products
WHERE Price > 10000;

----------5.Sort products by price------
SELECT * FROM Products
ORDER BY Price DESC;


---------6.Sort customers alphabetically------
SELECT * FROM Customers
ORDER BY CustomerName;



-------7.Total orders by customer--------
SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID;



--------8.Total quantity sold per product-----
SELECT ProductID, SUM(Quantity) AS TotalSold
FROM Orders
GROUP BY ProductID;


-------9.Average product price by category----
SELECT Category, AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category;


------10.Customer orders--------
SELECT Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Orders
JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;




------11.Product details in orders-----
SELECT Orders.OrderID, Products.ProductName, Orders.Quantity
FROM Orders
JOIN Products
ON Orders.ProductID = Products.ProductID;




------12.Full order details--------
SELECT Customers.CustomerName, Products.ProductName, Orders.Quantity
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Products ON Orders.ProductID = Products.ProductID;



------13.Total revenue per product-----
SELECT Products.ProductName,
SUM(Orders.Quantity * Products.Price) AS TotalRevenue
FROM Orders
JOIN Products
ON Orders.ProductID = Products.ProductID
GROUP BY Products.ProductName;




-------14.Customers who ordered laptops------
SELECT Customers.CustomerName
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN Products ON Orders.ProductID = Products.ProductID
WHERE Products.ProductName = 'Laptop';



------15.Top selling product------
SELECT Products.ProductName,
SUM(Orders.Quantity) AS TotalSold
FROM Orders
JOIN Products
ON Orders.ProductID = Products.ProductID
GROUP BY Products.ProductName
ORDER BY TotalSold DESC;
