-- Database: store

-- DROP DATABASE store;

CREATE DATABASE store
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United Kingdom.1252'
    LC_CTYPE = 'English_United Kingdom.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
	
— DROP DATABASE
DROP TABLE products;
DROP TABLE address;
DROP TABLE employees;
DROP TABLE customers;
DROP TABLE orders;

/* 
CREATE THE PRODUCTS TABLE
*/


/*each line here is a column in the DB table*/
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	season VARCHAR(20),
	wholesale_price NUMERIC(4,2),
	in_stock BOOLEAN
);

/*
CREATE THE ADDRESS TABLE
*/ 

CREATE TABLE address (
	id SERIAL PRIMARY KEY, 
	street VARCHAR(30),
	city VARCHAR(30),
	postcode VARCHAR(7)
);

/*
CREATE THE EMPLOYEES TABLE 
*/ 

CREATE TABLE employees (
	id SERIAL PRIMARY KEY, 
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	pay NUMERIC(4,2),
	hours INT,
	days_off INT,
	address_id INT REFERENCES address(id)
);

/*
CREATE THE CUSTOMERS TABLE
*/ 

CREATE TABLE customers (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	gender CHAR(1), 
	telephone VARCHAR(15),
	email VARCHAR(30),
	date_joined DATE,
	address_id INT REFERENCES address(id)
);

/*
CREATE THE ORDERS TABLE
*/

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES customers(id),
	product_id INT REFERENCES products(id), 
	quantity INT,
	price NUMERIC(4,2),
	order_date DATE
);


/* 
INSERTING OUR DATA INTO THE PRODUCTS TABLE 

INSERT INTO + column names (separated by comma)
VALUES + the values we're going to insert
*/ 

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Blue Shirt','Spring - Summer', True, 17.50);

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('White Shirt','Spring - Summer', True, 17.50);
 
INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Pink Shirt','Spring - Summer', True, 17.50);

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Navy Shorts','Summer', True, 23.50);

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Red Shorts','Summer', False, 23.50);

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Trousers','Autumn - Winter', True, 29.50);

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Jumper','Winter', False, 25.00);

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Light Jacket','Spring', True, 34.00);

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Winter Jacket','Winter', False, 54.00);
 
INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('T-Shirt','All', True, 14.00);

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Socks','All', True, 10.00);

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Underwear','All', True, 12.00);

INSERT INTO products (name, season, in_stock, wholesale_price)
VALUES ('Shoes','All', True, 42.00);

/*
INSERTING OUR DATA INTO THE ADDRESS TABLE
*/ 

INSERT INTO address (street, city, postcode)
VALUES ('Fenwick Street','Brighton','BN89ST');
                     
INSERT INTO address (street, city, postcode)
VALUES ('George Street','Brighton','BN83ET');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Liverpool Avenue','Worthing','BN120RW');

INSERT INTO address (street, city, postcode)
VALUES ('Sea Lane','Shoreham','SW121QP');
                     
INSERT INTO address (street, city, postcode)
VALUES ('George Street','Brighton','BN83ET');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Fenwick Street','Brighton','BN89ST');
             
INSERT INTO address (street, city, postcode)
VALUES ('Fenwick Street','Brighton','BN89ST');
                     
INSERT INTO address (street, city, postcode)
VALUES ('North Lane','Brighton','BN85CV');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Main Road','Hove','BN79MG');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Church Street','Worthing','BN124DQ');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Salisbury Street','Hove','BN72ZT');
                     
INSERT INTO address (street, city, postcode)
VALUES ('South Lane','Brighton','BN88OP');
                     
INSERT INTO address (street, city, postcode)
VALUES ('North Lane','Brighton','BN85CV');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Fenwick Street','Brighton','BN89ST');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Fortnum Road','Hove','BN71KG');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Scarborough Avenue','Brighton','BN81AZ');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Jubilee Street','London','N117TY');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Bridge Road','London','SW39IJ');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Ocean Road','Eastbourne','EN124WT');
                     
INSERT INTO address (street, city, postcode)
VALUES ('High Street','Worthing','BN120KL');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Station Road','Brighton','BN84WS');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Goss Street','Hove','BN79SA');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Church Street','Brighton','BN80JC');
                     
