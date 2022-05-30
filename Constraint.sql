Create Database P129Constraint

Use P129Constraint

Truncate Table Students

Drop Table Students

Create Table Students
(
	Id int primary key identity,
	Name nvarchar(50) Not Null,
	SurName nvarchar(50) Constraint UNQ_Students_SurName Unique Constraint NN_Students_SurName Not Null,
	Age Tinyint constraint CK_Students_Age check(Age > 15) Constraint UNQ_Students_Age Unique(Age)
)

Alter Table Students
Add Constraint UNQ_Students_Age Unique(Age)

Alter Table Students
Drop Constraint UNQ_Students_SurName

Create Table Groups
(
	Id int Constraint PK_Groups_Id primary key identity,
	Name nvarchar(25) Not Null  Constraint CK_Groups_Name Check(Len(Name)>=4) Constraint UNQ_Groups_Name Unique
)

Alter Table Students
Add GroupId int 


Alter Table Students
Add Constraint FK_Students_GroupId Foreign Key(GroupId) references Groups(Id)