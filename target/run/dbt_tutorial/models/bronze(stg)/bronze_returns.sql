
  
  
  create or replace view `dbt_tutorial_dev`.`default`.`bronze_returns`
  
  as (
    select
* 
from `dbt_tutorial_dev`.`source`.`fact_returns`   --sourcename(schema) is "source" in databricks
  )
