-- Getting started, do not update
DROP DATABASE IF EXISTS regifter;
CREATE DATABASE regifter;
\c regifter
-- End getting started code

--
-- Write your code below each prompt

--
\echo Create a table called gifts
-- with the following columns
-- id serial primary KEY
-- gift - string
-- giver - string
-- value - integer
-- previously_regifted boolean


CREATE TABLE gifts (id serial primary KEY,  gift TEXT, price INTEGER, previously_regifted BOOLEAN);
-- 

\echo See details of the table you created
-- 
\d gifts

-- 
\echo Alter the table so that the column price is changed to value 
-- 
ALTER TABLE gifts RENAME price to value;

-- 
\echo Insert a peach candle, given by 'Santa' thats value is 9 and has been previously regifted
-- 
INSERT INTO gifts (gift, giver , value , previously_regifted)

--
\echo Query for all the columns in your gifts table
-- 

INSERT INTO gifts (gift, giver , value , previously_regifted)
VALUES ('peach candle' , 'Santa' , '9' , TRUE);
--
\echo Uncomment below to insert 5 more gifts
-- 

INSERT INTO gifts (gift, giver, value, previously_regifted)
VALUES
('peach candle', 'Santa', '9', TRUE),
('cinnamon candle', 'Nick', '19', TRUE),
('soap on a rope', 'Rudolf', '29', FALSE),
('potpurri', 'Elf on the Shelf', '39', TRUE),
('mango candle', 'The Boss', '49', FALSE)
-- ;

-- 
\echo Insert 5 more gifts of your own choosing,  include 1 more candle
--
INSERT INTO gifts (gift, giver, value, previously_regifted)
VALUES
('mango candle', 'Fanta', '19', TRUE),
('lemon candle', 'Knick', '29', FALSE),
('foam on a pope', 'Dudolg', '39', FALSE),
('portpurrim', 'HElf on the Shelf', '59', TRUE),
('coconut candle', 'The Chief', '49', TRUE)


--
\echo Query for gifts with a price greater than or equal to 20
--

 SELECT * FROM gifts WHERE price <= 20
--
\echo Query for every gift that has the word candle in it, only show the gift column
--
SELECT * FROM gifts
WHERE gift = "column"

--
\echo Query for every gift whose giver is Santa OR value is greater than 30
SELECT * FROM gift
WHERE giver = "Santa" OR value > 30
;

--
\echo Query for every gift whose giver is NOT Santa
--
SELECT * FROM gift 
WHERE giver != "Santa" ;


--
\echo Update the second gift to have a value of 2999
-- 
UPDATE gift
SET value = 2999
WHERE id = 2;

--
\echo Query for the updated item
--
SELECT * FROM gift;

--
\echo Delete all the gifts from Santa and return the 'value' and 'gift' of the gift you have deleted
--
DELETE  FROM gifts 
WHERE santa = ("value " , "gift")
SELECT * FROM gift
--
\echo Query for all the columns in your gifts table one more time
--
SELECT * FROM gifts 


-- BONUSES

--
 \echo Count the total number of gifts that have the word candle in it
-- 


--
\echo Get the AVEREAGE value from all the gifts
--


-- 
 \echo Limit to 3 gifts, offset by 2 and order by price descending
--

--
-- finish
--
DROP TABLE IF EXISTS gifts;
