CREATE TABLE lockers (
  id SERIAL PRIMARY KEY,
  number INTEGER  NOT NULL,
  combination VARCHAR(12) NOT NULL
);


CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(32) NOT NULL,
  last_name VARCHAR(32) NOT NULL,
  birth_date DATE NOT NULL,
  locker_id INTEGER UNIQUE REFERENCES lockers (id) -- foreign key relation + unique key relation, nullable (a student might not have a locker)
);


CREATE TABLE professors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(32) NOT NULL,
  last_name VARCHAR(32) NOT NULL,
  start_date DATE NOT NULL
);


CREATE TABLE courses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  description TEXT,
  credits SMALLINT NOT NULL,
  professor_id INTEGER NOT NULL REFERENCES professors (id) -- foreign key relation, non-nullable (a course MUST have a professor)
);


CREATE TABLE enrollments (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students (id),
  course_id INTEGER NOT NULL REFERENCES courses (id),
  grade VARCHAR(2),
  UNIQUE(student_id, course_id) -- unique key relation (prevent a student from being enrolled in the same course more than once)
); 