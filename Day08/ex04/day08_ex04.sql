--session 1
start transaction isolation level serializable;
select * from pizzeria where name  = 'Pizza Hut';
select * from pizzeria where name  = 'Pizza Hut';
commit;
select * from pizzeria where name  = 'Pizza Hut';


--session 2
start transaction isolation level serializable;
update pizzeria set rating = 3.0 where name  = 'Pizza Hut';
commit;
select * from pizzeria where name  = 'Pizza Hut';
