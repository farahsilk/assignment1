/* Q13*/
SELECT  u.FirstName + ' ' + u.LastName as Name, g.Grade, c.CourseName
FROM Users u
JOIN Grades g ON u.UserId = g.StudentId
JOIN Assignments a ON g.AssignmentId = a.AssignmentId
JOIN Courses c ON a.CourseId = c.CourseId
WHERE u.role = 'Student'
AND c.CourseId = 1;

/* Q14*/
select c.courseName, avg(g.grade) as AVG
from Grades g
JOIN Assignments a ON g.AssignmentId= a.AssignmentID
JOIN Courses c ON a.CousreId =c.CourseId
GROUP by c.CourseName;

/* Q15*/
select c.courseName, s.Discription 
From Courses c
JOIN Syllabus s ON c.syllabusId=s.SyllabusId;

/* Q16 */
SELECT c.CourseName, com.CommentContent
FROM Comments com
JOIN Courses c ON a.CourseId = c.CourseId;
JOIN Assignments a ON com.AssignmentId = a.AssignmentId



