create database car_price;
use car_price;
select *from car_dekho;

---#total no. of entries---
select count(*)from car_dekho; #7927

---#how many cars in 2023 year---
select *from car_dekho;
select count(*)from car_dekho where year=2023;   #6

---#HOW many cars in several years 2023,2024,2025 
select count(*)from car_dekho where year between 2020 and 2023;
select count(*)from car_dekho where year=2024;
select count(*)from car_dekho where year=2018;
select count(*)from car_dekho where year=2019;

----#find the car price >500000---
select *from car_dekho where selling_price>500000;
select *from car_dekho where km_driven>10000;

----#find the fuel type petrol of total no. of cars----
select count(*)from car_dekho where fuel='petrol';
select *from car_dekho where fuel='CNG';

---#order by arrangements selling_price----
select *from car_dekho order by selling_price;
select *from car_dekho order by km_driven;
select *from car_dekho  order by mileage ;
select count(*)from car_dekho where year in(2020,2021,2022)group by year;

---#client ask to find total no. of cars by years---
select year,count(*)from car_dekho group by year;


----#avrage selling price of cars---
select avg(selling_price)avg_sp from car_dekho;

----#how many diesel and petrol cars in 2020---
select count(*)from car_dekho where fuel='diesel' and year=2020;  #20
select count(*)from car_dekho where fuel='petrol' and year=2020;  #51

---#details of all the cars between 2018 and 2023---
select *from car_dekho where  year between 2018 and 2023;
select *from car_dekho where year between 2020 and 2022;

----#all cars by years---
select year,count(*)from car_dekho where fuel='petrol' group by year;
select year,count(*)from car_dekho where fuel='CNG' group by year;


---#which year having more then 100 cars----
select year,count(*)from car_dekho group by year having count(*)>100;
select year,count(*)from car_dekho group by year having count(*)<50;


-- need to find the car maruti alto and maruti lxi--
select *from car_dekho where name in (' Maruti Alto 800 LXI Opt',' Maruti S-Presso LXi');
select count(*)from car_dekho where name in (' Maruti Alto 800 LXI Opt',' Maruti S-Presso LXi'); #3

-- need to find the cars except maruti alto and maruti lxi--
select *from car_dekho where name not in (' Maruti Alto 800 LXI Opt',' Maruti S-Presso LXi');
select count(*)from car_dekho where name not in (' Maruti Alto 800 LXI Opt',' Maruti S-Presso LXi'); #7924


-- number of cars of maruti --
select *from car_dekho where name like 'maruti%';
select count(*)from car_dekho where name like 'maruti%';

-- Details of car by name and price--
select name,concat('Rs',selling_price) from car_dekho;
select name,concat('Rs',format(selling_price,0)) from car_dekho;

-----#END----