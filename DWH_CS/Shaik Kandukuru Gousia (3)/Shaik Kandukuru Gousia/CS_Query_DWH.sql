CREATE TABLE dateDim(
date_id INT PRIMARY KEY,
date INT,
year INT,
month INT
);

SELECT *
FROM dateDim

INSERT INTO dateDim VALUES (1,1,2022,1)
INSERT INTO dateDim VALUES (2,2,2022,1)
INSERT INTO dateDim VALUES (3,3,2022,1)
INSERT INTO dateDim VALUES (4,4,2022,1)
INSERT INTO dateDim VALUES (5,5,2022,1)
INSERT INTO dateDim VALUES (6,6,2022,1)
INSERT INTO dateDim VALUES (7,7,2022,1)
INSERT INTO dateDim VALUES (8,8,2022,1)
INSERT INTO dateDim VALUES (9,9,2022,1)
INSERT INTO dateDim VALUES (10,10,2022,1)

SELECT *
FROM dateDim

CREATE TABLE productDim(
item_id INT PRIMARY KEY,
product_name nchar(20),
product_type nchar(20)
);

SELECT *
FROM productDim

INSERT INTO productDim VALUES (1,'icecream','frozen food')
INSERT INTO productDim VALUES (2,'coke','beverage')
INSERT INTO productDim VALUES (3,'apple','fruit')
INSERT INTO productDim VALUES (4,'banana','fruit')
INSERT INTO productDim VALUES (5,'Pepsi','beverage')

SELECT *
FROM productDim

CREATE TABLE storeDim(
store_id INT PRIMARY KEY,
store_name nchar(20),
store_city nchar(20)
);

SELECT *
FROM storeDim

INSERT INTO storeDim VALUES (1, 'Retail Store One', 'Bengaluru')
INSERT INTO storeDim VALUES (2, 'Retail Store Two', 'Chennai')
INSERT INTO storeDim VALUES (3, 'Retail Store Three', 'Bengaluru')

SELECT *
FROM storeDim

CREATE TABLE factSales(
item_id INT FOREIGN KEY REFERENCES productDim(item_id),
stored_id INT FOREIGN KEY REFERENCES storeDim(store_id),
date_id INT FOREIGN KEY REFERENCES dateDim(date_id),
item_qty INT,
unit_price INT,
total_amount INT,
discount AS (unit_price * item_qty) - total_amount
);

SELECT *
FROM factSales

INSERT INTO factSales VALUES (1,1,1,20,30,500)
INSERT INTO factSales VALUES (2,1,1,30,50,1250)
INSERT INTO factSales VALUES (3,1,1,50,20,850)
INSERT INTO factSales VALUES (4,1,1,20,5,80)
INSERT INTO factSales VALUES (5,1,1,160,30,3600)
INSERT INTO factSales VALUES (1,2,1,20,30,450)
INSERT INTO factSales VALUES (2,2,1,30,50,1225)
INSERT INTO factSales VALUES (3,2,1,50,20,845)
INSERT INTO factSales VALUES (4,2,1,20,5,85)
INSERT INTO factSales VALUES (5,2,1,160,30,3700)
INSERT INTO factSales VALUES (1,3,1,20,30,510)
INSERT INTO factSales VALUES (2,3,1,30,50,1240)
INSERT INTO factSales VALUES (3,3,1,50,20,860)
INSERT INTO factSales VALUES (4,3,1,20,5,70)
INSERT INTO factSales VALUES (5,3,1,160,30,3800)

INSERT INTO factSales VALUES (1,1,2,20,30,500)
INSERT INTO factSales VALUES (2,1,2,30,50,1250)
INSERT INTO factSales VALUES (3,1,2,50,20,850)
INSERT INTO factSales VALUES (4,1,2,20,5,80)
INSERT INTO factSales VALUES (5,1,2,160,30,3600)
INSERT INTO factSales VALUES (1,2,2,20,30,500)
INSERT INTO factSales VALUES (2,2,2,30,50,1240)
INSERT INTO factSales VALUES (3,2,2,50,20,830)
INSERT INTO factSales VALUES (4,2,2,20,5,84)
INSERT INTO factSales VALUES (5,2,2,160,30,3640)
INSERT INTO factSales VALUES (1,3,2,20,30,510)
INSERT INTO factSales VALUES (2,3,2,30,50,1220)
INSERT INTO factSales VALUES (3,3,2,50,20,820)
INSERT INTO factSales VALUES (4,3,2,20,5,83)
INSERT INTO factSales VALUES (5,3,2,160,30,3200)

