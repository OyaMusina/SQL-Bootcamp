COMMENT ON TABLE person_discounts IS 'This table contains information about people, about all pizzerias, the percentage of discount for a person in a specific pizzeria';
COMMENT ON COLUMN person_discounts.id IS 'Contains a unique primary key';
COMMENT ON COLUMN person_discounts.person_id IS 'Contains a secondary key for a person';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Contains a secondary key for the pizzeria';
COMMENT ON COLUMN person_discounts.discount IS 'Contains information about the discount for a person';