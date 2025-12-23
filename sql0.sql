use world;
show tables;

select * from country;
select name,population,region from country;
select name, population -500, region from country;

select region , name, population-1000 from country;

-- to filter we use where clause
select * from country where indepyear ='1983';
select * from country where continent='asia';
select * from country where continent='africa';
select name,region from country where indepyear='1984';
select name,continent from country where indepyear='1991';
select name,continent, indepyear from country  where indepyear='1991';
select * from country where continent in ('africa' , 'asia');            -- specific value ke liye in use 
select * from country where continent = 'africa' or  'asia';
select * from country where indepyear in (1960 , 1984);
select * from country where indepyear = 1960 or 1991;
select name, continent from country where indepyear = 1960 or 1991;
select name , continent,indepyear from country where indepyear in (1960 or 1991);
select name,indepyear from country where indepyear between 1960 and 9192;                     -- bich ke liye between  
select * from country where indepyear between 1960 and 1991;
select * from country where indepyear not between 1960 and 9191;
select * from country where indepyear not in (1960, 1991)   ;                      -- jo value brakit m hai bo nhi honi chahiye not on

-- Q get the country name and continent where the region is not sauth europe.
 select name , continent from country where region not in ('sauth europe');
 
 -- Q get the country name from the population alone with 10% increament in the population.
 select name,population , population*0.1 from country;
 
 -- Q get all the columns where the lifeexpentency is either 75.1 or 74.1 63.7
 
 select * from country where lifeExpectancy in (75.1 , 74.1 ,63.1);
-- get the population region  continent where the population shold not be 5000 to 300000

-- select population, region , continent where  population not between 5000 or 300000;

-- like operator(match a pattern or pattern ko dutna ).
-- name==> name start, name include , name end.
-- (%) wild card character / special character .
-- % o and more character 
select * from country where name like "a%";
select name from country where name like '_an%';
select * from country where name  like '__d%';
select * from country where name like '%r%';
select * from country where name like '___d';
select * from country where name like '%__r';
select * from country where name like '_r___';
-- get the country name where tha continent start with n
select * from country where continent like 'n%';
select * from country where continent like'_p%';
select * from country where continent like '____';
select * from country where region like '_a%a_';
select * from country where region like '__c% sio';
select * from country where continent in( 'north america ' , 'sauth america');

-- basic function
-- function
-- case conversion                     -- change karna jese lower and upper 
select name, lower(name),upper(name) from country;
-- string function
select name ,code, concat_ws('_',name,code,'divya') from country;              -- concat_ws m phela hi separated ho hai
show tables;
use world;
select * from country;
select name,code ,concat_ws('_',name,code) from country  where concat_ws('_',name,code) ='Afghanistan_AFG';
select name,region,concat_ws('',region,name);
select name,continent from country where left(continent,1)=left(name,1);
select name,substr(name,2) from country;                -- substring m kis column se or kis position se dutna hai    
select name,substr(name,2), substr(name,2,4) from country; 
select name,continent,substr(name,1,1)  ,substr(name,1,1) from country;
select name,continent,substr(name,1,1)  ,substr(name,1,1) from country where substr(name,1,1)=substr(name,1,1);
select name,substr(name,2),substr(name,2,4) from country where substr(name,1,1)=substr(name,1,1);
select name , substr(name,2),substr(name,-4,2) from country ;
select name,continent ,substr(name,1,1),substr(continent,1,1) from country where substr(name,1,1) =substr(continent,1,1);
select name,region,substr(name,1,1),substr(region,1,1) from country where substr(name,1,1)= substr(region,1,1);
select population,indepyear,substr(indepyear,1),substr(population,1,1) from country where substr(population,1,1)= substr(indepyear,1,1);
select name,instr(name,'e') from country;                 -- kis position pr hai bo btata hai position ki value.
select name,char_length(name) from country;               -- data m kitni value hai puri value deta hai
select trim(           'divya') ,char_length(name)from country; 
select name,trim(both 'A'from  name) from country;  
select name,trim(both ' a'from NAME), trim(both 'A' from name) from country;              -- space remove and both ke baad kuch bhi likhe bo hat jata hai
-- LPAD AND RPAD
SELECT NAME,POPULATION,rpad(population,9,'d') FROM COUNTRY;                              -- rpad m value kaam ho jai to kuch bhi value se fill kr sakte hai
select name,population,lpad(indepyear,6,'r') from country;  
-- round 
-- handle place,ten place,one place.
use world  ;
select * from country; 
select  LifeExpectancy, round(LifeExpectancy) from couNTRY;
SELECT 30.68,ROUND(30.45,1);
SELECT 36.27,round(323.456,2);
select 36.76,round(324.45,1),truncate(36.67,1);            
select mod(10,3) ,ceil(34.23),floor(4.9999);
-- date function
select now(),current_time(),current_date;
select now(),adddate(now(),2);
select now(),adddate(now(),-2);
select now(),adddate(now(),2),adddate(now(),interval 2 year);
select now(),adddate(now(),interval 2 year);
select now(),adddate(now(),interval 2 month);
select now(),adddate(now(),interval 2 hour);
select now(),extract(month from now());
select now(),extract(week from now());
select now(),extract(year from now()), date_format( now(),'year is %y');











