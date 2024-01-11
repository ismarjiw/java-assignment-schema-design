INSERT INTO location (city, state, country) 
VALUES 
('Nashville', 'Tennessee', 'United States'),
('Memphis', 'Tennessee', 'United States'),
('Phoenix', 'Arizona', 'United States'),
('Denver', 'Colorado', 'United States');


INSERT INTO person (first_name, last_name, age, location_id)
VALUES 
  ('Chickie', 'Ourtic', 21, 1),
  ('Hilton', 'O''Hanley', 37, 1),
  ('Barbe', 'Purver', 50, 3),
  ('Reeta', 'Sammons', 34, 2),
  ('Abbott', 'Fisbburne', 49, 1),
  ('Winnie', 'Whines', 19, 4),
  ('Samantha', 'Leese', 35, 2),
  ('Edouard', 'Lorimer', 29, 1),
  ('Mattheus', 'Shaplin', 27, 3),
  ('Donnell', 'Corney', 25, 3),
  ('Wallis', 'Kauschke', 28, 3),
  ('Melva', 'Lanham', 20, 2),
  ('Amelina', 'McNirlan', 22, 4),
  ('Courtney', 'Holley', 22, 1),
  ('Sigismond', 'Vala', 21, 4),
  ('Jacquelynn', 'Halfacre', 24, 2),
  ('Alanna', 'Spino', 25, 3),
  ('Isa', 'Slight', 32, 1),
  ('Kakalina', 'Renne', 26, 3);


INSERT INTO interest (title) 
VALUES 
('Programming'),
('Gaming'),
('Computers'),
('Music'),
('Movies'),
('Cooking'),
('Sports');


INSERT INTO person_interest (person_id, interest_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 6),
  (2, 1),
  (2, 7),
  (2, 4),
  (3, 1),
  (3, 3),
  (3, 4),
  (4, 1),
  (4, 2),
  (4, 7),
  (5, 6),
  (5, 3),
  (5, 4),
  (6, 2),
  (6, 7),
  (7, 1),
  (7, 3),
  (8, 2),
  (8, 4),
  (9, 5),
  (9, 6),
  (10, 7),
  (10, 5),
  (11, 1),
  (11, 2),
  (11, 5),
  (12, 1),
  (12, 4),
  (12, 5),
  (13, 2),
  (13, 3),
  (13, 7),
  (14, 2),
  (14, 4),
  (14, 6),
  (15, 1),
  (15, 5),
  (15, 7),
  (16, 2),
  (16, 3),
  (16, 4),
  (17, 1),
  (17, 3),
  (17, 5),
  (17, 7),
  (18, 2),
  (18, 4),
  (18, 6),
  (19, 1),
  (19, 2),
  (19, 3),
  (19, 4),
  (19, 5),
  (19, 6),
  (19, 7);


UPDATE person SET age= age+1 WHERE id= 1;
UPDATE person SET age= age+1 WHERE id= 6;
UPDATE person SET age= age+1 WHERE id= 8;
UPDATE person SET age= age+1 WHERE id= 14;
UPDATE person SET age= age+1 WHERE id= 12;
UPDATE person SET age= age+1 WHERE id= 18;
UPDATE person SET age= age+1 WHERE id= 5;
UPDATE person SET age= age+1 WHERE id= 4;


DELETE FROM person_interest WHERE person_id= 2;
DELETE FROM person_interest WHERE person_id= 17;
DELETE FROM person WHERE id= 2;
DELETE FROM person WHERE id= 17;


SELECT first_name AS firstName, last_name as LastName FROM person;


SELECT P.first_name AS firstName, P.last_name AS lastName, L.city, L.state 
FROM person as P
JOIN location AS L ON L.id = P.location_id
WHERE P.location_id = 1; 


SELECT COUNT(city), city FROM location AS L
JOIN person AS P ON L.id = P.location_id
GROUP BY city; 


SELECT COUNT(title), title 
FROM interest AS I
JOIN person_interest AS PI ON PI.interest_id = I.id
JOIN person AS P ON P.id = PI.person_id
GROUP BY title;


SELECT P.first_name AS firstName, P.last_name AS lastName, L.city, L.state, I.title
FROM person as P
JOIN location AS L ON L.id = P.location_id
JOIN interest AS I ON I.id = 1
WHERE P.location_id = 1; 


SELECT CASE
WHEN age between 20 and 30 then '20-30'
WHEN age between 30 and 40 then '30-40'
WHEN age between 40 and 50 then '40-50'
END as range,
COUNT(*) FROM person
GROUP BY range
ORDER BY range

