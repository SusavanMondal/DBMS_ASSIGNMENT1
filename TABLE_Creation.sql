CREATE TABLE Customer (  -- create the table Customer
  CustomerID INT,
  FirstName varchar(25),
  LastName varchar(25),
  Email varchar(50),
  Phone varchar(10),
  Address varchar(50),
  PRIMARY KEY (CustomerID)
);


CREATE TABLE Product ( --create the table Product
  ProductID INT,
  Name VARCHAR(50),
  Description VARCHAR(50),
  Price INT,
  StockQuantity INT,
  Category VARCHAR(25),
  PRIMARY KEY (ProductID)
  
);

CREATE TABLE orders ( --create the table Order
  CustomerID INT,
  OrderID INT,
  OrderDate DATE,
  TotalAmount INT,
  ShippingAddress VARCHAR(50),
  PRIMARY KEY (OrderID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
  ON DELETE CASCADE
);

CREATE TABLE OrderDetails ( --create the table OrderDetails
  OrderDetailID INT,
  OrderID INT,
  ProductID INT,
  Quantity INT,
  UnitPrice INT,
  PRIMARY KEY (OrderDetailID),
  FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
  ON DELETE CASCADE,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
  ON DELETE CASCADE
);

--insert data--

INSERT INTO Customer (CustomerID, FirstName, LastName, Email, Phone, Address)
VALUES (1, 'SUSAVAN', 'MONDAL', 'susovanmondal550@gmail.com', '6295779038', 'Kolkata');


INSERT INTO Customer (CustomerID, FirstName, LastName, Email, Phone, Address)
VALUES 
(2, 'RAVI', 'KUMAR', 'ravi.kumar@gmail.com', '9876543210', 'Delhi'),
(3, 'PRIYA', 'SINGH', 'priya.singh@gmail.com', '8123456789', 'Mumbai'),
(4, 'ANSHIKA', 'JAIN', 'anshika.jain@gmail.com', '9501234567', 'Bangalore'),
(5, 'ABHISHEK', 'SHARMA', 'abhishek.sharma@gmail.com', '9638527410', 'Chennai'),
(6, 'NEHA', 'AGRAWAL', 'neha.agrawal@gmail.com', '8789456123', 'Hyderabad'),
(7, 'RAJESH', 'PATEL', 'rajesh.patel@gmail.com', '9345678123', 'Ahmedabad'),
(8, 'SIMRAN', 'KAUR', 'simran.kaur@gmail.com', '8234567890', 'Pune');

--product data--

INSERT INTO Product(
ProductID,Name,Description,Price,StockQuantity, Category)
values(1, 'Asus Tuf', 'A Good laptop', 55000,200,'Electronics' );

INSERT INTO Product (ProductID, Name, Description, Price, StockQuantity, Category)
values
(2, 'Apple iPhone 14', 'Latest iPhone model', 80000, 150, 'Electronics'),
(3, 'Nike Air Max', 'Comfortable sneakers', 7500, 300, 'Footwear'),
(4, 'Samsung Galaxy S21', 'High-performance smartphone', 70000, 180, 'Electronics'),
(5, 'Sony Headphones', 'Noise-canceling wireless headphones', 15000, 250, 'Electronics'),
(6, 'Dell XPS 13', 'Compact and powerful laptop', 65000, 100, 'Electronics'),
(7, 'Adidas Running Shoes', 'Durable running shoes', 5000, 500, 'Footwear'),
(8, 'LG Smart TV', '4K UHD Smart Television', 40000, 120, 'Electronics');


--insert into order and orders--


INSERT INTO Orders(CustomerID,OrderID,OrderDate,TotalAmount,ShippingAddress)
values(1,1,CURRENT_DATE,150000,'Kolkata');

INSERT INTO OrderDetails(OrderDetailID,OrderID,ProductID,Quantity,UnitPrice)
VALUES(1,1,2,1,80000),
(2,1,4,1,70000);


INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, ShippingAddress)
VALUES 
(3, 2, '2025-02-03', 95000, 'Delhi'),
(4, 3, '2025-02-05', 70000, 'Mumbai'),
(5, 4, '2025-02-07', 55000, 'Bangalore');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, ShippingAddress)
VALUES 
(6, 5, '2025-02-10', 150000, 'Chennai');

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(3, 3, 5, 2, 15000),
(4, 3, 6, 1, 65000),
(5, 4, 1, 1, 55000),
(6, 4, 3, 2, 7500),
(7, 5, 7, 3, 5000),
(8, 5, 8, 1, 40000),
(9, 6, 2, 1, 80000),
(10, 6, 4, 1, 70000);







