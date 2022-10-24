Create Table Teacher
(
ID int identity(1,1) constraint Pk_StudentId primary key,
Name  nvarchar(50),
Address  nvarchar(50),
Email  nvarchar(100) not null unique
)
CREATE Procedure USP_Teacher
(
@Id int
)
As
Begin

 if(@id is not null or @id <> '')
  Select * from Teacher emp where emp.id = @Id
  else
  Select * from Teacher
END

 

 Use Teacher 
 Go
Create Procedure USP_InsertTeacher
(
@Name nvarchar(50) = null,
@Address nvarchar(50) = null,
@email nvarchar = null

)
As
Begin
   --If Exists (Select top 1 * from Employee where id = @Id)
   --Begin
     Insert into Teacher(Name,Address,Email)
	 Values(@Name,@Address,@email)
   --End
End
Exec USP_InsertTeacher'Sanjay','Raichur','sanju@gmail.com'
select *from Teacher


Create Procedure USP_GetTeacher
As
Begin
   Select ID,Name,Address,Email from Teacher
End


