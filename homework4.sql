/*Robert Payne
2/05/2013
ITCS 3160
Homework 4
*/

--Part 1
Create database LemonadeStand
go
Use LemonadeStand
go
Create table EmployeeSales (
	ID int not null,
	FirstName varchar(20),
	LastName varchar(20),
	[Year] int not null,
	[1QSales] decimal(5,2),
	[2QSales] decimal(5,2),
	[3QSales] decimal(5,2),
	[4QSales] decimal(5,2)

	constraint PK_IDYear Primary Key Clustered(ID, [Year])
)
--Part 2
Insert into EmployeeSales
Values (1, 'Christina', 'Yonkers', 2011, 268.39, 310.43, 410.11, 289.92)
Insert into EmployeeSales
Values (1, 'Christina', 'Yonkers', 2012, 292.03, 305.25, 499.84, 416.22)
Insert into EmployeeSales
Values (2, 'Bill', 'Chisholm', 2012, 199.44, 215.55, 312.50, 278.88)
Insert into EmployeeSales
Values (3, 'Belinda', 'Johnson', 2011, 215.25, 188.14, 266.34, 244.20)
Insert into EmployeeSales
Values (4, 'Greg', 'Hathaway', 2010, 188.15, 205.11, 383.75, 301.01)
Insert into EmployeeSales
Values (4, 'Greg', 'Hathaway', 2011, 245.96, 360.33, 588.02, 489.00)
Insert into EmployeeSales
Values (4, 'Greg', 'Hathaway', 2012, 307.68, 362.66, 601.23, 501.17)

--Part 3
Select (LastName + ', ' + FirstName) as [Full Name], [Year], [1QSales] as [Q1 Sales], 
	[2QSales] as [Q2 Sales], [3QSales] as [Q3 Sales], [4QSales] as [Q4 Sales]
From EmployeeSales

--Part 4
Select (LastName + ', ' + FirstName) as [Full Name], [Year], [1QSales] as [Q1 Sales], 
	[2QSales] as [Q2 Sales], [3QSales] as [Q3 Sales], [4QSales] as [Q4 Sales],
	([1QSales] + [2QSales] + [3QSales] + [4QSales]) as [Yearly Sales]
From EmployeeSales