INSERT INTO address (street, city, postcode)
VALUES ('High Street','Brighton','BN82HS');

/*
INSERTING OUR DATA INTO THE EMPLOYEES TABLE
*/ 

INSERT INTO employees (first_name, last_name, pay, hours, days_off, address_id)
VALUES ('Karen','Lam',10.25,130,2,1);

INSERT INTO employees (first_name, last_name, pay, hours, days_off, address_id)
VALUES ('Olivia','Burton',13.50,140,0,2);

INSERT INTO employees (first_name, last_name, pay, hours, days_off, address_id)
VALUES ('Nigel','Patterson',11.00,90,5,3);

INSERT INTO employees (first_name, last_name, pay, hours, days_off, address_id)
VALUES ('Emily','Smith',10.00,100,1,4);

/* 
INSERTING OUR DATA INTO THE CUSTOMERS TABLE
*/ 

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('John','Smith','M','01903765032','jsmith@gmail.com','20160416',5);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('John','Burrows','M','01903733211','jburrows@gmail.com','20170113',6);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('John','','M','','jburrows@gmail.com','20170113',NULL);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Susan','Andrews','F','01304333492','sandwoman@gmail.com','20140222',7);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Emily','Simmonds','F','01708454567','emilysimmonds@gmail.com','20170310',8);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('George','Simmonds','M','01708454567','gsimmonds@gmail.com','20170310',8);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Emily','Warburton','F','01903909009','ewarbs@gmail.com','20151109',9);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('David','Smith','M','01503665382','dsmith@gmail.com','20160510',10);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Jennifer','Jang','F','01944225042','jenjan@gmail.com','20160510',11);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Emma','Hand','F','01990375099','handemma@gmail.com','20170423',12);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Joseph','Small','M','01990375099','smallj@gmail.com','20161225',12);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Gill','Blake','F','01924123032','gblake@gmail.com','20150202',13);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('David','Richardson','M','01993910088','davrich@gmail.com','20160729',14);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Michael','Edward','M','01287435932','medwards@gmail.com','20160402',15);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Edward','Ball','M','01902765872','balle@gmail.com','20141020',16);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Emily','Edwards','F','01922665192','eemilye@gmail.com','20160416',17);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Paul','Chen','M','01903763042','chendog@gmail.com','20150416',18);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Pauline','Harris','F','01904964165','pharris@gmail.com','20170216',19);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Pheobe','Chang','F','02203743232','pchang@gmail.com','20160806',20);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Milly','West','F','01904785038','mwest@gmail.com','20141123',21);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Simon','West','M','01303195037','simonwest@gmail.com','20170401',22);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Shannon','West','F','01303195037','swest@gmail.com','20170401',22);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Olivia','Penny','F','01903765765','olipen@gmail.com','20160320',23);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Samantha','Fox','F','01903765765','samfox@gmail.com','20160920',23);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Sam','Stevens','M','01993805044','sstevenss@gmail.com','20170128',24);

