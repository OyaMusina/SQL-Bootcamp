--session 1
start transaction isolation level read committed;
select * from pizzeria where name  = 'Pizza Hut';
select * from pizzeria where name  = 'Pizza Hut';
commit;
select * from pizzeria where name  = 'Pizza Hut';

--session 2
start transaction isolation level read committed;
update pizzeria set rating = 3.6 where name  = 'Pizza Hut';
commit;
select * from pizzeria where name  = 'Pizza Hut'