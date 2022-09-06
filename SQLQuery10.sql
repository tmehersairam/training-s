select * from tblEmployee;

INSERT INTO [tblEmployee] (EmpName,Gender,Salary,Deptid,phoneno)
VALUES
  ('Blossom Reed','Male',222606,2,13115024760),
  ('Anthony Strong','Male',275996,2,81395085982),
  ('Alana Wolfe','Male',138935,1,48833852903),
  ('Kimberly Dickson','Male',339559,2,82867873212),
  ('Kirk Hawkins','Female',238250,1,80065082650);

  INSERT INTO [tblEmployee] (EmpName,Gender,Salary,Deptid,phoneno)
VALUES
  ('Ronan Merrill','Female',375927,1,14373893422),
  ('Xaviera Munoz','Male',328750,1,85535768989),
  ('Rhona Hughes','Female',447533,2,14862588299),
  ('Branden Landry','Male',376752,2,46260201629),
  ('Curran Sellers','Male',461024,1,44907362930);

select coalesce(deptid, 100), coalesce(gender, 'All Gender'), count(salary) from tblEmployee
group by DeptId, Gender order by DeptId; 
select coalesce(deptid, 100), coalesce(gender, 'All Gender'), sum(salary) from tblEmployee 
group by cube(DeptId, Gender) order by DeptId desc,gender desc; 


select coalesce(d.deptname, 'Department total') Departments, coalesce(gender, 'All Gender total') Gender, sum(salary) Total from tblDepartment d join tblEmployee e 
on d.DeptId = e.DeptId
group by  d.DeptName, gender order by d.DeptName desc, gender desc;

select coalesce(d.deptname, 'Department total') Departments, coalesce(gender, 'All Gender total') Gender, sum(salary) Total from tblDepartment d join tblEmployee e 
on d.DeptId = e.DeptId
group by cube( d.DeptName, gender) order by d.DeptName desc, gender desc;