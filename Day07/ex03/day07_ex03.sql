SELECT t1.name, COALESCE(t1.count,0) + COALESCE(t2.count,0) AS total_count
FROM (SELECT pizzeria.name, COUNT(*) AS "count"
FROM person_visits
INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
GROUP BY name) AS t1 FULL JOIN 
(SELECT pizzeria.name, COUNT(*) AS "count"
FROM person_order
INNER JOIN menu ON person_order.menu_id = menu.id
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY name) AS t2 ON t1.name = t2.name
ORDER BY total_count DESC, name ASC;