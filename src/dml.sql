create table  students(
                          id serial primary key,
                          first_name varchar,
                          last_name varchar ,
                          gender varchar,
                          date_of_birth date,
                          email varchar unique,
                          course varchar,
                          payment numeric,
                          duration int);
drop table students;
insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
VALUES ('Akylai','Musaeva','female','2001-7-18','akylai@gmail.com','java',14000.00,6),
       ('Alina','Toichubaeva','female','2002-7-26','alina@gmail.com','js',12000.00,9),
       ('Azamat','Ananpiaev','male','1997-6-12','azamat@gmail.com','js',11000.00,9),
       ('Aziat','Mendekov','male','1999-1-11','aziat@gmail.com','js',16000.00,7),
       ('Madina','Karybekova','female','2002-7-29','madina@gmail.com','java',15000.00,5),
       ('Asel','Temirbekova','female','2001-1-2','asel@gmail.com','js',16000.00,9),
       ('Erbol','Alymbekov','male','2001-12-14','erbol@gmail.com','java',16000.00,5),
       ('Daniyar','Danelov','male','1970-7-12','dani@gmail.com','js',11000.00,8),
       ('Aya','Kalyeva','female','2006-11-2','aya@gmail.com','java',16000.00,6),
       ('Tamara','Ergeshova','female','1983-3-5','tamara@gmail.com','js',14000.00,3);

insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
VALUES ('Akylai','Musaeva','female','2001-7-18','akylai1@gmail.com','java',14000.00,6);

insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
VALUES ('Bekmamat','Azamatov','male','2001-7-18',null,'java',14000.00,6);





select first_name,last_name from students;--select
select first_name as name from students;--as
select concat(first_name,' ',last_name)as full_name from students;--concat
select first_name,last_name,payment*students.duration as total_payment from students;--умножение

--sort
select  first_name,last_name from students order by first_name desc;
select  first_name,last_name from students order by last_name;

--distinct(individual) уникальныйларды чыгарат
select distinct first_name from students;
select distinct course from students;


select * from students where course='java';--WHERE
select * from students where course='java' and payment>14000;--AND
select * from students where course='java' or payment>14000;--OR
select * from students limit 5;--LIMIT
select *from students offset 3;--OFFSET
select * from students limit 6 offset 3;--LIMIT AND OFFSET
select * from students fetch first 3 rows only;--FETCH
select * from students where id in(4,6);--IN
select * from students where first_name in('Akylai','Madina');--IN
select * from students where gender not in('male');--NOT IN

select * from students where date_of_birth between '2001-01-01' and '2003-1-1';--BETWEEN

select * from students where last_name like 'A%';--LIKE
select * from students where last_name like '%va';--LIKE
select * from students where first_name like '___';--LIKE(канча _ бар болсо ошончо тамгадан турган аттарды чыгарат)
select * from students where first_name ilike 'A%';--LIKE(ignore case)
--GROUP BY,
select course from students group by course;
select gender,count(gender) from students group by gender;
--GROUP BY HAVING(WHERE)
select gender,count(*) from students group by gender having count(gender)>4;






select course,count(*) from students group by course;--COUNT()
select max(payment) from students;--MAX()
select min(payment) from students;--MIN()
select avg(payment) from students;--AVG()
select round(avg(payment)) from students;--ROUND()
select sum(payment)from students;--SUM()
select first_name,coalesce(email,'not provided!')from students;

select now();
select now()-interval '1 year';--month,day,week
select now()+interval '1week';
select now()::time;
select now()::date;
select extract(year from now());--month,day,week
select extract(dow from now());--month,day,week
select extract(day from now());--month,day,week
select extract(century from now());--month,day,week


delete from students where first_name='Akylai';
delete from students where gender='female';

update students set course='python' where course='js';
update students set first_name='Medina' where first_name='Madina';




