#### Students

    id (primary key, auto-incrementing integer)
    name
    email
    password (hashed for security)
    grade_level
    student_id (unique identifier for each student)

#### Teachers

    id (primary key, auto-incrementing integer)
    name
    email
    password (hashed for security)
    teacher_id (unique identifier for each teacher)

#### Courses

    id (primary key, auto-incrementing integer)
    course_name
    course_description
    credits

#### Enrollments

    id (primary key, auto-incrementing integer)
    student_id (foreign key referencing the Students table)
    course_id (foreign key referencing the Courses table)
    grade (optional)

Assignments

    id (primary key, auto-incrementing integer)
    course_id (foreign key referencing the Courses table)
    assignment_name
    assignment_description
    due_date

Submissions

    id (primary key, auto-incrementing integer)
    assignment_id (foreign key referencing the Assignments table)
    student_id (foreign key referencing the Students table)
    submission_date
    grade (optional)

Relationships:

    A student can enroll in multiple courses (one-to-many).
    A course can have multiple students enrolled (one-to-many).
    A teacher can teach multiple courses (one-to-many).
    A course is taught by one teacher (many-to-one).
    An assignment is part of one course (many-to-one).
    A submission is related to one assignment and one student (many-to-one).
