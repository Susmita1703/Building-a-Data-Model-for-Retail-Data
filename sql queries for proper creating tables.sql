create database datamodeling;
use datamodeling;

SET FOREIGN_KEY_CHECKS = 0;


-- Create Categories Table
CREATE TABLE Categories (
CategoryID INT PRIMARY KEY AUTO_INCREMENT,
CategoryName VARCHAR(50));

select * from categories;

drop table Categories;
drop table Brands;
drop table Products;
drop table Sales;


-- Create Brands Table
CREATE TABLE Brands (
BrandID INT PRIMARY KEY AUTO_INCREMENT,
BrandName VARCHAR(50));

select * from brands;

-- Create Products Table
CREATE TABLE Products (
ProductID INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(255),
CategoryID INT,
BrandID INT,
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
FOREIGN KEY (BrandID) REFERENCES Brands(BrandID));
select * from products;

-- Create Sales Fact Table
CREATE TABLE Sales (
SaleID INT PRIMARY KEY AUTO_INCREMENT,
ProductID INT,
CategoryID INT,
BrandID INT,
Price DECIMAL(10, 2),
OriginalPrice DECIMAL(10, 2),
DiscountRate VARCHAR(20),
Ratings DECIMAL(3, 2),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
FOREIGN KEY (BrandID) REFERENCES Brands(BrandID));
select * from sales;



