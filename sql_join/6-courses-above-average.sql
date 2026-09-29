SELECT courses.title AS course_title
FROM courses
INNER JOIN enrollment ON enrollment.course_id = id
GROUP BY courses.title
HAVING count(*) > (
    SELECT AVG(total_per_course)
    FROM (
        SELECT COUNT(*) as total_per_course
        FROM enrollment
        GROUP BY course_id
    )
)
ORDER BY course_title ASC;
