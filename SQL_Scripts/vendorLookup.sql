set echo off
set verify off
set feedback off

prompt
prompt --- Fish Store Vendor Lookup ---

prompt
accept vId prompt 'Please enter the vendor ID: '
prompt Thank you!

prompt Vendor ID: &vId;

SELECT 'Name: ' || name || chr(10) || 'Address: ' || address
FROM 
	vendor
WHERE 
	vendor_id = '&vId';
   
prompt Products:
SELECT name
FROM 
	product
WHERE 
	vendor_id = '&vId';
