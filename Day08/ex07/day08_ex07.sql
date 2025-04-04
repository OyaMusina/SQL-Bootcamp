--session 1
start transaction;
update pizzeria set name = 'lol'  where id  = 3;
update pizzeria set name = 'lol'  where id  = 4;
commit;

--session 2
start transaction;
update pizzeria set name = 'kek'  where id  =4;
update pizzeria set name = 'kek'  where id  =3;
commit;