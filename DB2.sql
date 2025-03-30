SELECT goods.*, manufacturers.*
FROM goods
CROSS JOIN manufacturers;

SELECT *
FROM workers, workers AS collegues
WHERE (workers.chief = collegues.chief)
AND (workers.passport_no < collegues.passport_no);

SELECT goods.*, manufacturers.*
FROM goods CROSS JOIN manufacturers WHERE goods.manufacturer_code = manufacturers.code;

SELECT workers.*
FROM marriage
JOIN workers ON marriage.husband_passport_no = workers.passport_no OR marriage.wife_passport_no = workers.passport_no;

SELECT goods.name, goods.price, holds.amount, warehouses.name, round(goods.price * holds.amount, 2)
FROM warehouses
INNER JOIN (goods INNER JOIN holds ON goods.code = holds.goods_code)
ON holds.warehouse_code = warehouses.code
ORDER BY goods.name, warehouses.name;

SELECT warehouses.name AS warehouse_name,
    workers.last_name || ' ' || workers.first_name || ' ' || workers.middle_name AS chief_name
FROM warehouses INNER JOIN workers
ON workers.passport_no = warehouses.chief_passport_no
ORDER BY warehouse_name, chief_name;

SELECT goods.name, holds.warehouse_code, holds.amount
FROM goods INNER JOIN holds
    ON goods.code = holds.goods_code
WHERE holds.amount >= 15;

SELECT goods.*
FROM goods INNER JOIN holds ON goods.code = holds.goods_code;

SELECT goods.*
FROM goods INNER JOIN holds ON goods.code = holds.goods_code
WHERE holds.goods_code IS NULL;

SELECT workers.*
FROM workers LEFT JOIN marriage
    ON marriage.husband_passport_no = workers.passport_no OR marriage.wife_passport_no = workers.passport_no
WHERE marriage.husband_passport_no iS NULL;

SELECT workers.*, warehouses.code
FROM workers LEFT JOIN warehouses
ON workers.passport_no = warehouses.chief_passport_no
WHERE warehouses.code IS NULL;

