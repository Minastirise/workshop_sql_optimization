/*
Задания по индексам
*/

create table task41_source (link1 int, doc varchar);
create table task41_temp1 (link2 int, doc varchar);
create table task41_temp2 (link3 int, doc varchar);
create table task41_temp3 (link4 int, doc varchar);
create table task41_result (link1 int, doc varchar);

INSERT INTO task41_source SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);



create table task42_source (event_id int, user_id int, product_name varchar);
create table task42_temp1 (event_id int, user_id int, product_name varchar);
create table task42_temp2 (event_id int, user_id int, product_name varchar);
create table task42_temp3 (event_id int, user_id int, product_name varchar);
create table task42_result (event_id int, user_id int, product_name varchar);

INSERT INTO task42_source SELECT generate_series(1,1000000), floor(random() * 10000 + 1)::int, repeat('X', (random() * 100)::int);
