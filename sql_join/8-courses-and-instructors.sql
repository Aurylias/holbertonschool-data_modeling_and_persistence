SELECT instructors.name AS instructor_name, courses.title AS course_title
FROM instructors
INNER JOIN courses ON courses.instructor_id = instructors.id 
ORDER BY instructor_name, course_title ASC;
