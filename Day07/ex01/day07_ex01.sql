SELECT person.name AS name, COUNT(*)AS count_of_visits
FROM person_visits
INNER JOIN person ON person_visits.person_id = person.id
GROUP BY name
ORDER BY count_of_visits DESC, name ASC
LIMIT 4;