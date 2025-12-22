
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Courses;

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gpa DECIMAL(3,2)
);

CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name VARCHAR(100)
);

CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students VALUES
    (1, 'Indy', 'Jiarapong', 3.80),
    (2, 'Audy', 'Sorasak', 2.95),
    (3, 'Poom', 'Kerdpramote', 3.20),
    (4, 'Neung', 'Chaisihat', 1.85),
    (5, 'Ash', 'Ly', 3.50),
    (6, 'Guide', 'Kerdchareon', 3.50),
    (7, 'Goku', 'Sololeveling', 3.75),
    (8, 'Naruto', 'Shippuden', 1.90);

INSERT INTO Courses VALUES
    (101, 'Database Programming in Practice'),
    (102, 'Foundation of Programming'),
    (103, 'Computer Science'),
    (104, 'Seminar');

INSERT INTO Enrollments VALUES
    (1, 1, 101),
    (2, 1, 102),
    (3, 2, 102),
    (4, 3, 101),
    (5, 3, 103),
    (6, 5, 104),
    (7, 4, 104),
    (8, 6, 101);