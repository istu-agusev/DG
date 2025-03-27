SELECT first_name, last_name
FROM workers;

SELECT goods.name, round(goods.price *9.5, 2) AS cost
FROM goods;

SELECT goods.name
FROM goods
ORDER BY goods.name ASC;

SELECT first_name, last_name, qualification, passport_no
FROM workers
ORDER BY qualification ASC, passport_no DESC;
