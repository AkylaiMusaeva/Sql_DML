--1 Display only car’s brands & car’s models & car’s price
select brand,model,price from cars;
--2 Display quantity of all cars
select count(id)from cars;
--3 Display all cars where brand is Hyundai
select * from cars where brand='Hyundai';
--4 Display all Red and Blue cars
select * from cars where color='Red' or color='Blue' ;
--5 Display all cars where issued year between 2000 and 2010
select * from cars where cars.year_of_issue between 2000 and 2010;
--6  Display quantity of cars where car’s brand is Chevrolet
select count(*)from cars where brand='Chevrolet';
--7 Display the average year of manufacture of cars
select avg(year_of_issue) from cars;
--8 Display the cars where brand equals to Audi, Toyota, Kia and Ford
select * from cars where brand in('Audi','Toyota','Kia','Ford');
--9 Display cars where car’s model starts with ’T’
select * from cars where model ilike ('t%');
--10 Display cars where car’s model ends with ‘e’;
select * from cars where model ilike ('%e');
--11 Display brands where contains only 5 symbols
select * from cars where brand ilike ('_____');
--12 Display all amounts where car's brand is Mercedes-Benz
select sum(price) from cars where brand='Mercedes-Benz';
--13 Display the most expensive car & the cheepest car
select * from cars order by price desc limit 1;
select * from cars order by price limit 1;
select brand,price from cars where price=(select max(price) from cars);
select brand,price from cars where price=(select min(price) from cars);
--14 Display all cars where car's brand not TOYOTA
select * from cars where brand not in('Toyota');
--15 Display 10 the most expensive cars
select * from cars order by price desc limit 10;
--16 Display the newest cars between 5th to 15th
select * from cars order by year_of_issue desc limit 10 offset 5;
--17 Display cars where car's year of issue not between 1995 and 2005;
select * from cars where cars.year_of_issue not between 1995 and 2005;
--18 Display most cars in one color
select * from cars where color=(select color from cars
                                group by color
                                order by count(color)desc limit 1);

select color,count(color) from cars group by color order by count(color) desc limit 1;
