CREATE TABLE restaurant (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR,
  distance NUMERIC,
  stars INTEGER,
  category VARCHAR,
  favorite_dish VARCHAR,
  does_takeout BOOLEAN,
  last_visit DATE
);

INSERT INTO restaurant VALUES (DEFAULT, 'Moontower', .4, 4, 'bbq', 'bacon cheeseburger', TRUE, '05/03/2017');
INSERT INTO restaurant VALUES (DEFAULT, 'la Familia', .8, 5, 'taqueria', 'cheese tamales', TRUE, '05/09/2017');
INSERT INTO restaurant VALUES (DEFAULT, 'Monsoon', 980, 5, 'Indian', 'samosa chaat', TRUE, '10/03/2016');
INSERT INTO restaurant VALUES (DEFAULT, 'Whataburger', 2.6, 4, 'fast food, burgers', 'double-meat Jr', True, '05/10/2017');
INSERT INTO restaurant VALUES (DEFAULT, 'McDonalds', 1.9, 2, 'fast food, burgers', 'quarter pounder', TRUE, '02/09/2017');
INSERT INTO restaurant VALUES (DEFAULT, 'Tacos la Morenita', 975, 5, 'street tacos', 'tacos al carbon', FALSE, '5/03/2017');

SELECT name FROM restaurant WHERE stars = 5;
SELECT favorite_dish FROM restaurant WHERE stars = 5;
SELECT id FROM restaurant WHERE name = 'Moontower';
SELECT name FROM restaurant WHERE category = 'BBQ';
SELECT name FROM restaurant WHERE does_takeout = TRUE;
SELECT name FROM restaurant WHERE does_takeout = TRUE AND category = 'BBQ';
SELECT name FROM restaurant WHERE distance < '2';
SELECT name FROM restaurant WHERE last_visit < '05/08/2017';
SELECT name FROM restaurant WHERE last_visit < '05/08/2017' AND stars = 5;

SELECT name FROM restaurant ORDER BY distance;
SELECT name FROM restaurant ORDER BY distance LIMIT 2;
SELECT name FROM restaurant ORDER BY stars DESC LIMIT 2;
SELECT name FROM restaurant WHERE distance < '2' ORDER BY stars DESC;
SELECT COUNT(*) FROM restaurant;
SELECT category, COUNT(*) FROM restaurant GROUP BY category;
SELECT category,
	AVG(stars) AS average_stars
FROM restaurant GROUP BY category;
SELECT category,
	MAX(stars) AS max_stars
FROM restaurant GROUP BY category;