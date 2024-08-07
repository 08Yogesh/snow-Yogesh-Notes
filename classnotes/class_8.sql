select* from employees;

SELECT first_name, hire_date
FROM employees
WHERE hire_date <= CURRENT_DATE - INTERVAL '5 years';



SELECT first_name, hire_date
FROM employees
where hire_date < date 
'1990-01-30' or hire_date > '1990-12-31';

 select first_name from employees 

 SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = CURRENT_SCHEMA()
  AND TABLE_CATALOG = CURRENT_DATABASE()
  AND TABLE_OWNER = CURRENT_USER();



 select current_user();


 SELECT TABLE_NAME, TABLE_SCHEMA
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_OWNER = CURRENT_USER();

select first_name,department_id from employees
where department_id in(10 , 20,40); 


select*from employees;

select first_name,last_name from employees
where last_name like 'S%';


select first_name,last_name from employees
where last_name like '%s';

select first_name from employees
where first_name like '__a%'

select last_name from employees
where length(last_name)>4;


select*from employees;


select count(*) as Total_No_EMP
from employees;

select sum(salary)as Total_salary from employees

select max(salary)as Total_salary from employees



select first_name,salary from employees
order by salary desc limit 1

select max(salary) from employees

select min(salary) from employees

select avg(salary) from employees



select*from employees;

drop table employees;
CREATE or replace TABLE employees (
	employee_id INT,
	first_name VARCHAR (20),
	last_name VARCHAR (25),
	email VARCHAR (100),
    job_title varchar(30),
	phone_number VARCHAR (20),
	hire_date DATE ,
	job_id INT,
	salary DECIMAL (8, 2) ,
	manager_id INT ,
	department_id INT 
    );


