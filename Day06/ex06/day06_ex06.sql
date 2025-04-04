CREATE SEQUENCE seq_person_discounts start 1;
ALTER TABLE person_discounts
ALTER COLUMN id SET DEFAULT NEXTVAL('seq_person_discounts');
SELECT SETVAL('seq_person_discounts', (SELECT MAX(id) + 1  FROM person_discounts));