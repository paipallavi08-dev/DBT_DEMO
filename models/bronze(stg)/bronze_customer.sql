--{{config(materialized = 'table')}}   block level configuration


select
* 
from {{source('source','dim_customer')}}   --sourcename(schema) is "source" in databricks