--1
select distinct i.Ins_Name
from Instructor i

--2
select isnull(s.St_Id,'no data') as 'Student ID',isnull(s.St_Fname+' '+s.St_Lname,'no data') as 'full name', isnull(d.Dept_Name,'no data') as 'Department name'
from Student s, Department d
where s.Dept_Id = d.Dept_Id

--3
select top 2 i.Ins_Name 
from Instructor i
order by i.salary desc

--4
select AVG(salary) avg_salary
from Instructor

--5
select x.st_fname,y.*
from Student x,Student y
where y.St_id=x.St_super
