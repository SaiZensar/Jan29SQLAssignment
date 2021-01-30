
select * from Employee

select * from PastEmployeeData

---------------------------------------------------------------------

Alter TRIGGER Trg_After_Delete on Employee
for Delete
as
Begin
declare
@empid int,
@ename varchar(20),
@esal float,
@dol datetime

select @empid = EmpId from deleted
select @ename = EmpName from deleted
select @esal = Salary from deleted
select @dol = GETDATE() from deleted

insert into PastEmployeeData values(@empid, @ename, @esal, @dol)

print 'Delete Trigger Fired Succesfully...!!!'

End

---------------------------------------------------------------------

--Command for Deleting an Employee

delete from Employee where EmpId = 12

--delete from PastEmployeeData where EmpId is null
