INSERT INTO person_discounts(id, person_id, pizzeria_id, discount)
SELECT ROW_NUMBER() OVER() AS id,
person_order.person_id AS person_id, menu.pizzeria_id AS pizzeria_id,
CASE 
WHEN count(person_order.person_id) = 1 THEN 10.5
WHEN count(person_order.person_id) = 2 THEN 22
ELSE 30
END AS discount
FROM person_order
INNER JOIN menu ON person_order.menu_id = menu.id
GROUP BY person_id, menu.pizzeria_id
ORDER BY person_id;