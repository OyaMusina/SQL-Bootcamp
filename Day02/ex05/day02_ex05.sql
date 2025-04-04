SELECT name FROM person
WHERE gender IN ('female') AND age > 25
GROUP BY person.name
ORDER BY name ASC;
