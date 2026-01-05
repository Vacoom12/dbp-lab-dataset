DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Instructors;
DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name VARCHAR
);

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    student_name VARCHAR,
    year INTEGER,
    gpa DOUBLE,
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Instructors (
    instructor_id INTEGER PRIMARY KEY,
    instructor_name VARCHAR,
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name VARCHAR,
    credits INTEGER,
    instructor_id INTEGER,
    dept_id INTEGER,
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    grade VARCHAR,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Departments VALUES
(1, 'Computer Science'),
(2, 'Business'),
(3, 'Engineering');

INSERT INTO Students VALUES
(1, 'Chiikawa', 1, 3.20, 1),
(2, 'Hachiware', 2, 2.80, 1),
(3, 'Usagi', 3, 3.75, 2),
(4, 'Kurimanju', 4, 3.90, 3),
(5, 'Momonga', 1, 2.40, 2),
(6, 'Rakko', 4, 4.00, 3);

INSERT INTO Instructors VALUES
(1, 'Dr. Guide', 1),
(2, 'Dr. Big', 2),
(3, 'Dr. Small', 3);

INSERT INTO Courses VALUES
(101, 'Database Systems', 3, 1, 1),
(102, 'Software Engineering', 3, 1, 1),
(201, 'Marketing', 3, 2, 2),
(301, 'Thermodynamics', 4, 3, 3);

INSERT INTO Enrollments VALUES
(1, 1, 101, 'A'),
(2, 1, 102, 'C'),
(3, 2, 101, 'B'),
(4, 3, 201, 'A'),
(5, 4, 301, 'B+'),
(6, 5, 201, 'B'),
(7, 6, 301, 'A');