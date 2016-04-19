-- Drop the tables if they exists, so that this script can be run repeatedly.
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

-- TODO: Create sequences to auto-increment tables?
CREATE TABLE employee (
  employee_id NUMBER(10) NOT NULL PRIMARY KEY,
  address VARCHAR2(100),
  name VARCHAR2(50),
  phone VARCHAR2(10));
CREATE TABLE customer (
  customer_id NUMBER(10) NOT NULL PRIMARY KEY,
  address VARCHAR2(100),
  name VARCHAR2(50),
  phone VARCHAR2(10));
CREATE TABLE vendor (
  vendor_id NUMBER(10) NOT NULL PRIMARY KEY,
  name VARCHAR2(50),
  address VARCHAR2(100));
CREATE TABLE product_category (
  category_id NUMBER(10) NOT NULL PRIMARY KEY,
  name VARCHAR2(50),
  quantity NUMBER(5));
CREATE TABLE product (
  product_id NUMBER(10) NOT NULL PRIMARY KEY,
  name VARCHAR(50),
  description VARCHAR(200),
  unit_price NUMBER(5,2),
  vendor_id NUMBER(10) REFERENCES vendor(vendor_id),
  category_id NUMBER(10) NOT NULL REFERENCES product_category(category_id));
CREATE TABLE inventory_location (
  location_id NUMBER(10) NOT NULL PRIMARY KEY,
  quantity NUMBER(5),
  product_id NUMBER(10) REFERENCES product(product_id));
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
CREATE TABLE po_line (
  po_num NUMBER(10) NOT NULL REFERENCES sales_order(so_num),
  line_num NUMBER(10) NOT NULL,
  quantity NUMBER(5),
  product_id NUMBER(10) NOT NULL REFERENCES product(product_id),
  CONSTRAINT pk_po_line PRIMARY KEY (po_num, line_num));
