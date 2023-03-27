--select * from Employees

--select * from Customers


--select * from Employees
--union
--select * from Customers

--select * from Employees
--union all
--select * from Customers

use Company

--select * from Employees
--except
--select * from Customers

--select * from Employees
--intersect 
--select * from Customers


select * from Employees order by Id asc

select [Name], [Surname], [Age] from Employees
where Age > 22 
order by Age desc


--select GETDATE() as 'Current date'


select * from Customers

select Count(*) 'Age Count', Age from Customers
where age > 20
group by Age
having Count(*) > 0
order by Age desc

select Count(*) 'Age Count', Age from Customers
where age > 20
group by Age
having Count(*) > 0
order by Count(*) desc


select * from Customers

--select Sum(Age) from Customers

--select Avg(Age) from Customers

--begin 
--  declare @age int = (select Sum(Age) from Customers)
--  declare @avgAge int = (select Avg(Age) from Customers)

--   if @age > @avgAge
--     print 'Yes'
--   else 
--     print 'No'
--end

begin 
  declare @avgAge int = (select Avg(Age) from Customers)

   if @avgAge > 15 
     select [Name], [Surname] from Customers
   else 
     print 'No'
end


--DECLARE @Counter INT
--SET	@Counter = 1
--WHILE ( @Counter <= 10)
--BEGIN
--     PRINT 'Somebody stops me'
--	 SET @Counter = @Counter + 1

--END


CREATE VIEW GetCustomersByAge AS
SELECT * FROM Customers where Age > 25

select * from GetCustomersByAge