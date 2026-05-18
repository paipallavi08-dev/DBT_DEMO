--{{config(materialized = 'table')}}   block level configuration


select
* 
from {{source('source','dim_product')}}   --sourcename(schema) is "source" in databricks