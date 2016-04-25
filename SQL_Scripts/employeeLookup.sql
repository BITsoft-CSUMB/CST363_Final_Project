set echo off
set verify off

prompt
prompt --- Fish Store Employee Lookup ---
prompt

accept eNum prompt 'Please enter the employee number: '
prompt Thank you!

SELECT 'Number: ', employee_id
FROM 
	employee 
WHERE 
	employee_id = '&eNum';

SELECT 'Name: ', name
FROM 
	employee 
WHERE 
	employee_id = '&eNum';

SELECT 'Address: ', address
FROM 
	employee 
WHERE 
	employee_id = '&eNum';

SELECT 'Phone Number: ', phone
FROM 
	employee 
WHERE 
	employee_id = '&eNum';


