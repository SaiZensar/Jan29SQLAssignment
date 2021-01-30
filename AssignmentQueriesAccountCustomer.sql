-- 1. Print customer id and balance of customers who have at least $5000 in any of their accounts.

select c.CustomerId, acc.Balance
from TblCustomer c join TblAccount acc
on c.CustomerID=acc.CustomerID
where Balance <= 5000.0

-- 2. Print names of customers whose names begin with a ‘B’. 
			
			select CustomerName
			from TblCustomer
			where CustomerName like 'B%'

--3.	Print all the cities where the customers of this bank live. 
			Select City
			from TblCustomer
			

--4.	Use IN [and NOT IN] clauses to list customers who live in [and don’t live in] San Francisco or Hartford. 
			
			select CustomerName,City
			from TblCustomer 
			where City Not IN('Hartford','San Francisco')



--5.	Show name and city of customers whose names contain the letter 'r' and who live in Langley. 
			
			select CustomerName ,City
			from TblCustomer 
			where CustomerName like '%r%' AND City='Langley'

--6.	How many account types does the bank provide? 
			
			select count(TypeDesc) as TotAccountType
			from TblAccountType

--7.	 Show a list of accounts and their balance for account numbers that end in '-1' 
			
			select AccountNumber,Balance
			from TblAccount 
			where AccountNumber like '%-1'

			select acc.AccountNumber, acctype.TypeDesc,acc.Balance
			from TblAccountType acctype join TblAccount acc
			on acctype.TypeCode=acc.AccountTypeCode
			where AccountNumber like '%-1'

--8.	Show a list of accounts and their balance for accounts opened on or after July 1, 1990. 
				
			select acc.AccountNumber, acctype.TypeDesc,acc.Balance,acc.DateOpened
			from TblAccountType acctype join TblAccount acc
			on acctype.TypeCode=acc.AccountTypeCode
			where acc.DateOpened >= '1-July-1990'


--9.	If all the customers decided to withdraw their money, how much cash would the bank need? 
			
			select sum(balance) as totalAmount
			from TblAccount


--10.	List account number(s) and balance in accounts held by ‘David Letterman’. 
			
			select AccountNumber,Balance
			from TblAccount acc join TblCustomer cst
			on acc.CustomerID=cst.CustomerID
			where cst.CustomerName='David Letterman'


--11.	List the name of the customer who has the largest balance (in any account). 
			
			select  tc.CustomerName,MAX(act.Balance) as HighestBalance
			from TblCustomer tc inner join TblAccount act
			on tc.CustomerID=act.CustomerID group by tc.customername 
			
--12.	List customers who have a ‘Money Market’ account. 
				select cst.CustomerName
				from TblCustomer cst inner join TblAccount acc on  cst.CustomerID=acc.CustomerID 
				join TblAccountType actype on  actype.TypeCode=acc.AccountTypeCode
				where actype.TypeDesc='Money Market'

--13.	Produce a listing that shows the city and the number of people who live in that city. 
				select City, Count(City) as NoOfPeople
				from TblCustomer
				group by City

--14.	Produce a listing showing customer name, the type of account they hold and the balance in that account.(Make use of Joins)
				select cst.CustomerName, actype.TypeDesc, acc.Balance
				from TblCustomer cst inner join TblAccount acc on  cst.CustomerID=acc.CustomerID 
				join TblAccountType actype on  actype.TypeCode=acc.AccountTypeCode


--15.	Produce a listing that shows the customer name and the number of accounts they hold.(Make use of Joins)
				select tc.CustomerName,Count(tb.AccountNumber) as NoOfAccountHold
				from TblCustomer tc join TblAccount tb
				on tc.CustomerID=tb.CustomerID
				group by CustomerName

--16.	 Produce a listing that shows an account type and the average balance in accounts of that type.(Make use of Joins)
				select atype.TypeDesc, Avg(tb.Balance) as AvgBalance
				from TblAccount tb join TblAccountType atype
				on tb.AccountTypeCode=atype.TypeCode
				group by atype.TypeDesc