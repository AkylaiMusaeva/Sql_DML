--session ddl,dml
Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Пароль пользователя postgres:
psql (15.3)
ПРЕДУПРЕЖДЕНИЕ: Кодовая страница консоли (866) отличается от основной
                страницы Windows (1251).
                8-битовые (русские) символы могут отображаться некорректно.
                Подробнее об этом смотрите документацию psql, раздел
                "Notes for Windows users".
Введите "help", чтобы получить справку.

postgres=#  create table people(id serial primary key,first_name varchar,last_name varchar,age int,gender char,address varchar,phone_number varchar,email varchar,occupation varchar,nationality varchar,education varchar,languages varchar,is_married boolean,has_children boolean,height int,weight int);
CREATE TABLE
    postgres=#
    postgres=#
    postgres=# insert into people(first_name,last_name,age,gender,address,phone_number,email,occupation,nationality,education,language,is_married,has_children,height,weight);
ОШИБКА:  ошибка синтаксиса (примерное положение: ";")
СТРОКА 1: ...y,education,language,is_married,has_children,height,weight);
^
postgres=# insert into people(first_name,last_name,age,gender,address,phone_number,email,occupation,nationality,education,languages,is_married,has_children,height,weight);
ОШИБКА:  ошибка синтаксиса (примерное положение: ";")
СТРОКА 1: ...,education,languages,is_married,has_children,height,weight);
^
postgres=#  insert into people(first_name,last_name,age,gender,address,phone_number,email,occupation,nationality,education,languages,is_married,has_children,height,weight)values('Akylai','Musaeva',21,'F','Archa-Beshik 76','+996702790266','akylai@gmail.com','student','kyrgyz','kyrgyz,russian,english,turkish',false,false,162,49);
ОШИБКА:  INSERT содержит больше целевых столбцов, чем выражений
СТРОКА 1: ...ducation,languages,is_married,has_children,height,weight)val...
                                                               ^
postgres=# ('Akylai','Musaeva',21,'F','Archa-Beshik 76','+996702790266','akylai@gmail.com','student','kyrgyz','bechelor degree','kyrgyz,russian,english,turkish',false,false,162,49);
ОШИБКА:  ошибка синтаксиса (примерное положение: "'Akylai'")
СТРОКА 1: ('Akylai','Musaeva',21,'F','Archa-Beshik 76','+996702790266'...
           ^
postgres=#  insert into people(first_name,last_name,age,gender,address,phone_number,email,occupation,nationality,education,languages,is_married,has_children,height,weight)values ('Akylai','Musaeva',21,'F','Archa-Beshik 76','+996702790266','akylai@gmail.com','student','kyrgyz','bechelor degree','kyrgyz,russian,english,turkish',false,false,162,49);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Chloris', 'Buttress', 29, 'F', '95 Bunting Alley', '6884714354', 'cbuttress0@cam.ac.uk', 'Occupational Therapist', 'Ukraine', 'Odessa National Academy of Food Technologies', 'Polish', true, true, 138, 86);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Christye', 'Epelett', 75, 'F', '128 Maple Wood Center', '3459217443', 'cepelett1@springer.com', 'Food Chemist', 'Colombia', 'Universidad de Nariño', 'Tamil', true, false, 131, 30);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Yolanda', 'Caltera', 44, 'F', '10 Talmadge Hill', '4925504271', 'ycaltera2@wordpress.org', 'Human Resources Manager', 'Botswana', 'ABM University College', 'Hindi', false, false, 147, 41);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Wallace', 'Siebart', 38, 'M', '69 Moulton Plaza', '9053216469', 'wsiebart3@gravatar.com', 'Research Assistant III', 'Poland', 'Technical University of Lublin', 'Tetum', true, true, 158, 68);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Deane', 'Sherbourne', 32, 'F', '52352 Acker Center', '4884029088', 'dsherbourne4@house.gov', 'Developer II', 'Sweden', 'Växjö University', 'Fijian', true, false, 180, 54);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Jaymie', 'McAline', 18, 'M', '51 Vidon Center', '3737914112', 'jmcaline5@free.fr', 'Programmer I', 'Kazakhstan', 'Al-Farabi Kazakh National University', 'New Zealand Sign Language', false, false, 139, 59);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Noby', 'Pethrick', 79, 'M', '98077 Northport Junction', '5397011262', 'npethrick6@miibeian.gov.cn', 'Cost Accountant', 'Benin', 'Espam Formation University', 'Punjabi', true, true, 166, 45);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Prue', 'Ghidetti', 43, 'F', '8 School Court', '8035410977', 'pghidetti7@rakuten.co.jp', 'Staff Scientist', 'China', 'Xi''an Jiaotong University', 'Czech', false, true, 159, 46);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Thaddus', 'Sabathier', 68, 'M', '825 Mayfield Point', '3607052636', 'tsabathier8@is.gd', 'Librarian', 'Israel', 'Shenkar School of Engineering & Design', 'Macedonian', false, false, 129, 73);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Zenia', 'Boundy', 27, 'F', '69052 Buena Vista Pass', '5759975848', 'zboundy9@ow.ly', 'Safety Technician II', 'China', 'Liaocheng Teachers University', 'Papiamento', false, true, 145, 75);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Gal', 'Gedney', 32, 'M', '65 Namekagon Avenue', '3106410433', 'ggedneya@nymag.com', 'Speech Pathologist', 'Philippines', 'University of Cagayan Valley', 'Armenian', false, true, 159, 47);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Kacy', 'Rapper', 20, 'F', '5 Loftsgordon Hill', '8617867604', 'krapperb@cpanel.net', 'Research Associate', 'China', 'Shenyang Jianzhu University', 'Portuguese', false, true, 158, 47);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Glyn', 'Kmiec', 21, 'F', '8447 Anzinger Crossing', '8538691593', 'gkmiecc@columbia.edu', 'Junior Executive', 'Poland', 'University of Szczecin', 'Latvian', true, false, 125, 66);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Alanna', 'Pirozzi', 29, 'F', '693 Sugar Drive', '6049672579', 'apirozzid@wikispaces.com', 'VP Marketing', 'Russia', 'Saratov State University', 'Dhivehi', true, false, 149, 34);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Eulalie', 'Crayden', 29, 'F', '44 Thierer Point', '5594841360', 'ecraydene@youtu.be', 'Desktop Support Technician', 'China', 'Xi''an Jiaotong-Liverpool University', 'Albanian', true, true, 157, 65);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Isadore', 'Reynault', 45, 'M', '69 Ludington Place', '3303975604', 'ireynaultf@gmpg.org', 'Recruiting Manager', 'Philippines', 'Our Lady of Fatima University', 'Tetum', false, true, 129, 75);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Harlan', 'Sheppard', 34, 'M', '7 Randy Road', '6908418056', 'hsheppardg@com.com', 'Teacher', 'Indonesia', 'Universitas Trisakti', 'Amharic', true, true, 175, 42);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Almeda', 'Tapton', 26, 'F', '415 Stoughton Court', '5776694949', 'ataptonh@nhs.uk', 'Marketing Assistant', 'Netherlands', 'NTI University', 'Latvian', true, false, 187, 50);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Rey', 'Steere', 66, 'M', '885 David Hill', '8601830184', 'rsteerei@google.com.au', 'Research Nurse', 'Tanzania', 'Moshi University College of Cooperative and Business Studies', 'Telugu', false, false, 154, 78);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Rubi', 'Arnke', 60, 'F', '32551 Manley Circle', '6374404483', 'rarnkej@samsung.com', 'Assistant Manager', 'Japan', 'Aichi Prefectural University', 'Armenian', true, true, 153, 79);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Willie', 'Brahan', 72, 'M', '435 Annamark Crossing', '5561790811', 'wbrahank@shop-pro.jp', 'Nurse', 'Sweden', 'Södertörn University College', 'Bulgarian', true, true, 160, 70);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Carry', 'Alexandrou', 20, 'F', '524 Iowa Park', '7209611484', 'calexandroul@goo.gl', 'Office Assistant IV', 'Belarus', 'Belarussian State Pedagogical University M. Tanka', 'Tsonga', false, false, 174, 46);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Clywd', 'Petford', 15, 'M', '9 Anthes Center', '6757795023', 'cpetfordm@icq.com', 'Research Associate', 'Indonesia', 'Universitas Simalungun', 'Khmer', true, false, 130, 86);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Gal', 'Paggitt', 27, 'M', '6 Schiller Parkway', '9835380427', 'gpaggittn@last.fm', 'Registered Nurse', 'Portugal', 'Instituto Superior de Ciências Educativas', 'Luxembourgish', true, false, 137, 58);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Marc', 'Gerren', 17, 'M', '5 Forest Dale Center', '6609736569', 'mgerreno@slashdot.org', 'Sales Representative', 'Haiti', 'Université Quisqueya', 'Romanian', false, true, 178, 35);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Georgie', 'Lippingwell', 83, 'M', '55412 Crescent Oaks Avenue', '2674160625', 'glippingwellp@biblegateway.com', 'VP Sales', 'China', 'Chongqing Technology and Business University', 'Lithuanian', false, false, 177, 46);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Perry', 'Dadley', 41, 'M', '186 Fallview Way', '1443225619', 'pdadleyq@dmoz.org', 'Executive Secretary', 'Thailand', 'Srinakharinwirot University', 'Macedonian', true, false, 170, 31);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Dexter', 'Treamayne', 40, 'M', '5 Homewood Crossing', '5244153873', 'dtreamayner@nba.com', 'Software Engineer IV', 'Philippines', 'Ateneo de Manila University', 'Kurdish', true, true, 189, 30);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Parsifal', 'Jonk', 34, 'M', '597 Sauthoff Hill', '2643134833', 'pjonks@cisco.com', 'Community Outreach Specialist', 'China', 'Fushun Petroleum University', 'Moldovan', false, false, 154, 49);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Marion', 'Mussotti', 36, 'M', '5303 Thierer Plaza', '3718686369', 'mmussottit@sphinn.com', 'Geological Engineer', 'China', 'Chongqing University of Post and Telecommunications', 'Thai', true, false, 169, 70);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Sullivan', 'Franc', 25, 'M', '9840 North Crossing', '2377038897', 'sfrancu@freewebs.com', 'VP Marketing', 'Niger', 'Université Abdou Moumouni de Niamey', 'Fijian', false, false, 175, 48);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Rudiger', 'Muirden', 64, 'M', '5 Namekagon Pass', '1897806490', 'rmuirdenv@alexa.com', 'Structural Engineer', 'China', 'Jiaying University', 'Nepali', false, true, 136, 86);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Sergent', 'Di Pietro', 31, 'M', '1 Shasta Lane', '4238174121', 'sdipietrow@barnesandnoble.com', 'Senior Cost Accountant', 'China', 'Suzhou University', 'Japanese', false, true, 176, 77);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Emelina', 'Castanaga', 74, 'F', '940 High Crossing Center', '6468678730', 'ecastanagax@theatlantic.com', 'Community Outreach Specialist', 'United States', 'University of California, Santa Barbara', 'Khmer', false, false, 146, 74);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Rhoda', 'O''Corrin', 72, 'F', '996 American Court', '5864152071', 'rocorriny@economist.com', 'Payment Adjustment Coordinator', 'Russia', 'Ural Gorkij State University', 'Georgian', true, false, 133, 47);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Verine', 'Boyet', 43, 'F', '583 Bluestem Trail', '8172585999', 'vboyetz@smh.com.au', 'Data Coordinator', 'Afghanistan', 'Afghan University', 'Zulu', true, true, 134, 37);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Karl', 'Peerless', 67, 'M', '46080 Miller Way', '4424263926', 'kpeerless10@soup.io', 'Cost Accountant', 'Pakistan', 'University of Education', 'Kazakh', true, false, 163, 75);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Olag', 'Chazelas', 75, 'M', '793 Heath Pass', '9901159832', 'ochazelas11@fotki.com', 'Legal Assistant', 'Czech Republic', 'Cevro Institut College', 'Tok Pisin', false, true, 132, 32);
INSERT 0 1
postgres=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, languages, is_married, has_children, height, weight) values ('Hynda', 'MacEllen', 35, 'F', '13534 Ridge Oak Alley', '4431637827', 'hmacellen12@rakuten.co.jp', 'Geological Engineer', 'Peru', 'Universidad Señor de Sipán', 'Bulgarian', false, false, 129, 56);
INSERT 0 1
postgres=# update table people set address='Гражданская 119' where id=4;
ОШИБКА:  ошибка синтаксиса (примерное положение: "table")
СТРОКА 1: update table people set address='?а │¤ -бЄ п 119' where id=4...
                 ^
