-- Drop the tables, sequences and triggers if they exists, so that this script can be run repeatedly.
DROP TABLE product_order;
DROP TABLE po_line;
DROP TABLE so_line;
DROP TABLE sales_order;
DROP TABLE tank_log;
DROP TABLE inventory_location;
DROP TABLE product;
DROP TABLE product_category;
DROP TABLE vendor;
DROP TABLE customer;
DROP TABLE employee;
DROP SEQUENCE purchase_seq;
DROP TRIGGER purchase_trg;
DROP SEQUENCE sales_seq;
DROP TRIGGER sales_trg;
DROP SEQUENCE location_seq;
DROP TRIGGER location_trg;
DROP SEQUENCE product_seq;
DROP TRIGGER product_trg;
DROP SEQUENCE category_seq;
DROP TRIGGER category_trg;
DROP SEQUENCE vendor_seq;
DROP TRIGGER vendor_trg;
DROP SEQUENCE customer_seq;
DROP TRIGGER customer_trg;
DROP SEQUENCE employee_seq;
DROP TRIGGER employee_trg;

CREATE TABLE employee (
  employee_id NUMBER(10) NOT NULL PRIMARY KEY,
  address VARCHAR2(100),
  name VARCHAR2(50),
  phone VARCHAR2(10));
CREATE SEQUENCE employee_seq;
CREATE TRIGGER employee_trg
  BEFORE INSERT ON employee
  FOR EACH ROW
  begin
    SELECT employee_seq.nextval
	INTO :new.employee_id
	FROM dual;
  end;
  /
CREATE TABLE customer (
  customer_id NUMBER(10) NOT NULL PRIMARY KEY,
  address VARCHAR2(100),
  name VARCHAR2(50),
  phone VARCHAR2(10));
CREATE SEQUENCE customer_seq;
CREATE TRIGGER customer_trg
  BEFORE INSERT ON customer
  FOR EACH ROW
  begin
    SELECT customer_seq.nextval
	INTO :new.customer_id
	FROM dual;
  end;
  /
CREATE TABLE vendor (
  vendor_id NUMBER(10) NOT NULL PRIMARY KEY,
  name VARCHAR2(50),
  address VARCHAR2(100));
CREATE SEQUENCE vendor_seq;
CREATE TRIGGER vendor_trg
  BEFORE INSERT ON vendor
  FOR EACH ROW
  begin
    SELECT vendor_seq.nextval
	INTO :new.vendor_id
	FROM dual;
  end;
  /
CREATE TABLE product_category (
  category_id NUMBER(10) NOT NULL PRIMARY KEY,
  name VARCHAR2(50),
  quantity NUMBER(5));
CREATE SEQUENCE category_seq;
CREATE TRIGGER category_trg
  BEFORE INSERT ON product_category
  FOR EACH ROW
  begin
    SELECT category_seq.nextval
	INTO :new.category_id
	FROM dual;
  end;
  /
CREATE TABLE product (
  product_id NUMBER(10) NOT NULL PRIMARY KEY,
  name VARCHAR(50),
  description VARCHAR(200),
  unit_price NUMBER(5,2),
  vendor_id NUMBER(10) REFERENCES vendor(vendor_id),
  category_id NUMBER(10) NOT NULL REFERENCES product_category(category_id));
CREATE SEQUENCE product_seq;
CREATE TRIGGER product_trg
  BEFORE INSERT ON product
  FOR EACH ROW
  begin
    SELECT product_seq.nextval
	INTO :new.product_id
	FROM dual;
  end;
  /
CREATE TABLE inventory_location (
  location_id NUMBER(10) NOT NULL PRIMARY KEY,
  quantity NUMBER(5),
  product_id NUMBER(10) REFERENCES product(product_id));
CREATE SEQUENCE location_seq;
CREATE TRIGGER location_trg
  BEFORE INSERT ON inventory_location
  FOR EACH ROW
  begin
    SELECT location_seq.nextval
	INTO :new.location_id
	FROM dual;
  end;
  /
CREATE TABLE tank_log (
  location_id NUMBER(10) NOT NULL REFERENCES inventory_location(location_id),
  read_date DATE,
  temperature NUMBER(3),
  ph NUMBER(2),
  nitrate NUMBER(3),
  ammonia NUMBER(2),
  CONSTRAINT pk_tank_log PRIMARY KEY (location_id, read_date));
CREATE TABLE sales_order (
  so_num NUMBER(10) NOT NULL PRIMARY KEY,
  so_date DATE,
  customer_id NUMBER(10) REFERENCES customer(customer_id),
  sales_rep_id NUMBER(10) REFERENCES employee(employee_id));
CREATE SEQUENCE sales_seq;
CREATE TRIGGER sales_trg
  BEFORE INSERT ON sales_order
  FOR EACH ROW
  begin
    SELECT sales_seq.nextval
	INTO :new.so_num
	FROM dual;
  end;
  /
CREATE TABLE so_line (
  so_num NUMBER(10) NOT NULL REFERENCES sales_order(so_num),
  line_num NUMBER(10) NOT NULL,
  unit_price NUMBER(5,2),
  quantity NUMBER(5),
  product_id NUMBER(10) NOT NULL REFERENCES product(product_id),
  CONSTRAINT pk_so_line PRIMARY KEY (so_num, line_num));
CREATE TABLE product_order (
  po_num NUMBER(10) NOT NULL PRIMARY KEY,
  po_date DATE,
  vendor_id NUMBER(10) REFERENCES vendor(vendor_id),
  entered_by NUMBER(10) REFERENCES employee(employee_id));
CREATE SEQUENCE purchase_seq;
CREATE TRIGGER purchase_trg
  BEFORE INSERT ON product_order
  FOR EACH ROW
  begin
    SELECT purchase_seq.nextval
	INTO :new.po_num
	FROM dual;
  end;
  /
CREATE TABLE po_line (
  po_num NUMBER(10) NOT NULL REFERENCES sales_order(so_num),
  line_num NUMBER(10) NOT NULL,
  quantity NUMBER(5),
  product_id NUMBER(10) NOT NULL REFERENCES product(product_id),
  CONSTRAINT pk_po_line PRIMARY KEY (po_num, line_num));
