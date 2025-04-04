SELECT person_1.name AS person_name1, person_2.name AS person_name2, person_1.address AS common_address
FROM (SELECT * FROM person) AS person_1,
(SELECT * FROM person) AS person_2
WHERE person_1.address = person_2.address
AND person_1.id > person_2.id



