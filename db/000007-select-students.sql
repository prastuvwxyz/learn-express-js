select * from students;
select * from students where grade = 'X B';
select id, name from students where grade = 'X B';
select * from students where "name" like 'S%';
select * from students where "name" like '%r';
select * from students where birthday like '%/01/%';
select * from students s where grade = 'X B' and religion = 'Kristen';
select * from students s where students.id = 10;
select * from students s where s.id = 2;
select * from students s where s.age < 15;
select * from students s where s.age > 15;

select count(id) from students s;

select age, count(age) as total from students s group by age;
select age, religion, count(age) as total from students s group by age, religion;

select age from students s group by age;
select religion from students s group by religion;

select distinct age from students s;
select distinct religion from students s;

select * from students s limit 3;

select * from students s order by id limit 3 offset 0; -- page 1, offset = limit * (page - 1)
select * from students s order by id limit 3 offset 3; -- page 2
select * from students s order by id limit 3 offset 6; -- page 3
select * from students s order by id limit 3 offset 9; -- page 4

select * from students s order by id asc;
select * from students s order by id desc;
select * from students s order by id desc limit 3;

