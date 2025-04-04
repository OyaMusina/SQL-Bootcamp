SELECT id, name,
CASE
    WHEN age BETWEEN 10 and 20 then 'interval #1'
    WHEN age > 20 AND age < 24 then 'interval #2'
    else 'interval #3'
END AS interval_info
FROM person
ORDER BY interval_info;



