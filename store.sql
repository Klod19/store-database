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

