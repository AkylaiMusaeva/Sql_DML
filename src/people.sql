--DDL,DML session
update people set address='Grajdanskaya 119' where id=4;                                --4
update people set occupation='Producer',                                                --5
                  email='teddy@gmail.com' where id=4;
delete from people where id=4;                                                          --6
select id from people;                                                                  --7
select * from people where address='USA';                                               --8
select * from people where age between 25 and 35 and occupation='operator' ;            --9
select * from people where is_married=true and has_children=true;                       --10
select * from people where height>170;                                                  --11
select * from people where gender='Male' and weight<75;                                 --12
select avg(age) from people;                                                            --13
select occupation,count(occupation) from people group by occupation;                    --14
select * from people where age=(select min(age)from people);                            --15
select * from people where email like ('%gmail.com');                                   --16
select * from people order by height desc ;                                             --17
select  first_name from people where address in ('Germany');                            --18
select first_name from people where email like ('%com') and phone_number like ('555%'); --19
select first_name from people where occupation='';                                      --20
select first_name from people where is_married=false;                                   --21
select first_name from people where education in('master');                             --22
select first_name from people where height between 160 and 170;                         --23
select first_name from people where languages in ('English','China');                   --24
select *  from people where is_married=false and has_children=true;                     --25
select * from people where weight>80 or is_married=true;                                --26
select first_name,age from people order by age;                                         --27
select first_name,height from people order by height desc ;
select distinct first_name from people;                                                 --28
select first_name,nationality from people where nationality in ('Canada','Usa');        --29
select first_name,address from people where address like ('%119');                      --30
select first_name,gender,phone_number from people where phone_number like ('%50%')
                                                     or phone_number like ('%22%') or phone_number like ('%80%');                            --31

update people set occupation='developer' where is_married=false;                        --32

update people set first_name='Asan',last_name='Asanov',age=21,gender='M',
                  address='Manas 195',phone_number='+996702790266',email='asan@gmail.com',
                  occupation='builder',nationality='kyrgyz',education='master',
                  languages='kyrgyz,russian',is_married=false,has_children=false,
                  height=172,weight=74 where id=2;                                      --33

select weight*5 from people where has_children=true;                                    --34
delete from people where occupation='Teacher';                                          --35
delete from people where age<20;                                                        --36
delete from people where address='';                                                    --37
select first_name,height from people order by height desc limit 3;                      --38


select id,first_name,is_married,weight from people where is_married=true order by weight limit 1; --39

update people set is_married=false where id=3;

select id,first_name,is_married,weight from people where is_married=false group by id,first_name,is_married
                                                                                 ,weight order by weight limit 1;                                                        --39

select avg(age) from people where is_married=true;                                      --40
select sum(weight) from people where occupation='developer';                            --41
select * from people where email not like('%gmail.com');                                --42
select * from people where age=64 and occupation='developer';                           --43
select distinct nationality from people;                                                --44

