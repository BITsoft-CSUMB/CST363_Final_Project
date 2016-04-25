-- DROP TABLES IF EXIST --
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE product_order';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE po_line';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE so_line';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE sales_order';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE tank_log';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE inventory_location';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE product';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE product_category';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE vendor';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE customer';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE employee';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/
-- DROP SEQUENCES IF EXIST --
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE purchase_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE sales_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE location_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE product_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE category_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE vendor_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE customer_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE employee_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
-- DROP TRIGGERS IF EXIST --
BEGIN
  EXECUTE IMMEDIATE 'DROP TRIGGER purchase_trg';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -4080 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP TRIGGER sales_trg';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -4080 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP TRIGGER location_trg';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -4080 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP TRIGGER product_trg';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -4080 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP TRIGGER category_trg';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -4080 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP TRIGGER vendor_trg';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -4080 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP TRIGGER customer_trg';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -4080 THEN
      RAISE;
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'DROP TRIGGER employee_trg';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -4080 THEN
      RAISE;
    END IF;
END;
/
-- CREATE TABLES, SEQUENCES AND TRIGGERS --
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
  fname VARCHAR2(50),
  lname VARCHAR2(50),
  address VARCHAR2(100),
  city VARCHAR2(25),
  state CHAR(2),
  zip CHAR (5),
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
  name VARCHAR2(50));
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
  temperature NUMBER(5,2),
  ph NUMBER(3,1),
  nitrate NUMBER(4,2),
  nitrite NUMBER(3,2),
  ammonia NUMBER(3,2),
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
