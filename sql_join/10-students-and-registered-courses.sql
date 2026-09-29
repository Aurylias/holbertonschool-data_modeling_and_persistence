SELECT students.name AS student_name, courses.title AS course_title
FROM students
INNER JOIN registrations ON students.id = registrations.student_id
INNER JOIN courses ON courses.id = registrations.course_id
ORDER BY student_name ASC, course_title ASC;
