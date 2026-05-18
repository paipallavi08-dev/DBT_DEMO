--{{config(materialized = 'table')}}   block level configuration


select
* 
from {{source('source','dim_date')}}   --sourcename(schema) is "source" in databricks