postgres=# update people set address='Гражданская 119'where id=4;
UPDATE 1
postgres=# update people set occupation='model',email='yolanda@gmai.com'where id=4;
UPDATE 1
postgres=# delete from people where id=1;
DELETE 1
postgres=# select id from people;
 id
----
  2
  3
  5
  6
  7
  8
  9
 10
 11
 12
 13
 14
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25
 26
 27
 28
 29
 30
 31
 32
 33
 34
 35
 36
 37
 38
 39
 40
  4
(39 ёЄЁюъ)


postgres=# select * from people where address='Usa';
 id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+-----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres=# select * from people where age between 25 and 35 and occupation ilike ('%engineer%');
 id | first_name | last_name | age | gender |        address        | phone_number |           email           |     occupation      | nationality |         education          | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+-----------------------+--------------+---------------------------+---------------------+-------------+----------------------------+-----------+------------+--------------+--------+--------
 40 | Hynda      | MacEllen  |  35 | F      | 13534 Ridge Oak Alley | 4431637827   | hmacellen12@rakuten.co.jp | Geological Engineer | Peru        | Universidad Senor de Sipan | Bulgarian | f          | f            |    129 |     56
(1 ёЄЁюър)


postgres=# select * from people where is_married=true and has_children=true;
 id | first_name | last_name | age | gender |         address          | phone_number |           email            |         occupation         | nationality |                  education                   | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+--------------------------+--------------+----------------------------+----------------------------+-------------+----------------------------------------------+-----------+------------+--------------+--------+--------
  2 | Chloris    | Buttress  |  29 | F      | 95 Bunting Alley         | 6884714354   | cbuttress0@cam.ac.uk       | Occupational Therapist     | Ukraine     | Odessa National Academy of Food Technologies | Polish    | t          | t            |    138 |     86
  5 | Wallace    | Siebart   |  38 | M      | 69 Moulton Plaza         | 9053216469   | wsiebart3@gravatar.com     | Research Assistant III     | Poland      | Technical University of Lublin               | Tetum     | t          | t            |    158 |     68
  8 | Noby       | Pethrick  |  79 | M      | 98077 Northport Junction | 5397011262   | npethrick6@miibeian.gov.cn | Cost Accountant            | Benin       | Espam Formation University                   | Punjabi   | t          | t            |    166 |     45
 16 | Eulalie    | Crayden   |  29 | F      | 44 Thierer Point         | 5594841360   | ecraydene@youtu.be         | Desktop Support Technician | China       | Xi'an Jiaotong-Liverpool University          | Albanian  | t          | t            |    157 |     65
 18 | Harlan     | Sheppard  |  34 | M      | 7 Randy Road             | 6908418056   | hsheppardg@com.com         | Teacher                    | Indonesia   | Universitas Trisakti                         | Amharic   | t          | t            |    175 |     42
 21 | Rubi       | Arnke     |  60 | F      | 32551 Manley Circle      | 6374404483   | rarnkej@samsung.com        | Assistant Manager          | Japan       | Aichi Prefectural University                 | Armenian  | t          | t            |    153 |     79
 22 | Willie     | Brahan    |  72 | M      | 435 Annamark Crossing    | 5561790811   | wbrahank@shop-pro.jp       | Nurse                      | Sweden      | Sodertorn University College                 | Bulgarian | t          | t            |    160 |     70
 29 | Dexter     | Treamayne |  40 | M      | 5 Homewood Crossing      | 5244153873   | dtreamayner@nba.com        | Software Engineer IV       | Philippines | Ateneo de Manila University                  | Kurdish   | t          | t            |    189 |     30
 37 | Verine     | Boyet     |  43 | F      | 583 Bluestem Trail       | 8172585999   | vboyetz@smh.com.au         | Data Coordinator           | Afghanistan | Afghan University                            | Zulu      | t          | t            |    134 |     37
