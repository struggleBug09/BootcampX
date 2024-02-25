SELECT count(assistance_requests.created_at) AS total_assistances, teachers.name AS name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
GROUP BY teachers.name
HAVING name = 'Waylon Boehm';

