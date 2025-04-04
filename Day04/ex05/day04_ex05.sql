CREATE VIEW v_price_with_discount AS
SELECT person.name AS name, pizza_name,
 menu.price AS price, round(menu.price - menu.price * 0.1) AS discount_price
FROM person_order
INNER JOIN person ON person_order.person_id = person.id
INNER JOIN menu ON person_order.menu_id = menu.id
ORDER BY name ASC, pizza_name ASC;