
  
  
  create or replace view `dbt_tutorial_dev`.`default`.`bronze_store`
  
  as (
    select
* 
from `dbt_tutorial_dev`.`source`.`dim_store`   --sourcename(schema) is "source" in databricks
  )
