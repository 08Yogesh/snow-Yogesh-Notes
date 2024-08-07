drop  table table_A;
drop table table_b;


create or replace table table_A (num int);
insert into table_A (num) values
(1),
(2),
(2),
(3),
(3),
(3),
(4),
(4),
(4),
(4),
(5),
(5),
(5),
(5),
(5),
(null)

create or replace table table_B (num int);
insert into table_B (num) values
(1),
(1),
(2),
(2),
(3),
(3),
(4),
(4),
(5),
(5),
(5),
(null)


select X.*,Y.* from table_A X left join table_B Y
on X.num =Y.num 


select * from employees;
select * from departments;
select x.first_name,
x.DEPARTMENT_ID,
x.SALARY,
d.relationship
from employees x right join departments.departments d
on x.DEPARTMENT_ID=d.DEPARTMENT_ID

show tables;

create or replace table Dependents(dependent_id int,first_name varchar,last_name varchar,relationship string,employee_id int)

insert into Dependents(dependent_id,first_name,last_name,relationship,employee_id) values
(1,'Penelope','Gietz','Child',206),
(2,'Nick','Higgins','Child',205),
 (3,'Ed','Whalen','Child',200),
 (4,'Jennifer','King','Child',100),
 (5,'Johnny','Kochhar','Child',101),
 (6,'Bette','De Haan','Child',102),
 (7,'Grace','Faviet','Child',109),
 (8,'Matthew','Chen','Child',110),
 (9,'Joe','Sciarra','Child',111),
  (10,'Christian','Urman','Child',112),
  (11,'Zero','Popp','Child',113),
  (12,'Karl','Greenberg','Child',108),
  (13,'Uma','Mavris','Child',203),
  (14,'Vivien','Hunold','Child',103),
  (15,'Cuba','Ernst','Child',104),
   (16,'Fred','Austin','Child',105),
   (17,'Helen','Pataballa','Child',106),
   (18,'Dan','Lorentz','Child',107),
   (19,'Bob','Hartstein','Child',201),
   (20,'Lucille','Fay','Child',202),
   (21,'Kirsten','Baer','Child',204),
   (22,'Elvis','Khoo','Child',115),
   (23,'Sandra','Baida','Child',116),
   (24,'Cameron','Tobias','Child',117),
   (25,'Kevin','Himuro','Child',118),
   (26,'Rip','Colmenares','Child',119),
   (27,'Julia','Raphaely','Child',114),
   (28,'Woody','Russell','Child',145),
   (29,'Alec','Partners','Child',146),
   (30,'Sandra','Taylor','Child',176)
   select*from dependents;



select
x.first_name,x.employee_id,x.salary,
d.employee_id,d.first_name 
    from employees x left join dependents d
    on x.employee_id = d.employee_id

select
x.region_id,
x.region_name,
c.region_id,
c.country_name
from regions.regions x  JOIN 
countries.countries c
on x.region_id=c.region_id

select * from employees;
    