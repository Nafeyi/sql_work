SELECT * FROM salesorder;
SELECT * FROM salesOrder
LIMIT 500;  --- TRYING TO PICK THE FIRST 500
SELECT count(*) FROM salesOrder;  ---- COUNTING ROWS IN A PARTICULAR TABLE 
SELECT count(*) AS number_of_rows FROM salesOrder; --- COUNTING ROWS IN A PARTICULAR TABLE WITH ALIAS
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns; -- COUNTING ALL COLUMS IN ALL TABLES
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns
WHERE table_name = "salesOrder";  ---- COUNTING COLUMNS IN A PARTICULAR TABLE


SELECT count(*) AS number_of_rows FROM salesorder;
SELECT count(*) AS number_of_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = "salesorder";

SELECT count(*) AS number_of_rows FROM region; --- IF YOU WANT TO COUNT NUM OF ROWS IN THE WHOLE TABLE
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns
WHERE table_name = "region";

SELECT count(*) AS number_of_rows FROM customer;
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns
WHERE table_name = "customer";

SELECT count(*) AS number_of_rows FROM employee;
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns
WHERE table_name = "employee";
SELECT * FROM employee;

SELECT count(*) AS number_of_rows FROM supplier;
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns
WHERE table_name = "supplier";

SELECT count(*) AS number_of_rows FROM product;
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns
WHERE table_name = "product";

SELECT count(*) AS number_of_rows FROM shipper;
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns
WHERE table_name = "shipper";

SELECT count(*) AS number_of_rows FROM orderdetail;
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns
WHERE table_name = "orderdetail";

SELECT count(*) AS number_of_rows FROM customer;
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns
WHERE table_name = "customer";
SELECT count(*) AS number_of_columns FROM INFORMATION_SCHEMA.columns
WHERE table_name = "customer";

SELECT * FROM customer;
SELECT * FROM customer
LIMIT 20;

UPDATE customer
SET fax = "(174)-145-7889"
WHERE custid = 3;

-- case statement
UPDATE customer
SET fax = CASE 
WHEN custid = 11 THEN "111-2455-15"
WHEN custid = 14 THEN "547-27675-32"
WHEN custid = 15 THEN "8789-135-62"
WHEN custid = 20 THEN "6779-1545-70"
END
WHERE custid in (11,14,15,20);


-- case statement
UPDATE customer
SET region = CASE 
WHEN custid = 1 THEN "Europe"
WHEN custid = 2 THEN "North America"
WHEN custid = 3 THEN "North America"
WHEN custid = 4 THEN "Europe"
WHEN custid = 5 THEN "Europe"
WHEN custid = 6 THEN "Europe"
WHEN custid = 7 THEN "Europe"
WHEN custid = 8 THEN "Europe"
WHEN custid = 9 THEN "Europe"
WHEN custid = 10 THEN "North America"
WHEN custid = 11 THEN "Europe"
WHEN custid = 12 THEN "South America"
WHEN custid = 13 THEN "North America"
WHEN custid = 14 THEN "Europe"
WHEN custid = 15 THEN "South America"
WHEN custid = 16 THEN "Europe"
WHEN custid = 17 THEN "Europe"
WHEN custid = 18 THEN "Europe"
WHEN custid = 19 THEN "Europe"
WHEN custid = 20 THEN "Europe"
END
WHERE custid in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);

UPDATE customer
SET region = CASE 
WHEN custid = 1 THEN "Europe"
WHEN custid = 2 THEN "North America"
WHEN custid = 3 THEN "North America"
WHEN custid = 4 THEN "Europe"
WHEN custid = 5 THEN "Europe"
WHEN custid = 6 THEN "Europe"
WHEN custid = 7 THEN "Europe"
WHEN custid = 8 THEN "Europe"
WHEN custid = 9 THEN "Europe"
WHEN custid = 10 THEN "North America"
WHEN custid = 11 THEN "Europe"
WHEN custid = 12 THEN "South America"
WHEN custid = 13 THEN "North America"
WHEN custid = 14 THEN "Europe"
WHEN custid = 15 THEN "South America"
WHEN custid = 16 THEN "Europe"
WHEN custid = 17 THEN "Europe"
WHEN custid = 18 THEN "Europe"
WHEN custid = 19 THEN "Europe"
WHEN custid = 20 THEN "Europe"
ELSE region   ---- WE ADDED IT INCASE ANY COLUMN IS WRONG TO REMOVE IT AFTER QUERY
END
WHERE custid in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);

