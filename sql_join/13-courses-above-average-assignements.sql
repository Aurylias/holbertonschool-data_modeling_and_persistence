SELECT courses.title AS course_title
FROM courses
LEFT JOIN registrations ON registrations.course_id = id
GROUP BY courses.title
HAVING count(*) > (
    SELECT AVG(total_per_course)
    FROM (
        SELECT COUNT(*) as total_per_course
        FROM registrations
        GROUP BY course_id
    )
)
ORDER BY course_title ASC;
