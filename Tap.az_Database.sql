Create database tapaz
Use Tapaz

create table Settings(
Id int primary key identity,
Logo nvarchar(150) not null,
Location nvarchar(100),
Email varchar(100),
Phone varchar(100),
Phone2 varchar(100),
IgUrl varchar(100),
FbUrl varchar(100)
)

create table Advertisements(
Id int primary key identity,
Image nvarchar(100) not null,
Url nvarchar(100)
)

create table Announcements(
Id int primary key identity,
Price decimal(7,2) not null,
Article nvarchar(max),
CitiesId int foreign key references Cities(Id),
SubCategoriesId int foreign key references SubCategories(Id),
BrandsId int foreign key references Brands(Id),
ModelsId int foreign key references Models(Id),
ColorsId int foreign key references Colors(Id),
GasTypesId int foreign key references GasTypes(Id) 
)

create table Cities(
Id int primary key identity,
Name nvarchar(50) not null
)

create table Categories(
Id int primary key identity,
Name nvarchar(30) not null
)
create table SubCategories(
Id int primary key identity,
Name nvarchar(50) not null,
CategoriesId int foreign key references Categories(Id)
)
create table Brands(
Id int primary key identity,
Name nvarchar(50) not null,
SubCategoriesId int foreign key references SubCategories(Id)
)
create table Models(
Id int primary key identity,
Name nvarchar(50) not null,
Engine smallint not null,
Release smalldatetime not null,
Km int not null,
BrandsId int foreign key references Brands(Id)
)
create table Colors(
Id int primary key identity,
Name nvarchar(30) not null
)
create table GasTypes(
Id int primary key identity,
Name nvarchar(30) not null
)
create table Images(
Id int primary key identity,
Name nvarchar(100) not null,
AnnouncementsId int foreign key references Announcements(Id)
)