set echo off
set verify off
set heading off
set feedback off

prompt New Customer;

accept _fName prompt 'Enter First Name: ';
accept _lName prompt 'Enter Last Name: ';
accept _address prompt 'Enter Address: ';
accept _city prompt 'Enter City: ';
accept _state prompt 'Enter State Code (ex CA): ';
accept _zip prompt 'Enter Zip Code (ex 95000): ';
accept _phone prompt 'Enter Phone # (ex 4155551212): ';
INSERT INTO customer (fname, lname, address, city, state, zip, phone) VALUES ('&_fName', '&_lName', '&_address', '&_city', '&_state', '&_zip', '&_phone');

prompt 'The following customer has been added';
SELECT (fname ||' '|| lname ||chr(10)|| address ||chr(10)|| city ||', '|| state ||'  '|| zip ||chr(10)||'('|| substr(phone, 0, 3) ||') '|| substr(phone, 3, 3) ||'-'|| substr(phone, 6, 4)) FROM customer WHERE customer_id=(select max(customer_id) from customer);
