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
INSERT INTO customer VALUES ('&_fName', '&_lName', '&_address', '&_city', '&_state', '&_zip', '&_phone');
DECLARE _inc INT;
SELECT (customer_seq.currval - 1) INTO _inc FROM dual
prompt 'The following customer has been added';
SELECT * FROM customer WHERE where customer_id=(select max(customer_id) from customer);
