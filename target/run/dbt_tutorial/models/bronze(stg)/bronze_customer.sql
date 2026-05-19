
  
    
        create or replace table `dbt_tutorial_dev`.`default`.`bronze_customer`
      
      
    using delta
  
      
      
      
      
      
      
      
      as
      --   block level configuration


select
* 
from `dbt_tutorial_dev`.`source`.`dim_customer`   --sourcename(schema) is "source" in databricks
  