/* Q17 */
CREATE PROCEDURE Add_Student
   @UserId     INT,
    @UserName VARCHAR(64),
    @FirstName VARCHAR(64),
    @LastName VARCHAR(64),
    @EmailAddress VARCHAR(128),
    @PhoneNumber VARCHAR(16)
    @role VARCHAR(32)
AS BEGIN
    INSERT INTO Users (UserName, FirstName, LastName, EmailAddress, PhoneNumber, Role)
    VALUES (@UserName, @FirstName, @LastName, @EmailAddress, @PhoneNumber, @role);
END;

/* Q18 */
CREATE PROCEDURE AddAssignment
    @CourseId INT,
    @AssignmentTitle VARCHAR(128),
    @Description TEXT,
    @Weight FLOAT,
    @MaxGrade INT,
    @DueDate DATE
AS
IF @weight <= 100
BEGIN
		INSERT INTO Assignments(CourseId, AssignmentTitle, Description, weight, MaxGrade, DueDate)
		VALUES (@CourseId, @AssignmentTitle, @Description, @weight, @MaxGrade, @DueDate)
END;

/* Q19 */
CREATE FUNCTION Get_Grade (@Grade int)
RETURNS CHAR(1)
AS
BEGIN
    DECLARE @Letter CHAR(1);

    IF @Grade >= 90           SET @Letter = 'A';
    ELSE IF @Grade >= 80 SET @Letter = 'B';
    ELSE IF @Grade >= 70 SET @Letter = 'C';
    ELSE IF @Grade >= 60 SET @Letter = 'D';
    ELSE SET @Letter = 'F';

    RETURN @Letter;
END;

/* Q20 */

CREATE FUNCTION GPA (@grade INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @GPA FLOAT;
      if @grade >= 90 set @gpa =4.0 ;
      else if @grade >=80  set @gpa =3.0 ;
      else if @grade >= 70 set @gpa =2.0 ;
      else if @grade >= 50 set @gpa =1.0 ;
      else set @gpa =0.0;
	retrun @gpa;
end;

CREATE FUNCTION GPA2 (@studentid INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @GPA2  FLOAT;
      select @GPA2 = AVG(GPA(grade)) from Grades where studentID=@studentid);
	retrun @GPA2;
end;




      
    RETURN @GPA;
END;