/*
INSERTING OUR DATA INTO ORDERS TABLE
*/ 

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,1,2,49.50,'20170102');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (9,2,1,49.50,'20170103');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (22,13,1,75.00,'20170105');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (7,3,1,49.50,'20170109');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (9,10,4,25.00,'20170111');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (NULL,10,3,25.00,'20170111');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (1,11,2,20.00,'20170111');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (13,8,2,69.00,'20170114');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,4,1,60.00,'20170116');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (20,6,3,65.00,'20170116');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (17,12,1,20.00,'20170117');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (8,2,2,49.50,'20170121');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (2,10,2,25.00,'20170122');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (16,1,2,49.50,'20170124');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (3,13,1,75.00,'20170128');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (4,11,2,20.00,'20170202');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (12,2,1,49.50,'20170202');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (18,3,2,49.50,'20170203');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (23,6,4,65.00,'20170204');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (1,13,2,75.00,'20170205');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (1,11,2,20.00,'20170209');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,1,2,49.50,'20170210');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (7,4,1,60.00,'20170211');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (10,10,3,25.00,'20170213');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (17,12,2,20.00,'20170215');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (6,1,1,49.50,'20170216');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (4,10,2,25.00,'20170216');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (21,3,1,49.50,'20170220');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (8,13,1,75.00,'20170220');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (12,11,5,20.00,'20170221');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (12,12,3,20.00,'20170225');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,8,2,69.00,'20170227');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (3,1,2,49.50,'20170301');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (2,10,1,25.00,'20170302');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (20,4,2,60.00,'20170302');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (22,2,2,49.50,'20170302');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (14,4,1,60.00,'20170302');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (3,3,3,49.50,'20170304');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (2,2,2,49.50,'20170305');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (13,10,2,25.00,'20170307');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (15,11,1,20.00,'20170308');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (16,1,2,49.50,'20170312');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (11,11,2,20.00,'20170312');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,11,2,20.00,'20170314');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,12,2,20.00,'20170314');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (7,1,1,49.50,'20170317');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (8,13,1,75.00,'20170318');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (19,6,1,65.00,'20170319');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (20,10,2,25.00,'20170321');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (15,8,1,69.00,'20170322');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (18,4,2,60.00,'20170323');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (1,1,2,49.50,'20170324');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (2,3,1,49.50,'20170327'); 

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (17,12,3,20.00,'20170330');


/* SELECT --> extract data from DB*/
/* structure: SELECT column_name FROM table_name */

SELECT column_name FROM table_name;

SELECT wholesale_price FROM products;

/* multiple columns: SELECT column_name1, column_name2, column_name3 etc FROM table_name*/

SELECT first_name, last_name, address_id FROM customers;

/* to select all data and not just specifi columns:*/

SELECT * FROM table_name;

SELECT * FROM employees;

SELECT * FROM products;

SELECT * FROM customers;

/* WHERE clause in a SELECT statement*/
/* WHERE column_name = value (or using other combiners, like < or >)*/

/* execute the two lines combined*/

/* the following will show all the employees with first name "Emily" with ALL the other columns*/
SELECT * FROM employees
WHERE first_name = 'Emily';

/* the following shows all the employees with id greater than 2; 
it works also with "<" for smaller than and with "="*/
SELECT * FROM employees
WHERE id > 2;

/* I can also show specific columns*/
SELECT id, first_name, last_name FROM employees
WHERE id > 2;


/* more than one WHERE clause in a SELECT statement; no limits to times I use AND*/
SELECT * FROM table_name
WHERE column_name1 = "Value"
AND column_name2 = "Value"
AND column_name3 = "Value"

SELECT * FROM orders
WHERE price > 30.00
AND quantity >= 2
AND customer_id <= 15

/* I can also filter strings, or a combination of different values (strings, numbers, boolean...)*/
/* I can decide to show some data but filter it according to criteria not shown!*/
/* following: I get 3 columns out of the table, according to gender, which is not shown*/
SELECT id, first_name, last_name FROM customers
WHERE gender = 'F'
AND first_name ='Emily'
AND id > 5;

-- EXERCISES!

--1. Select the city and postcode from the address table. 
SELECT city, postcode FROM address;

-- 2. Select the product name from the products table where the season is winter.
SELECT * FROM products;

SELECT name FROM products
WHERE season = 'Winter';

-- 3. Select id, quantity and order_date from the orders table where price 
-- is more than 25.00 and quantity is less than 4

SELECT * FROM orders

SELECT id, quantity, order_date FROM orders
WHERE price > 25.00
AND quantity < 4;

-- 4. Select all rows of data from the products table where season 
-- is equal to summer and wholesale_price is at least 20.00.

SELECT * FROM products
WHERE season = 'Summer'
AND wholesale_price >= 20.00;


/* use IN, NOT IN in a WHERE clause*/
/* allows us to have as parameter(s) as many values as we want */
/* we will get the rows that match the value(s)*/
SELECT * FROM address
WHERE city IN ('Brighton', 'Worthing', 'London', 'Shoreham');

--works also for numbers!
SELECT * FROM address
WHERE id IN (2,5,7,9,10);

/* NOT IN: we will get the rows that don't match the values*/
SELECT * FROM address
WHERE id NOT IN (2,5,7,9,10);

