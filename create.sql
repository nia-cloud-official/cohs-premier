CREATE TABLE Students (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  grade_level INT,
  student_id INT UNIQUE
);

CREATE TABLE Teachers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  teacher_id INT UNIQUE
);

CREATE TABLE Courses (
  id INT PRIMARY KEY AUTO_INCREMENT,
  course_name VARCHAR(255),
  course_description TEXT,
  credits INT
);

CREATE TABLE Enrollments (
  id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT,
  course_id INT,
  grade DECIMAL(3, 2),
  FOREIGN KEY (student_id) REFERENCES Students(id),
  FOREIGN KEY (course_id) REFERENCES Courses(id)
);

CREATE TABLE Assignments (
  id INT PRIMARY KEY AUTO_INCREMENT,
  course_id INT,
  assignment_name VARCHAR(255),
  assignment_description TEXT,
  due_date DATE,
  FOREIGN KEY (course_id) REFERENCES Courses(id)
);

CREATE TABLE Submissions (
  id INT PRIMARY KEY AUTO_INCREMENT,
  assignment_id INT,
  student_id INT,
  submission_date DATE,
  grade DECIMAL(3, 2),
  FOREIGN KEY (assignment_id) REFERENCES Assignments(id),
  FOREIGN KEY (student_id) REFERENCES Students(id)
);