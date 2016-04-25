set echo off
set verify off
set heading off
set feedback off

prompt New Sales Order;

-- Get customer info
accept _custID prompt 'Enter Customer ID (N for new customer or L for lookup): ';
set term off
col menu new_val menuVar
SELECT
	CASE '&_custID'
  	WHEN 'N' THEN '@createCustomer.sql'
    WHEN 'L' THEN '@customerLookup.sql'
    ELSE 'Invalid Selection'
  END AS menu
FROM dual;
@&menuVar
-- Get employee info
accept _empID prompt 'Enter Employee ID (N for new employee or L for lookup): ';
col menu2 new_val menuVar2
SELECT
	CASE '&_empID'
  	WHEN 'N' THEN '@createEmployee.sql'
    WHEN 'L' THEN '@employeeLookup.sql'
    WHEN '^[0-9]*$' THEN prompt 'Invalid Selection'
  END AS menu2
FROM dual;
define _date = SYSDATE;
INSERT INTO sales_order (so_date, customer_id, sales_rep_id) VALUES ('&_date', '&_custID', '&_empID');
define _soNum = SELECT max(so_num) FROM sales_order;

@&menuVar2

-- Here we do lookups of products until escaped