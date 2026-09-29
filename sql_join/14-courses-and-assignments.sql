SELECT courses.title AS course_title, assignements.title AS rassignements_title
FROM courses
LEFT JOIN assignements ON courses.id = assignements.course_id
ORDER BY course_title DESC, rassignements_title ASC;
