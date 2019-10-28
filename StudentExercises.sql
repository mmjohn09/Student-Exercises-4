--CREATE TABLE Cohort (
--Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--Cohort_Name VARCHAR(55) NOT NULL
--);

--CREATE TABLE Instructor (
--Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--First_Name VARCHAR(55) NOT NULL,
--Last_Name VARCHAR(55) NOT NULL,
--Slack_Handle VARCHAR(55) NOT NULL,
--Specialty VARCHAR(55) NOT NULL,
--Cohort_Id INTEGER,
--CONSTRAINT FK_Instructor_Cohort FOREIGN KEY(Cohort_Id) REFERENCES Cohort(Id)
--);

--CREATE TABLE Exercise (
--Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--Exercise_Name VARCHAR(55) NOT NULL
--);

--CREATE TABLE Student (
--Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--First_Name VARCHAR(55) NOT NULL,
--Last_Name VARCHAR(55) NOT NULL,
--Slack_Handle VARCHAR(55) NOT NULL,
--Cohort_Id INTEGER,
--Exercise_Id INTEGER,
--CONSTRAINT FK_Student_Cohort FOREIGN KEY(Cohort_Id) REFERENCES Cohort(Id),
--CONSTRAINT FK_Student_Exercise FOREIGN KEY(Exercise_Id) REFERENCES Exercise(Id)
--);

--INSERT INTO Cohort (Cohort_Name) VALUES ('Day Cohort 33');
--INSERT INTO Cohort (Cohort_Name) VALUES ('Day Cohort 34');
--INSERT INTO Cohort (Cohort_Name) VALUES ('Day Cohort 35');
--INSERT INTO Cohort (Cohort_Name) VALUES ('Day Cohort 36');
--INSERT INTO Cohort (Cohort_Name) VALUES ('Evening Cohort 10');
--INSERT INTO Cohort (Cohort_Name) VALUES ('Evening Cohort 11');

--INSERT INTO Student (First_Name, Last_Name, Slack_Handle, Cohort_Id) VALUES ('Maggie', 'Johnson', '@MJ', 2);
--INSERT INTO Student (First_Name, Last_Name, Slack_Handle, Cohort_Id) VALUES ('Kelly', 'Coles', '@KellyColes', 2);
--INSERT INTO Student (First_Name, Last_Name, Slack_Handle, Cohort_Id) VALUES ('Sarah', 'Fleming', '@SarahF', 1);
--INSERT INTO Student (First_Name, Last_Name, Slack_Handle, Cohort_Id) VALUES ('Shane', 'Wilson', '@ShaneWilson', 1);
--INSERT INTO Student (First_Name, Last_Name, Slack_Handle, Cohort_Id) VALUES ('Leigh', 'Rogers', '@LeighRogers', 3);
--INSERT INTO Student (First_Name, Last_Name, Slack_Handle, Cohort_Id) VALUES ('Caroline', 'Brownlee', '@Caroline', 4);
--INSERT INTO Student (First_Name, Last_Name, Slack_Handle, Cohort_Id) VALUES ('John', 'Smith', '@JohnSmith', 5);
--INSERT INTO Student (First_Name, Last_Name, Slack_Handle, Cohort_Id) VALUES ('Jane', 'Doe', '@JaneDoe', 6);

--INSERT INTO Instructor (First_Name, Last_Name, Slack_Handle, Specialty, Cohort_Id) VALUES ('Andy', 'Collins', '@AC', 'C#', 2);
--INSERT INTO Instructor (First_Name, Last_Name, Slack_Handle, Specialty, Cohort_Id) VALUES ('Steve', 'Brownlee', '@Coach', 'Python', 1);
--INSERT INTO Instructor (First_Name, Last_Name, Slack_Handle, Specialty, Cohort_Id) VALUES ('Bryan', 'Nilsen', '@BryFive', 'High Fives', 3);
--INSERT INTO Instructor (First_Name, Last_Name, Slack_Handle, Specialty, Cohort_Id) VALUES ('Brenda', 'Long', '@BLong', 'UI/UX', 3);
--INSERT INTO Instructor (First_Name, Last_Name, Slack_Handle, Specialty, Cohort_Id) VALUES ('Jenna', 'Solis', '@JSol', 'Tacos', 4);
--INSERT INTO Instructor (First_Name, Last_Name, Slack_Handle, Specialty, Cohort_Id) VALUES ('Jisie', 'David', '@JisieD', 'Javascript', 6);
--INSERT INTO Instructor (First_Name, Last_Name, Slack_Handle, Specialty, Cohort_Id) VALUES ('Adam', 'Sheaffer', '@Adamo', 'SQL', 5);

--INSERT INTO Exercise (Exercise_Name) VALUES ('ChickenMonkey');
--INSERT INTO Exercise (Exercise_Name) VALUES ('Nutshell');
--INSERT INTO Exercise (Exercise_Name) VALUES ('Battle of the Bands');
--INSERT INTO Exercise (Exercise_Name) VALUES ('Gary"s Garage');
--INSERT INTO Exercise (Exercise_Name) VALUES ('Heist');
--INSERT INTO Exercise (Exercise_Name) VALUES ('Trestlebridge Farms');


--UPDATE Exercise SET Language = 'Javascript' WHERE Id = 1;
--UPDATE Exercise SET Language = 'Javascript' WHERE Id = 3;
--UPDATE Exercise SET Language = 'React Js' WHERE Id = 2;
--UPDATE Exercise SET Language = 'C#' WHERE Id = 4;
--UPDATE Exercise SET Language = 'C#' WHERE Id = 5;
--UPDATE Exercise SET Language = 'C#' WHERE Id = 6;


--Write a query to return all student first and last names with their cohort's name.
--SELECT st.First_Name, st.Last_Name, c.Cohort_Name
--FROM Student st
--JOIN Cohort c ON st.Cohort_Id = c.Id;


--Write a query to return student first and last names with their cohort's name only for a single cohort.
--SELECT st.First_Name, st.Last_Name, c.Cohort_Name
--FROM Student st
--JOIN Cohort c ON st.Cohort_Id = c.Id
--WHERE c.Id = 1;

--Write a query to return all instructors ordered by their last name.
--SELECT * FROM Instructor
--ORDER BY Last_Name;

--Write a query to return a list of unique instructor specialties.
--SELECT DISTINCT Specialty FROM Instructor

--UPDATE Student SET Exercise_Id = 1 WHERE Id = 2
--UPDATE Student SET Exercise_Id = 2 WHERE Id = 1
--UPDATE Student SET Exercise_Id = 3 WHERE Id = 3
--UPDATE Student SET Exercise_Id = 4 WHERE Id = 4
--UPDATE Student SET Exercise_Id = 1 WHERE Id = 5
--UPDATE Student SET Exercise_Id = 5 WHERE Id = 6
--UPDATE Student SET Exercise_Id = 6 WHERE Id = 7
--UPDATE Student SET Exercise_Id = 2 WHERE Id = 8

--Write a query to return a list of all student names along with the names of the exercises they have been assigned. If an exercise has not been assigned, it should not be in the result.
--SELECT st.First_Name, st.Last_Name, e.Exercise_Name
--FROM Student st
--JOIN Exercise e ON st.Exercise_Id = e.Id;