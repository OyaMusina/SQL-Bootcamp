SELECT person.name AS name, pizza_name, price, price - price * person_discounts.discount / 100,
pizzeria.name AS pizzeria_name
FROM menu
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
INNER JOIN person_order ON menu.id = person_order.menu_id
INNER JOIN person ON person_order.person_id = person.id
INNER JOIN person_discounts ON person.id = person_discounts.person_id AND menu.pizzeria_id = person_discounts.pizzeria_id
ORDER BY person.name, pizza_name;