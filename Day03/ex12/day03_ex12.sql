INSERT INTO person_order
SELECT (SELECT MAX(id) FROM person_order) + ids,
    p.id, (SELECT id FROM menu WHERE pizza_name LIKE 'greek%'), '2022-02-25'
FROM person p INNER JOIN generate_series(1, (SELECT MAX(id) FROM person)) AS ids ON ids = p.id;


