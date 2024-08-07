CREATE OR REPLACE DATABASE MANAGE_DB;

create or replace schema external_stages;


CREATE OR REPLACE STAGE MANAGE_DB.external_stages.aws_stage
    url='s3://bucketsnowflakes3'



 DESC STAGE MANAGE_DB.external_stages.aws_stage;    
LIST @aws_stage;


CREATE OR REPLACE TABLE OUR_FIRST_DB.PUBLIC.ORDERS (
    ORDER_ID VARCHAR(30),
    AMOUNT INT,
    PROFIT INT,
    QUANTITY INT,
    CATEGORY VARCHAR(30),
    SUBCATEGORY VARCHAR(30));


COPY INTO OUR_FIRST_DB.PUBLIC.ORDERS
    FROM @aws_stage
    file_format= (type = csv field_delimiter=',' skip_header=1)
    pattern='.*Order.*';

    select *from our_first_db.public.orders; 

    select CATEGORY,count(*) as total from our_first_db.public.orders group by CATEGORY

    create or replace table our_first_db.public.order_ex as(
    select order_id , amount ,Profit from OUR_FIRST_DB.PUBLIC.ORDERS 
    );

    select *from our_first_db.public.order_ex;
    

    COPY INTO OUR_FIRST_DB.PUBLIC.ORDER_EX
    FROM (select s.$1, s.$2,s.$3 from @MANAGE_DB.external_stages.aws_stage s)
    file_format= (type = csv field_delimiter=',' skip_header=1)
    files=('OrderDetails.csv');

    select *from our_first_db.public.order_ex

    create or replace table our_first_db.public.order_ex (
    order_id varchar(30),
    amount int,
    profit int,
    PROFITABLE_FLAG VARCHAR(30)

    )

    copy into our_first_db.public.order_ex
    from(select
         s.$1,
         s.$2,
         s.$3,
         case when cast(s.$3 as int)<0 then 'Not Profitable' else 'profitable' end
         from @manage_db.external_stages.aws_stage s)
         file_format= (type = csv field_delimiter=',' skip_header=1)
         files=('OrderDetails.csv')
         force=true
select*from our_first_db.public.order_ex

CREATE OR REPLACE TABLE OUR_FIRST_DB.PUBLIC.ORDERS_EX (
    ORDER_ID VARCHAR(30),
    AMOUNT INT,
    PROFIT INT,
    CATEGORY_SUBSTRING VARCHAR(5)
  
    )
COPY INTO OUR_FIRST_DB.PUBLIC.ORDERS_EX
    FROM (select 
            s.$1,
            s.$2, 
            s.$3,
            substring(s.$5,1,5) 
          from @MANAGE_DB.external_stages.aws_stage s)
    file_format= (type = csv field_delimiter=',' skip_header=1)
    files=('OrderDetails.csv')
    force=true;
    

