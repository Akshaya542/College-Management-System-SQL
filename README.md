# 🎓 College Management System – SQL Project

## 📌 Project Overview

The **College Management System** is a database project developed using MySQL to manage and organize various academic activities within a college.

The project focuses on designing a relational database that stores and manages student information, faculty details, departments, courses, enrollments, attendance, examinations, results, and academic projects.

The main objective of this project is to understand database design, table relationships, primary keys, foreign keys, constraints, and SQL operations.

## 🎯 Project Objectives

- Design a structured relational database using MySQL.
- Manage student and faculty information.
- Maintain department and course details.
- Track student enrollments and attendance.
- Store examination schedules and student results.
- Manage academic projects and faculty guides.
- Establish relationships between tables using primary and foreign keys.
- Generate an Entity Relationship (ER) Diagram.

## 🛠️ Technologies Used

- **Database:** MySQL
- **Database Tool:** MySQL Workbench
- **Language:** SQL
- **Diagram:** Entity Relationship (ER) Diagram

## 🗂️ Database Structure

The database contains 9 relational tables:

| No. | Table Name | Description |
|---|---|---|
| 1 | Departments | Stores department information |
| 2 | Students | Stores student details |
| 3 | Faculty | Stores faculty information |
| 4 | Courses | Stores course details |
| 5 | Enrollments | Manages student course registrations |
| 6 | Attendance | Tracks student attendance |
| 7 | Examinations | Stores examination information |
| 8 | Results | Maintains student examination results |
| 9 | Projects | Manages academic projects and evaluations |

## 🔗 Database Relationships

The database uses primary keys and foreign keys to establish relationships between tables.

- Departments → Students
- Departments → Faculty
- Departments → Courses
- Faculty → Courses
- Students → Enrollments
- Courses → Enrollments
- Students → Attendance
- Courses → Attendance
- Courses → Examinations
- Students → Results
- Examinations → Results
- Students → Projects
- Faculty → Projects

## ⚙️ Features

- Student information management
- Department management
- Faculty management
- Course management
- Student enrollment tracking
- Attendance management
- Examination management
- Student result management
- Academic project tracking

## 💻 SQL Concepts Implemented

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- PRIMARY KEY
- FOREIGN KEY
- AUTO_INCREMENT
- UNIQUE constraints
- NOT NULL constraints
- CHECK constraints
- SELECT statements

## 🚀 How to Run the Project

1. Install MySQL Server and MySQL Workbench.
2. Clone or download this repository.
3. Open MySQL Workbench.
4. Connect to your local MySQL server.
5. Open the SQL script file.
6. Execute the SQL statements in the correct order.
7. Verify the created tables using:

```sql
SHOW TABLES;
```

8. View the inserted records using SELECT statements.

## 📊 Entity Relationship Diagram (ER Diagram)

The ER diagram represents the structure of the College Management System and illustrates the relationships between all nine tables.

**ER Diagram:** `College_Management_ER_Diagram.png`

## 📁 Project Structure

```text
College-Management-System-SQL/
│
├── SQL/
│   └── College_Management.sql
│
├── ER_Diagram/
│   └── College_Management_ER_Diagram.png
│
└── README.md
```

## 📚 Learning Outcomes

Through this project, I gained practical knowledge of:

- Relational database design
- Creating and managing multiple tables
- Implementing primary and foreign keys
- Establishing one-to-many relationships
- Inserting and retrieving sample records
- Using MySQL Workbench
- Generating ER diagrams

## 👩‍💻 Author

Created as part of my SQL learning and database design practice.

---

⭐ If you find this project useful, feel free to explore the repository!
