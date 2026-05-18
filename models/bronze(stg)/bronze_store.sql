select
* 
from {{source('source','dim_store')}}   --sourcename(schema) is "source" in databricks