use FISTESTDB;

create table tbl2(Tid int identity,
Tname varchar(30),Grade char(1),Percent_age int);

INSERT INTO  tbl1 (Tname,Grade,Percent_age)
VALUES
  ('Fritz Conway','C',70),
  ('Hillary Buckner','C',46),
  ('Danielle Collier','E',89),
  ('Chloe Barron','C',82),
  ('Mufutau Simpson','A',65);

  INSERT INTO tbl2 (Tname,Grade,Percent_age)
VALUES
('Danielle Collier','E',89),
  ('Chloe Barron','C',82),
  ('Mufutau Simpson','A',65),
  ('Jeanette Lara','E',47),
  ('Ima Kidd','D',75),
  ('MacKenzie Franco','D',83),

  ('Zephr Grant','C',40),
  ('Shannon Castillo','E',91);


select * from tbl1;
select * from tbl2;
 
select Tname,grade,percent_age from tbl1
union 
select Tname,grade,percent_age from tbl2
 
--intersect
create table sample1(Id int identity, Ename varchar(20),Age int, city varchar(20))
 
create table sample2(Bonusid int, Id int, bonusamount float)
 
insert into sample1 values('John',25,'Seatle'),('Ben',26,'NY'),('Robert',25,'Chicago')
 
insert into sample2 values(200,1,25000),(202,3,20000)
 
select * from sample1
select * from sample2
 
select sample1.Id,ename,sample2.bonusamount from sample1  join sample2 on sample1.Id=sample2.Id
intersect
select sample1.Id,ename,sample2.bonusamount from sample1  join sample2 on sample1.Id=sample2.Id
 
select sample1.Id,ename,sample2.bonusamount from sample1 left join sample2 on sample1.Id=sample2.Id
except
select sample1.Id,ename,sample2.bonusamount from sample1 right join sample2 on sample1.Id=sample2.Id


create table marks(name varchar(20), sub varchar(20), mark numeric(20));
INSERT INTO [marks] (name,sub,mark)
VALUES
  ('Jeanette Lara','maths',47),
  ('Ima Kidd','maths',75),
  ('MacKenzie Franco','english',83),
  ('Zephr Grant','science',40),
  ('Shannon Castillo','english',91);
  
select name, sub, mark, dense_rank() over (partition by sub order by mark desc  ) Ranking from marks;


create table tblCustomer(custname varchar(20), product varchar(20),  price numeric(20))
select * from tblCustomer;
delete from tblCustomer where product = 'english';
INSERT INTO tblCustomer (custname, product, price)
VALUES
  ('Jeanette','desktop',34000),
  ('MacKenzie','desktop',34000),
  ('Jakeem Albert','keyboard',50000);
  INSERT INTO tblCustomer (custname, product, price)
VALUES
  ('Jakeem Albert','desktop',20689),
  ('Maya Santiago','laptop',21380),
  ('Tatiana Hall','desktop',28706),
  ('Cara Copeland','desktop',27731),
  ('Caldwell Koch','desktop',28966);

  select custname, laptop, desktop, keyboard  from 
  (select custname, product, price from tblCustomer ) as custPvt
  pivot 
  ( sum(price) for product in(laptop, desktop, keyboard) ) as pvtCustTable ;
