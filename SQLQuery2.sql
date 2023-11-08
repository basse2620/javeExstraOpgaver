Create database AppIIAppWebApiDb
go
use AppIIAppWebApiDb
go

Create Table ProgramingLanguage
(
	programId int identity Primary Key,
	[name] nvarchar(25)
);

Create Table HairCorlor
(
	hairId int identity Primary Key,
	[name] nvarchar(50)
);

Create Table Person
(
	personId int identity Primary Key,
	[name] nvarchar(30),
	phone int,
	[address] nvarchar(100),
	note nvarchar(255),
	favorite bit default 0,
	hairId int Foreign Key References HairCorlor(hairId),
	programingId int Foreign Key References ProgramingLanguage(programId)
);

Insert into HairCorlor values('Red');
Insert into HairCorlor values('Brown');
Insert into HairCorlor values('Black');
Insert into HairCorlor values('Blonde');
Insert into HairCorlor values('White');
Insert into HairCorlor values('Grey');
Insert into HairCorlor values('Golden');

Insert Into ProgramingLanguage values('Java');
Insert Into ProgramingLanguage values('C#');
Insert Into ProgramingLanguage values('Python');
Insert Into ProgramingLanguage values('JScript');
Insert Into ProgramingLanguage values('Flutter');

Insert Into Person values ('Lars Larsen', 12345678, 'Ja', 'jajaj', 1, 1, 1);
Insert Into Person values ('Jan Larsen', 12345678, 'Ja', 'jajaj', 1, 1, 1);
Insert Into Person values ('Jeppe Larsen', 12345678, 'Ja', 'jajaj', 1, 1, 1);