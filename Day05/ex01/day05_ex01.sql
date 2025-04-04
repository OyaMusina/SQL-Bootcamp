SET enable_seqscan=off;
EXPLAIN ANALYZE
SELECT pizza_name, pizzeria.name AS pizzeria_name From menu
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id;
