SELECT order_date AS action_date, name FROM person_order po, person p
where p.id = po.person_id
intersect
SELECT visit_date, name FROM person_visits pv, person p
where p.id = pv.person_id
ORDER BY action_date ASC, name DESC;