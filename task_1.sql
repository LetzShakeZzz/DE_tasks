-- создание таблиц

CREATE TABLE last_name (
	id serial PRIMARY KEY,
	surname VARCHAR(30)
	);

CREATE TABLE first_name (
	id serial PRIMARY KEY,
	name VARCHAR(30)
	);

CREATE TABLE middle_name (
	id serial PRIMARY KEY,
	middle_name VARCHAR(30)
	);

INSERT INTO last_name (surname)
VALUES ('Иванов'),
	('Петров'),
	('Сидоров');

INSERT INTO first_name (name)
VALUES ('Иван'),
	('Петр'),
	('Сидор');

INSERT INTO middle_name (middle_name)
VALUES ('Иванович'),
	('Петрович'),
	('Сидорович');

-- пример запроса

SELECT ln.surname, fn.name, mn.middle_name
FROM last_name AS ln
INNER JOIN first_name AS fn ON ln.id = fn.id
INNER JOIN middle_name AS mn ON fn.id = mn.id
ORDER BY 1, 2, 3 DESC;
