SELECT courses.title AS course_title, assignments.title AS assignments_title
FROM courses
LEFT JOIN assignments ON courses.id = assignments.course_id
ORDER BY course_title DESC, assignments_title ASC;