(9 ёЄЁюъ)


postgres=# select * from people where height>170;
 id | first_name |  last_name  | age | gender |          address           | phone_number |             email              |       occupation       | nationality |                     education                     | languages  | is_married | has_children | height | weight
----+------------+-------------+-----+--------+----------------------------+--------------+--------------------------------+------------------------+-------------+---------------------------------------------------+------------+------------+--------------+--------+--------
  6 | Deane      | Sherbourne  |  32 | F      | 52352 Acker Center         | 4884029088   | dsherbourne4@house.gov         | Developer II           | Sweden      | Vaxjo University                                  | Fijian     | t          | f            |    180 |     54
 18 | Harlan     | Sheppard    |  34 | M      | 7 Randy Road               | 6908418056   | hsheppardg@com.com             | Teacher                | Indonesia   | Universitas Trisakti                              | Amharic    | t          | t            |    175 |     42
 19 | Almeda     | Tapton      |  26 | F      | 415 Stoughton Court        | 5776694949   | ataptonh@nhs.uk                | Marketing Assistant    | Netherlands | NTI University                                    | Latvian    | t          | f            |    187 |     50
 23 | Carry      | Alexandrou  |  20 | F      | 524 Iowa Park              | 7209611484   | calexandroul@goo.gl            | Office Assistant IV    | Belarus     | Belarussian State Pedagogical University M. Tanka | Tsonga     | f          | f            |    174 |     46
 26 | Marc       | Gerren      |  17 | M      | 5 Forest Dale Center       | 6609736569   | mgerreno@slashdot.org          | Sales Representative   | Haiti       | Universite Quisqueya                              | Romanian   | f          | t            |    178 |     35
 27 | Georgie    | Lippingwell |  83 | M      | 55412 Crescent Oaks Avenue | 2674160625   | glippingwellp@biblegateway.com | VP Sales               | China       | Chongqing Technology and Business University      | Lithuanian | f          | f            |    177 |     46
 29 | Dexter     | Treamayne   |  40 | M      | 5 Homewood Crossing        | 5244153873   | dtreamayner@nba.com            | Software Engineer IV   | Philippines | Ateneo de Manila University                       | Kurdish    | t          | t            |    189 |     30
 32 | Sullivan   | Franc       |  25 | M      | 9840 North Crossing        | 2377038897   | sfrancu@freewebs.com           | VP Marketing           | Niger       | Universite Abdou Moumouni de Niamey               | Fijian     | f          | f            |    175 |     48
 34 | Sergent    | Di Pietro   |  31 | M      | 1 Shasta Lane              | 4238174121   | sdipietrow@barnesandnoble.com  | Senior Cost Accountant | China       | Suzhou University                                 | Japanese   | f          | t            |    176 |     77
(9 ёЄЁюъ)


postgres=# select * from people where gender='M' and weight<75;
 id | first_name |  last_name  | age | gender |          address           | phone_number |             email              |          occupation           |  nationality   |                      education                      |         languages         | is_married | has_children | height | weight
----+------------+-------------+-----+--------+----------------------------+--------------+--------------------------------+-------------------------------+----------------+-----------------------------------------------------+---------------------------+------------+--------------+--------+--------
  5 | Wallace    | Siebart     |  38 | M      | 69 Moulton Plaza           | 9053216469   | wsiebart3@gravatar.com         | Research Assistant III        | Poland         | Technical University of Lublin                      | Tetum                     | t          | t            |    158 |     68
  7 | Jaymie     | McAline     |  18 | M      | 51 Vidon Center            | 3737914112   | jmcaline5@free.fr              | Programmer I                  | Kazakhstan     | Al-Farabi Kazakh National University                | New Zealand Sign Language | f          | f            |    139 |     59
  8 | Noby       | Pethrick    |  79 | M      | 98077 Northport Junction   | 5397011262   | npethrick6@miibeian.gov.cn     | Cost Accountant               | Benin          | Espam Formation University                          | Punjabi                   | t          | t            |    166 |     45
 10 | Thaddus    | Sabathier   |  68 | M      | 825 Mayfield Point         | 3607052636   | tsabathier8@is.gd              | Librarian                     | Israel         | Shenkar School of Engineering & Design              | Macedonian                | f          | f            |    129 |     73
 12 | Gal        | Gedney      |  32 | M      | 65 Namekagon Avenue        | 3106410433   | ggedneya@nymag.com             | Speech Pathologist            | Philippines    | University of Cagayan Valley                        | Armenian                  | f          | t            |    159 |     47
 18 | Harlan     | Sheppard    |  34 | M      | 7 Randy Road               | 6908418056   | hsheppardg@com.com             | Teacher                       | Indonesia      | Universitas Trisakti                                | Amharic                   | t          | t            |    175 |     42
 22 | Willie     | Brahan      |  72 | M      | 435 Annamark Crossing      | 5561790811   | wbrahank@shop-pro.jp           | Nurse                         | Sweden         | Sodertorn University College                        | Bulgarian                 | t          | t            |    160 |     70
 25 | Gal        | Paggitt     |  27 | M      | 6 Schiller Parkway         | 9835380427   | gpaggittn@last.fm              | Registered Nurse              | Portugal       | Instituto Superior de Ciencias Educativas           | Luxembourgish             | t          | f            |    137 |     58
 26 | Marc       | Gerren      |  17 | M      | 5 Forest Dale Center       | 6609736569   | mgerreno@slashdot.org          | Sales Representative          | Haiti          | Universite Quisqueya                                | Romanian                  | f          | t            |    178 |     35
 27 | Georgie    | Lippingwell |  83 | M      | 55412 Crescent Oaks Avenue | 2674160625   | glippingwellp@biblegateway.com | VP Sales                      | China          | Chongqing Technology and Business University        | Lithuanian                | f          | f            |    177 |     46
 28 | Perry      | Dadley      |  41 | M      | 186 Fallview Way           | 1443225619   | pdadleyq@dmoz.org              | Executive Secretary           | Thailand       | Srinakharinwirot University                         | Macedonian                | t          | f            |    170 |     31
 29 | Dexter     | Treamayne   |  40 | M      | 5 Homewood Crossing        | 5244153873   | dtreamayner@nba.com            | Software Engineer IV          | Philippines    | Ateneo de Manila University                         | Kurdish                   | t          | t            |    189 |     30
 30 | Parsifal   | Jonk        |  34 | M      | 597 Sauthoff Hill          | 2643134833   | pjonks@cisco.com               | Community Outreach Specialist | China          | Fushun Petroleum University                         | Moldovan                  | f          | f            |    154 |     49
 31 | Marion     | Mussotti    |  36 | M      | 5303 Thierer Plaza         | 3718686369   | mmussottit@sphinn.com          | Geological Engineer           | China          | Chongqing University of Post and Telecommunications | Thai                      | t          | f            |    169 |     70
 32 | Sullivan   | Franc       |  25 | M      | 9840 North Crossing        | 2377038897   | sfrancu@freewebs.com           | VP Marketing                  | Niger          | Universite Abdou Moumouni de Niamey                 | Fijian                    | f          | f            |    175 |     48
 39 | Olag       | Chazelas    |  75 | M      | 793 Heath Pass             | 9901159832   | ochazelas11@fotki.com          | Legal Assistant               | Czech Republic | Cevro Institut College                              | Tok Pisin                 | f          | t            |    132 |     32
