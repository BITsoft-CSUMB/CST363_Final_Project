set echo off
set heading off
set verify off

prompt
prompt --- Fish Store Sales Order Lookup ---
prompt

accept sNum prompt 'Please enter the order number: '
prompt Thank you!

SELECT 'Order Number: ', so_num
FROM 
	sales_order 
WHERE 
	so_num = '&sNum';


SELECT 'Date:', so_date
FROM 
	sales_order 
WHERE 
	so_num = '&sNum';


SELECT 'Customer:', s.customer_id, c.fname, c.lname
FROM 
	sales_order s, customer c
WHERE 
	s.so_num = '&sNum' AND s.customer_id = c.customer_id;


SELECT 'Sales Rep:', s.sales_rep_id, e.name 
FROM 
	employee e, sales_order s 
WHERE 
	s.so_num = '&sNum' AND s.sales_rep_id = e.employee_id;

set heading on

prompt ------ ITEMS ORDERED -------

SELECT 
   s.product_id AS "Item Number", 
   p.name AS "Item Name", 
   s.quantity AS "Qty Sold", 
   TO_CHAR(s.unit_price,'$9,999.00') AS "Unit Price", 
   TO_CHAR((s.unit_price * s.quantity),'$9,999.00') AS "Ext. Price"
FROM 
   so_line s, product p 
WHERE 
   p.product_id = s.product_id 
   AND 
   s.so_num ='&sNum';