select top 5*from  SNOWFLAKE_SAMPLE_DATA.TPCH_SF100.CUSTOMER ;

create database Yogesh;
create table test (num int);
select*from test;

insert into test (num) values (1);
insert into test (num) values(2);
insert into test (num) values(3);

drop table test;
undrop table test;