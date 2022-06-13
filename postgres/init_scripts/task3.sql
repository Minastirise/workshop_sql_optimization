/*
Задания по индексам
*/

create table task31 (link1 int, doc varchar);
create table task32 (link2 int, doc varchar);
create table task33 (link3 int, doc varchar);
create table task34 (link4 int, doc varchar);
create table task35 (link5 int, doc varchar);
create table task36 (link6 int, doc varchar);
create table task37 (link7 int, doc varchar);
create table task38 (link8 int, doc varchar);
create table task39 (link9 int, doc varchar);
create table task310 (link10 int, doc varchar);


INSERT INTO task31 SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);
INSERT INTO task32 SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);
INSERT INTO task33 SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);
INSERT INTO task34 SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);
INSERT INTO task35 SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);
INSERT INTO task36 SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);
INSERT INTO task37 SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);
INSERT INTO task38 SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);
INSERT INTO task39 SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);
INSERT INTO task310 SELECT generate_series(1,1000000), repeat('X', (random() * 100)::int);
