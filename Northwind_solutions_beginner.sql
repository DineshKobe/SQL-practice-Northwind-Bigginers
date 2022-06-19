
-- 1. Which shippers do we have?

select * 
from shippers;

-- 2. In the Categories table, selecting all the fields using this SQL: Select * from Categories …will return 4 columns. We only want to see two columns, CategoryName and Description

select category_name, 
	   description 
from categories;

-- 3. Sales Representatives We’d like to see just the FirstName, LastName, and HireDate of all the employees with the Title of Sales Representative. Write a SQL statement that returns only those employees

select first_name, 
last_name, 
hire_date 
from employees 
where title = 'Sales Representative';


-- 4. Sales Representatives in the United States Now we’d like to see the same columns as above, but only for those employees that both have the title of Sales Representative, and also are in the United States.

select first_name, 
last_name, 
hire_date 
from employees 
where title = 'Sales Representative' and country ='USA';


-- 5. Orders placed by specific EmployeeID Show all the orders placed by a specific employee. The EmployeeID for this Employee (Steven Buchanan) is 5.

select order_id, 
order_date 
From orders 
where employee_id = '5';


-- 6. Suppliers and ContactTitles In the Suppliers table, show the SupplierID, ContactName, and ContactTitle for those Suppliers whose ContactTitle is not Marketing Manager

select supplier_id, 
contact_name, 
contact_title 
from suppliers 
where contact_title != 'Marketing Manager';

-- 7. Products with “queso” in ProductName In the products table, we’d like to see the ProductID and ProductName for those products where the ProductName includes the string “queso”.

select product_id, 
product_name 
from products 
where product_name like '%queso%';


-- 8. Orders shipping to France or Belgium Looking at the Orders table, there’s a field called ShipCountry. Write a query that shows the OrderID, CustomerID, and ShipCountry for the orders where the ShipCountry is either France or Belgium.

select order_id, 
customer_id, 
ship_country 
from orders 
where ship_country = 'France' or ship_country ='Belgium';

-- 9. Orders shipping to any country in Latin America Now, instead of just wanting to return all the orders from France of Belgium, we want to show all the orders from any Latin American country. But we don’t have a list of Latin American countries in a table in the Northwind database. So, we’re going to just use this list of Latin American countries that happen to be in the Orders table: Brazil , Mexico ,Argentina ,Venezuela.
 It doesn’t make sense to use multiple Or statements anymore, it would get too convoluted. Use the In statement
 
 select order_id, 
 customer_id, 
 ship_country 
 from orders 
 where ship_country in ('Brazil', 'Mexico', 'Argentina', 'Venezuela');


-- 10. For all the employees in the Employees table, show the FirstName, LastName, Title, and BirthDate. Order the results by BirthDate, so we have the oldest employees first

select first_name, 
last_name, 
title, birth_date 
from employees 
order by birth_date;

-- 11. Showing only the Date with a DateTime field In the output of the query above, showing the Employees in order of BirthDate, we see the time of the BirthDate field, which we don’t want. Show only the date portion of the BirthDate field.
 
 select first_name, 
 last_name, 
 title, 
 date(birth_date) 
 from employees 
 order by birth_date;

-- 12. Get employees full name 
select first_name, 
last_name, 
concat (first_name, ' ', last_name) 
from employees;

-- 13. OrderDetails amount per line item with computed

select order_id, 
product_id, 
unit_price, 
quantity, 
unit_price* quantity as total_price 
from order_Details 
limit 25;

-- 14. How many customers are in customers table

select 
count(*) as total_customers 
from customers;

-- 15. retrive the first order from orders;

select min(order_date) 
From orders;


-- 16. Countries where there are customers

select distinct country 
from customers;


-- 17. Contact titles for customers

select contact_title, 
count(contact_title) as cnt  
from customers 
group by contact_title 
order by cnt;

-- 18. Fetch Products with associated supplier names


-- 19. fetch Orders and the Shipper that was used



