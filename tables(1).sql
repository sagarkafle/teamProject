DROP TABLE admin CASCADE CONSTRAINTS;
CREATE TABLE admin(
    id      int PRIMARY KEY,
    username VARCHAR2(255) NOT NULL,
    password  VARCHAR2(255) NOT NULL,
    email    VARCHAR2(255) NOT NULL
    );

DROP TABLE blog CASCADE CONSTRAINTS;
CREATE TABLE blog(
    id int PRIMARY KEY,
    traderid VARCHAR2(255) NOT NULL,
     title VARCHAR2(255) NOT NULL,
    image VARCHAR2(255) NOT NULL,
    description VARCHAR2(1000) NOT NULL
    
    );
DROP TABLE sales CASCADE CONSTRAINTS;
CREATE TABLE sales(
    id      int PRIMARY KEY,
    customerid VARCHAR2(255) NOT NULL,
    productid  VARCHAR2(255) NOT NULL,
 orderid   VARCHAR2(255) NOT NULL,
 datebought    VARCHAR2(255) NOT NULL,
 traderid   VARCHAR2(255) NOT NULL,
 quantity   VARCHAR2(255) NOT NULL,
 price   VARCHAR2(255) NOT NULL,
totalprice   VARCHAR2(255) NOT NULL


    );

DROP TABLE category CASCADE CONSTRAINTS;
CREATE TABLE category (
    id      int PRIMARY KEY,
    categoryName  VARCHAR(255) NOT NULL,
    gender  VARCHAR2(255) 
  
    );

DROP TABLE customer CASCADE CONSTRAINTS;
CREATE TABLE customer(
    id      int PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR2(255) NOT NULL,
    phone VARCHAR2(255) NOT NULL,
     address VARCHAR(255) NOT NULL,
    username VARCHAR2(255) NOT NULL,
    password VARCHAR2(255) NOT NULL,
    quantity VARCHAR2(255),
    email VARCHAR2(255)
  );

DROP TABLE MESSAGECART CASCADE CONSTRAINTS;
CREATE TABLE messagecart (
  ID         int PRIMARY KEY,
  CUSTOMERID VARCHAR2(255),
  PRODUCTID  VARCHAR2(255),
  MESSAGE    VARCHAR2(255)
      );

DROP TABLE MESSAGESHOP CASCADE CONSTRAINTS;
CREATE TABLE messageshop (
  ID         int PRIMARY KEY,
  TRADERID VARCHAR2(255),
  MESSAGE    VARCHAR2(255)
      );

DROP TABLE orders CASCADE CONSTRAINTS;
CREATE TABLE orders(
    id      int PRIMARY KEY,
    customerId VARCHAR(255) NOT NULL,
    productId VARCHAR2(255) NOT NULL,
    payDate DATE  NOT NULL,
     status VARCHAR(255) NOT NULL,
    price VARCHAR2(255) NOT NULL,
    sizes VARCHAR2(255) NOT NULL,
    quantity VARCHAR2(255) NOT NULL,
     totalPrice VARCHAR2(255) NOT NULL,
     TRADERID   VARCHAR2(255),
  TIMESLOT   VARCHAR2(128 ),
  DAYSLOT    VARCHAR2(128)
    );

DROP TABLE product CASCADE CONSTRAINTS;
CREATE TABLE product (
    id      int PRIMARY KEY,
    productName VARCHAR(255) NOT NULL,
    productDescription VARCHAR2(255) NOT NULL,
    image VARCHAR2(255) NOT NULL,
     instock VARCHAR(255) NOT NULL,
    price VARCHAR2(255) NOT NULL,
    brandid VARCHAR2(255) ,
    categoryid VARCHAR2(255) NOT NULL,
     featured VARCHAR2(255) NOT NULL,
    sizeAvailable VARCHAR2(255) N,
    tradersId VARCHAR2(255) NOT NULL,
    shopId VARCHAR2(255) NOT NULL
    );

DROP TABLE shop CASCADE CONSTRAINTS;
CREATE TABLE shop (
    id      int PRIMARY KEY,
    traderId VARCHAR(255) NOT NULL,
    shopName VARCHAR2(255) NOT NULL,
    location VARCHAR2(255) NOT NULL,
     permission VARCHAR(255) NOT NULL
   
    );
DROP TABLE traders CASCADE CONSTRAINTS;
CREATE TABLE traders (
    id      int PRIMARY KEY,
    traderName VARCHAR(255) NOT NULL,
    address VARCHAR2(255) NOT NULL,
    phone VARCHAR2(255) NOT NULL,
     email VARCHAR(255) NOT NULL,
     username VARCHAR(255) NOT NULL,
    password  VARCHAR2(255) NOT NULL
  
    );






