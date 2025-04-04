SELECT (SELECT name FROM person WHERE id = temp.person_id) AS person_name,
(SELECT name FROM pizzeria WHERE id = temp.pizzeria_id) AS pizzeria_name

FROM (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09') AS temp 

ORDER BY person_name ASC, pizzeria_name DESC;