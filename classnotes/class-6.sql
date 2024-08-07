select * from employees;
select salary from employees in(
select 
)
select * from dependents;
with emp as( 
select  dense_rank () over (order by  JOB_ID) as rid,
        HIRE_DATE,JOB_ID,FIRST_NAME,
        from employees
        )
        select * from emp where rid =1



with cte_emp as(
select HIRE_DATE,
JOB_ID,
FIRST_NAME,
 dense_rank () over(partition by job_id order by HIRE_DATE ) as rid
         from employees
)
select*from cte_emp 


select FIRST_NAME,
        salary,
rank() over(order by salary desc) as rid,
from employees

select FIRST_NAME from employees
union
select FIRST_NAME from dependents

select * from employees

select FIRST_NAME,HIRE_DATE,JOB_ID,
rank() over(order by JOB_ID) as rid
from employees


with cte_employ as(
select FIRST_NAME,HIRE_DATE,JOB_ID,
dense_rank() over(partition by job_id order by HIRE_DATE) as rid
from employees
)
select * from cte_employ 


select * from employees;

select DEPARTMENT_ID,DEPARTMENT_NAME,L0OCATION_ID from departments;

select FIRST_NAME,JOB_ID from employees;
select FIRST_NAME,salary from employees;

select sum(salary) from employees;
select FIRST_NAME,salary from employees;


select FIRST_NAME , DEPARTMENT_ID,from employees where DEPARTMENT_ID=10;

select FIRST_NAME ,salary from employees where salary>3000

select EMPLOYEE_ID,FIRST_NAME ,salary from employees where salary in(
select salary from employees group by salary having count(*)>1
) 
order by salary




select*from employees


select FIRST_NAME,DEPARTMENT_ID
from employees where DEPARTMENT_ID=10

select  FIRST_NAME,EMPLOYEE_ID,salary from employees where salary in(
select salary from employees group by salary having count(*)>1
)
order by salary

select first_name,department_id,salary from employees where salary in(
select salary from employees group by salary having count(*)<=1
)
order by salary




select * from employees;
select * from departments;
select FIRST_NAME,JOB_ID from employees;
select FIRST_NAME,salary from employees;
select EMPLOYEE_ID,salary from employees;
select first_name,DEPARTMENT_ID from employees where DEPARTMENT_ID=10;
select first_name,salary from employees where salary>3000;

select first_name,EMPLOYEE_ID,salary from employees where salary in(
select salary from employees group by salary having count(*)>1
)
order by salary;
 select employee_id,first_name,salary from employees where salary in(
 select salary from employees group by salary  having count(*)<=1
 )
 order by salary




select first_name,JOB_ID,HIRE_DATE,
dense_rank() over(partition by job_id order by HIRE_DATE) as rid
from employees;


select *from employees


 select department_id,salary,first_name ,
 row_number () over(order by department_id) as rid
 from employees 


 with emp as(
 select
 row_number
() over(order by department_id) as rid,
first_name,
salary,
department_id
from employees
)
select * from emp where rid=10


create or replace table cte_emp as(
select
row_number() over(order by salary) as rid,
department_id,
salary,
first_name
from employees
);
select*from cte_emp where rid=10

select * from employees;
select first_name,salary from employees where salary>3000

select first_name,HIRE_DATE
from employees
where HIRE_DATE<= (current_date -interval '5 Years');

select first_name,Hire_date
from employees
hire_date < '30-01-1990'
or
hire_date > '30-12-1990';