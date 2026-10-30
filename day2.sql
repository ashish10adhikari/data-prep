
--1
select count(*) as Total_product from products;

--2
select count(distinct country) from customers;


--3 
select avg(unit_price ) as avg_price,
min(unit_price) as cheapest_price,
max(unit_price) as expensive_price 
from products

--4
select categories.category_name, count(products.product_name) from categories
join products on products.category_id = categories.category_id 
group by categories.category_name ;

--5
select categories.category_name, avg(products.unit_price ) as avg from categories
join products on products.category_id = categories.category_id 
group by categories.category_name
order by avg desc;

--6
select country, count(customer_id ) from customers 
group by country 
having count(customer_id)>5;

--7
select count(orders.order_id), employees.first_name, employees.last_name from orders 
join employees on employees.employee_id = orders.employee_id 
group by employees.employee_id 
order by count(orders.order_id) desc;

--8
select sum(order_details.quantity), products.product_name from order_details 
join products on order_details.product_id  = products.product_id  
group by products.product_name  
order by sum(order_details.quantity) desc limit 10;

--9
select sum(unit_price*quantity*(1-discount)) as revenue, order_id from order_details
group by order_id
order by revenue desc limit 10;

--10
select count(orders.order_id) as total_orders, customers.company_name  from customers
join orders on orders.customer_id  = customers.customer_id 
group by customers.customer_id
having count(orders.order_id) > 10
order by total_orders desc;