-- of course also for strings
SELECT * FROM address
WHERE city NOT IN ('Brighton', 'Worthing');


/* BETWEEN statement in a WHERE clause*/
/* get rows between the 2 stated values (included) */

--the following will get the rows with id from 5 to 10 included
SELECT * FROM  customers
WHERE id BETWEEN 5 AND 10;

-- more interesting: using BETWEEN with dates!
-- in SQL dates are written with the format : 'yyyymmdd (date must be in single quotes)
-- if I want to get all the customers that joined in 2016:
SELECT first_name, last_name, date_joined FROM customers
WHERE date_joined BETWEEN '20160101' AND '20161231';

--it doesn't make much sense to use BETWEEN with strings

/* the LIKE statement in the WHERE clause*/

-- the % looks for any number of characters either side of the string;
-- I can have whatever number of characters before or after the string
SELECT * FROM products
WHERE name LIKE '%Shirt';

SELECT * FROM products
WHERE name LIKE '%rt';

SELECT * FROM products
WHERE name LIKE 'Shi%'

SELECT * FROM products
WHERE name LIKE '%s%'

-- the _ looks for just one character either side of the string
-- I can have only one character before of after the string
SELECT * FROM products
WHERE name LIKE '_ocks'

SELECT * FROM  products
WHERE name LIKE 'Sock_'

SELECT * FROM  products
WHERE name LIKE '_ock_'

/* EXERCISES*/
-- 1. Select first and last name from customers where first name is Emily or John. 
SELECT first_name, last_name FROM customers
WHERE first_name IN ('Emily', 'John');

-- 2. Select product id and name from the products table where the product name includes the string pattern Shirt. 
SELECT id, name FROM products
WHERE name LIKE '%Shirt%';

-- 3. Select id from customers table for the customers who joined from June to September 2016. 
SELECT id, date_joined FROM customers
WHERE date_joined BETWEEN '20160601' AND '20160930';

-- 4. Select id and order_date from the orders table for customer_ids 2, 4, 6, 8 in March 2017.
SELECT id, order_date FROM orders
WHERE customer_id IN (2,4,6,8) 
AND order_date BETWEEN '20170301' AND '20170331';


/* ORDER BY: ordering the result set, ASC (ascending) and (DESC) descending*/
/* if ASC or DESC anre not specified, it's automatically in ascending order*/
-- with numbers:
SELECT * FROM orders
ORDER BY quantity ASC;

SELECT * FROM orders
ORDER BY quantity DESC;

-- with dates:
SELECT * FROM orders
ORDER BY order_date ASC;

SELECT * FROM orders
ORDER BY order_date DESC;

-- with strings: alphabetical order!
SELECT * FROM employees
ORDER BY last_name ASC;

SELECT * FROM employees
ORDER BY last_name DESC;

/* LIMIT: limits the resulting rows to a specified number*/
/* OFFSET: coupled with LIMIT, ignores the first rows in quantity equal to the given number*/

--get the 5  most expensive items, ignoring the 2 initial rows
SELECT * FROM products
ORDER BY wholesale_price DESC
LIMIT 5 OFFSET 2;

-- get the 7 cheapest items, ignoring the 3 initial rows;
SELECT * FROM products
ORDER BY wholesale_price ASC
LIMIT 7 OFFSET 3;

/* DISTINCT removes duplicate results from the result set*/
/* it's used after SELECT*/
SELECT DISTINCT city FROM address;

-- works also with combined values; it will remove all the duplicates matching the chosen values
SELECT DISTINCT city, street FROM address;


/* AS: column name aliases; changes the colum name (but not in the database)*/
-- the following will change each column name to what it's written after AS (each time!)

SELECT id, first_name, last_name AS surname, pay AS pay_per_hour FROM employees;

-- it's not changed in the database itself, just in the table visualization
-- WHERE won't work with the new column name, because it's not in the database
SELECT id, first_name, last_name AS surname, pay AS pay_per_hour FROM employees
WHERE pay_per_hour > 10.00;
-- I still have to use pay!

-- ORDER BY will work with AS, and will still work with the name in the database
SELECT id, first_name, last_name AS surname, pay AS pay_per_hour FROM employees
ORDER BY pay_per_hour DESC;


