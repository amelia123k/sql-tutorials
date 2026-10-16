# challenge1
select product_name,department,stock_quantity from  inventory
where  stock_quantity < 3
order by stock_quantity asc;

#challenge2

select product_name,department,(stock_quantity*unit_cost)
 as total_assets_value from inventory ;


#challenge3


select avg(unit_cost) as average_company_cost
 from inventory;

#challenge4

select department ,sum(stock_quantity) as  total_assets_value
  from inventory
  group by department;
  
  #challenge5
  
  select department,avg(unit_cost) as avg_cost
  from inventory
  group by department 
   having  avg_cost > 2
  
  
  
  
  
  
  
  

