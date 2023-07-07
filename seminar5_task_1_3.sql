CREATE VIEW skoda_audi_cars AS
SELECT *
FROM cars
WHERE name IN ('Skoda', 'Audi');
