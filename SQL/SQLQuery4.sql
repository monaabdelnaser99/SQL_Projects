select Ins_Name ,Dept_Name from Instructor i left outer join Department d on i.Dept_Id=d.Dept_Id     
select St_Fname+' 'St_Lname , crs_Name  from Student s , Course c ,Stud_Course
where s.St_Id =Stud_Course.St_Id and c.Crs_Id=Stud_Course.Crs_Id      

select count (Crs_Name)  from Course group by Top_Id         
select max(Salary) as max_salary, min(Salary) as min_salary from Instructor             

select Ins_Name from Instructor where Salary < (select all avg(Salary) from Instructor)     

select Dept_Name from Department   where Dept_Id=(select Dept_Id from Instructor where
Salary =(select min(Salary) from Instructor ) ) 