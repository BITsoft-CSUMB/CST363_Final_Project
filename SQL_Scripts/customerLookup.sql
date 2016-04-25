set echo off
set verify off
set heading off

prompt
prompt --- Fish Store Customer Lookup ---
prompt

accept cNum prompt 'Please enter the customer number: '
prompt Thank you!

SELECT 'Number: ', customer_id
FROM 
	customer 
WHERE 
	customer_id = '&cNum';

SELECT 'Name: ', fname, lname
FROM 
	customer 
WHERE 
	customer_id = '&cNum';

SELECT 'Address: ', address, city, state, zip
FFROM 
	customer 
WHERE 
	customer_id = '&cNum';

SELECT 'Phone Number: ', phone
FROM 
	customer 
WHERE 
	customer_id = '&cNum';