set define on
set verify off

prompt Welcome to Fish and Friends
prompt
prompt 1: Product Lookup        | 2: Employee Lookup
prompt 3: Sales Order Lookup    | 4: Customer Lookup
prompt 5: Purchase Order Lookup | 6: Vendor Lookup
prompt 7: Tank Water Alerts     | 8: Add Tank Water Quality Input

accept input prompt 'Enter selection:'

col menu new_val menuVar

set term off

SELECT
   CASE '&input'
      WHEN '1' THEN '@productLookup.sql' 
      WHEN '2' THEN '@employeeLookup.sql'
      WHEN '3' THEN '@salesLookup.sql'
      WHEN '4' THEN '@customerLookup.sql'
      WHEN '5' THEN '@purchaseLookup.sql'
      WHEN '6' THEN '@vendorLookup.sql'
      WHEN '7' THEN '@tankstatusLookup.sql'
      WHEN '8' THEN '@tankstatusInput.sql'
      ELSE '@queryFishStore.sql'
   END AS menu 
FROM DUAL;

set term on

@&menuVar