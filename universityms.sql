CREATE DATABASE universityms;

USE universityms;

-- Bảng Sinh viên
CREATE TABLE students (
    studentID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gpa FLOAT NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Bảng Lớp học
CREATE TABLE classes (
    classID INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(100),
    numberOfCredits INT NOT NULL
);

-- Bảng Liên kết Sinh viên và Lớp học (Many-to-Many)
CREATE TABLE learn (
    learnID INT AUTO_INCREMENT PRIMARY KEY,
    studentID INT,
    classID INT,
    FOREIGN KEY (studentID) REFERENCES students(studentID),
    FOREIGN KEY (classID) REFERENCES classes(classID)
);