INSERT INTO employees(employee_id,first_name,last_name,email,job_title,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (100,'Steven','King','steven.king@sqltutorial.org','salseman','515.123.4567','1987-06-17',4,24000.00,NULL,9),
(101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','clerk','515.123.4568','1989-09-21',5,17000.00,100,9),
(102,'Lex','De Haan','lex.de haan@sqltutorial.org','manager','515.123.4569','1993-01-13',5,17000.00,100,9),
(103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','clerk','590.423.4567','1990-01-03',9,9000.00,102,6),
(104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','salseman','590.423.4568','1991-05-21',9,6000.00,103,6),
(105,'David','Austin','david.austin@sqltutorial.org','clerk','590.423.4569','1997-06-25',9,4800.00,103,6),
(106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','manager','590.423.4560','1998-02-05',9,4800.00,103,6),
(107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','salseman','590.423.5567','1999-02-07',9,4200.00,103,6),
(108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','salseman','515.124.4569','1994-08-17',7,12000.00,101,10),
(109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','manager','515.124.4169','1994-08-16',6,9000.00,108,10),
(110,'John','Chen','john.chen@sqltutorial.org','manager','515.124.4269','1997-09-28',6,8200.00,108,10),
(111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','salseman','515.124.4369','1997-09-30',6,7700.00,108,10),
(112,'JoseManuel','Urman','josemanuel.urman@sqltutorial.org','clerk','515.124.4469','1998-03-07',6,7800.00,108,10),
(113,'Luis','Popp','luis.popp@sqltutorial.org','clerk','515.124.4567','1999-12-07',6,6900.00,108,10),
(114,'Den','Raphaely','den.raphaely@sqltutorial.org','salseman','515.127.4561','1994-12-07',14,11000.00,100,3),
(115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','clerk','515.127.4562','1995-05-18',13,3100.00,114,3),
(116,'Shelli','Baida','shelli.baida@sqltutorial.org','clerk','515.127.4563','1997-12-24',13,2900.00,114,3),
(117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','manager','515.127.4564','1997-07-24',13,2800.00,114,3),
(118,'Guy','Himuro','guy.himuro@sqltutorial.org','clerk','515.127.4565','1998-11-15',13,2600.00,114,3),
(119,'Karen','Colmenares','karen.colmenares@sqltutorial.org','manager','515.127.4566','1999-08-10',13,2500.00,114,3),
(120,'Matthew','Weiss','matthew.weiss@sqltutorial.org','salseman','650.123.1234','1996-07-18',19,8000.00,100,5),
(121,'Adam','Fripp','adam.fripp@sqltutorial.org','salseman','650.123.2234','1997-04-10',19,8200.00,100,5),
(122,'Payam','Kaufling','payam.kaufling@sqltutorial.org','manager','650.123.3234','1995-05-01',19,7900.00,100,5),
(123,'Shanta','Vollman','shanta.vollman@sqltutorial.org''manager','','650.123.4234','1997-10-10',19,6500.00,100,5),
(126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','manager','650.124.1224','1998-09-28',18,2700.00,120,5),
(145,'John','Russell','john.russell@sqltutorial.org','salseman',NULL,'1996-10-01',15,14000.00,100,8),
(146,'Karen','Partners','karen.partners@sqltutorial.org','manager',NULL,'1997-01-05',15,13500.00,100,8),
(176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org','salseman',NULL,'1998-03-24',16,8600.00,100,8),
(177,'Jack','Livingston','jack.livingston@sqltutorial.org','clerk',NULL,'1998-04-23',16,8400.00,100,8),
(178,'Kimberely','Grant','kimberely.grant@sqltutorial.org','clerck',NULL,'1999-05-24',16,7000.00,100,8),
(179,'Charles','Johnson','charles.johnson@sqltutorial.org','salseman',NULL,'2000-01-04',16,6200.00,100,8),
(192,'Sarah','Bell','sarah.bell@sqltutorial.org','manager','650.501.1876','1996-02-04',17,4000.00,123,5),
(193,'Britney','Everett','britney.everett@sqltutorial.org','manager','650.501.2876','1997-03-03',17,3900.00,123,5),
(200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org','clerck','515.123.4444','1987-09-17',3,4400.00,101,1),
(201,'Michael','Hartstein','michael.hartstein@sqltutorial.org','manager','515.123.5555','1996-02-17',10,13000.00,100,2),
(202,'Pat','Fay','pat.fay@sqltutorial.org','manager','603.123.6666','1997-08-17',11,6000.00,201,2),
(203,'Susan','Mavris','susan.mavris@sqltutorial.org','clerk','515.123.7777','1994-06-07',8,6500.00,101,4),
(204,'Hermann','Baer','hermann.baer@sqltutorial.org','salseman','515.123.8888','1994-06-07',12,10000.00,101,7),
(205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','manager','515.123.8080','1994-06-07',2,12000.00,101,11),
(206,'William','Gietz','william.gietz@sqltutorial.org','clerk','515.123.8181','1994-06-07',1,8300.00,205,11)

select*from employees

select job_title,salary from employees
where job_title like 'salseman' order by salary desc limit  1 ;

select max(salary) as salary_info
from employees
where department_id=10

select min(salary) as salary_info
from employees
where JOB_TITLE like 'salseman';

select first_name,job_title,avg(salary) as avg_salary
from employees
where JOB_TITLE='manager';

select job_title,department_id,sum(salary) from employees
where job_title='ANALYST '
and department_id=40
group by job_title,department_id;

select sum(salary) as total_salary from employees
where job_title='analyst' and department_id=40;

select first_name,salary from employees
order by salary;

select first_name,salary from employees
order by salary desc;

select first_name from employees
order by first_name;


select EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,SALARY from employees
order by FIRST_NAME,DEPARTMENT_ID,salary

select first_name,salary*12 from employees
order by salary desc;


select *from employees;





select DEPARTMENT_ID,count(first_name) as total_emp,job_title
from employees
group by DEPARTMENT_ID,job_title


select job_title,count(first_name) as total_emp 
from employees
group by job_title

select department_id,sum(salary) as total_sal
from employees
group by department_id

select department_id,max(salary) as max_salary
from employees
group by department_id 

select job_title,sum(salary) as total_sal
from employees
group by job_title


select first_name,salary,
        salary * 0.15 as hra,
        salary * 0.10 as Da ,
        salary * 0.5 as Pf,
        (salary+(salary * 0.15)+(salary * 0.10)-(salary *0.5)) as total_salary
        from employees
        order by total_salary



SELECT 
    first_name,
    salary,
    salary * 0.15 AS hra,
    salary * 0.10 AS da,
    salary * 0.05 AS pf,
    (salary + (salary * 0.15) + (salary * 0.10) - (salary * 0.05)) AS total_salary
FROM 
    employees

    
ORDER BY 
    total_salary;



select department_id as total
from employees
group by department_id
having department_id>3


select job_title,sum(salary) as Total_sal
from employees
group by job_title having sum(salary)>40000


select job_title,count(first_name) as total_emp
from employees
group by job_title having count(first_name)>3 
