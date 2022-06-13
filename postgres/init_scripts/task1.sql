/*
Задания по индексам
*/

create table block11 (event_id int, user_id int, category int, type varchar);


INSERT INTO block11
	SELECT generate_series(1,10000000),
    	floor(random() * 100000 + 1)::int,
    	floor(random() * 1000 + 1)::int,
		case when floor(random() * 20 + 1)::int = 1 then 'click' else 'show' end;


create table task1 (event_id int, user_id int, type varchar, dt timestamptz);

INSERT INTO task1
	SELECT generate_series(1,10000000),
    	floor(random() * 100000 + 1)::int,
		case when floor(random() * 20 + 1)::int = 1 then 'click' else 'show' end,
		timestamp '2022-05-20 00:00:00' +  random() * interval '3 days';
