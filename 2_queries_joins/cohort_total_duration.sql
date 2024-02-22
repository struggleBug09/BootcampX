SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
INNER JOIN students ON students.id = student_id
WHERE start_date = '2018-02-12T08:00:00.000Z';