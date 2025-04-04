SELECT DISTINCT person.name AS name FROM person_order
INNER JOIN person ON person_order.person_id = person.id
ORDER BY name ASC;