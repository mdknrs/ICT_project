 
COSTUMER TABLE 
CREATE TABLE Customers (
  Customer_ID DECIMAL(12),
  FirstName  VARCHAR(50),
  LastName VARCHAR(50),
  Country CHAR(50),
  Street CHAR(50),
  Adress CHAR(50),
  email CHAR(50),
  Ship_adress CHAR(50),
  Curr_location CHAR(50),
  PRIMARY KEY (Customer_ID)
); //our first table is successfully created. 
(Address) 
PAYMENT TABLE  
CREATE TABLE Payment (
  Payment_ID INT NOT NULL,
  Payment_type CHAR(50),
  Amount CHAR(50),
  PRIMARY KEY (Payment_ID),
Customers INT REFERENCES Customers(Customer_ID)
	); //Successfully FK has created between two tables 

 
//created a new table, which called “Products” 
CREATE TABLE Products (
Product_ID INT NOT NULL,
  Name CHAR(50),
  Description CHAR(50),
  Price CHAR(50),
  Size CHAR(50),
  Color CHAR(50),
PRIMARY KEY (Product_ID)
); 
 
// Successfully FK has created between Products and Discount. 
The Discount Table 
CREATE TABLE Discount (
  Dis_ID INT NOT NULL,
  Percentage CHAR(50),
  PRIMARY KEY (Dis_ID),
  Products INT REFERENCES Products (Product_ID)
);  
 
Table of Suppliers 
CREATE TABLE Suppliers (
  Sup_ID INT NOT NULL,
  Sup_name CHAR(50) ,
  Sup_company CHAR(50),
  Country CHAR(50),
  City CHAR(50),
  To_Country CHAR(50),
  To_city CHAR(50),
  To_adress CHAR(50),
  Company_number CHAR(50),
  email CHAR(50),
  Manager_name CHAR(50),
  PRIMARY KEY (Sup_ID),
  Products INT REFERENCES Products (Product_ID)
); // Successfully FK has created between Products and Suppliers
 
Table of Cotegory  (Category) 
CREATE TABLE Cotegory (
  Coteg_ID CHAR(50),
  Categ_name CHAR(50),
  Description CHAR(50),
  Picture CHAR(50),
  PRIMARY KEY (Coteg_ID),
  Products INT REFERENCES Products (Product_ID)
); 
 
CART TABLE 
CREATE TABLE Cart (
  Cart_ID INT NOT NULL,
PRIMARY KEY (Cart_ID), 
Customer_ID INT NOT NULL REFERENCES Customers(Customer_ID),
Product_ID INT NOT NULL REFERENCES Products(Product_ID) 
	);  //table is successfully created with 2 FK. 
 
Table Order 
CREATE TABLE Ordersss (
  Ordersss_ID INT NOT NULL,
  To_street CHAR(50),
  To_city CHAR(50),
  To_country CHAR(50),
  Ship_date CHAR(50),
  Delivered_date DATE,
  PRIMARY KEY (Ordersss_ID),
Customer_ID INT NOT NULL REFERENCES Customers(Customer_ID),
Product_ID INT NOT NULL REFERENCES Products(Product_ID)
); //has created with 2 FK. OUR <int> means datatype. 

 
SHIPPING_S TABLE 
CREATE TABLE Shipping_service (
  Service_ID INT NOT NULL,
  Service_name CHAR(50) ,
  Order_ID CHAR(50),
  PRIMARY KEY (Service_ID),
Customer_ID INT NOT NULL REFERENCES Customers(Customer_ID),
Product_ID INT NOT NULL REFERENCES Products(Product_ID)
); //it’s created like “Cart table” 
 
DEPARTMENT TABLE 
CREATE TABLE Department (
  Department_ID DECIMAL(12),
  Dep_name CHAR(50),
  Description CHAR(50),
  PRIMARY KEY (Department_ID)
); 
 
EMPLOYEE TABLE 
CREATE TABLE EmployeEww (
  EmployeEww_ID INT NOT NULL,
  First_name CHAR(50),
  Last_name CHAR(50),
  email CHAR(50),
  Hire_date CHAR(50),
  Salary CHAR(50),
  PRIMARY KEY (EmployeEww_ID),
Department INT REFERENCES Department(Department_ID)
	);//changed name of table, because I have table “Employee”, and forgot delete it. 
Employee table has created successfully. Also FK has created between two tables. 
 
//created our main table 
CREATE TABLE Wildberries_company (
  Wild_Comp CHAR(50),
  Head CHAR(50),
  Location CHAR(50) ,
  PRIMARY KEY (Wild_Comp)
);