UPDATE customer
SET mobile = CASE
WHEN custid = 1 THEN "080-555-8456"
WHEN custid = 2 THEN "080-667-3451"
WHEN custid = 3 THEN "080-434-5779"
WHEN custid = 4 THEN "080-555-8456"
WHEN custid = 5 THEN "090-455-7544"  
WHEN custid = 6 THEN "080-777-8456"
WHEN custid = 7 THEN "090-999-8499"
WHEN custid = 8 THEN "080-233-8856"
WHEN custid = 9 THEN "080-822-1156"
WHEN custid = 10 THEN "080-666-8456"
WHEN custid = 11 THEN "080-557-2537"
WHEN custid = 12 THEN "070-555-8456"
WHEN custid = 13 THEN "070-524-0000"
WHEN custid = 14 THEN "080-990-8456"
WHEN custid = 15 THEN "080-788-1116"
WHEN custid = 16 THEN "090-677-8456"
WHEN custid = 17 THEN "070-555-8456"
WHEN custid = 18 THEN "080-525-5556"
WHEN custid = 19 THEN "090-689-4456"
WHEN custid = 20 THEN "070-567-2256"
END
WHERE custid in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);

SELECT contactName
FROM customer 
WHERE contactName like ("B%");

SELECT * FROM customer 
WHERE contactName like "B%"; --- SELECT ALL NAMES THAT START WITH LETTER B UNDER CONTACTNAME COLUMN 

SELECT * FROM customer 
WHERE country like "M_____"; --- USE UNDERSCORE TO COUNT SPECIFIC NUMBER OF CHARACTER YOU WANT

UPDATE customer
SET email = CASE
WHEN custid = 1 THEN "esther1@gmail.com"
WHEN custid = 2 THEN "Techino@gmail.com"
WHEN custid = 3 THEN "Khemsafe34@gmail.com"
WHEN custid = 4 THEN "Jmaborg@gmail.com"
WHEN custid = 5 THEN "Favouritementor2@gmail.com"  
WHEN custid = 6 THEN "mekano35@gmail.com"
WHEN custid = 7 THEN "Olumatter@gmail.com"
WHEN custid = 8 THEN "Godswill28@gmail.com"
WHEN custid = 9 THEN "Policeacademy@gmail.com"
WHEN custid = 10 THEN "beautifyforum@gmail.com"
WHEN custid = 11 THEN "Skincareorg67@gmail.com"
WHEN custid = 12 THEN "teleportudm@gmail.com"
WHEN custid = 13 THEN "Workling3@gmail.com"
WHEN custid = 14 THEN "Udimyforfolio47@gmail.com"
WHEN custid = 15 THEN "mopentures56elola@gmail.com"
WHEN custid = 16 THEN "Nursesedu56@gmail.com"
WHEN custid = 17 THEN "philipsroom69@gmail.com"
WHEN custid = 18 THEN "Dino467@gmail.com"
WHEN custid = 19 THEN "systemsguards5@gmail.com"
WHEN custid = 20 THEN "Udembasfirm3@gmail.com"
END
WHERE custid in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);

SELECT * FROM customer
LIMIT 20;	

SELECT * FROM customer 
WHERE contactName like "P%"
ORDER BY custid;

SELECT contactName FROM customer 
WHERE contactName like "P%"
ORDER BY custid;

SELECT (contactName) AS Names_P FROM customer;

SELECT *FROM customer
WHERE contactName like "S%"
ORDER BY custid;