/* EXERCISES */

-- 1. Order the orders table by quantity from highest to lowest. 
SELECT * FROM orders
ORDER BY quantity DESC;

-- 2. Select only distinct (no duplicates)first_name in the customers table and order alphabetically from A to Z.
SELECT DISTINCT first_name FROM customers
ORDER BY first_name ASC;

-- 3. Select only the first 5 last_name's from the customers table, ordered alphabetically A to Z, 
-- where last_name includes at least 1 's'.
SELECT last_name FROM customers
WHERE last_name LIKE '%s%'
ORDER BY last_name ASC
LIMIT 5 ;


-- 4. Select first_name, last_name and pay from the employees table but rename the pay column to 'pay_per_hour'.
SELECT first_name, last_name, pay AS pay_per_hour FROM employees;


/* NEW SECTION: JOIN TWO TABLES!*/

/* INNER JOIN: in the Venn Diagram, is like the common area between 2 groups
   it joins only the elements in common between the 2 tables 
*/

-- NOTE: table.column_name returns all the matching rows

-- in the following I select columns from 2 different tables, and I merge them according to the condition stated 
-- after ON where the costumer_id of the table "orders" and the id in the table "customers" match
SELECT customers.first_name, customers.last_name, orders.quantity, orders.price FROM orders
INNER JOIN customers ON orders.customer_id = customers.id;

-- I can write the same as above setting an "alias" for the tables
SELECT cu.first_name, cu.last_name, o.quantity, o.price FROM orders o
INNER JOIN customers cu ON o.customer_id = cu.id;

-- it can be that some rows don't appear, because for example the required value is not stated (null);
-- for example witn a customer id in the "order" table -> use FULL JOIN to show them too
-- NOTE: JOIN is always by default INNER, unless specified
SELECT cu.first_name, cu.last_name, o.quantity, o.price FROM orders o
FULL JOIN customers cu ON o.customer_id = cu.id;


-- another example: join the product name from "products" related to its quantity and price from "orders"
SELECT pr.name, o.quantity, o.price FROM orders o
INNER JOIN products pr ON o.product_id = pr.id;

-- INNER JOIN with WHERE; it's similar, just add WHERE clause
-- also: ORDER BY table.value
-- always state the table to which the value belongs!
SELECT cu.first_name, cu.last_name, o.quantity, o.price FROM orders o
FULL JOIN customers cu ON o.customer_id = cu.id
WHERE cu.first_name = 'John';

SELECT cu.id, cu.first_name, cu.last_name, o.quantity, o.price, o.order_date FROM orders o
FULL JOIN customers cu ON o.customer_id = cu.id
WHERE cu.id IN (2,4,6,8,9)
AND o.quantity > 1
-- AND cu.first_name NOT IN ('John', 'David')
AND cu.last_name LIKE '%ndre%'
ORDER BY o.order_date DESC;

/* EXERCISES: INNER JOIN*/
--1. Select the name from the products table and the order_date from the orders table.
SELECT pr.name, o.order_date FROM orders o
INNER JOIN products pr ON pr.id = o.product_id
ORDER BY order_date DESC;

--2. Select the first_name and last_name from the customers table and the id from the orders 
--   table for orders placed in February 2017, ordered by customer last_name alphabetically Z to A. 
SELECT o.id, cu.first_name, cu.last_name, o.order_date FROM customers cu
INNER JOIN orders o ON cu.id = o.customer_id
WHERE o.order_date BETWEEN '20170201' AND '20170228'
ORDER BY cu.last_name DESC;

--3. Select date_joined from the customers table and postcode from the address table where city is Brighton, 
--   ordered by customers first_name alphabetically A to Z. 
SELECT cu.first_name, cu.date_joined, ad.postcode, ad.city FROM customers cu
INNER JOIN address ad ON ad.id = cu.address_id
WHERE ad.city IN ('Brighton', 'London')
ORDER BY cu.first_name ASC;

