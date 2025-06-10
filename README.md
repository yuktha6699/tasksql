SQL Mini Project: Student Management System
📝 Description
This repository contains a simple SQL mini-project designed to demonstrate fundamental database operations for managing student data. The core of this project is the SQL script which handles database and table creation, data insertion, and various analytical queries.

✨ Features
Database Setup: Creates a dedicated StudentManagement database and a Students table with essential fields (StudentID, Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore).

Data Insertion: Populates the Students table with over 10 diverse sample records.

Query Tasks: Performs several tasks to analyze and manipulate student data, including:

Displaying all student details.

Calculating average scores for each subject.

Identifying student(s) with the highest total score.

Counting students per grade.

Comparing average scores between male and female students.

Highlighting high achievers in Math (scores > 80).

Updating a student's grade based on their Student ID.

🛠️ Technologies Used
SQL (Standard)

Microsoft SQL Server

SQL Server Management Studio (SSMS) 21

🚀 Installation & Setup
To get this SQL mini-project up and running on your local machine:

Clone the repository:

git clone https://github.com/yuktha6699/tasksql.git
cd tasksql

Database Setup:

Ensure you have your SQL database software (e.g., MySQL, PostgreSQL) installed and running.

Open your preferred SQL client (e.g., MySQL Workbench, DBeaver, DataGrip, or the command-line interface for your database).

Execute the sql mini project.sql file: This file contains all the necessary commands to create the StudentManagement database, define the Students table, and insert sample data.

From command line (e.g., MySQL):

mysql -u your_username -p <path/to/cloned/repo>/sql mini project.sql

(Replace your_username with your database username and <path/to/cloned/repo> with the actual path to your cloned project folder. You will be prompted for your password.)

From a GUI client (e.g., DBeaver, MySQL Workbench): Open the sql mini project.sql file from the cloned repository and execute all queries.

💡 Usage
Once the database and table are set up and populated, you can run various queries against the StudentManagement database. The sql mini project.sql file itself demonstrates all the required query tasks.

Example Query (from sql mini project.sql - Task 1):

SELECT StudentID, Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore
FROM Students;

You can explore the sql mini project.sql file to see all the implemented tasks and run them in your SQL client to see the results.

📸 Screenshots
(After you move your screenshot files into a screenshots/ folder and rename them to something meaningful like student_table_data.png, you can add links here.)

Example:

(Remember to update the README.md to link to your actual screenshot file names and paths once you organize them.)
