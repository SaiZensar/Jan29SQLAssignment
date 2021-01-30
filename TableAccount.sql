
create table TblAccount
(
CustomerID varchar(10) foreign key references tblcustomer(CustomerID),
AccountNumber varchar(20) not null primary key,
AccountTypeCode int foreign key references tblAccounttype(TypeCode),
DateOpened Datetime default getDate() ,
Balance float
)

insert into tblAccount values ('123456', '123456-1', 1, '04-Apr-1993', 2200.33); 

insert into tblAccount values ('123456', '123456-2', 2, '04-Apr-1993', 12200.99); 

insert into tblAccount values ('123457', '123457-1', 3, '01-JAN-1998', 50000.00); 

insert into tblAccount values ('123458', '123458-1', 1, '19-FEB-1991', 9203.56); 

insert into tblAccount values ('123459', '123459-1', 1, '09-SEP-1990', 9999.99); 

insert into tblAccount values ('123459', '123459-2', 1, '12-MAR-1992', 5300.33); 

insert into tblAccount values ('123459', '123459-3', 2, '12-MAR-1992', 17900.42); 

insert into tblAccount values ('123459', '123459-4', 3, '09-SEP-1998', 500000.00); 

 

insert into tblAccount values ('123460', '123460-1', 1, '12-OCT-1997', 510.12); 

insert into tblAccount values ('123460', '123460-2', 2, '12-OCT-1997', 3412.33); 

insert into tblAccount values ('123461', '123461-1', 1, '09-MAY-1978', 1000.33); 

insert into tblAccount values ('123461', '123461-2', 2, '09-MAY-1978', 32890.33); 

insert into tblAccount values ('123461', '123461-3', 3, '13-JUN-1981', 51340.67); 

insert into tblAccount values ('123462', '123462-1', 1, '23-JUL-1981', 340.67); 

insert into tblAccount values ('123462', '123462-2', 2, '23-JUL-1981', 5340.67); 

insert into tblAccount values ('123463', '123463-1', 1, '1-MAY-1998', 513.90); 

insert into tblAccount values ('123463', '123463-2', 2, '1-MAY-1998', 1538.90); 

insert into tblAccount values ('123464', '123464-1', 1, '19-AUG-1994', 1533.47); 

insert into tblAccount values ('123464', '123464-2', 2, '19-AUG-1994', 8456.47); 

select * from TblAccount