(16 ёЄЁюъ)


postgres=# select avg(age) from people;
         avg
---------------------
 43.2307692307692308
(1 ёЄЁюър)


postgres=# select occupation,count(occupation) from people group by occupation;
           occupation           | count
--------------------------------+-------
 Recruiting Manager             |     1
 Software Engineer IV           |     1
 Executive Secretary            |     1
 Assistant Manager              |     1
 VP Sales                       |     1
 Structural Engineer            |     1
 model                          |     1
 Staff Scientist                |     1
 Desktop Support Technician     |     1
 Nurse                          |     1
 Teacher                        |     1
 Legal Assistant                |     1
 Research Nurse                 |     1
 Community Outreach Specialist  |     2
 Cost Accountant                |     2
 Occupational Therapist         |     1
 Food Chemist                   |     1
 Geological Engineer            |     2
 Research Assistant III         |     1
 Junior Executive               |     1
 Senior Cost Accountant         |     1
 VP Marketing                   |     2
 Safety Technician II           |     1
 Developer II                   |     1
 Office Assistant IV            |     1
 Speech Pathologist             |     1
 Librarian                      |     1
 Data Coordinator               |     1
 Research Associate             |     2
 Registered Nurse               |     1
 Programmer I                   |     1
 Sales Representative           |     1
 Marketing Assistant            |     1
 Payment Adjustment Coordinator |     1
(34 ёЄЁюъш)


postgres=# select first_name from people where age=(select min(age)from people);
 first_name
------------
 Clywd
(1 ёЄЁюър)


postgres=# select first_name,age from people where age=(select min(age)from people);
 first_name | age
------------+-----
 Clywd      |  15
(1 ёЄЁюър)


postgres=# select first_name,email from people where email like('%gmail.com%');
 first_name | email
------------+-------
(0 ёЄЁюъ)


postgres=# select first_name,height from people order by height desc;
 first_name | height
------------+--------
 Dexter     |    189
 Almeda     |    187
 Deane      |    180
 Marc       |    178
 Georgie    |    177
 Sergent    |    176
 Sullivan   |    175
 Harlan     |    175
 Carry      |    174
 Perry      |    170
 Marion     |    169
 Noby       |    166
 Karl       |    163
 Willie     |    160
 Gal        |    159
 Prue       |    159
 Kacy       |    158
 Wallace    |    158
 Eulalie    |    157
 Rey        |    154
 Parsifal   |    154
 Rubi       |    153
 Alanna     |    149
 Yolanda    |    147
 Emelina    |    146
 Zenia      |    145
 Jaymie     |    139
 Chloris    |    138
 Gal        |    137
 Rudiger    |    136
 Verine     |    134
 Rhoda      |    133
 Olag       |    132
 Christye   |    131
 Clywd      |    130
 Isadore    |    129
 Hynda      |    129
 Thaddus    |    129
 Glyn       |    125
(39 ёЄЁюъ)


postgres=# select * from people where address in ('Germany');
 id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+-----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres=# select * from people where email like '%com' and phone_number like '555%';
 id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+-----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres=# select * from people where occupation='';
 id | first_name | last_name | age | gender |        address        | phone_number |           email           | occupation | nationality |         education          | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+-----------------------+--------------+---------------------------+------------+-------------+----------------------------+-----------+------------+--------------+--------+--------
 40 | Hynda      | MacEllen  |  35 | F      | 13534 Ridge Oak Alley | 4431637827   | hmacellen12@rakuten.co.jp |            | Peru        | Universidad Senor de Sipan | Bulgarian | f          | f            |    129 |     56
(1 ёЄЁюър)


postgres=# select * from people where is_married=false;
 id | first_name |  last_name  | age | gender |          address           | phone_number |             email              |          occupation           |  nationality   |                          education                           |         languages         | is_married | has_children | height | weight
----+------------+-------------+-----+--------+----------------------------+--------------+--------------------------------+-------------------------------+----------------+--------------------------------------------------------------+---------------------------+------------+--------------+--------+--------
  7 | Jaymie     | McAline     |  18 | M      | 51 Vidon Center            | 3737914112   | jmcaline5@free.fr              | Programmer I                  | Kazakhstan     | Al-Farabi Kazakh National University                         | New Zealand Sign Language | f          | f            |    139 |     59
  9 | Prue       | Ghidetti    |  43 | F      | 8 School Court             | 8035410977   | pghidetti7@rakuten.co.jp       | Staff Scientist               | China          | Xi'an Jiaotong University                                    | Czech                     | f          | t            |    159 |     46
 10 | Thaddus    | Sabathier   |  68 | M      | 825 Mayfield Point         | 3607052636   | tsabathier8@is.gd              | Librarian                     | Israel         | Shenkar School of Engineering & Design                       | Macedonian                | f          | f            |    129 |     73
 11 | Zenia      | Boundy      |  27 | F      | 69052 Buena Vista Pass     | 5759975848   | zboundy9@ow.ly                 | Safety Technician II          | China          | Liaocheng Teachers University                                | Papiamento                | f          | t            |    145 |     75
 12 | Gal        | Gedney      |  32 | M      | 65 Namekagon Avenue        | 3106410433   | ggedneya@nymag.com             | Speech Pathologist            | Philippines    | University of Cagayan Valley                                 | Armenian                  | f          | t            |    159 |     47
 13 | Kacy       | Rapper      |  20 | F      | 5 Loftsgordon Hill         | 8617867604   | krapperb@cpanel.net            | Research Associate            | China          | Shenyang Jianzhu University                                  | Portuguese                | f          | t            |    158 |     47
 17 | Isadore    | Reynault    |  45 | M      | 69 Ludington Place         | 3303975604   | ireynaultf@gmpg.org            | Recruiting Manager            | Philippines    | Our Lady of Fatima University                                | Tetum                     | f          | t            |    129 |     75
 20 | Rey        | Steere      |  66 | M      | 885 David Hill             | 8601830184   | rsteerei@google.com.au         | Research Nurse                | Tanzania       | Moshi University College of Cooperative and Business Studies | Telugu                    | f          | f            |    154 |     78
 23 | Carry      | Alexandrou  |  20 | F      | 524 Iowa Park              | 7209611484   | calexandroul@goo.gl            | Office Assistant IV           | Belarus        | Belarussian State Pedagogical University M. Tanka            | Tsonga                    | f          | f            |    174 |     46
 26 | Marc       | Gerren      |  17 | M      | 5 Forest Dale Center       | 6609736569   | mgerreno@slashdot.org          | Sales Representative          | Haiti          | Universite Quisqueya                                         | Romanian                  | f          | t            |    178 |     35
 27 | Georgie    | Lippingwell |  83 | M      | 55412 Crescent Oaks Avenue | 2674160625   | glippingwellp@biblegateway.com | VP Sales                      | China          | Chongqing Technology and Business University                 | Lithuanian                | f          | f            |    177 |     46
 30 | Parsifal   | Jonk        |  34 | M      | 597 Sauthoff Hill          | 2643134833   | pjonks@cisco.com               | Community Outreach Specialist | China          | Fushun Petroleum University                                  | Moldovan                  | f          | f            |    154 |     49
 32 | Sullivan   | Franc       |  25 | M      | 9840 North Crossing        | 2377038897   | sfrancu@freewebs.com           | VP Marketing                  | Niger          | Universite Abdou Moumouni de Niamey                          | Fijian                    | f          | f            |    175 |     48
 33 | Rudiger    | Muirden     |  64 | M      | 5 Namekagon Pass           | 1897806490   | rmuirdenv@alexa.com            | Structural Engineer           | China          | Jiaying University                                           | Nepali                    | f          | t            |    136 |     86
 34 | Sergent    | Di Pietro   |  31 | M      | 1 Shasta Lane              | 4238174121   | sdipietrow@barnesandnoble.com  | Senior Cost Accountant        | China          | Suzhou University                                            | Japanese                  | f          | t            |    176 |     77
 35 | Emelina    | Castanaga   |  74 | F      | 940 High Crossing Center   | 6468678730   | ecastanagax@theatlantic.com    | Community Outreach Specialist | United States  | University of California, Santa Barbara                      | Khmer                     | f          | f            |    146 |     74
 39 | Olag       | Chazelas    |  75 | M      | 793 Heath Pass             | 9901159832   | ochazelas11@fotki.com          | Legal Assistant               | Czech Republic | Cevro Institut College                                       | Tok Pisin                 | f          | t            |    132 |     32
 40 | Hynda      | MacEllen    |  35 | F      | 13534 Ridge Oak Alley      | 4431637827   | hmacellen12@rakuten.co.jp      |                               | Peru           | Universidad Senor de Sipan                                   | Bulgarian                 | f          | f            |    129 |     56
  4 | Yolanda    | Caltera     |  44 | F      | Grajdanskaya 119           | 4925504271   | yolanda@gmai.com               | model                         | Botswana       | ABM University College                                       | Hindi                     | f          | f            |    147 |     41
