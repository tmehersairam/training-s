insert into tblDepartment values('Marketing', 'Pune');
insert into tblDepartment(DeptName) values('ResourceManagement');



insert into tblEmployee values('mark','Male', 25000, 1),('corry','Male', 25000, 2),('shandy','Male', 25000, 1),('tommy','Male', 25000, 1);
insert into tblEmployee values('kumar','M', 25000, 1,'1234567109');
--- altering table

alter table tblEmployee add PhoneNo varchar(11);
update tblEmployee set PhoneNo = CONCAT('1234567',EmpId);

--- unique
alter table tblEmployee add constraint uq_tblemployee_phoneno_12345 unique(PhoneNo); 

-- check constraint
alter table tblEmployee
add constraint ck_tblemployee_gender_123456 check(LOWER(Gender) in ('male','female','other'));

-- no check constraint
alter table tblEmployee
nocheck constraint ck_tblemployee_gender_123456;

-- no check constraint
alter table tblEmployee
check constraint ck_tblemployee_gender_123456

-- default constraint
alter table tblDepartment
add constraint dflt_tbldepartment_deptoc_123456 default 'Hyderabad' for DeptLocation;

 -- for dummy table
insert into dummytable values('newdata','Delhi'),('gfghhj','dfgh'),('aaa','bbb');

truncate table dummytable;  -- deletes all records but retains the table structure with all constraints as it is

drop table dummytable;  -- drops the object from the database schema itself

delete from dummytable; -- deletes all the rows

--setting the implicit transactions off
set implicit_transactions off

begin transaction
 select * from dummytable;
 delete from dummytable;
 select * from dummytable;
rollback

 select * from dummytable