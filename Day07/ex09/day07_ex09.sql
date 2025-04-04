SELECT address, formula, average,
CASE 
WHEN formula > average THEN 'True'
ELSE 'False'
END AS comparison 
FROM (SELECT address, round((MAX(age) - MIN(age) / MAX(age:: numeric)),2) AS formula, 
round(AVG(age), 2) AS average
FROM person
GROUP BY address)
ORDER BY address ASC;