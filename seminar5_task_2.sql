----------Дополнительные задания:

-----1*. Получить ранжированный список автомобилей по цене в порядке возрастания:

sql
Copy code
SELECT *, RANK() OVER (ORDER BY cost) AS ranking
FROM cars;

-----2*. Получить топ-3 самых дорогих автомобилей, а также их общую стоимость:

sql
Copy code
SELECT *, SUM(cost) OVER () AS total_cost
FROM cars
ORDER BY cost DESC
LIMIT 3;

-----3*. Получить список автомобилей, у которых цена больше предыдущей цены:

sql
Copy code
SELECT c1.*
FROM cars c1
JOIN cars c2 ON c1.id = c2.id + 1
WHERE c1.cost > c2.cost;

----- 4*. Получить список автомобилей, у которых цена меньше следующей цены:

sql
Copy code
SELECT c1.*
FROM cars c1
JOIN cars c2 ON c1.id = c2.id - 1
WHERE c1.cost < c2.cost;

------ 5* Получить список автомобилей, отсортированный по возрастанию цены, и добавить столбец со значением разницы между текущей ценой и ценой следующего автомобиля:

sql
Copy code
SELECT c1.*, c2.cost - c1.cost AS price_difference
FROM cars c1
JOIN cars c2 ON c1.id = c2.id - 1
ORDER BY c1.cost;
