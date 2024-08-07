select *from employees;

create  table employeee_v1 as(
select FIRST_NAME,SALARY from employees
)
desc table employeee_v1;
select *from employeee_v1   order by salary desc;

update employeee_v1
set FIRST_NAME='Yogesh',
    LAST_NAME='King',
where FIRST_NAME='Steven' and 'Reddy'

update employees
set MANAGER_ID=null
where MANAGER_ID=100 
select*from employees;

update  employees
set FIRST_NAME='Yogesh',
    LAST_NAME='N'
where EMPLOYEE_ID=100;

drop table employees

undrop table employees;

select top 3 *from employees

select * from depedent;

select *from countries;
select*from depedents;
