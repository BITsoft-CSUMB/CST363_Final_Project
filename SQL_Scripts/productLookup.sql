set echo off
set verify off

prompt
prompt --- Fish Store Product Lookup ---
prompt

accept pNum prompt 'Please enter the product number: '
prompt Thank you!

SELECT 'Number: ', product_id
FROM 
	product 
WHERE 
	product_id = '&pNum';

SELECT 'Name: ', name
FROM 
	product 
WHERE 
	product_id = '&pNum';

SELECT 'Description: ', description
FROM 
	product 
WHERE 
	product_id = '&pNum';

SELECT 'Price: ', product_id
FROM 
	product 
WHERE 
	product_id = '&pNum';


