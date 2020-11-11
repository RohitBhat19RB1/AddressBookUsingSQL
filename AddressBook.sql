CREATE DATABASE AddressBookService;
USE AddressBookService;
CREATE TABLE AddressBook(
    FirstName varchar(100) NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
	Address varchar(255) NOT NULL,
    City varchar(255) NOT NULL,
    State varchar(255)NOT NUll,
    Zip int(6) NULL NUll,
    MobileNumber bigint(10)NOT NULL,
    EmailId Varchar(320) NOT NULL
);