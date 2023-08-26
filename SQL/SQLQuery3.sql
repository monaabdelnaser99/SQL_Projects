--1
select Dnum ,Dname,MGRSSN,Fname+' '+Lname as Full_Name from Departments, Employee where MGRSSN=Superssn
--2
select Dname,Pname from Departments d , Project p where d.Dnum=p.Dnum
--3
select * from Employee where Dno=30 and (Salary between 1000 and 2000)

--4
select Fname from Employee e 
Inner join Departments d on e.Dno=d.Dnum
inner join Project p on p.Dnum=d.Dnum 
inner join Works_for w on w.Pno =p.Pnumber and w.Pno=e.SSN 
where d.Dnum =10 and Pname='AL Rabwah' and Hours>=10
--5
select e.Fname ,e.Lname from Employee e ,Employee s where 
e.SSN=s.Superssn and s.Fname= 'Kamel' and s.Lname=' Mohamed'            --//X
--6
select Fname , Pname from Employee e,Project p , Departments d
where e.Dno = d.Dnum and p.Dnum = d.Dnum group by Pname
--7
select Pnumber, Dname , Lname , City ,Bdate from Project p
inner join Departments d on d.Dnum= p.Dnum and  p.City='cairo' inner join Employee e on e.Dno=p.Dnum

--8
select * from Employee e where e.SSN in (select MGRSSN from Departments)

--9
select * from Employee e  left join Dependent d 
on e.SSN = d.ESSN