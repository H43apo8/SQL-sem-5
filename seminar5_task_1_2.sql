ALTER VIEW cars_under_25000 AS
SELECT *
FROM cars
WHERE cost < 30000;
