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


insert into AddressBook values('Gyanendra', 'Pratap', 'D12/25 New Gate', 'Rewa', 'M.P', 486001, 7474747474,'abc@gmail.com')  
insert into AddressBook values('Mohan', 'Singh', 'D11/25 New Gate', 'Rewa', 'M.P', 486001, 7575747474,'def@gmail.com')
insert into AddressBook values('Rohan', 'Tiwari', 'D10/26 New Gate', 'Rewa', 'M.P', 486001, 7676747474,'ghi@gmail.com')


Update AddressBook set FirstName = 'Sohan' where FirstName = 'Gyanendra' -- Update Contact with Name


Delete from AddressBook Where FirstName = 'Sohan' -- Delete Particular Data


select * from AddressBook where City='Rewa';
select * from AddressBook where State='M.P';


select count (City) as NumberOfCity from AddressBook;
select count (City) as NumberOfEmployee, City  from AddressBook  group by City;


select * from AddressBook where City = 'Rewa' order by (FirstName) ;
select * from AddressBook order by City, FirstName;


Alter table AddressBook Add Family varchar(20),Friends varchar(20), Profession varchar(50);


select count (FirstName) as NumberOfContactPerson from AddressBook;


UPDATE AddressBook set Family = 'yes' where FirstName='Sohan' ;
UPDATE AddressBook set Friends = 'yes' where FirstName='Sohan' ;


create table Contact (id int identity (1,1) primary key, CityName varchar(20))
select * from Contact

Alter table AddressBook Add CityId int foreign key references Contact(id);

insert into Contact values ('Satna')
insert into Contact values ('Jabalpur')