(19 ёЄЁюъ)


postgres=# select * from people where occupatioin in('master');
ОШИБКА:  столбец "occupatioin" не существует
СТРОКА 1: select * from people where occupatioin in('master');
                                     ^
ПОДСКАЗКА:  Возможно, предполагалась ссылка на столбец "people.occupation".
postgres=# select * from people where occupation in('master');
 id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+-----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres=# select first_name,height from people where height between 160 and 170;
 first_name | height
------------+--------
 Noby       |    166
 Willie     |    160
 Perry      |    170
 Marion     |    169
 Karl       |    163
(5 ёЄЁюъ)


postgres=# select first_name ,language from people where languages in('China','English');
ОШИБКА:  столбец "language" не существует
СТРОКА 1: select first_name ,language from people where languages in('...
                             ^
ПОДСКАЗКА:  Возможно, предполагалась ссылка на столбец "people.languages".
postgres=# select first_name from people where people.languages in ('English','China');
 first_name
------------
(0 ёЄЁюъ)


postgres=#  select first_name from people where people.languages in ('Hindi','Japanese');
 first_name
------------
 Sergent
 Yolanda
(2 ёЄЁюъш)


postgres=#
postgres=# postgres=#
postgres-# postgres=# select first_name,languages from people where people.languages in ('Hindi','Japanese');
ОШИБКА:  ошибка синтаксиса (примерное положение: "postgres")
СТРОКА 1: postgres=#
          ^
postgres=# select first_name,languages from people where people.languages in ('Hindi','Japanese');
 first_name | languages
------------+-----------
 Sergent    | Japanese
 Yolanda    | Hindi
(2 ёЄЁюъш)


postgres=# select * from people where is_married=false and has_children=true;
 id | first_name | last_name | age | gender |        address         | phone_number |             email             |       occupation       |  nationality   |           education           | languages  | is_married | has_children | height | weight
----+------------+-----------+-----+--------+------------------------+--------------+-------------------------------+------------------------+----------------+-------------------------------+------------+------------+--------------+--------+--------
  9 | Prue       | Ghidetti  |  43 | F      | 8 School Court         | 8035410977   | pghidetti7@rakuten.co.jp      | Staff Scientist        | China          | Xi'an Jiaotong University     | Czech      | f          | t            |    159 |     46
 11 | Zenia      | Boundy    |  27 | F      | 69052 Buena Vista Pass | 5759975848   | zboundy9@ow.ly                | Safety Technician II   | China          | Liaocheng Teachers University | Papiamento | f          | t            |    145 |     75
 12 | Gal        | Gedney    |  32 | M      | 65 Namekagon Avenue    | 3106410433   | ggedneya@nymag.com            | Speech Pathologist     | Philippines    | University of Cagayan Valley  | Armenian   | f          | t            |    159 |     47
 13 | Kacy       | Rapper    |  20 | F      | 5 Loftsgordon Hill     | 8617867604   | krapperb@cpanel.net           | Research Associate     | China          | Shenyang Jianzhu University   | Portuguese | f          | t            |    158 |     47
 17 | Isadore    | Reynault  |  45 | M      | 69 Ludington Place     | 3303975604   | ireynaultf@gmpg.org           | Recruiting Manager     | Philippines    | Our Lady of Fatima University | Tetum      | f          | t            |    129 |     75
 26 | Marc       | Gerren    |  17 | M      | 5 Forest Dale Center   | 6609736569   | mgerreno@slashdot.org         | Sales Representative   | Haiti          | Universite Quisqueya          | Romanian   | f          | t            |    178 |     35
 33 | Rudiger    | Muirden   |  64 | M      | 5 Namekagon Pass       | 1897806490   | rmuirdenv@alexa.com           | Structural Engineer    | China          | Jiaying University            | Nepali     | f          | t            |    136 |     86
 34 | Sergent    | Di Pietro |  31 | M      | 1 Shasta Lane          | 4238174121   | sdipietrow@barnesandnoble.com | Senior Cost Accountant | China          | Suzhou University             | Japanese   | f          | t            |    176 |     77
 39 | Olag       | Chazelas  |  75 | M      | 793 Heath Pass         | 9901159832   | ochazelas11@fotki.com         | Legal Assistant        | Czech Republic | Cevro Institut College        | Tok Pisin  | f          | t            |    132 |     32
(9 ёЄЁюъ)


postgres=# select * from people where height>80 or is_married=true;
 id | first_name |  last_name  | age | gender |          address           | phone_number |             email              |           occupation           |  nationality   |                          education                           |         languages         | is_married | has_children | height | weight
----+------------+-------------+-----+--------+----------------------------+--------------+--------------------------------+--------------------------------+----------------+--------------------------------------------------------------+---------------------------+------------+--------------+--------+--------
  2 | Chloris    | Buttress    |  29 | F      | 95 Bunting Alley           | 6884714354   | cbuttress0@cam.ac.uk           | Occupational Therapist         | Ukraine        | Odessa National Academy of Food Technologies                 | Polish                    | t          | t            |    138 |     86
  3 | Christye   | Epelett     |  75 | F      | 128 Maple Wood Center      | 3459217443   | cepelett1@springer.com         | Food Chemist                   | Colombia       | Universidad de Narino                                        | Tamil                     | t          | f            |    131 |     30
  5 | Wallace    | Siebart     |  38 | M      | 69 Moulton Plaza           | 9053216469   | wsiebart3@gravatar.com         | Research Assistant III         | Poland         | Technical University of Lublin                               | Tetum                     | t          | t            |    158 |     68
  6 | Deane      | Sherbourne  |  32 | F      | 52352 Acker Center         | 4884029088   | dsherbourne4@house.gov         | Developer II                   | Sweden         | Vaxjo University                                             | Fijian                    | t          | f            |    180 |     54
  7 | Jaymie     | McAline     |  18 | M      | 51 Vidon Center            | 3737914112   | jmcaline5@free.fr              | Programmer I                   | Kazakhstan     | Al-Farabi Kazakh National University                         | New Zealand Sign Language | f          | f            |    139 |     59
  8 | Noby       | Pethrick    |  79 | M      | 98077 Northport Junction   | 5397011262   | npethrick6@miibeian.gov.cn     | Cost Accountant                | Benin          | Espam Formation University                                   | Punjabi                   | t          | t            |    166 |     45
  9 | Prue       | Ghidetti    |  43 | F      | 8 School Court             | 8035410977   | pghidetti7@rakuten.co.jp       | Staff Scientist                | China          | Xi'an Jiaotong University                                    | Czech                     | f          | t            |    159 |     46
 10 | Thaddus    | Sabathier   |  68 | M      | 825 Mayfield Point         | 3607052636   | tsabathier8@is.gd              | Librarian                      | Israel         | Shenkar School of Engineering & Design                       | Macedonian                | f          | f            |    129 |     73
 11 | Zenia      | Boundy      |  27 | F      | 69052 Buena Vista Pass     | 5759975848   | zboundy9@ow.ly                 | Safety Technician II           | China          | Liaocheng Teachers University                                | Papiamento                | f          | t            |    145 |     75
 12 | Gal        | Gedney      |  32 | M      | 65 Namekagon Avenue        | 3106410433   | ggedneya@nymag.com             | Speech Pathologist             | Philippines    | University of Cagayan Valley                                 | Armenian                  | f          | t            |    159 |     47
 13 | Kacy       | Rapper      |  20 | F      | 5 Loftsgordon Hill         | 8617867604   | krapperb@cpanel.net            | Research Associate             | China          | Shenyang Jianzhu University                                  | Portuguese                | f          | t            |    158 |     47
 14 | Glyn       | Kmiec       |  21 | F      | 8447 Anzinger Crossing     | 8538691593   | gkmiecc@columbia.edu           | Junior Executive               | Poland         | University of Szczecin                                       | Latvian                   | t          | f            |    125 |     66
 15 | Alanna     | Pirozzi     |  29 | F      | 693 Sugar Drive            | 6049672579   | apirozzid@wikispaces.com       | VP Marketing                   | Russia         | Saratov State University                                     | Dhivehi                   | t          | f            |    149 |     34
 16 | Eulalie    | Crayden     |  29 | F      | 44 Thierer Point           | 5594841360   | ecraydene@youtu.be             | Desktop Support Technician     | China          | Xi'an Jiaotong-Liverpool University                          | Albanian                  | t          | t            |    157 |     65
 17 | Isadore    | Reynault    |  45 | M      | 69 Ludington Place         | 3303975604   | ireynaultf@gmpg.org            | Recruiting Manager             | Philippines    | Our Lady of Fatima University                                | Tetum                     | f          | t            |    129 |     75
 18 | Harlan     | Sheppard    |  34 | M      | 7 Randy Road               | 6908418056   | hsheppardg@com.com             | Teacher                        | Indonesia      | Universitas Trisakti                                         | Amharic                   | t          | t            |    175 |     42
 19 | Almeda     | Tapton      |  26 | F      | 415 Stoughton Court        | 5776694949   | ataptonh@nhs.uk                | Marketing Assistant            | Netherlands    | NTI University                                               | Latvian                   | t          | f            |    187 |     50
 20 | Rey        | Steere      |  66 | M      | 885 David Hill             | 8601830184   | rsteerei@google.com.au         | Research Nurse                 | Tanzania       | Moshi University College of Cooperative and Business Studies | Telugu                    | f          | f            |    154 |     78
 21 | Rubi       | Arnke       |  60 | F      | 32551 Manley Circle        | 6374404483   | rarnkej@samsung.com            | Assistant Manager              | Japan          | Aichi Prefectural University                                 | Armenian                  | t          | t            |    153 |     79
 22 | Willie     | Brahan      |  72 | M      | 435 Annamark Crossing      | 5561790811   | wbrahank@shop-pro.jp           | Nurse                          | Sweden         | Sodertorn University College                                 | Bulgarian                 | t          | t            |    160 |     70
 23 | Carry      | Alexandrou  |  20 | F      | 524 Iowa Park              | 7209611484   | calexandroul@goo.gl            | Office Assistant IV            | Belarus        | Belarussian State Pedagogical University M. Tanka            | Tsonga                    | f          | f            |    174 |     46
 24 | Clywd      | Petford     |  15 | M      | 9 Anthes Center            | 6757795023   | cpetfordm@icq.com              | Research Associate             | Indonesia      | Universitas Simalungun                                       | Khmer                     | t          | f            |    130 |     86
 25 | Gal        | Paggitt     |  27 | M      | 6 Schiller Parkway         | 9835380427   | gpaggittn@last.fm              | Registered Nurse               | Portugal       | Instituto Superior de Ciencias Educativas                    | Luxembourgish             | t          | f            |    137 |     58
 26 | Marc       | Gerren      |  17 | M      | 5 Forest Dale Center       | 6609736569   | mgerreno@slashdot.org          | Sales Representative           | Haiti          | Universite Quisqueya                                         | Romanian                  | f          | t            |    178 |     35
 27 | Georgie    | Lippingwell |  83 | M      | 55412 Crescent Oaks Avenue | 2674160625   | glippingwellp@biblegateway.com | VP Sales                       | China          | Chongqing Technology and Business University                 | Lithuanian                | f          | f            |    177 |     46
 28 | Perry      | Dadley      |  41 | M      | 186 Fallview Way           | 1443225619   | pdadleyq@dmoz.org              | Executive Secretary            | Thailand       | Srinakharinwirot University                                  | Macedonian                | t          | f            |    170 |     31
 29 | Dexter     | Treamayne   |  40 | M      | 5 Homewood Crossing        | 5244153873   | dtreamayner@nba.com            | Software Engineer IV           | Philippines    | Ateneo de Manila University                                  | Kurdish                   | t          | t            |    189 |     30
 30 | Parsifal   | Jonk        |  34 | M      | 597 Sauthoff Hill          | 2643134833   | pjonks@cisco.com               | Community Outreach Specialist  | China          | Fushun Petroleum University                                  | Moldovan                  | f          | f            |    154 |     49
 31 | Marion     | Mussotti    |  36 | M      | 5303 Thierer Plaza         | 3718686369   | mmussottit@sphinn.com          | Geological Engineer            | China          | Chongqing University of Post and Telecommunications          | Thai                      | t          | f            |    169 |     70
 32 | Sullivan   | Franc       |  25 | M      | 9840 North Crossing        | 2377038897   | sfrancu@freewebs.com           | VP Marketing                   | Niger          | Universite Abdou Moumouni de Niamey                          | Fijian                    | f          | f            |    175 |     48
 33 | Rudiger    | Muirden     |  64 | M      | 5 Namekagon Pass           | 1897806490   | rmuirdenv@alexa.com            | Structural Engineer            | China          | Jiaying University                                           | Nepali                    | f          | t            |    136 |     86
 34 | Sergent    | Di Pietro   |  31 | M      | 1 Shasta Lane              | 4238174121   | sdipietrow@barnesandnoble.com  | Senior Cost Accountant         | China          | Suzhou University                                            | Japanese                  | f          | t            |    176 |     77
 35 | Emelina    | Castanaga   |  74 | F      | 940 High Crossing Center   | 6468678730   | ecastanagax@theatlantic.com    | Community Outreach Specialist  | United States  | University of California, Santa Barbara                      | Khmer                     | f          | f            |    146 |     74
 36 | Rhoda      | O'Corrin    |  72 | F      | 996 American Court         | 5864152071   | rocorriny@economist.com        | Payment Adjustment Coordinator | Russia         | Ural Gorkij State University                                 | Georgian                  | t          | f            |    133 |     47
 37 | Verine     | Boyet       |  43 | F      | 583 Bluestem Trail         | 8172585999   | vboyetz@smh.com.au             | Data Coordinator               | Afghanistan    | Afghan University                                            | Zulu                      | t          | t            |    134 |     37
 38 | Karl       | Peerless    |  67 | M      | 46080 Miller Way           | 4424263926   | kpeerless10@soup.io            | Cost Accountant                | Pakistan       | University of Education                                      | Kazakh                    | t          | f            |    163 |     75
 39 | Olag       | Chazelas    |  75 | M      | 793 Heath Pass             | 9901159832   | ochazelas11@fotki.com          | Legal Assistant                | Czech Republic | Cevro Institut College                                       | Tok Pisin                 | f          | t            |    132 |     32
 40 | Hynda      | MacEllen    |  35 | F      | 13534 Ridge Oak Alley      | 4431637827   | hmacellen12@rakuten.co.jp      |                                | Peru           | Universidad Senor de Sipan                                   | Bulgarian                 | f          | f            |    129 |     56
  4 | Yolanda    | Caltera     |  44 | F      | Grajdanskaya 119           | 4925504271   | yolanda@gmai.com               | model                          | Botswana       | ABM University College                                       | Hindi                     | f          | f            |    147 |     41
(39 ёЄЁюъ)


postgres=# select first_name,age from people order by age;
 first_name | age
------------+-----
 Clywd      |  15
 Marc       |  17
 Jaymie     |  18
 Carry      |  20
 Kacy       |  20
 Glyn       |  21
 Sullivan   |  25
 Almeda     |  26
 Gal        |  27
 Zenia      |  27
 Eulalie    |  29
 Chloris    |  29
 Alanna     |  29
 Sergent    |  31
 Deane      |  32
 Gal        |  32
 Harlan     |  34
 Parsifal   |  34
 Hynda      |  35
 Marion     |  36
 Wallace    |  38
 Dexter     |  40
 Perry      |  41
 Verine     |  43
 Prue       |  43
 Yolanda    |  44
 Isadore    |  45
 Rubi       |  60
 Rudiger    |  64
 Rey        |  66
 Karl       |  67
 Thaddus    |  68
 Willie     |  72
 Rhoda      |  72
 Emelina    |  74
 Christye   |  75
 Olag       |  75
 Noby       |  79
 Georgie    |  83
(39 ёЄЁюъ)


postgres=# select first_name,height from people order by height desc;
 first_name | height
------------+--------
 Dexter     |    189
 Almeda     |    187
 Deane      |    180
 Marc       |    178
 Georgie    |    177
 Sergent    |    176
 Sullivan   |    175
 Harlan     |    175
 Carry      |    174
 Perry      |    170
 Marion     |    169
 Noby       |    166
 Karl       |    163
 Willie     |    160
 Gal        |    159
 Prue       |    159
 Kacy       |    158
 Wallace    |    158
 Eulalie    |    157
 Rey        |    154
 Parsifal   |    154
 Rubi       |    153
 Alanna     |    149
 Yolanda    |    147
 Emelina    |    146
 Zenia      |    145
 Jaymie     |    139
 Chloris    |    138
 Gal        |    137
 Rudiger    |    136
 Verine     |    134
 Rhoda      |    133
 Olag       |    132
 Christye   |    131
 Clywd      |    130
 Isadore    |    129
 Hynda      |    129
 Thaddus    |    129
 Glyn       |    125
(39 ёЄЁюъ)


postgres=# select dictinct first_name from people;
ОШИБКА:  столбец "dictinct" не существует
СТРОКА 1: select dictinct first_name from people;
                 ^
postgres=# select distinct first_name from people;
 first_name
------------
 Dexter
 Gal
 Emelina
 Harlan
 Chloris
 Rudiger
 Karl
 Alanna
 Hynda
 Almeda
 Isadore
 Glyn
 Rhoda
 Clywd
 Wallace
 Christye
 Verine
 Jaymie
 Zenia
 Deane
 Carry
 Thaddus
 Noby
 Prue
 Eulalie
 Sullivan
 Rubi
 Perry
 Marc
 Olag
 Marion
 Yolanda
 Parsifal
 Georgie
 Sergent
 Rey
 Willie
 Kacy
(38 ёЄЁюъ)


postgres=# select first_name,nationality from people where nationality in ('China','Russia');
 first_name | nationality
------------+-------------
 Prue       | China
 Zenia      | China
 Kacy       | China
 Alanna     | Russia
 Eulalie    | China
 Georgie    | China
 Parsifal   | China
 Marion     | China
 Rudiger    | China
 Sergent    | China
 Rhoda      | Russia
(11 ёЄЁюъ)


postgres=# select first_name,address from people where address like '%119';
 first_name |     address
------------+------------------
 Yolanda    | Grajdanskaya 119
(1 ёЄЁюър)


postgres=# postgres=# select first_name,nationality from people where nationality in ('China','Russia');
ОШИБКА:  ошибка синтаксиса (примерное положение: "postgres")
СТРОКА 1: postgres=# select first_name,nationality from people where n...
          ^
postgres=#  first_name | nationality
postgres-# ------------+-------------
postgres-#  Prue       | China
postgres-#  Zenia      | China
postgres-#  Kacy       | China
postgres-#  Alanna     | Russia
postgres-#  Eulalie    | China
postgres-#  Georgie    | China
postgres-#  Parsifal   | China
postgres-#  Marion     | China
postgres-#  Rudiger    | China
postgres-#  Sergent    | China
postgres-#  Rhoda      | Russia
postgres-# (11 ёЄЁюъ)
postgres-#
postgres-# select first_name,gender,phone_number from people where phone_number like'%55%' or phone_number like'%22%' or phone_number like'%80%';
ОШИБКА:  ошибка синтаксиса (примерное положение: "first_name")
СТРОКА 1: first_name | nationality
          ^
postgres=# select first_name,gender,phone_number from people where phone_number like ('%55%') or phone_number like ('%22%') or phone_number like ('%80%');
 first_name | gender | phone_number
------------+--------+--------------
 Prue       | F      | 8035410977
 Eulalie    | F      | 5594841360
 Harlan     | M      | 6908418056
 Willie     | M      | 5561790811
 Gal        | M      | 9835380427
 Perry      | M      | 1443225619
 Rudiger    | M      | 1897806490
 Yolanda    | F      | 4925504271
(8 ёЄЁюъ)


postgres=# update people set occupation='developer' where is_married=false;
UPDATE 19
postgres=# select occupation from people where is_married=false;
 occupation
------------
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
 developer
(19 ёЄЁюъ)


postgres=# update people set first_name='Asan',last_name='Asanov',21,'M','Manas 195','+996702790266','asan@gmail.com','builder','kyrgyz','master','kyrgyz,russian',false,false,172,74);
ОШИБКА:  ошибка синтаксиса (примерное положение: "21")
СТРОКА 1: ...e people set first_name='Asan',last_name='Asanov',21,'M','Ma...
                                                               ^
postgres=# update people set first_name='Asan',last_name='Asanov',21,'M','Manas 195','+996702790266','asan@gmail.com','builder','kyrgyz','master','kyrgyz,russian',false,false,172,74) where id=2;
ОШИБКА:  ошибка синтаксиса (примерное положение: "21")
СТРОКА 1: ...e people set first_name='Asan',last_name='Asanov',21,'M','Ma...
                                                               ^
postgres=#  update people set first_name='Asan',last_name='Asanov',age=21,gender='M',address='Manas 195',phone_number='+996702790266',email='asan@gmail.com',occupation='builder',nationality='kyrgyz',education='master',languages='kyrgyz,russian',is_married=false,has_children=false,height=172,weight=74) where id=2;
ОШИБКА:  ошибка синтаксиса (примерное положение: ")")
СТРОКА 1: ...ried=false,has_children=false,height=172,weight=74) where id...
                                                               ^
