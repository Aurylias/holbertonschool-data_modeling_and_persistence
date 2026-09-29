SELECT instructrors.name AS instructor_name
FROM instructrors
INNER JOIN courses ON instructrors.id = courses.instructor_id
INNER JOIN registrations ON courses.id = registrations.course_id
GROUP BY instructrors.id, instructrors.name
ORDER BY instructor_name ASC;
