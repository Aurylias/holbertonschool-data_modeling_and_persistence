SELECT courses.title AS course_title
FROM courses
INNER JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.id, courses.title
HAVING count(*) > (
    SELECT AVG(total_per_assignements)
    FROM (
        SELECT COUNT(*) as total_per_assignements
        FROM assignments
        GROUP BY course_id
    )
)
ORDER BY course_title ASC;
