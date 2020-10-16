USE tugas_weekend_sql;
CREATE TABLE film(
show_id INT(8),
typ_es VARCHAR(8),
title VARCHAR (25),
director VARCHAR (100),
cast_a TEXT,
country VARCHAR (50),
date_added VARCHAR (20),
release_year YEAR,
rating VARCHAR (6),
duration VARCHAR (15),
list_in TEXT,
descriptions TEXT
);


LOAD DATA INFILE '/xampp/mysql/data/netflix_titles.csv'
INTO TABLE film
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT*FROM film;

SELECT*FROM film WHERE duration="90 min";

SELECT*FROM film WHERE country="Thailand";

SELECT*FROM film WHERE release_year>2015;