create database address_book;
use address_book;


create table AddressBook(
id int identity (1,1) primary key,
FirstName varchar(20),
LastName varchar(20),
Address varchar(50),
City varchar(20),
State varchar(20),
ZipCode int,
Phone bigint,
Email varchar(50),
);


select * from AddressBook   --Display Data

