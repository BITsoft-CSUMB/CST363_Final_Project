set define on
set verify off
set heading off
set echo off

prompt Welcome to Fish and Friends
prompt
prompt 1: Product Lookup           | 2: Employee Lookup
prompt 3: Sales Order Lookup       | 4: Customer Lookup
prompt 5: Vendor Lookup            | 6: Tank Water Alerts
prompt 7: Tank Water Quality Input | 8: Create Invoice

accept input prompt 'Enter selection:'

col menu new_val menuVar

set term off

SELECT
   CASE '&input'
      WHEN '1' THEN '@productLookup.sql' 
      WHEN '2' THEN '@employeeLookup.sql'
      WHEN '3' THEN '@salesLookup.sql'
      WHEN '4' THEN '@customerLookup.sql'
      WHEN '5' THEN '@vendorLookup.sql'
      WHEN '6' THEN '@tankstatusLookup.sql'
      WHEN '7' THEN '@tankstatusInput.sql'
      WHEN '8' THEN '@createInvoice.sql'
      ELSE '@queryFishStore.sql'
   END AS menu 
FROM DUAL;

set term on

@&menuVar
