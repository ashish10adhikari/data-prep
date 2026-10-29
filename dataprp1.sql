  /* 1*/
      SELECT product_id ,product_name , unit_price  FROM products
      WHERE unit_price > 50 
      order by products.unit_price desc ;
     /* 2*/ 
      select customer_id, company_name , country from customers
      where country = 'Germany' or country = 'France';
      /* 3*/
      select * from orders 
      order by order_date desc limit 10;
      /* 4*/
      select orders.order_id, customers.company_name  from orders 
      inner join customers on orders.customer_id = customers.customer_id;
      /* 5*/
      select *   from customers 
      left join orders on orders.customer_id  = customers.customer_id ;
      /* 6*/
      select orders.order_id, products.product_name, orders.order_date    from orders 
      inner join order_details on orders.order_id = order_details.order_id
      inner join products on order_details.product_id = products.product_id;
      /* 7*/
      select * from products 
      left join order_details on order_details.product_id = products.product_id 
      where order_details.product_id is null ;
      /* 8 */
SELECT e.first_name, e.last_name,
       m.first_name AS manager_first_name,
       m.last_name AS manager_last_name
FROM employees e
LEFT JOIN employees m ON e.reports_to = m.employee_id;
      
      