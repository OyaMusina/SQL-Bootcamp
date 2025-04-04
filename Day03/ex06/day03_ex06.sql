SELECT m1.pizza_name, pz1.name AS pizzeria_name1, pz2.name AS pizzeria_name2, m1.price
FROM menu m1
    INNER JOIN menu m2 ON m1.pizza_name = m2.pizza_name
    INNER JOIN pizzeria pz1 ON pz1.id = m1.pizzeria_id
    INNER JOIN pizzeria pz2 ON pz2.id = m2.pizzeria_id
WHERE m1.pizzeria_id > m2.pizzeria_id
   AND m1.price = m2.price
ORDER BY m1.pizza_name;