INSERT INTO factSales VALUES (1,1,3,20,30,500)
INSERT INTO factSales VALUES (2,1,3,30,50,1250)
INSERT INTO factSales VALUES (3,1,3,50,20,850)
INSERT INTO factSales VALUES (4,1,3,20,5,80)
INSERT INTO factSales VALUES (5,1,3,160,30,3600)
INSERT INTO factSales VALUES (1,2,3,20,30,500)
INSERT INTO factSales VALUES (2,2,3,30,50,1250)
INSERT INTO factSales VALUES (3,2,3,50,20,850)
INSERT INTO factSales VALUES (4,2,3,20,5,80)
INSERT INTO factSales VALUES (5,2,3,160,30,3600)
INSERT INTO factSales VALUES (1,3,3,20,30,500)
INSERT INTO factSales VALUES (2,3,3,30,50,1250)
INSERT INTO factSales VALUES (3,3,3,50,20,850)
INSERT INTO factSales VALUES (4,3,3,20,5,80)
INSERT INTO factSales VALUES (5,3,3,160,30,3600)

INSERT INTO factSales VALUES (1,1,4,20,30,500)
INSERT INTO factSales VALUES (2,1,4,30,50,1250)
INSERT INTO factSales VALUES (3,1,4,50,20,850)
INSERT INTO factSales VALUES (4,1,4,20,5,80)
INSERT INTO factSales VALUES (5,1,4,160,30,3600)
INSERT INTO factSales VALUES (1,2,4,20,30,500)
INSERT INTO factSales VALUES (2,2,4,30,50,1250)
INSERT INTO factSales VALUES (3,2,4,50,20,850)
INSERT INTO factSales VALUES (4,2,4,20,5,80)
INSERT INTO factSales VALUES (5,2,4,160,30,3600)
INSERT INTO factSales VALUES (1,3,4,20,30,500)
INSERT INTO factSales VALUES (2,3,4,30,50,1250)
INSERT INTO factSales VALUES (3,3,4,50,20,850)
INSERT INTO factSales VALUES (4,3,4,20,5,80)
INSERT INTO factSales VALUES (5,3,4,160,30,3600)

INSERT INTO factSales VALUES (1,1,5,20,30,500)
INSERT INTO factSales VALUES (2,1,5,30,50,1250)
INSERT INTO factSales VALUES (3,1,5,50,20,850)
INSERT INTO factSales VALUES (4,1,5,20,5,80)
INSERT INTO factSales VALUES (5,1,5,160,30,3600)
INSERT INTO factSales VALUES (1,2,5,20,30,500)
INSERT INTO factSales VALUES (2,2,5,30,50,1250)
INSERT INTO factSales VALUES (3,2,5,50,20,850)
INSERT INTO factSales VALUES (4,2,5,20,5,80)
INSERT INTO factSales VALUES (5,2,5,160,30,3600)
INSERT INTO factSales VALUES (1,3,5,20,30,500)
INSERT INTO factSales VALUES (2,3,5,30,50,1250)
INSERT INTO factSales VALUES (3,3,5,50,20,850)
INSERT INTO factSales VALUES (4,3,5,20,5,80)
INSERT INTO factSales VALUES (5,3,5,160,30,3600)

SELECT *
FROM factSales



SELECT 
	store_name,
	product_type,
	SUM(total_amount) as total_sales
FROM storeDim s
INNER JOIN factSales sf
ON sf.stored_id = s.store_id
INNER JOIN productDim p
ON p.item_id = sf.item_id
INNER JOIN dateDim d
ON sf.date_id = d.date_id
GROUP BY store_name,product_type,store_id
ORDER BY store_id


SELECT 
	store_name,
	product_type,
	SUM(total_amount) as total_sales
INTO reporttable
FROM storeDim s
INNER JOIN factSales sf
ON sf.stored_id = s.store_id
INNER JOIN productDim p
ON p.item_id = sf.item_id
INNER JOIN dateDim d
ON sf.date_id = d.date_id
GROUP BY store_name,product_type,store_id
ORDER BY store_id

SELECT *
FROM reporttable





