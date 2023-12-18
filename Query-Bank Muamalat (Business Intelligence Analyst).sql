select 
  split_part(c.customer_email, '#', 1) as cust_email, 
  c.customer_city as cust_city, 
  o.date as order_date, 
  o.quantity as order_qty, 
  p.prod_name as product_name, 
  p.price as product_price, 
  pc.category_name as category_name, 
  p.price * o.quantity as total_sales 
from 
  orders o 
  join customers c on o.customer_id = c.customer_id 
  join products p on o.prod_number = p.prod_number 
  join product_category pc on p.category = pc.category_id 
order by 
  date asc;
