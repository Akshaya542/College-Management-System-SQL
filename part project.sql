CREATE DATABASE college_management;
USE college_management;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL UNIQUE,
    department_head VARCHAR(100),
    building VARCHAR(50)
);
CREATE TABLE Students (student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    admission_date DATE,
    department_id INT,
	FOREIGN KEY (department_id)REFERENCES Departments(department_id)
);
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY AUTO_INCREMENT,
    faculty_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    designation VARCHAR(50),
    department_id INT,

    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id)
);
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) UNIQUE,
    credits INT,
    department_id INT,
    faculty_id INT,
    FOREIGN KEY (department_id)REFERENCES Departments(department_id),
    FOREIGN KEY (faculty_id)REFERENCES Faculty(faculty_id)
);
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    academic_year VARCHAR(20),
    semester INT,
    FOREIGN KEY (student_id)REFERENCES Students(student_id),
    FOREIGN KEY (course_id)REFERENCES Courses(course_id),
    UNIQUE (student_id, course_id, academic_year, semester)
);
DROP table Attendance;
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT UNIQUE,
    course_id INT UNIQUE,
    attendance_date DATE ,
    status VARCHAR(15),
    FOREIGN KEY (student_id)REFERENCES Students(student_id),
    FOREIGN KEY (course_id)REFERENCES Courses(course_id)
);
CREATE TABLE Projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_title VARCHAR(150) NOT NULL,
    project_description TEXT,
    student_id INT,
    faculty_id INT,
    start_date DATE,
    submission_date DATE,
    project_status VARCHAR(30),
    project_marks DECIMAL(5,2),
    FOREIGN KEY (student_id)REFERENCES Students(student_id),
    FOREIGN KEY (faculty_id)REFERENCES Faculty(faculty_id)
);
CREATE TABLE Examinations (
    exam_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    exam_name VARCHAR(100),
    exam_date DATE,
    total_marks INT,
    FOREIGN KEY (course_id)REFERENCES Courses(course_id)
);
CREATE TABLE Results (
    result_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT UNIQUE,
    exam_id INT UNIQUE,
    marks_obtained DECIMAL(5,2),
    grade VARCHAR(5),
    result_status VARCHAR(20),
    FOREIGN KEY (student_id)REFERENCES Students(student_id),
    FOREIGN KEY (exam_id)REFERENCES Examinations(exam_id)
);
DESCRIBE RESULTS;
INSERT INTO Departments(department_id, department_name, department_head, building)
VALUES
(1, 'Computer Science', 'Dr. Arun Kumar', 'Block A'),
(2, 'Commerce', 'Dr. Meera Nair', 'Block B'),
(3, 'Mathematics', 'Dr. Rahul Das', 'Block C'),
(4, 'Physics', 'Dr. Anjali Menon', 'Block D'),
(5, 'English', 'Dr. Priya Sharma', 'Block E'),
(6, 'Electronics', 'Dr. Suresh Kumar', 'Block F');
INSERT INTO Students(student_id, first_name, last_name, gender, date_of_birth,email, phone, admission_date, department_id)
VALUES
(1, 'Akhil', 'Raj', 'Male', '2004-05-12','akhil@gmail.com', '9876543210', '2023-06-10', 1),
(2, 'Ananya', 'Nair', 'Female', '2004-08-20','ananya@gmail.com', '9876543211', '2023-06-12', 2),
(3, 'Rahul', 'Krishnan', 'Male', '2003-11-15','rahul@gmail.com', '9876543212', '2022-06-15', 3),
(4, 'Sneha', 'Menon', 'Female', '2004-02-25','sneha@gmail.com', '9876543213', '2023-06-18', 4),
(5, 'Arjun', 'Dev', 'Male', '2003-09-10','arjun@gmail.com', '9876543214', '2022-06-20', 5),
(6, 'Diya', 'Thomas', 'Female', '2004-12-05','diya@gmail.com', '9876543215', '2023-06-22', 6);
INSERT INTO Faculty(faculty_id, faculty_name, email, phone, designation, department_id)
VALUES
(1, 'Dr. Rajesh Kumar', 'rajesh@college.com', '9123456780', 'Professor', 1),
(2, 'Ms. Lakshmi Nair', 'lakshmi@college.com', '9123456781', 'Assistant Professor', 2),
(3, 'Mr. Vinod Das', 'vinod@college.com', '9123456782', 'Lecturer', 3),
(4, 'Dr. Kavitha Menon', 'kavitha@college.com', '9123456783', 'Professor', 4),
(5, 'Ms. Deepa Sharma', 'deepa@college.com', '9123456784', 'Assistant Professor', 5),
(6, 'Mr. Sandeep Thomas', 'sandeep@college.com', '9123456785', 'Lecturer', 6);
INSERT INTO Courses(course_id, course_name, course_code, credits, department_id, faculty_id)
VALUES
(1, 'Database Management Systems', 'CS101', 4, 1, 1),
(2, 'Financial Accounting', 'CM101', 3, 2, 2),
(3, 'Linear Algebra', 'MA101', 4, 3, 3),
(4, 'Applied Physics', 'PH101', 3, 4, 4),
(5, 'English Literature', 'EN101', 3, 5, 5),
(6, 'Digital Electronics', 'EC101', 4, 6, 6);
INSERT INTO Enrollments(enrollment_id, student_id, course_id, enrollment_date,academic_year, semester)
VALUES
(1, 1, 1, '2025-06-10', '2025-2026', 1),
(2, 2, 2, '2025-06-11', '2025-2026', 1),
(3, 3, 3, '2025-06-12', '2025-2026', 2),
(4, 4, 4, '2025-06-13', '2025-2026', 1),
(5, 5, 5, '2025-06-14', '2025-2026', 2),
(6, 6, 6, '2025-06-15', '2025-2026', 1);
ALTER TABLE Attendence DROP COLUMN attendance_date;
INSERT INTO Attendance(attendance_id, student_id, course_id, attendance_date, status)
VALUES
(1, 1, 1, '2025-07-01', 'Present'),
(2, 2, 2, '2025-07-01', 'Absent'),
(3, 3, 3, '2025-07-01', 'Present'),
(4, 4, 4, '2025-07-01', 'Late'),
(5, 5, 5, '2025-07-01', 'Present'),
(6, 6, 6, '2025-07-01', 'Absent');
INSERT INTO Results
(result_id, student_id, exam_id, marks_obtained, grade, result_status)
VALUES
(1, 1, 1, 92.00, 'A+', 'Pass'),
(2, 2, 2, 85.00, 'A', 'Pass'),
(3, 3, 3, 78.00, 'B+', 'Pass'),
(4, 4, 4, 65.00, 'B', 'Pass'),
(5, 5, 5, 88.00, 'A', 'Pass'),
(6, 6, 6, 42.00, 'F', 'Fail');
INSERT INTO Examinations(exam_id, course_id, exam_name, exam_date, total_marks)
VALUES
(1, 1, 'DBMS ', '2025-09-10', 100),
(2, 2, 'Accounting ', '2025-09-12', 100),
(3, 3, 'Mathematics ', '2025-09-14', 100),
(4, 4, 'Physics ', '2025-09-16', 100),
(5, 5, 'English ', '2025-09-18', 100),
(6, 6, 'Electronics ', '2025-09-20', 100);
INSERT INTO Projects(project_id, project_title, project_description, student_id,faculty_id, start_date, submission_date, project_status, project_marks)
VALUES
(1, 'Student Management System','Database project for managing college students',1, 1, '2025-08-01', '2025-10-01', 'Completed', 95.00),
(2, 'Online Shopping System','Ecommerce website development project',2, 2, '2025-08-05', '2025-10-05', 'Completed', 88.00),
(3, 'Library Management System','Project for managing library books and records',3, 3, '2025-08-10', '2025-10-10', 'In Progress', NULL),
(4, 'Hospital Management System','Database project for hospital operations',4, 4, '2025-08-15', '2025-10-15', 'Submitted', 82.00),
(5, 'Attendance Management System','Automated student attendance tracking system',5, 5, '2025-08-20', '2025-10-20', 'Completed', 90.00),
(6, 'Online Examination System','Online platform for conducting examinations',6, 6, '2025-08-25', '2025-10-25', 'In Progress', NULL);
SELECT * FROM Departments;
SELECT * FROM Students;
SELECT * FROM Faculty;
SELECT * FROM Courses;
SELECT * FROM Enrollments;
SELECT * FROM Attendance;
SELECT * FROM Examinations;
SELECT * FROM Results;
SELECT * FROM Projects;
show tables;





