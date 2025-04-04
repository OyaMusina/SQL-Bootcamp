CREATE TABLE person_audit(
    created timestamp with time zone NOT NULL default current_timestamp,
    type_event CHAR(1) DEFAULT 'I' CHECK ( type_event IN ('I', 'U', 'D') ),
    row_id BIGINT NOT NULL,
    name VARCHAR,
    age INTEGER,
    gender VARCHAR,
    address VARCHAR
)

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit () RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO person_audit(created, type_event, row_id, name, age, gender, address)
    VALUES(CURRENT_TIMESTAMP, 'I', NEW.*);
    RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER trg_person_insert_audit
AFTER INSERT ON person
FOR EACH ROW
EXECUTE FUNCTION fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address)
VALUES (10,'Damir', 22, 'male', 'Irkutsk');