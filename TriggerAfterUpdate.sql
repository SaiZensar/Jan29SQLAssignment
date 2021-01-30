select * from Employee

select * from PastEmployeeData

---------------------------------------------------------------------

Alter TRIGGER After_Update_Employee
on Employee
for Update
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

Print 'Update Trigger Fired Succesfully...!!!'

End

---------------------------------------------------------------------

--Update Command 

update Employee set DeptName = 'Machine Learning'  where EmpName = 'Surya'


