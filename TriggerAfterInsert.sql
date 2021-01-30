
select * from Employee

select * from PastEmployeeData

---------------------------------------------------------------------

Alter TRIGGER Trg_After_Insert ON Employee 
After INSERT
AS
begin
declare
@empid int,
@ename varchar(20),
@esal float,
@dol datetime


select @empid = EmpId from inserted
select @ename = EmpName from inserted
select @esal = Salary from inserted
select @dol = GETDATE() from inserted

insert into PastEmployeeData values(@empid, @ename, @esal, @dol)

Print 'Insert Trigger Fired Succesfully...!!!'

End

---------------------------------------------------------------------

--Insert Command

insert into Employee values('Pooja', 52640, '.Net')

--create table PastEmployeeData(empid int, ename varchar(20), sal float, dol datetime)