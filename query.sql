-- display the student name, course name(s) for the student that has a lock with combo '17-27-37'

select students.first_name, students.last_name, courses.name from students
join enrollments
on students.id = enrollments.student_id
join courses
on courses.id = enrollments.course_id
join lockers
on students.locker_id = lockers.id
where lockers.combination = '18-28-38'
