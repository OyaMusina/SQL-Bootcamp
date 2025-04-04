SELECT generated_dates AS Missing_date
FROM v_generated_dates
EXCEPT
SELECT visit_date FROM person_visits
ORDER BY Missing_date ASC;