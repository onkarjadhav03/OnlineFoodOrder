create database FoddieDB
use FoddieDB

create table Users(
UserId int primary key identity(1,1) NOT NULL,
Name varchar(50) Null,
UserName varchar(50) Null UNIQUE,
Mobile varchar(50) Null,
Email varchar(50) Null UNIQUE,
Address varchar(max) Null,
PostCode varchar(50) Null,
Password varchar(50) Null,
ImageUrl varchar(max) Null,
CreatedDate datetime Null
)

create table Contact(
ContactId int Primary key IDENTITY(1,1)not null,
Name varchar(50) null,
Email varchar(50) null,
Subject varchar(200) null,
Message varchar(max) null,
CreatedDate datetime null
)

create table Categories(
CategoryId int primary key IDENTITY(1,1) not null,
Name varchar(50) null,
ImageUrl varchar(max) null,
IsActive bit null,
CreatedDate datetime null
)

create table Products(
ProductId int primary key IDENTITY(1,1) not null,
name varchar(50) null,
Description varchar(max) null,
Price decimal (18,2) null,
Quantity int null,
ImageUrl varchar(max) null,
CategoryId int null, --FK
IsActive bit null,
CreatedDate datetime null
)

create table Carts(
CartId int Primary key IDENTITY(1,1)not null,
ProductId int null, --FK
Quantity int null,
UserId int null --FK
)

create table Orders(
OrderDetailsId int primary key IDENTITY(1,1) Not Null,
OrderNo varchar(max) null,
ProductId int null, --FK
Quantity int null,
UserId int null, --FK
Status varchar(50) null,
PaymentId int null, --FK
OrderDate datetime null
)

create table Payment(
PaymentId int Primary key IDENTITY(1,1) not null,
Name varchar(50) null,
CardNo varchar(50) null,
ExpiryDate varchar(50) null,
CvvNo int null,
Address varchar(max) null,
PaymentMode varchar(50) null
)