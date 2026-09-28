SELECT students.name AS student_name, courses.title AS course_title
FROM enrollments
INNER JOIN students ON enrollments.student_id = students.id
Inner JOIN courses ON enrollements.course_id = courses.id
ORDER BY student_name, course_title ASC;
