USE University

--Question 1 =>
--i used the designer to create a new table 
--Id in Lecturer is with Identity(1,1) so we dont have to insert identity.
INSERT INTO Lecturer (FirstName,LastName)
VALUES ('seren','bokaiey')

INSERT INTO Lecturer (FirstName,LastName)
VALUES ('bhaa','bokaiey')


INSERT INTO Lecturer (FirstName,LastName)
VALUES ('tarek','assadi')

SELECT * FROM Lecturer

ALTER TABLE Courses
ADD LecturerId int;


ALTER TABLE Courses
ADD FOREIGN KEY (LecturerID) REFERENCES Lecturer(Id);

UPDATE Courses
SET LecturerId = 2 
WHERE Id = 1

UPDATE Courses
SET LecturerId =1
WHERE Id = 2

UPDATE Courses
SET LecturerId = Null
WHERE Id = 3

UPDATE Courses
SET LecturerId = 1
WHERE Id = 4


--Question 2 =>
SELECT C.CourseName , L.FirstName + ' ' + L.LastName FullName
FROM Courses  C join Lecturer L ON C.LecturerId=L.Id
ORDER BY C.Id , L.LastName

--Question 3 =>
--same solution like 2
SELECT C.CourseName , L.FirstName + ' ' + L.LastName FullName
FROM Courses  C join Lecturer L ON C.LecturerId=L.Id
ORDER BY C.Id , L.LastName


--Question 4 =>
--if the are lecturer who not teach , he will not appear
SELECT L.FirstName + ' ' + L.LastName FullName , C.CourseName
FROM Courses  C join Lecturer L ON C.LecturerId=L.Id

--Question 5 =>
SELECT * FROM Courses C
WHERE C.LecturerId IS NULL

--Question 6 =>
SELECT * FROM Lecturer
WHERE Id NOT IN (SELECT C.LecturerId FROM Courses  C join Lecturer L ON C.LecturerId=L.Id)






