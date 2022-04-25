USE personaltrainer;

-- 1.
USE personaltrainer;
SELECT *
FROM exercise;

-- 2
USE personaltrainer;
SELECT *
FROM client;

-- 3
USE personaltrainer;
SELECT *
FROM client
WHERE City = 'Metairie';

-- 4
USE personaltrainer;
SELECT *
FROM client
WHERE clientid = '818u7faf-7b4b-48a2-bf12-7a26c92de20c';

-- answer is no, there is no client with this clientID

-- 5

USE personaltrainer;

SELECT *
FROM goal;

-- answer is 17 rows in the goal table

-- 6

USE personaltrainer;

SELECT name, levelid
FROM workout;

-- 7

USE personaltrainer;

SELECT name, levelid, notes
FROM workout
WHERE levelid = 2;

-- 8

USE personaltrainer;

SELECT firstname, lastname, city
FROM client
WHERE city = 'Metairie' OR city = 'Kenner' OR city = 'Gretna';

-- 9

USE personaltrainer;

SELECT firstname, lastname, birthdate
FROM client
WHERE birthdate LIKE '198%';

-- 10

USE personaltrainer;

SELECT firstname, lastname, birthdate
FROM client
WHERE birthdate BETWEEN '1980-01-01' AND '1989-12-31';

-- 11

USE personaltrainer;

SELECT *
FROM login
WHERE emailaddress LIKE '%@%.gov';

-- 12

USE personaltrainer;

SELECT *
FROM login
WHERE emailaddress NOT LIKE '%@%.com';


-- 13

USE personaltrainer;

SELECT firstname, lastname
FROM client
WHERE birthdate IS NULL;


-- 14

USE personaltrainer;

SELECT name
FROM exercisecategory
WHERE ParentCategoryId IS NOT NULL;

-- 15


-- 16
USE personaltrainer;

SELECT firstname, lastname, city
FROM client
WHERE (lastname LIKE 'L%' OR lastname LIKE 'M%' OR lastname LIKE 'N%') AND city = 'LaPlace';

-- 17

USE personaltrainer;

SELECT InvoiceId, Description, Price, Quantity, servicedate, Price * Quantity AS line_item_total
FROM invoicelineitem
WHERE Price * Quantity BETWEEN 15 AND 25;


-- 18
USE personaltrainer;

select *

FROM client

where firstname like '%Estrella%';

USE personaltrainer;

select *

FROM login

where clientid like '87976c42-9226-4bc6-8b32-23a8cd7869a5';


-- 19



-- 2
-- 2