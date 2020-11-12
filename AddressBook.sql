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

INSERT INTO AddressBook(FirstName,LastName,Address,City,State,Zip,MobileNumber,EmailId)
VALUES ('Mohit','Bhat','Nerul','NaviMumbai','Maharashtra',182434,4433773333,'mohit@gmail.com'),
('Soney','Kumar','AronodayaColony','Hyderabad','Telangana',500081,9295702642,'sony@gmail.com'),
('Prakash','Purkana','Krths','Bantumilli','AndhraPradesh',123456,4567890123,'prakash@gmail.com'),
('Simran','Chadha','Ponnuru','Guntur','AndhraPradesh',678901,9876543210,'simran@gmail.com');

UPDATE AddressBook
SET State='Kerala'
WHERE FirstName='Mohit';

select * from AddressBook;

delete from AddressBook
Where MobileNumber=4433773333;

select * from AddressBook;

select * from AddressBook
Where State='AndhraPradesh' OR City='Bantumilli';

select COUNT(State And City) from AddressBook
Where State='AndhraPradesh' AND City='Bantumilli';

select * from AddressBook
Where City='Guntur'
Order By FirstName;

ALTER TABLE AddressBook
ADD addressBookType varchar(100) NOT NULL;
UPDATE AddressBook
SET addressBookType=CASE FirstName
WHEN 'Prakash' THEN 'Friend'
WHEN 'Simran' THEN 'Profession'
WHEN 'Soney' THEN 'Family'
ELSE addressBookType
END;
select * from AddressBook;

SELECT COUNT(addressBookType),addressBookType from AddressBook
group by addressBookType;




