select *from employee 
select Fname,Lname,Salary,Dno from employee
select Pname,Plocation,Dnum from project
select fname+''+lname as 'full name',0.1*12*salary as 'ANNUAL COMM' from employee
select ssn,fname,lname from employee where salary=1000 
select ssn,fname,lname from employee where salary>10000
select fname,lname,salary from employee where sex= 'female'
select dnum,dname from department where merssn=968574
select DNO,MAX(SALARY),MIN (SALARY),AVG(SALARY)FROM Employee GROUP BY DNO
insert into employee(dno,ssn,superssn,salary) values (30,102672,112233,3000)
insert into employee(dno,ssn) values (30,102660)
update employee set salary=salary+salary*0.2 where ssn=102672