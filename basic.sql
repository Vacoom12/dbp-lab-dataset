DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Enrollments;

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Enrollments (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course VARCHAR(50)
);

INSERT INTO Students VALUES
    (1, 'Jake'),
    (2, 'Bob'),
    (3, 'Herobrine'),
    (4, 'John'),
    (5, 'Jab');

INSERT INTO Enrollments VALUES
    (1, 1, 'Database'),
    (2, 3, 'Minecraft'),
    (3, 2, 'Programming'),
    (4, NULL, 'Roblox');