/* LEFT JOIN*/
/* it returns all data from table 1 + matched data from table 2 */
/* it means it returns rows that have a match in table 1 (on the "left") but don't necessarily have a match in table 2
*/
/* it means we can get "null" values from table 2 (if it doesn't have corresponding values)*/
SELECT * FROM address;
SELECT * FROM customers;

SELECT a.id, a.city, cu.first_name, cu.last_name, c.address_id FROM customers cu
LEFT JOIN address a ON a.id = cu.address_id;

SELECT a.id, a.city, cu.first_name, cu.last_name, cu.address_id FROM address a
LEFT JOIN customers cu  ON a.id = cu.address_id;

/* RIGHT JOIN*/
/* returns all data from table 2 + matched data from table 1*/
SELECT * FROM address;
SELECT * FROM customers;

SELECT a.id, a.city, cu.first_name, cu.last_name, c.address_id FROM customers cu
RIGHT JOIN address a ON a.id = cu.address_id;

SELECT a.id, a.city, cu.first_name, cu.last_name, cu.address_id FROM address a
RIGHT JOIN customers cu  ON a.id = cu.address_id;

/*FULL JOIN (OUTER JOIN in other programs*/
/* returns all the matching data from the 2 tables*/

SELECT a.id, a.city, cu.first_name, cu.last_name, c.address_id FROM address a
LEFT JOIN customers cu ON a.id = cu.address_id;

SELECT a.id, a.city, cu.first_name, cu.last_name, cu.address_id FROM address a
RIGHT JOIN customers cu  ON a.id = cu.address_id;

-- I can use also WHERE clause, ORDER BY ecc
SELECT * FROM customers cu
FULL JOIN address a ON a.id = cu.address_id
WHERE cu.first_name = 'John'
ORDER BY a.city DESC;

--NOTE: some programs other than PostgreSQL need another way ot show all columns:
SELECT cu.*, a.* FROM customers cu
FULL JOIN address a ON a.id = cu.address_id
WHERE cu.first_name = 'John'
ORDER BY a.city DESC;

/* EXERCISES ON LEFT-RIGHT-FULL JOIN*/
--1. How many rows are returned by a LEFT JOIN between the customers (table 1) and address (table 2) tables.
SELECT*FROM customers cu;
SELECT*FROM address ad;

SELECT cu.first_name, ad.city FROM customers cu
LEFT JOIN address ad ON cu.address_id = ad.id;
-- 24? NO, 25; the 3rd row has John with null City, becuase we have John in the left table, so it's returned

--2. How many rows are returned by a RIGHT JOIN between the customers (table 1) and address (table 2) tables.
SELECT cu.first_name, ad.city FROM customers cu
RIGHT JOIN address ad ON cu.address_id = ad.id;
-- 28; it returns some addresses without customer (customer null)

--3. How many rows are returned by a FULL JOIN between the customers (table 1) and address (table 2) tables.
SELECT cu.first_name, ad.city FROM customers cu
FULL JOIN address ad ON cu.address_id = ad.id;
--28? NO, 29; we get John with null address and the 4 addresses without customer

/* JOIN multiple tables*/
/* I can join as many talbles as I want, provided there are matching columns*/
SELECT cu.first_name, cu.last_name, ad.street, ad.postcode, pr.name, o.quantity, o.price, o.order_date FROM orders o
JOIN products pr ON o.product_id = pr.id
JOIN customers cu ON o.customer_id = cu.id
LEFT JOIN address ad ON cu.address_id = ad.id
WHERE ad.city = 'Brighton'
AND pr.name = 'Shoes'
ORDER BY cu.first_name;

/* UNION and UNION ALL*/

--combines the results set of two SELECT statements

-- the SELECT statements must have the same number of columns
-- the columns must be of compatible data types (string with string etc)

SELECT first_name, last_name FROM customers
UNION
SELECT first_name, last_name FROM employees;

-- !!UNION will remove duplicate row from the result set:
-- for example, 'John' will appear only one time, even if there are many such rows (see following)
SELECT first_name FROM customers
UNION
SELECT first_name FROM employees;

--!! UNION ALL will return all the rows, even those with duplicates
SELECT first_name FROM customers
UNION ALL
SELECT first_name FROM employees;

