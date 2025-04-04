CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10)
RETURNS TABLE (fibonacci INTEGER) AS $$
BEGIN
RETURN QUERY
WITH RECURSIVE fibonacci(number_1, number_2) AS
(SELECT 0 AS number_1, 1 AS number_2
UNION ALL
SELECT number_2, number_1 + number_2
FROM fibonacci
WHERE number_2 < pstop)
SELECT number_1 FROM fibonacci;
END;
$$ 
LANGUAGE plpgsql;