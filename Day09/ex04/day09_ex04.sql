CREATE OR REPLACE FUNCTION fnc_persons_female()
RETURNS TABLE (id person.id%TYPE, 
                name person.name%TYPE,
                age person.age%TYPE,
                gender person.gender%TYPE,
                address person.address%TYPE) AS
$$
SELECT * FROM person WHERE gender LIKE 'f%';
$$
LANGUAGE sql;


CREATE OR REPLACE FUNCTION fnc_persons_male()
RETURNS TABLE (id person.id%TYPE, 
                name person.name%TYPE,
                age person.age%TYPE,
                gender person.gender%TYPE,
                address person.address%TYPE) AS
$$
SELECT * FROM person WHERE gender LIKE 'm%';
$$
LANGUAGE sql;