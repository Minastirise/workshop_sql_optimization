/*
Union vs union all
*/


create table block21 (event_id int, user_id int, product_name varchar);
create table block22 (event_id int, user_id int, product_name varchar);

INSERT INTO block21 SELECT generate_series(1,1000000), floor(random() * 10000 + 1)::int, repeat('X', (random() * 100)::int);
INSERT INTO block22 SELECT generate_series(1,1000000), floor(random() * 10000 + 1)::int, repeat('X', (random() * 100)::int);


create table nomenclature1 (event_id int, user_id int, product_name varchar);
create table nomenclature2 (event_id int, user_id int, product_name varchar);
create table nomenclature3 (event_id int, user_id int, product_name varchar);

INSERT INTO nomenclature1 SELECT generate_series(1,1000000), floor(random() * 10000 + 1)::int, repeat('X', (random() * 100)::int);
INSERT INTO nomenclature2 SELECT generate_series(1,1000000), floor(random() * 10000 + 1)::int, repeat('X', (random() * 100)::int);
INSERT INTO nomenclature3 SELECT generate_series(1,1000000), floor(random() * 10000 + 1)::int, repeat('X', (random() * 100)::int);
