USE master;
GO
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'StudentManagement')
BEGIN
    DROP DATABASE StudentManagement;
END
GO
CREATE DATABASE StudentManagement;
GO

USE StudentManagement;
GO
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(1),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Aarav', 'M', 15, 'A', 85, 88, 90),
('Sneha', 'F', 14, 'B', 78, 74, 82),
('Rahul', 'M', 16, 'A', 92, 81, 87),
('Isha', 'F', 15, 'C', 69, 73, 70),
('Karan', 'M', 15, 'B', 80, 85, 79),
('Meera', 'F', 14, 'A', 95, 92, 88),
('Dev', 'M', 16, 'C', 60, 65, 58),
('Anaya', 'F', 14, 'B', 83, 79, 81),
('Rohit', 'M', 15, 'B', 77, 70, 75),
('Diya', 'F', 15, 'A', 88, 91, 93);
SELECT * FROM Students;
SELECT 
    AVG(MathScore) AS AvgMath,
    AVG(ScienceScore) AS AvgScience,
    AVG(EnglishScore) AS AvgEnglish
FROM Students;
SELECT 
    StudentID, Name,
    (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;
SELECT Grade, COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;
SELECT 
    Gender,
    AVG(MathScore) AS AvgMath,
    AVG(ScienceScore) AS AvgScience,
    AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;
SELECT * 
FROM Students
WHERE MathScore > 80;
UPDATE Students
SET Grade = 'A'
WHERE StudentID = 5;