postgres=# update people set first_name='Asan',last_name='Asanov',age=21,gender='M',address='Manas 195',phone_number='+996702790266',email='asan@gmail.com',occupation='builder',nationality='kyrgyz',education='master',languages='kyrgyz,russian',is_married=false,has_children=false,height=172,weight=74 where id=2;
UPDATE 1
postgres=# select * from people where id=2;
 id | first_name | last_name | age | gender |  address  | phone_number  |     email      | occupation | nationality | education |   languages    | is_married | has_children | height | weight
----+------------+-----------+-----+--------+-----------+---------------+----------------+------------+-------------+-----------+----------------+------------+--------------+--------+--------
  2 | Asan       | Asanov    |  21 | M      | Manas 195 | +996702790266 | asan@gmail.com | builder    | kyrgyz      | master    | kyrgyz,russian | f          | f            |    172 |     74
(1 ёЄЁюър)


postgres=# select 5*weight from people where has_children=true;
 ?column?
----------
      340
      225
      325
      210
      395
      350
      150
      185
      230
      375
      235
      235
      375
      175
      430
      385
      160
(17 ёЄЁюъ)


postgres=# select first_name from people where has_children=true;
 first_name
------------
 Wallace
 Noby
 Eulalie
 Harlan
 Rubi
 Willie
 Dexter
 Verine
 Prue
 Zenia
 Gal
 Kacy
 Isadore
 Marc
 Rudiger
 Sergent
 Olag
