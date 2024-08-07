CREATE or replace TABLE OUR_FIRST_DB.PUBLIC.LOAN_PAYMENT (
  Loan_ID STRING,
  loan_status STRING,
  Principal STRING,
  terms STRING,
  effective_date STRING,
  due_date STRING,
  paid_off_time STRING,
  past_due_days STRING,
  age STRING,
  education STRING,
  Gender STRING
  )
  
  create or replace database OUR_FIRST_DB;
 //Check that table is empy
 USE DATABASE OUR_FIRST_DB;

 SELECT * FROM LOAN_PAYMENT;

 
 //Loading the data from S3 bucket
  
 COPY INTO LOAN_PAYMENT
    FROM s3://bucketsnowflakes3/Loan_payments_data.csv
    file_format = (type = csv 
                   field_delimiter = ',' 
                   skip_header=1);

//Validate
 SELECT * FROM LOAN_PAYMENT;


desc table LOAN_PAYMENT;


 create or replace loan_pay1 as (
 select LOAN_ID
,LOAN_STATUS
,PRINCIPAL
,TERMS
,EFFECTIVE_DATE
,DUE_DATE
,PAID_OFF_TIME
,PAST_DUE_DAYS
,EDUCATION
,GENDER
,AGE
,case when (GENDER='male' and age>=21) then 'Major' 
      when (GENDER='male' and age<21)then 'Miner' else 'NA'
 end as M_Status,
 case when (gender='female' and age>=18) then 'Major'
      when (gender='female' and age<18) then 'Miner' else 'NA'
      end as F_Status
from LOAN_PAYMENT
 )

 select*from loan_pay1;

 create or replace stage my_inter_stage
 list @MY_INTER_STAGE

 CREATE or replace TABLE LOAN_PAYMENT_2 (
  Loan_ID STRING,
  loan_status STRING,
  Principal STRING,
  terms STRING,
  effective_date STRING,
  due_date STRING,
  paid_off_time STRING,
  past_due_days STRING,
  age STRING,
  education STRING,
  Gender STRING);


copy into LOAN_PAYMENT_2 from @MY_INTER_STAGE
file_format = (type = csv 
                   field_delimiter = ',' 
                   skip_header=1)

select*from loan_payment_2


select EDUCATION,count(*) as total from loan_payment_2 group by EDUCATION