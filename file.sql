CREATE TABLE Product(
    Product_id VARCHAR2(20) ,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK(NUMBER > 0),
    PRIMARY KEY ( Product_id)
);

CREATE TABLE Customer(
    Customer_id VARCHAR2(20) ,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER
    PRIMARY KEY ( Customer_id)
);

CREATE TABLE Orders(
    Quantity NUMBER,
    Total_amount NUMBER,
    FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY(Product_id) REFERENCES Product(Product_id)
);

ALTER TABLE
    Product
ADD
    Category VARCHAR2(20);

ALTER TABLE
    Orders
ADD
    OrderDate DATE DEFAULT SYSDATE;