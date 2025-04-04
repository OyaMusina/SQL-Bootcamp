DROP TRIGGER trg_person_insert_audit ON person;
DROP TRIGGER trg_person_update_audit ON person;
DROP TRIGGER trg_person_delete_audit ON person;

DROP FUNCTION fnc_trg_person_insert_audit();
DROP FUNCTION fnc_trg_person_update_audit();
DROP FUNCTION fnc_trg_person_delete_audit();

TRUNCATE person_audit;

CREATE OR REPLACE FUNCTION fnc_trg_person_audit () RETURNS TRIGGER AS $$
BEGIN
    IF(tg_op = 'INSERT') THEN
        INSERT INTO person_audit(created, type_event, row_id, name, age, gender, address)
        VALUES(CURRENT_TIMESTAMP, 'I', NEW.*);

    ELSEIF(tg_op = 'UPDATE') THEN
        INSERT INTO person_audit(created, type_event, row_id, name, age, gender, address)
        VALUES(CURRENT_TIMESTAMP, 'U', OLD.*);
    ELSE
        INSERT INTO person_audit(created, type_event, row_id, name, age, gender, address)
        VALUES(CURRENT_TIMESTAMP, 'D', OLD.*);

    END IF;
    RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER trg_person_audit
AFTER DELETE OR INSERT OR UPDATE ON person
FOR EACH ROW
EXECUTE FUNCTION fnc_trg_person_audit();

INSERT INTO person(id, name, age, gender, address)  
VALUES (10,'Damir', 22, 'male', 'Irkutsk'); 
UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;
DELETE FROM person WHERE id = 10;

