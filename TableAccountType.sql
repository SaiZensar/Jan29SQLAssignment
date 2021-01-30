

create table tblaccounttype
(
TypeCode int not null primary key,
TypeDesc varchar(20)
)

insert into tblAccountType values (1, 'Checking'); 

insert into tblAccountType values (2, 'Saving'); 

insert into tblAccountType values (3, 'Money Market'); 

insert into tblAccountType values (4, 'Super Checking');

select * from tblaccounttype

