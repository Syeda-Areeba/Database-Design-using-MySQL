CREATE DATABASE Question_1;
USE Question_1;
    
CREATE TABLE Online_Customer(
	Customer_Id INT PRIMARY KEY AUTO_INCREMENT,  -- id is assigned against each new email since it is easier to manage numerical id than string email
    C_Name VARCHAR(30) NOT NULL,
    C_Email VARCHAR(40) UNIQUE NOT NULL,
    C_DOB DATE NOT NULL,
    C_Gender CHAR NOT NULL,
    C_Country VARCHAR(15) NOT NULL,
    C_City VARCHAR(15) NOT NULL,
    C_Area VARCHAR(20) NOT NULL,
    C_Street VARCHAR(20) NOT NULL
);
    
CREATE TABLE Offline_Customer(
	Customer_Id INT PRIMARY KEY AUTO_INCREMENT,  -- id is assigned against each new SSN since it is easier to manage 2 digits than longer int 
    C_Name VARCHAR(30) NOT NULL,
    C_SSN VARCHAR(40) UNIQUE NOT NULL,
    C_DOB DATE NOT NULL,
    C_Gender CHAR NOT NULL,
    C_Country VARCHAR(15) NOT NULL,
    C_City VARCHAR(15) NOT NULL,
    C_Area VARCHAR(20) NOT NULL,
    C_Street VARCHAR(20) NOT NULL
);

CREATE TABLE Retail_Store(
	Store_Id INT PRIMARY KEY AUTO_INCREMENT,
    S_Name VARCHAR(35) NOT NULL,
    S_Location VARCHAR(40) NOT NULL
);

CREATE TABLE Store_Phone(
	Store_Id INT NOT NULL,
    Phone_no INT(11) NOT NULL,   
    FOREIGN KEY (Store_Id) REFERENCES Retail_Store(Store_Id),
    PRIMARY KEY (Store_Id,Phone_no)
);

CREATE TABLE Products(
	Product_Id INT PRIMARY KEY AUTO_INCREMENT,
    P_Name VARCHAR(20) NOT NULL,
    P_Price INT NOT NULL
);

CREATE TABLE Purchase(
    Customer_Id INT NOT NULL, 
    Store_Id INT NOT NULL,
    Product_Id INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (Customer_Id) REFERENCES Offline_Customer(Customer_Id),
    FOREIGN KEY (Store_Id) REFERENCES Retail_Store(Store_Id),
    FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id),
    PRIMARY KEY (Customer_Id,Store_Id,Product_Id)
);

CREATE TABLE Orders(
	Order_Id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_Id INT NOT NULL, -- order must belong to online customer   
    Order_Date DATE NOT NULL,
    Order_Cost INT NOT NULL,
    Delivery_Status BOOL NOT NULL, -- True if delivered false otherwise 
    Payment_Status BOOL NOT NULL, -- True if delivered false otherwise 
    FOREIGN KEY(Customer_Id) REFERENCES Online_Customer(Customer_Id)
);
    
CREATE TABLE Order_Products(
	Order_Id INT NOT NULL,
    Product_Id INT NOT NULL,
    Quantity INT NOT NULL, -- an order must contain some product 
    PRIMARY KEY (Order_Id,Product_Id),
    FOREIGN KEY (Order_Id) REFERENCES Orders(Order_Id),
    FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id)
);

CREATE TABLE Raw_Material(
	Material_Id INT PRIMARY KEY AUTO_INCREMENT,
    Mat_Name VARCHAR(25) NOT NULL,
    Mat_Price INT NOT NULL
);

CREATE TABLE Vendor(
	Vendor_Id INT PRIMARY KEY AUTO_INCREMENT,
    V_Name VARCHAR(35) NOT NULL,
    V_Location VARCHAR(20) NOT NULL
);

CREATE TABLE Manufacturing_Outlet(
	Outlet_Id INT PRIMARY KEY AUTO_INCREMENT,
    O_Name VARCHAR(35) NOT NULL,
    O_Location VARCHAR(20) NOT NULL
);

CREATE TABLE Supply(
    Vendor_Id INT NOT NULL,
    Outlet_Id INT NOT NULL,
    Material_Id INT NOT NULL,
    Quantity INT NOT NULL,
	FOREIGN KEY (Vendor_Id) REFERENCES Vendor(Vendor_Id),
    FOREIGN KEY (Outlet_Id) REFERENCES Manufacturing_Outlet(Outlet_Id),
    FOREIGN KEY (Material_Id) REFERENCES Raw_Material(Material_Id),
    PRIMARY KEY (Vendor_Id,Outlet_Id,Material_Id)
);

CREATE TABLE Shipment(
    Outlet_Id INT NOT NULL,
    Store_Id INT NOT NULL,
    Product_Id INT NOT NULL,
    Shipped_Date DATE NOT NULL,
	FOREIGN KEY (Outlet_Id) REFERENCES Manufacturing_Outlet(Outlet_Id),
    FOREIGN KEY (Store_Id) REFERENCES Retail_Store(Store_Id),
    FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id),
    PRIMARY KEY (Outlet_Id,Store_Id,Product_Id)
);

CREATE TABLE Employee(
	Emp_Id INT PRIMARY KEY AUTO_INCREMENT,
    Emp_FName VARCHAR(10) NOT NULL,
    Emp_MName VARCHAR(10),
    Emp_LName VARCHAR(10) NOT NULL,
    Emp_Salary INT,
    Emp_Gender CHAR NOT NULL,
    Emp_DOB DATE NOT NULL,
    Emp_Type VARCHAR(20) NOT NULL,
    Work_location Varchar(30) NOT NULL,
    Store_Id INT,
    Outlet_Id INT,
    FOREIGN KEY (Store_Id) REFERENCES Retail_Store(Store_Id),
    FOREIGN KEY (Outlet_Id) REFERENCES Manufacturing_Outlet(Outlet_Id)
);

CREATE TABLE Contract(
	Contract_Id INT PRIMARY KEY AUTO_INCREMENT,
    Start_Date DATE NOT NULL,
    End_Date DATE NOT NULL,
    Worker_Id INT NOT NULL,
    FOREIGN KEY (Worker_Id) REFERENCES Employee (Emp_Id)
);
