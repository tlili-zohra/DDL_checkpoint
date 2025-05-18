#1.You are asked to create the above given relational model using SQL language and based on the different mentioned constraints.
#Customer Table
CREATE TABLE Customer (
  Customer_id VARCHAR2(20) PRIMARY KEY,
  Customer_Name VARCHAR2(20) NOT NULL,
  Customer_Tel NUMBER 
);
#Product Table 
CREATE TABLE Product (
  Product_id VARCHAR2(20) PRIMARY KEY,
  Product_Name VARCHAR2(20) NOT NULL,
  Price NUMBER(6,2) CHECK (Price >= 0)
);
#Orders


CREATE TABLE Orders (
  Order_id VARCHAR2(20) PRIMARY KEY,
  Customer_id VARCHAR2(20),
  Product_id VARCHAR2(20),
  Quantity NUMBER,
  Total_amount NUMBER,
  CONSTRAINT fk_Orders_Product FOREIGN KEY (Product_id) REFERENCES PRODUCT(Product_id),
  CONSTRAINT fk_Orders_Customer FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id)
);

#2.Add a column Category (VARCHAR2(20)) to the PRODUCT table. 
ALTER TABLE PRODUCT ADD Category VARCHAR2(20);

#2.Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;

