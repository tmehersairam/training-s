use fistestdb;
create table tblDepartment(
	DeptId int IDENTITY primary key ,
	DeptName varchar(40) not null,
	DeptLocation varchar(255)
);

create table tblEmployee(
	EmpId int identity(100,1) primary key,
	EmpName varchar(40),
	Gender varchar(8),
	Salary float(20),
	DeptId int references tblDepartment(DeptId)
);

--- creating a dummy table
create table dummytable
(
	dummyid int identity(1,1),
	dummyname varchar(20),
	dummycity varchar(20),

);