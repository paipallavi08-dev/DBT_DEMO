--These are static tests which are written inside tests folder and specifically for KPI metrics.

select
*
from
    `dbt_tutorial_dev`.`default`.`bronze_sales` --we are refrencing the models from the bronze layer and not the source layer

where 
    gross_amount < 0 AND net_amount < 0