-- I can combine with WHERE clause
-- the following returns the (3) customer with first name 'John' + all the employees (because no WHERE clause for them)
SELECT first_name, last_name FROM customers
WHERE first_name = 'John'
UNION ALL
SELECT first_name, last_name FROM employees;

/* EXERCISE: select from multiple tables*/

--1. Select the first_name and last_name from the customers table, name and season 
--   from the products table and quantity from the orders table, where city is equal to Worthing.
-- (for this I need also to work on the table 'address', which stores the address id, common with table 'customers')
SELECT cu.first_name, cu.last_name, pr.name, pr.season, o.quantity FROM customers cu
JOIN orders o ON cu.id = o.customer_id
JOIN products pr ON pr.id = o.product_id
JOIN address ad ON ad.id = cu.address_id
WHERE ad.city = 'Worthing';


--2. Select the quantity, price and order_date from the orders table, name from the product,
--   and street and postcode from the address table. 
-- (I'll need 'customers' table to link 'address' to the the other 2 tables)
SELECT o.quantity, o.price, o.order_date, pr.name, ad.street, ad.postcode FROM orders o
JOIN products pr ON pr.id = o.product_id
JOIN customers cu ON cu.id = o.customer_id
JOIN  address ad ON ad.id = cu.address_id;

SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM address;
SELECT * FROM customers;

--3. Select the first_name and last_name from the employees and customers tables using a UNION clause. 
-- the following will return all the rows, even the ones with duplicated values
SELECT first_name, last_name FROM employees
UNION ALL
SELECT first_name, last_name FROM customers;

-- the following will not return the duplicated values BUT will returns the same number of rows, because there 
-- are no rows with the same first_name && the same last_name
SELECT first_name, last_name FROM employees
UNION 
SELECT first_name, last_name FROM customers;


/* SECTION 5*/

/* COUNT : aggregates all the rows returned from SELECT statement into one number (one value) */
/* it counts the rows that satisify a condition; returns the result!*/

--the following will just count all the rows in the table "employees" (4) and return their amount(4)
SELECT COUNT(*) FROM employees;

SELECT * FROM products

-- the following will count the rows with season = 'Summer' (2)
-- instead of * i can put for example "name"; the result won't change, it will count the rows with matching season 
SELECT COUNT(name) FROM products
WHERE season = 'Summer';

-- I can count how many orders where placed between two dates or in a month
-- for example, in January 2017 we have 15 orders
SELECT COUNT (*) FROM orders
WHERE order_date BETWEEN '20170101' AND '20170131';


/* MIN and MAX*/
/* MIN gets the minimum value out of a column of a table*/
/* SELECT MIN (column_name) FROM table_name*/

--get the MIN value of colums wholesale_price, table products
-- it's the cheapest product, i can change also the column name in the result, for clarity

SELECT MIN(wholesale_price) AS cheapest_price FROM products; 

-- get the MAX value of columns quantity, table orders
-- it's the biggest order in terms of quantity (in the following it's 5)
SELECT MAX (quantity) AS biggest_quantity FROM orders;


/* SUM */
/* adds up all the rows for a particular column and returns a value*/
/* SELECT SUM (column_name) FROM table_name*/
/* can't use it on a non-numeric column!!*/

--get the total hours worked by the employees
SELECT SUM(hours) AS total_hours_worked FROM employees;


--how many orders in Januray 2017? (460)
SELECT SUM(quantity) AS total_orders FROM orders
WHERE order_date BETWEEN '20170101' AND '20170131';

/* average: AVG*/
/* returns the average of the various values of rows of a specific column*/
/* SELECT AVG(column_name) FROM (table_name)*/

-- AVG of pay of employees
SELECT AVG(pay) FROM employees;

--AVG of the prices from the order table -> avera price of the stuff the customers are buying
SELECT AVG(price) FROM orders;

-- the same as above, but ignoring orders where quantity is equal to 1
SELECT AVG(price) FROM orders
WHERE quantity >1;


/* GROUP BY: groups data*/
/* the following for example groups the data from customer_id in one row, returning the sum of all the prices
	of the stuff bought by that customer*/
/* I group the data "by", according to customer_id, which will be stated in just one row, despite the fact
   that it appears in multiple rows in the table "orders"*/