(17 ёЄЁюъ)


postgres=#  select first_name,weight from people where has_children=true;
 first_name | weight
------------+--------
 Wallace    |     68
 Noby       |     45
 Eulalie    |     65
 Harlan     |     42
 Rubi       |     79
 Willie     |     70
 Dexter     |     30
 Verine     |     37
 Prue       |     46
 Zenia      |     75
 Gal        |     47
 Kacy       |     47
 Isadore    |     75
 Marc       |     35
 Rudiger    |     86
 Sergent    |     77
 Olag       |     32
(17 ёЄЁюъ)


postgres=# select first_name,has_children,weight*5 as result from people where has_children=true;
 first_name | has_children | result
------------+--------------+--------
 Wallace    | t            |    340
 Noby       | t            |    225
 Eulalie    | t            |    325
 Harlan     | t            |    210
 Rubi       | t            |    395
 Willie     | t            |    350
 Dexter     | t            |    150
 Verine     | t            |    185
 Prue       | t            |    230
 Zenia      | t            |    375
 Gal        | t            |    235
 Kacy       | t            |    235
 Isadore    | t            |    375
 Marc       | t            |    175
 Rudiger    | t            |    430
 Sergent    | t            |    385
 Olag       | t            |    160
(17 ёЄЁюъ)


