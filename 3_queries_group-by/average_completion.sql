SELECT students.name AS student_name, sum(assignment_submissions.duration)/count(assignments.*) AS average_assign_duration
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_assign_duration DESC;