/*
Задания по merge join
*/

create table block51 (event_id int, user_id int, user_name varchar, category int, type varchar);

INSERT INTO block51
	SELECT generate_series(1,10000000),
    	floor(random() * 100000 + 1)::int,
		concat('user ',floor(random() * 100000 + 1)),
    	floor(random() * 1000 + 1)::int,
		case when floor(random() * 20 + 1)::int = 1 then 'click' else 'show' end;


create table block52 (user_id int, user_name varchar, type varchar, register_dt timestamptz);

INSERT INTO block52
	SELECT 
    	generate_series(1,10000),
		concat('user ',floor(random() * 100000 + 1)),
		case when floor(random() * 20 + 1)::int = 1 then 'male' else 'female' end,
		timestamp '2022-05-20 00:00:00' +  random() * interval '3 days';


create table block53 (user_id int, user_name varchar, type varchar, register_dt timestamptz);

INSERT INTO block53
	SELECT 
    	generate_series(1,10),
		concat('user ',floor(random() * 100000 + 1)),
		case when floor(random() * 20 + 1)::int = 1 then 'new' else 'old' end,
		timestamp '2022-05-20 00:00:00' +  random() * interval '3 days';