postgres=# delete from people where occupation='Teacher';
DELETE 1
postgres=# delete from people where age<20;
DELETE 3
postgres=# delete from people where address='';
DELETE 0
postgres=# select * from people order by height desc limit 3;
 id | first_name | last_name  | age | gender |       address       | phone_number |         email          |      occupation      | nationality |          education          | languages | is_married | has_children | height | weight
----+------------+------------+-----+--------+---------------------+--------------+------------------------+----------------------+-------------+-----------------------------+-----------+------------+--------------+--------+--------
 29 | Dexter     | Treamayne  |  40 | M      | 5 Homewood Crossing | 5244153873   | dtreamayner@nba.com    | Software Engineer IV | Philippines | Ateneo de Manila University | Kurdish   | t          | t            |    189 |     30
 19 | Almeda     | Tapton     |  26 | F      | 415 Stoughton Court | 5776694949   | ataptonh@nhs.uk        | Marketing Assistant  | Netherlands | NTI University              | Latvian   | t          | f            |    187 |     50
  6 | Deane      | Sherbourne |  32 | F      | 52352 Acker Center  | 4884029088   | dsherbourne4@house.gov | Developer II         | Sweden      | Vaxjo University            | Fijian    | t          | f            |    180 |     54
(3 ёЄЁюъш)


postgres=# select first_name,is_married=true,weight from people where weight=(select min(weight)from people);
 first_name | ?column? | weight
------------+----------+--------
 Christye   | t        |     30
 Dexter     | t        |     30
(2 ёЄЁюъш)


postgres=# select avg(age) from people where is_married=true'
postgres'# ;
postgres'#
postgres'# select avg(age) from people where is_married=true;
postgres'#
postgres'# ;
postgres'# ;
postgres'# '
postgres-# select avg(age) from people where is_married=true;
ОШИБКА:  ошибка синтаксиса (примерное положение: "'
;

select avg(age) from people where is_married=true;

;
;
'")
СТРОКА 1: select avg(age) from people where is_married=true'
                                                           ^
postgres=# select avg(age) from people where is_married=true;
         avg
---------------------
 46.2941176470588235
(1 ёЄЁюър)


postgres=# select first_name,distinct nationality from people;
ОШИБКА:  ошибка синтаксиса (примерное положение: "distinct")
СТРОКА 1: select first_name,distinct nationality from people;
                            ^
postgres=# select distinct nationality from people;
  nationality
----------------
 Afghanistan
 China
 Russia
 Czech Republic
 Sweden
 Botswana
 Belarus
 kyrgyz
 Pakistan
 Israel
 Netherlands
 Peru
 Tanzania
 Poland
 Japan
 Philippines
 Thailand
 Portugal
 Benin
 Niger
 Colombia
 United States
(22 ёЄЁюъш)


postgres=# select first_name,distinct nationality from people;
ОШИБКА:  ошибка синтаксиса (примерное положение: "distinct")
СТРОКА 1: select first_name,distinct nationality from people;
                            ^
postgres=# select sum(weight) from people where occupation='developer';
 sum
-----
 996
(1 ёЄЁюър)


postgres=# select * from people where age=40 and occupation='developer';
 id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+-----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres=#  select * from people where age=64 and occupation='developer';
 id | first_name | last_name | age | gender |     address      | phone_number |        email        | occupation | nationality |     education      | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+------------------+--------------+---------------------+------------+-------------+--------------------+-----------+------------+--------------+--------+--------
 33 | Rudiger    | Muirden   |  64 | M      | 5 Namekagon Pass | 1897806490   | rmuirdenv@alexa.com | developer  | China       | Jiaying University | Nepali    | f          | t            |    136 |     86
(1 ёЄЁюър)


postgres=# select first_name,email from people where email not like('%gmail.com');
 first_name |             email
------------+--------------------------------
 Christye   | cepelett1@springer.com
 Wallace    | wsiebart3@gravatar.com
 Deane      | dsherbourne4@house.gov
 Noby       | npethrick6@miibeian.gov.cn
 Glyn       | gkmiecc@columbia.edu
 Alanna     | apirozzid@wikispaces.com
 Eulalie    | ecraydene@youtu.be
 Almeda     | ataptonh@nhs.uk
 Rubi       | rarnkej@samsung.com
 Willie     | wbrahank@shop-pro.jp
 Gal        | gpaggittn@last.fm
 Perry      | pdadleyq@dmoz.org
 Dexter     | dtreamayner@nba.com
 Marion     | mmussottit@sphinn.com
 Rhoda      | rocorriny@economist.com
 Verine     | vboyetz@smh.com.au
 Karl       | kpeerless10@soup.io
 Prue       | pghidetti7@rakuten.co.jp
 Thaddus    | tsabathier8@is.gd
 Zenia      | zboundy9@ow.ly
 Gal        | ggedneya@nymag.com
 Kacy       | krapperb@cpanel.net
 Isadore    | ireynaultf@gmpg.org
 Rey        | rsteerei@google.com.au
 Carry      | calexandroul@goo.gl
 Georgie    | glippingwellp@biblegateway.com
 Parsifal   | pjonks@cisco.com
 Sullivan   | sfrancu@freewebs.com
 Rudiger    | rmuirdenv@alexa.com
 Sergent    | sdipietrow@barnesandnoble.com
 Emelina    | ecastanagax@theatlantic.com
 Olag       | ochazelas11@fotki.com
 Hynda      | hmacellen12@rakuten.co.jp
 Yolanda    | yolanda@gmai.com
(34 ёЄЁюъш)


postgres=#