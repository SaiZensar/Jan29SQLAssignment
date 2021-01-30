
--Creating TblCustomer Table

create table TblCustomer
(
CustomerID varchar(10) not null primary key,
CustomerName varchar(20),
DOB Datetime,
City varchar(20)
)

--Inserting Values into TblCustomer Table

insert into tblCustomer values ('123456', 'David Letterman', '04-Apr-1949', 'Hartford'); 

insert into tblCustomer values ('123457', 'Barry Sanders', '12-Dec-1967','Detroit'); 

insert into tblCustomer values ('123458', 'Jean-Luc Picard', '9-Sep-1940', 'San Francisco'); 

insert into tblCustomer values ('123459', 'Jerry Seinfeld', '23-Nov-1965','New York City'); 

insert into tblCustomer values ('123460', 'Fox Mulder', '05-Nov-1962', 'Langley'); 

insert into tblCustomer values ('123461', 'Bruce Springsteen', '29-Dec-1960','Camden'); 

insert into tblCustomer values ('123462', 'Barry Sanders', '05-Aug-1974','Martha''s Vineyard'); 

insert into tblCustomer values ('123463', 'Benjamin Sisko', '23-Nov-1955','San Francisco'); 

insert into tblCustomer values ('123464', 'Barry Sanders', '19-Mar-1966','Langley'); 

insert into tblCustomer values ('123465', 'Martha Vineyard', '19-Mar-1963','Martha''s Vineyard'); 

select * from TblCustomer

--drop table TblCustomer