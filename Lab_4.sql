
--Part � A
--1. Write a function to print "hello world".
Create or Alter Function F_Hello()
Returns Varchar(50)
as
Begin
	return 'Hello World';
end;

select dbo.F_Hello()

--2. Write a function which returns addition of two numbers.
Create or Alter Function F_Sum( @n2 int , @n3 int)
Returns  int 
as
Begin
	
	return  @n2 +  @n3 ;
end;

select dbo.F_sum(10,20)

--3. Write a function to check whether the given number is ODD or EVEN.
Create or Alter Function F_OE( @n2 int)
Returns  Varchar(50) 
as
Begin
declare @ans varchar(50)
	if @n2%2=0
	set @ans= 'even'
	else
	set @ans= 'odd'

return @ans
	
end;

select dbo.F_OE(10)

--4. Write a function which returns a table with details of a person whose first name starts with B.
Create or Alter Function Fn_Startwith_B()
Returns  table 
as
return (select *  from Person where FirstName like 'B%')

select * from  dbo.Fn_Startwith_B()

--5. Write a function which returns a table with unique first names from the person table.
Create or Alter Function Fn_uniqueName()
Returns  table 
as
return (select Distinct FirstName  from Person )

select * from  dbo.Fn_uniqueName()

--6. Write a function to print number from 1 to N. (Using while loop)
Create or Alter Function F_Print_N( @n2 int)
Returns  Varchar(50) 
as
Begin
	declare @count int = 2 , @ans Varchar(MAX) = '1'
    
	while @count<=@n2
	Begin
		set @ans = @ans +' , '+ cast(@count as Varchar(50) )
		set @count = @count + 1
	End
return @ans
End;

select dbo.F_Print_N(10)

--7. Write a function to find the factorial of a given integer.
Create or Alter Function F_factorial( @n2 int)
Returns  int 
as
Begin
declare @count int = 1 , @ans int = 1
    
	while @count<=@n2
	Begin
		set @ans = @ans * @count
		set @count = @count + 1
	End
return @ans
End;


select dbo.F_factorial(10)

--Part � B
--8. Write a function to compare two integers and return the comparison result. (Using Case statement)
Create or Alter Function F_compare( @n1 int , @n2 int)
Returns  varchar(50) 
as
Begin
return  Case
			when @n1 > @n2
			then '1st no. is Greater then 2nd'
			when @n1 < @n2
			then '1st no. is Smaller then 2nd'
			else '1st no. is Equal to 2nd'
		end

End;


select dbo.F_compare(10,20)

--9. Write a function to print the sum of even numbers between 1 to 20.
Create or Alter Function F_Sum_Even()
Returns  int 
as
Begin
declare @ans int = 0 , @count int = 0
	while @count <= 20
	begin
		if @count%2=0
		set @ans= @ans + @count
		set @count = @count +1
	end
return @ans
end;

select dbo.F_Sum_Even()

--10. Write a function that checks if a given string is a palindrome
Create or Alter Function F_palindrome( @s1 Varchar(50) )
Returns  Varchar(50) 
as
Begin
declare @ans  Varchar(50) = reverse(@s1)
	if @ans = @s1
	return 'palindrome'
Return 'Not palindrome'
end;

select dbo.F_palindrome('NPN')

--Part � C
--11. Write a function to check whether a given number is prime or not.
--12. Write a function which accepts two parameters start date & end date, and returns a difference in days.
--13. Write a function which accepts two parameters year & month in integer and returns total days each
--year.
--14. Write a function which accepts departmentID as a parameter & returns a detail of the persons.
--15. Write a function that returns a table with details of all persons who joined after 1-1-1991.



