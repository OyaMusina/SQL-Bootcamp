--session 1
start transaction;
select * from pizzeria where name  = 'Pizza Hut';
update pizzeria set rating = 4 where name  = 'Pizza Hut';
commit;
select * from pizzeria where name  = 'Pizza Hut';

--session 2
start transaction;
select * from pizzeria where name  = 'Pizza Hut';
update pizzeria set rating = 3.6 where name  = 'Pizza Hut';
commit;
select * from pizzeria where name  = 'Pizza Hut';