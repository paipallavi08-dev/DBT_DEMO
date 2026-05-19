
  
    
        create or replace table `dbt_tutorial_dev`.`default`.`bronze_date`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      --   block level configuration


select
* 
from `dbt_tutorial_dev`.`source`.`dim_date`   --sourcename(schema) is "source" in databricks
  