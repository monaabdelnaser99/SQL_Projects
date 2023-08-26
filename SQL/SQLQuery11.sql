
/*1*/

select Fname +' '+Lname as[full name] , E.Sex as Gender
from Employee E inner join Dependent D
on E.SSN=D.ESSN
and E.Sex='F'AND D.Sex='F'
 union
 select Fname +' '+Lname as[full name] , E.Sex as Gender
from Employee E inner join Dependent D
on E.SSN=D.ESSN
and E.Sex='M'AND D.Sex='M'


/*2*/
SELECT P.Pname AS [project name] , SUM(Hours) as total_hour
 from Project as P FULL OUTER JOIN   Works_for as W
 on(P.Pnumber=W.Pno)
 group by P.Pname

 /*3*/
 select D.Dname ,max(Salary) as MAXUMUM,min(Salary) AS MINIMUM,avg(Salary) AS AVERAGE
 from Departments AS D FULL OUTER JOIN Employee as E
 on Dnum=Dno
 group by D.Dname

 /*4*/
 select distinct Fname +' '+Lname as [Full name]
 from Employee inner join Departments
 on SSN=MGRSSN 
 left join Dependent
 on SSN=ESSN
 where ESSN is null
 
 /*5*/
 select D.Dnum,D.Dname,COUNT(SSN) AS [count of employee]
 from Departments AS D ,Employee E
 where Dnum=Dno
 group by Dnum,Dname
 having avg(Salary)<(select AVG(Salary) from Employee)

 /*6*/
 select Fname +' '+Lname as [full name] ,Pname
 from Employee inner join Departments D
 on Dnum=Dno
 inner join Project P
 on P.Dnum=D.Dnum
 order by D.Dnum,D.Dname,Lname,Fname
 /*7*/
 select MAX(Salary)
 from Employee
 union all
 select MAX(Salary)
 from Employee
 where Salary not in(select MAX(salary)from Employee)
 /*8*/
 select Fname +' '+Lname as [full name] 
 from Employee
 intersect 
 select Dependent_name
 from Dependent
 /*9*/
 select fname +' '+lname , SSN from Employee
 WHERE EXISTS (SELECT *FROM Dependent WHERE SSN=ESSN )

  /*10*/
 insert into Departments (Dname,Dnum,MGRSSN,[MGRStart Date])
         values('DEPT_IT',100,112233,'1-11-2006')
  /*11*/
 update Departments
 set MGRSSN=968574
 where Dnum=100
 update Departments
 set MGRSSN=102672
 where Dnum=20
 update Employee
 set Superssn=102672
 where SSN=102672

  /*12*/
  delete Departments where MGRSSN=223344
 delete Dependent  where ESSN=223344
 update Departments set MGRSSN=102672 where MGRSSN=223344
  /*13*/
 update Employee
 set Salary=Salary*1.3
 where Dno=(select Dnum
             from Project
			 where Pname='AL Rabwah')


