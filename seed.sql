INSERT INTO lockers (id, number, combination)
VALUES
  (1, 101, '11-21-31'),
  (2, 102, '12-22-32'),
  (3, 103, '13-23-33'),
  (4, 104, '14-24-34'),
  (5, 205, '15-25-35'),
  (6, 206, '16-26-36'),
  (7, 207, '17-27-37'),
  (8, 208, '18-28-38');


INSERT INTO students (first_name, last_name, birth_date, locker_id)
VALUES
  ('Anna', 'Abrams', '2005-05-05', 2),
  ('Biil', 'Brooks', '2006-06-06', 4),
  ('Cassie', 'Cage', '2007-07-07', 6),
  ('David', 'Derby', '2008-08-08', 8);


INSERT INTO professors (first_name, last_name, start_date)
VALUES
  ('Charlie', 'Chaplin', '2010-01-01'),
  ('Rachael', 'Ray', '2012-01-01'),
  ('Steven', 'Spielburg', '2014-01-01'),
  ('Tina', 'Turner', '2016-01-01'),
  ('Vince', 'Vaughn', '2018-01-01');


INSERT INTO courses (name, description, credits, professor_id)
VALUES
  ('CS 101', 'Computer Science Fundamentals', 3, 1),
  ('CS 202', 'Computer Science Intermediate', 4, 5),
  ('Databases 203', 'Working with databases', 4, 3),
  ('Cooking 301', 'Learn how to cook', 3, 2),
  ('Singing 203', NULL, 3, 5),
  ('Singing 307', NULL, 4, 4);


INSERT INTO enrollments (student_id, course_id, grade)
VALUES
  (1, 2, 'B+'),
  (1, 3, 'A-'),
  (1, 5, NULL),
  (2, 1, 'B'),
  (2, 3, 'A+'),
  (2, 5, NULL),
  (3, 1, 'C'),
  (4, 4, 'B-'),
  (4, 1, 'F'),
  (4, 2, NULL);