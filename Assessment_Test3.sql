-----Solution------

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_num SMALLINT NOT NULL,
	phone INTEGER UNIQUE NOT NULL,
	email VARCHAR(250) UNIQUE,
	graduation_year INTEGER 
)

CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_num SMALLINT NOT NULL,
	department VARCHAR(250), 
	email VARCHAR(250) UNIQUE, 
	phone INTEGER UNIQUE NOT NULL
)
SELECT * FROM students;
SELECT * FROM teachers;

ALTER TABLE students
ALTER COLUMN phone TYPE BIGINT

ALTER TABLE teachers
ALTER COLUMN phone TYPE BIGINT

INSERT INTO students(first_name, last_name, phone, graduation_year,homeroom_num)
VALUES
('Mark',
 'Watney',
 '7775551234',
 '2035',
 '5')
 
INSERT INTO teachers(first_name, last_name, phone, department,homeroom_num,email)
VALUES
('Jonas',
 'Salk',
 '7775554321',
 'Biology',
 '5',
 'jsalk@school.org')

SELECT * FROM students;
SELECT * FROM teachers;
