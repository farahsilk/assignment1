CREATE DATABASE University;
GO
USE University;

CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    UserName VARCHAR(64) NOT NULL,
    FirstName VARCHAR(64) NOT NULL,
    LastName VARCHAR(64) NOT NULL,
    EmailAddress VARCHAR(128) NOT NULL UNIQUE,
    PhoneNumber VARCHAR(16) NOT NULL,
    Role VARCHAR(32) NOT NULL
);

CREATE TABLE Courses (
    CourseId INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    TeacherId INT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    SyllabusId INT NULL
);

CREATE TABLE Assignments (
    AssignmentId INT PRIMARY KEY,
    CourseId INT NOT NULL,
    AssignmentTitle VARCHAR(128) NOT NULL,
    Description TEXT NULL,
    Weight FLOAT NOT NULL,
    MaxGrade INT NOT NULL,
    DueDate DATE NOT NULL
);

CREATE TABLE Comments (
    CommentId INT PRIMARY KEY,
    AssignmentId INT NOT NULL,
    CreatedByUserId INT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CommentContent TEXT NULL
);

CREATE TABLE Grades (
    GradeId INT PRIMARY KEY,
    AssignmentId INT NOT NULL,
    StudentId INT NOT NULL,
    Grade INT NULL
);

CREATE TABLE Syllabus (
    SyllabusId INT PRIMARY KEY,
    Description TEXT NULL
);
