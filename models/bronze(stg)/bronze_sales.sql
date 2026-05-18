select
* 
from {{source('source','fact_sales')}}   --sourcename(schema) is "source" in databricks