/* SELECT column_1, SUM(column_3), FROM table
   ORDER BY column_1;*/

SELECT customer_id, SUM(price) FROM orders
GROUP BY customer_id;

-- now, select 2 columns when we have just 1 which is being aggregated over
-- the 2 colums must appear both in SELECT and GROUP BY
-- SELECT column_1, column_2, SUM(column_3), FROM table
-- ORDER BY column_1, column_2;
-- if there are repeated products_id (i.e. if the customer bought the same product more than once), the price will
-- be summed up and the relative customer_id rows will be grouped into 1 row (try the stuff below)

-- here the customer with id 1 has 4 rows (return it just to check)
SELECT * FROM orders
WHERE customer_id = 1
ORDER BY customer_id;

-- here the customer with id 1 has 3 rows, because two of have the same price, so they are grouped and the price is 
-- summed --> !! it means that duplicated values are summed
SELECT customer_id, product_id, SUM(price) FROM orders
WHERE customer_id = 1
GROUP BY customer_id, product_id
ORDER BY customer_id;


-- if there is not this situation, each has one row: it's shown here, (and there is still only one row with 
-- customer_id = 1 and product_id = 11, which has as price 40.00 instead of 20.00 because it's summed)
SELECT customer_id, product_id, SUM(price) FROM orders
GROUP BY customer_id, product_id
ORDER BY customer_id;

-- something more meaningful: 
-- return  grouped data of: customer first and last name, product name + the sum of the price
-- run the following: if Edward Ball will buy 1 more item 'socks', with such code there will be no extra row
-- for this purchase, but the sum will be updated (20.00 + 10.00 of the new purchase)

SELECT cu.first_name, cu.last_name, pr.name, SUM(o.price) FROM customers cu
JOIN orders o ON o.customer_id = cu.id
JOIN products pr ON pr.id = o.product_id
GROUP BY cu.first_name, cu.last_name, pr.name
ORDER BY cu.last_name;

/* HAVING clause*/
/* does the same as WHERE, but can be used after GROUP BY (WHERE can't)*/

-- return the grouped data of custumer_id = 8 + the sum of the price:
SELECT customer_id, SUM(price) FROM orders
GROUP BY customer_id
HAVING customer_id = 8;

-- return  grouped data of: customer first and last name, product name + the sum of the price
-- and add an HAVING clause to obtain each product name which has the word "Shirt":

SELECT cu.first_name, cu.last_name, pr.name, SUM(o.price) FROM customers cu
JOIN orders o ON o.customer_id = cu.id
JOIN products pr ON pr.id = o.product_id
GROUP BY cu.first_name, cu.last_name, pr.name
HAVING pr.name LIKE '%Shirt%'
ORDER BY cu.last_name;

/* EXERCISE: Questions on Aggregate Functions */

--1. Write a query which will return the maximum value in the hours column from the employees table. 
-- I'll use MAX
SELECT MAX (hours) FROM employees;

--2. Write a query which will return the number of rows in the address table where city is equal to London. 
-- I'll use COUNT; i put a * in parentheses, because it doesn't matter which column is getting considerd,
-- I'm counting the rows where column city = 'London' (these rows have also other columns)
SELECT COUNT(*) FROM address
WHERE city = 'London';

--3. What was the total quantity bought in January 2017, grouped by each product and order date?
-- I need GROUP BY and I need to join product and orders
SELECT pr.name, o.order_date, SUM(o.quantity) AS total_quantity_sold FROM products pr
JOIN orders o ON o.product_id = pr.id
GROUP BY pr.name, o.order_date
HAVING o.order_date BETWEEN '20170101' AND '20170131'
ORDER BY total_quantity_sold DESC;

-- to get the total quantity of products sold:
SELECT SUM(quantity) FROM orders;


--4. What was the average price spent, grouped by each order date, for March 2017? 
-- practically the average spent per day
-- here I don't need to join table, I have all I need in one; I still need to group data
SELECT order_date, AVG(price) FROM orders
GROUP BY order_date
HAVING order_date BETWEEN '20170301' AND '20170331'
ORDER BY order_date ASC;
 
