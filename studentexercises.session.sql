DELETE FROM Cohort;
DELETE FROM Exercise;
DELETE FROM Instructor;
DELETE FROM Student;
DELETE FROM StudentExercises;

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS Cohort;
DROP TABLE IF EXISTS Exercise;
DROP TABLE IF EXISTS StudentExercises;


CREATE TABLE Cohort (
    Id	   INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name   TEXT NOT NULL UNIQUE
);

CREATE TABLE Student (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL, 
    SlackHandle TEXT NOT NULL,
    CohortId INTEGER NOT NULL,
    FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);

CREATE TABLE Instructor (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL, 
    SlackHandle TEXT NOT NULL,
    CohortId INTEGER NOT NULL,
    Specialty TEXT NOT NULL,
    FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);

CREATE TABLE Exercise (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    Language TEXT NOT NULL

);

CREATE TABLE StudentExercises (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    StudentId INTEGER NOT NULL,
    ExerciseId INTEGER NOT NULL,
    FOREIGN KEY(StudentId) REFERENCES Student(Id),
    FOREIGN KEY(ExerciseId) REFERENCES Exercise(Id)
    
);

insert into Cohort
(Name)
Values ("Day Cohort 37");

insert into Cohort
(Name)
Values ("Day Cohort 40");

insert into Cohort
(Name)
Values ("Day Cohort 41");

INSERT INTO Exercise (Name, Language) 
VALUES ("Kandy Korner", "React");

INSERT INTO Exercise (Name, Language) 
VALUES ("Keahua", "Python");

INSERT INTO Exercise (Name, Language) 
VALUES ("Critters", "Python");

INSERT INTO Exercise (Name, Language) 
VALUES ("Glassdale", "JavaScript");

INSERT INTO Exercise (Name, Language) 
VALUES ("Cthulu", "JavaScript");

SELECT * FROM Exercise;

INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty)
SELECT "Tony", "Perez", "HoFer", Cohort.Id, "Hitting Bombs"
from Cohort
where  Cohort.Name like "%37%";

INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty)
SELECT "Count", "von Count", "1234", Cohort.Id, "counting ah ah ah"
from Cohort
where  Cohort.Name like "%40%";

INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty)
SELECT "Andre", "3000", "BoB", Cohort.Id, "Ice Cold"
from Cohort
where  Cohort.Name like "%41%";

select * from Instructor;

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
SELECT "Dwight", "Schrutte", "beet_farmer", Cohort.Id
from Cohort
where  Cohort.Name like "%37%";

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
SELECT "King", "Reptar", "king_of_dinosaurs", Cohort.Id
from Cohort
where  Cohort.Name like "%40%";

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
SELECT "Yasiel", "Puig", "fear_of_commitment", Cohort.Id
from Cohort
where  Cohort.Name like "%41%";

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
SELECT "Captain", "Crunch", "mouth_cutter", Cohort.Id
from Cohort
where  Cohort.Name like "%37%";

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
SELECT "John", "Kreese", "no_fear_dojo", Cohort.Id
from Cohort
where  Cohort.Name like "%40%";

iNSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
SELECT "Amos", "Burton", "Is_That_Guy", Cohort.Id
from Cohort
where  Cohort.Name like "%41%";

iNSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
SELECT "Ellen", "Ripley", "The_Best_Ever", Cohort.Id
from Cohort
where  Cohort.Name like "%41%";

SELECT * FROM Student;

