use University

--1
select * from Courses

--2
select FirstName , LastName from Students

--3
select Distinct FirstName from Students

--4
select FirstName from Students 
Where Age<80

--5
select * from Students 
Where Id=1

--6
select Id from Students
where FirstName='AMI' AND LastName='Sason'

--7
select * from Students
where FirstName IN ('AMI','YAEL') AND Age>20

--8
select * from Students
where Age IS NULL 

--9
select * from Students
Where Age Is NOT NULL 

--10
select FirstName from Students
order by FirstName

--11
select * from Students
order by Age DESC

--12
select TOP 2 * from Students
order by Age DESC

--13
select * from Students
wHERE FirstName LIKE ('A%') AND Age>20
order by FirstName

--14
insert into Courses (CourseName)
values ('Gaming')

--15
update Students 
set Age=70
Where Age>80

--16
delete from Students
where id=4

--17
select cs.CourseId,c.CourseName,cs.StudentId,s.FirstName,cs.Grade
from CoursesStudents cs join Students s On s.Id=cs.StudentId 
join Courses c on c.Id=cs.CourseId 
