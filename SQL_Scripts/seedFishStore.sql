-- Echo back the responses from the following commands.
set echo on

-- ADD EMPLOYEE DATA --
TRUNCATE TABLE employee;
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE employee_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
CREATE SEQUENCE employee_seq;
INSERT INTO employee (address, name, phone)
VALUES ('1 Hacker Way, Menlo Park, CA 94025', 'Brittany Mazza', '6505434800');
INSERT INTO employee (address, name, phone)
VALUES ('1600 Amphitheatre Parkway. Mountain View, CA 94043', 'John Lester', '6502530000');
INSERT INTO employee (address, name, phone)
VALUES ('3500 Deer Creek Road, Palo Alto, CA 94304', 'Matthew Valancy', '6506815100');
INSERT INTO employee (address, name, phone)
VALUES ('4040 Civic Center Dr # 300, San Rafael, CA 94903', 'Ashley Wallace', '4154990616');

-- ADD CUSTOMER DATA --
TRUNCATE TABLE customer;
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE customer_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
CREATE SEQUENCE customer_seq;
INSERT INTO customer (address, name, phone)
VALUES ('Noah Smith', '25898 Alabama Ct , Campbell CA 95008', '6505679664');
INSERT INTO customer (address, name, phone)
VALUES ('Liam Johnson', '38180 Alaska Dr, Cupertino CA 95014', '6501041765');
INSERT INTO customer (address, name, phone)
VALUES ('Jacob Williams', '28002 Arizona Cir, Gilroy CA 95020', '6507197782');
INSERT INTO customer (address, name, phone)
VALUES ('Mason Jones', '96268 Arkansas Blvd, Los Altos CA 94022', '6506792368');
INSERT INTO customer (address, name, phone)
VALUES ('William Brown', '40549 California St, Milpitas CA 95035', '6502696081');
INSERT INTO customer (address, name, phone)
VALUES ('Ethan Davis', '27999 Colorado Ct , Monte Sereno CA 95030', '6501556933');
INSERT INTO customer (address, name, phone)
VALUES ('Michael Miller', '11593 Connecticut Dr, Morgan Hill CA 95037', '6505489571');
INSERT INTO customer (address, name, phone)
VALUES ('Alexander Wilson', '69920 Delaware Cir, Mountain View CA 94035', '6506419696');
INSERT INTO customer (address, name, phone)
VALUES ('Jayden Moore', '7387 Florida Blvd, Palo Alto CA 94301', '6508014048');
INSERT INTO customer (address, name, phone)
VALUES ('Daniel Taylor', '14660 Georgia St, San Jose CA 95150', '6502256364');
INSERT INTO customer (address, name, phone)
VALUES ('Elijah Anderson', '53847 Hawaii Ct , Santa Clara CA 95050', '6506695316');
INSERT INTO customer (address, name, phone)
VALUES ('Aiden Thomas', '45870 Idaho Dr, Saratoga CA 95070', '6507708345');
INSERT INTO customer (address, name, phone)
VALUES ('James Jackson', '33428 Illinois Cir, Sunnyvale CA 94085', '6502613433');
INSERT INTO customer (address, name, phone)
VALUES ('Benjamin White', '99496 Indiana Blvd, Los Gatos CA 95033', '6508496084');
INSERT INTO customer (address, name, phone)
VALUES ('Matthew Harris', '71126 Iowa St, Los Altos Hills CA 94022', '6504843958');
INSERT INTO customer (address, name, phone)
VALUES ('Emma Martin', '99610 Kansas Ct , Campbell CA 95008', '6509979209');
INSERT INTO customer (address, name, phone)
VALUES ('Olivia Thompson', '97473 Kentucky Dr, Cupertino CA 95014', '6502856107');
INSERT INTO customer (address, name, phone)
VALUES ('Isabella Garcia', '39767 Louisiana Cir, Gilroy CA 95020', '6508213684');
INSERT INTO customer (address, name, phone)
VALUES ('Ava Martinez', '99342 Maine Blvd, Los Altos CA 94022', '6503409231');
INSERT INTO customer (address, name, phone)
VALUES ('Mia Robinson', '28193 Maryland St, Milpitas CA 95035', '6502846913');
INSERT INTO customer (address, name, phone)
VALUES ('Emily Clark', '12160 Massachusetts Ct , Monte Sereno CA 95030', '6508906597');
INSERT INTO customer (address, name, phone)
VALUES ('Abigail Rodriguez', '37772 Michigan Dr, Morgan Hill CA 95037', '6502602128');
INSERT INTO customer (address, name, phone)
VALUES ('Madison Lewis', '79415 Minnesota Cir, Mountain View CA 94035', '6501208682');
INSERT INTO customer (address, name, phone)
VALUES ('Elizabeth Lee', '35764 Mississippi Blvd, Palo Alto CA 94301', '6504261594');
INSERT INTO customer (address, name, phone)
VALUES ('Charlotte Walker', '2638 Missouri St, San Jose CA 95150', '6501114107');
INSERT INTO customer (address, name, phone)
VALUES ('Avery Hall', '48930 Montana Ct , Santa Clara CA 95050', '6504766290');
INSERT INTO customer (address, name, phone)
VALUES ('Sofia Allen', '31927 Nebraska Dr, Saratoga CA 95070', '6506971127');
INSERT INTO customer (address, name, phone)
VALUES ('Chloe Hernandez', '36642 Nevada Cir, Sunnyvale CA 94085', '6508062863');
INSERT INTO customer (address, name, phone)
VALUES ('Ella King', '47419 New Hampshire Blvd, Los Gatos CA 95033', '6503428401');
INSERT INTO customer (address, name, phone)
VALUES ('Logan Wright', '10426 New Jersey St, Los Altos Hills CA 94022', '6502503260');
INSERT INTO customer (address, name, phone)
VALUES ('Ameila Lopez', '75361 New Mexico Ct , Campbell CA 95008', '6508931654');
INSERT INTO customer (address, name, phone)
VALUES ('David Hill', '1573 New York Dr, Cupertino CA 95014', '6508077610');
INSERT INTO customer (address, name, phone)
VALUES ('Aubrey Scott', '58067 North Carolina Cir, Gilroy CA 95020', '6509386512');
INSERT INTO customer (address, name, phone)
VALUES ('Anthony Green', '99226 North Dakota Blvd, Los Altos CA 94022', '6501124111');
INSERT INTO customer (address, name, phone)
VALUES ('Addison Adams', '24020 Ohio St, Milpitas CA 95035', '6503536332');
INSERT INTO customer (address, name, phone)
VALUES ('Joseph Baker', '90287 Oklahoma Ct , Monte Sereno CA 95030', '6507041441');
INSERT INTO customer (address, name, phone)
VALUES ('Evelyn Gonzolex', '30519 Oregon Dr, Morgan Hill CA 95037', '6501685658');
INSERT INTO customer (address, name, phone)
VALUES ('Joshua Nelson', '69453 Pennsylvania Cir, Mountain View CA 94035', '6509661810');
INSERT INTO customer (address, name, phone)
VALUES ('Natalie Carter', '70883 Rhode Island Blvd, Palo Alto CA 94301', '6508369290');
INSERT INTO customer (address, name, phone)
VALUES ('Andrew Mitchell', '20051 South Carolina St, San Jose CA 95150', '6505899673');
INSERT INTO customer (address, name, phone)
VALUES ('Grace Perez', '81419 South Dakota Ct , Santa Clara CA 95050', '6505395790');
INSERT INTO customer (address, name, phone)
VALUES ('Lucas Roberts', '31055 Tennessee Dr, Saratoga CA 95070', '6504479376');
INSERT INTO customer (address, name, phone)
VALUES ('Hannah Turner', '50310 Texas Cir, Sunnyvale CA 94085', '6505302322');
INSERT INTO customer (address, name, phone)
VALUES ('Gabriel Phillips', '68404 Utah Blvd, Los Gatos CA 95033', '6503382529');
INSERT INTO customer (address, name, phone)
VALUES ('Zoe Campbell', '82544 Vermont St, Los Altos Hills CA 94022', '6509306734');
INSERT INTO customer (address, name, phone)
VALUES ('Samuel Parker', '44179 Virginia Ct , Campbell CA 95008', '6501495726');
INSERT INTO customer (address, name, phone)
VALUES ('Victoria Evans', '13456 Washington Dr, Cupertino CA 95014', '6504551723');
INSERT INTO customer (address, name, phone)
VALUES ('Christopher Edwards', '57796 West Virginia Cir, Gilroy CA 95020', '6508028951');
INSERT INTO customer (address, name, phone)
VALUES ('Lillian Collins', '92619 Wisconsin Blvd, Los Altos CA 94022', '6505248333');
INSERT INTO customer (address, name, phone)
VALUES ('John Stewart', '76070 Wyoming St, Milpitas CA 95035', '6506013533');
INSERT INTO customer (address, name, phone)
VALUES ('Lily Sanchez', '70502 Puerto Rico Ct , Monte Sereno CA 95030', '6501729459');
INSERT INTO customer (address, name, phone)
VALUES ('Dylan Morris', '66481 Guam Dr, Morgan Hill CA 95037', '6509854539');
INSERT INTO customer (address, name, phone)
VALUES ('Brooklyn Rogers', '58555 Simoa Cir, Mountain View CA 94035', '6501878479');
INSERT INTO customer (address, name, phone)
VALUES ('Isaac Reed', '21863 Virgin Islands Blvd, Palo Alto CA 94301', '6506541041');
INSERT INTO customer (address, name, phone)
VALUES ('Samantha Cook', '1970 Midway St, San Jose CA 95150', '6503322518');

-- ADD VENDOR DATA --
TRUNCATE TABLE vendor;
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE vendor_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
CREATE SEQUENCE vendor_seq;
INSERT INTO vendor (name , address)
VALUES ('Fish Food Supplier', '1063 Montgomery Ave, San Bruno, CA 94066');
INSERT INTO vendor (name , address)
VALUES ('Tanks R Us', '1495 ZEPHYR AVENUE, HAYWARD, CALIFORNIA 94544');
INSERT INTO vendor (name , address)
VALUES ('Water Plants', '2700 Mitchell Dr, Walnut Creek, CA 94598');
INSERT INTO vendor (name , address)
VALUES ('Aquarium Imporium', '301 Howard St #850, San Francisco, CA 94105');
INSERT INTO vendor (name , address)
VALUES ('Pan Ocean Aquarium', '2420 Camino Ramon #125, San Ramon, CA 94583');
INSERT INTO vendor (name , address)
VALUES ('A n M Aquatics', '601 California St, San Francisco, CA 94108');

-- ADD PRODUCT CATEGORY DATA --
TRUNCATE TABLE product_category;
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE category_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
CREATE SEQUENCE category_seq;
INSERT INTO product_category (name)
VALUES ('fish'); 
INSERT INTO product_category (name)
VALUES ('pet food'); 
INSERT INTO product_category (name)
VALUES ('tanks'); 
INSERT INTO product_category (name)
VALUES ('tank accesories');
INSERT INTO product_category (name)
VALUES ('care items'); 
INSERT INTO product_category (name)
VALUES ('decorations'); 
INSERT INTO product_category (name)
VALUES ('plants'); 


-- ADD PRODUCT DATA --
TRUNCATE TABLE product;
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE product_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
CREATE SEQUENCE product_seq;
INSERT INTO product  (name, description, unit_price, vendor_id, category_id)
VALUES (
  'Beta',
  'The Siamese fighting fish (Betta splendens), also sometimes colloquially known as the Betta, is a species in the Gourami family which is popular as an aquarium fish.',
  0.50,
  1,
  1);
INSERT INTO product  (name, description, unit_price, vendor_id, category_id) 
VALUES (
  'Goldfish',
  'The goldfish (Carassius auratus) is a freshwater fish in the family Cyprinidae of order Cypriniformes. It was one of the earliest fish to be domesticated, and is one of the most commonly kept fish.',
  0.50,
  1,
  1);
INSERT INTO product  (name, description, unit_price, vendor_id, category_id) 
VALUES (
  'Achilles Tang',
  'Acanthurus achilles, commonly known as Achilles tang or Achilles surgeonfish, is a tropical marine fish native to the Pacific Ocean.',
  5.00,
  6,
  1);
INSERT INTO product  (name, description, unit_price, vendor_id, category_id) 
VALUES (
  'Angelfish',
  'Pterophyllum is a small genus of freshwater fish from the family Cichlidae known to most aquarists as "angelfish".',
  3.00,
  1,
  1);
INSERT INTO product  (name, description, unit_price, vendor_id, category_id) 
VALUES (
  'Bloodfin Tetra',
  'The bloodfin tetra (Aphyocharax anisitsi) is a species of characin from the Paraná River basin in South America.',
  2.5,
  6,
  1);
INSERT INTO product  (name, description, unit_price, vendor_id, category_id) 
VALUES (
  'Kaytee Kois Choice Premium Fish Food',
  'Nutritionally complete and suitable for all seasons. Highly digestible for less waste and pond clarity. Made in the USA.',
  16.99,
  1,
  2);
INSERT INTO product  (name, description, unit_price, vendor_id, category_id) 
VALUES (
  'Tetra 16140 TetraFin Flakes, 7.06-Ounce',
  'This Special Procure Formula Meets All Nutritional Requirements Of Cold-Water Fish And Will Stay Firm When Fish Strike.',
  8.20,
  1,
  2);
INSERT INTO product  (name, description, unit_price, vendor_id, category_id) 
VALUES (
  'Aqueon 06051 Betta Food, 0.95-Ounce',
  'Balanced nutrition for daily feeding. Contains shrimp and other ingredients that bettas love. Perfect size to prevent overfeeding',
  3.29,
  1,
  2);
INSERT INTO product  (name, description, unit_price, vendor_id, category_id) 
VALUES (
  'TetraPond Koi Vibrance Food 2.5 Pound',
  'Enhances reds and yellows. Floating soft sticks are easy to digest. Clear water formula',
  12.99,
  1,
  2);

-- ADD INVENTORY LOCATION DATA --
TRUNCATE TABLE inventory_location;
INSERT INTO inventory_location (quantity, product_id)
VALUES (10, 1);
INSERT INTO inventory_location (quantity, product_id)
VALUES (100, 9); 

-- ADD TANK LOG DATA --
TRUNCATE TABLE tank_log;
INSERT INTO tank_log (location_id, read_date, temperature, ph, nitrate, nitrite, ammonia)
VALUES (1, SYSDATE, 80, 8, 5, 0, 0);
INSERT INTO tank_log (location_id, read_date, temperature, ph, nitrate, nitrite, ammonia)
VALUES (1, SYSDATE-1, 80, 8.5, 5, 0, 0);
INSERT INTO tank_log  (location_id, read_date, temperature, ph, nitrate, nitrite, ammonia)
VALUES (1, SYSDATE-2, 78, 8, 4, 0, 0);
INSERT INTO tank_log  (location_id, read_date, temperature, ph, nitrate, nitrite, ammonia)
VALUES (1, SYSDATE-3, 79, 8.2, 6, 0, 0);
INSERT INTO tank_log  (location_id, read_date, temperature, ph, nitrate, nitrite, ammonia)
VALUES (1, SYSDATE-4, 80, 8.4, 5, 0, 0);
INSERT INTO tank_log  (location_id, read_date, temperature, ph, nitrate, nitrite, ammonia)
VALUES (1, SYSDATE-5, 81, 8.2, 7, 0, 0);

-- ADD SALES ORDER DATA --
TRUNCATE TABLE sales_order;
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE sales_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
CREATE SEQUENCE sales_seq;
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('1/1/2016', 'mm/dd/yyyy'), 1, 1);
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('3/29/2016', 'mm/dd/yyyy'), 2, 1);
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/18/2016', 'mm/dd/yyyy'), '34', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/08/2016', 'mm/dd/yyyy'), '31', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/20/2016', 'mm/dd/yyyy'), '37', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/21/2016', 'mm/dd/yyyy'), '28', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/07/2016', 'mm/dd/yyyy'), '5', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/08/2016', 'mm/dd/yyyy'), '11', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/09/2016', 'mm/dd/yyyy'), '47', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/31/2016', 'mm/dd/yyyy'), '13', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/12/2016', 'mm/dd/yyyy'), '11', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/28/2016', 'mm/dd/yyyy'), '10', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/22/2016', 'mm/dd/yyyy'), '32', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/16/2016', 'mm/dd/yyyy'), '42', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/13/2016', 'mm/dd/yyyy'), '11', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/17/2016', 'mm/dd/yyyy'), '9', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/12/2016', 'mm/dd/yyyy'), '11', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/15/2016', 'mm/dd/yyyy'), '17', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/02/2016', 'mm/dd/yyyy'), '24', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/14/2016', 'mm/dd/yyyy'), '14', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/10/2016', 'mm/dd/yyyy'), '6', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/27/2016', 'mm/dd/yyyy'), '33', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/29/2016', 'mm/dd/yyyy'), '7', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/16/2016', 'mm/dd/yyyy'), '13', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/11/2016', 'mm/dd/yyyy'), '40', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/09/2016', 'mm/dd/yyyy'), '24', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/22/2016', 'mm/dd/yyyy'), '43', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/18/2016', 'mm/dd/yyyy'), '35', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/21/2016', 'mm/dd/yyyy'), '19', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/19/2016', 'mm/dd/yyyy'), '25', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/21/2016', 'mm/dd/yyyy'), '3', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/10/2016', 'mm/dd/yyyy'), '13', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/07/2016', 'mm/dd/yyyy'), '35', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/10/2016', 'mm/dd/yyyy'), '21', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/10/2016', 'mm/dd/yyyy'), '8', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/05/2016', 'mm/dd/yyyy'), '21', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/01/2016', 'mm/dd/yyyy'), '9', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/03/2016', 'mm/dd/yyyy'), '37', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/21/2016', 'mm/dd/yyyy'), '25', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/12/2016', 'mm/dd/yyyy'), '4', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/19/2016', 'mm/dd/yyyy'), '39', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/02/2016', 'mm/dd/yyyy'), '38', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/21/2016', 'mm/dd/yyyy'), '44', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/04/2016', 'mm/dd/yyyy'), '18', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/11/2016', 'mm/dd/yyyy'), '12', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/16/2016', 'mm/dd/yyyy'), '15', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/06/2016', 'mm/dd/yyyy'), '40', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/14/2016', 'mm/dd/yyyy'), '3', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/21/2016', 'mm/dd/yyyy'), '9', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/19/2016', 'mm/dd/yyyy'), '41', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/03/2016', 'mm/dd/yyyy'), '10', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/13/2016', 'mm/dd/yyyy'), '19', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/27/2016', 'mm/dd/yyyy'), '53', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/28/2016', 'mm/dd/yyyy'), '51', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/17/2016', 'mm/dd/yyyy'), '7', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/02/2016', 'mm/dd/yyyy'), '28', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/12/2016', 'mm/dd/yyyy'), '13', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/15/2016', 'mm/dd/yyyy'), '16', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/06/2016', 'mm/dd/yyyy'), '17', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/20/2016', 'mm/dd/yyyy'), '47', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/02/2016', 'mm/dd/yyyy'), '54', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/09/2016', 'mm/dd/yyyy'), '19', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/08/2016', 'mm/dd/yyyy'), '6', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/15/2016', 'mm/dd/yyyy'), '12', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/13/2016', 'mm/dd/yyyy'), '20', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/19/2016', 'mm/dd/yyyy'), '38', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/16/2016', 'mm/dd/yyyy'), '5', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/09/2016', 'mm/dd/yyyy'), '46', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/28/2016', 'mm/dd/yyyy'), '4', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/19/2016', 'mm/dd/yyyy'), '23', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/06/2016', 'mm/dd/yyyy'), '28', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/19/2016', 'mm/dd/yyyy'), '48', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/13/2016', 'mm/dd/yyyy'), '4', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/28/2016', 'mm/dd/yyyy'), '40', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/05/2016', 'mm/dd/yyyy'), '47', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/12/2016', 'mm/dd/yyyy'), '48', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/18/2016', 'mm/dd/yyyy'), '17', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/09/2016', 'mm/dd/yyyy'), '32', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/16/2016', 'mm/dd/yyyy'), '5', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/02/2016', 'mm/dd/yyyy'), '29', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/29/2016', 'mm/dd/yyyy'), '32', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/03/2016', 'mm/dd/yyyy'), '25', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/06/2016', 'mm/dd/yyyy'), '2', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/04/2016', 'mm/dd/yyyy'), '23', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/29/2016', 'mm/dd/yyyy'), '14', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/06/2016', 'mm/dd/yyyy'), '7', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/10/2016', 'mm/dd/yyyy'), '10', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/27/2016', 'mm/dd/yyyy'), '32', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/09/2016', 'mm/dd/yyyy'), '2', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/12/2016', 'mm/dd/yyyy'), '26', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/06/2016', 'mm/dd/yyyy'), '20', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/13/2016', 'mm/dd/yyyy'), '41', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/09/2016', 'mm/dd/yyyy'), '18', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/15/2016', 'mm/dd/yyyy'), '22', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/26/2016', 'mm/dd/yyyy'), '41', '4');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/10/2016', 'mm/dd/yyyy'), '13', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/06/2016', 'mm/dd/yyyy'), '48', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('02/08/2016', 'mm/dd/yyyy'), '44', '2');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('03/20/2016', 'mm/dd/yyyy'), '55', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/26/2016', 'mm/dd/yyyy'), '13', '3');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('04/20/2016', 'mm/dd/yyyy'), '5', '1');
INSERT INTO sales_order (so_date, customer_id, sales_rep_id)
VALUES (TO_DATE('01/23/2016', 'mm/dd/yyyy'), '13', '4');

-- ADD SALES ORDER LINE DATA --
TRUNCATE TABLE so_line;
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (1, 1, 0.50, 9, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (1, 2, 8.20, 1, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (2, 1, 3.00, 8, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (2, 2, 0.50, 3, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (2, 3, 5.00, 1, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (2, 4, 16.99, 4, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (2, 5, 0.50, 4, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (3, 1, 0.50, 9, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (4, 1, 3.00, 8, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (4, 2, 16.99, 6, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (4, 3, 8.20, 8, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (5, 1, 12.99, 10, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (5, 2, 16.99, 7, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (5, 3, 0.50, 6, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (5, 4, 5.00, 10, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (6, 1, 0.50, 2, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (6, 2, 12.99, 8, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (6, 3, 16.99, 6, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (6, 4, 0.50, 1, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (6, 5, 5.00, 9, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (7, 1, 12.99, 9, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (7, 2, 0.50, 7, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (7, 3, 3.29, 4, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (7, 4, 3.00, 2, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (7, 5, 2.50, 5, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (8, 1, 16.99, 6, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (8, 2, 3.00, 2, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (8, 3, 3.29, 7, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (9, 1, 0.50, 6, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (9, 2, 0.50, 8, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (10, 1, 0.50, 9, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (10, 2, 12.99, 8, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (11, 1, 3.00, 8, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (11, 2, 3.29, 8, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (11, 3, 16.99, 9, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (12, 1, 3.29, 3, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (12, 2, 8.20, 6, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (12, 3, 0.50, 10, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (12, 4, 16.99, 6, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (12, 5, 2.50, 6, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (13, 1, 3.29, 10, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (13, 2, 2.50, 2, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (13, 3, 0.50, 3, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (13, 4, 8.20, 6, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (13, 5, 16.99, 6, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (14, 1, 3.29, 4, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (14, 2, 8.20, 7, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (15, 1, 8.20, 3, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (15, 2, 5.00, 9, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (15, 3, 12.99, 10, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (15, 4, 3.00, 1, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (16, 1, 0.50, 5, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (16, 2, 5.00, 9, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (16, 3, 16.99, 5, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (16, 4, 3.29, 6, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (17, 1, 3.00, 4, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (18, 1, 8.20, 10, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (18, 2, 0.50, 2, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (19, 1, 0.50, 2, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (19, 2, 3.29, 3, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (19, 3, 8.20, 5, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (20, 1, 8.20, 10, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (20, 2, 2.50, 6, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (21, 1, 3.00, 7, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (21, 2, 2.50, 6, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (21, 3, 0.50, 2, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (22, 1, 2.50, 9, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (22, 2, 12.99, 8, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (22, 3, 0.50, 10, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (22, 4, 3.29, 9, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (22, 5, 8.20, 4, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (23, 1, 16.99, 10, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (23, 2, 5.00, 3, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (24, 1, 3.29, 1, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (24, 2, 5.00, 2, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (25, 1, 16.99, 2, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (25, 2, 2.50, 10, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (25, 3, 8.20, 10, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (25, 4, 3.00, 7, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (26, 1, 0.50, 9, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (27, 1, 12.99, 5, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (27, 2, 5.00, 8, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (27, 3, 0.50, 10, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (28, 1, 5.00, 5, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (28, 2, 0.50, 5, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (28, 3, 3.29, 8, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (28, 4, 8.20, 2, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (28, 5, 2.50, 6, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (29, 1, 2.50, 3, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (29, 2, 0.50, 3, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (29, 3, 5.00, 4, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (30, 1, 0.50, 5, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (30, 2, 3.00, 9, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (31, 1, 12.99, 8, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (31, 2, 0.50, 7, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (31, 3, 3.29, 5, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (31, 4, 5.00, 1, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (32, 1, 16.99, 10, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (32, 2, 12.99, 2, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (33, 1, 3.00, 6, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (33, 2, 8.20, 8, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (33, 3, 12.99, 10, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (33, 4, 3.29, 4, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (34, 1, 3.29, 8, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (34, 2, 16.99, 9, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (34, 3, 12.99, 6, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (35, 1, 2.50, 5, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (35, 2, 3.29, 9, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (35, 3, 0.50, 10, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (35, 4, 8.20, 6, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (36, 1, 16.99, 8, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (36, 2, 5.00, 10, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (36, 3, 12.99, 1, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (36, 4, 3.29, 10, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (36, 5, 0.50, 1, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (37, 1, 2.50, 4, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (38, 1, 3.29, 1, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (38, 2, 2.50, 7, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (38, 3, 3.00, 5, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (38, 4, 0.50, 10, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (39, 1, 16.99, 4, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (39, 2, 0.50, 10, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (39, 3, 2.50, 4, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (39, 4, 3.29, 3, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (40, 1, 8.20, 8, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (40, 2, 2.50, 2, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (40, 3, 12.99, 8, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (40, 4, 0.50, 7, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (41, 1, 3.00, 2, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (41, 2, 16.99, 1, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (41, 3, 8.20, 1, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (41, 4, 12.99, 1, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (42, 1, 0.50, 10, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (42, 2, 3.29, 4, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (42, 3, 2.50, 7, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (42, 4, 3.00, 9, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (42, 5, 0.50, 4, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (43, 1, 2.50, 3, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (43, 2, 12.99, 10, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (44, 1, 3.29, 7, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (44, 2, 0.50, 5, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (45, 1, 5.00, 3, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (45, 2, 8.20, 2, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (45, 3, 12.99, 6, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (46, 1, 0.50, 4, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (46, 2, 16.99, 1, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (46, 3, 3.00, 1, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (47, 1, 0.50, 5, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (47, 2, 3.29, 3, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (47, 3, 0.50, 4, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (47, 4, 5.00, 4, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (48, 1, 3.29, 2, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (49, 1, 16.99, 6, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (49, 2, 3.29, 2, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (49, 3, 0.50, 4, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (49, 4, 2.50, 1, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (49, 5, 0.50, 7, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (50, 1, 3.29, 1, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (51, 1, 3.29, 4, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (51, 2, 5.00, 1, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (51, 3, 16.99, 1, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (51, 4, 0.50, 8, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (51, 5, 3.00, 6, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (52, 1, 3.29, 8, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (52, 2, 0.50, 4, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (52, 3, 2.50, 2, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (53, 1, 16.99, 9, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (53, 2, 2.50, 1, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (53, 3, 8.20, 9, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (53, 4, 12.99, 10, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (53, 5, 3.29, 3, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (54, 1, 8.20, 10, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (54, 2, 5.00, 9, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (55, 1, 3.29, 2, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (55, 2, 12.99, 4, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (55, 3, 2.50, 1, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (55, 4, 16.99, 2, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (56, 1, 0.50, 7, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (56, 2, 3.00, 3, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (56, 3, 12.99, 9, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (56, 4, 5.00, 6, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (57, 1, 16.99, 2, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (58, 1, 3.00, 5, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (58, 2, 16.99, 2, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (58, 3, 0.50, 3, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (58, 4, 12.99, 9, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (58, 5, 5.00, 8, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (59, 1, 5.00, 5, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (60, 1, 8.20, 9, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (60, 2, 3.29, 3, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (60, 3, 0.50, 10, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (61, 1, 8.20, 5, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (61, 2, 5.00, 5, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (61, 3, 0.50, 1, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (61, 4, 0.50, 2, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (61, 5, 3.00, 6, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (62, 1, 12.99, 4, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (62, 2, 16.99, 10, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (63, 1, 0.50, 6, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (63, 2, 8.20, 6, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (63, 3, 3.00, 7, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (63, 4, 3.29, 1, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (63, 5, 5.00, 1, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (64, 1, 3.00, 4, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (64, 2, 12.99, 5, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (64, 3, 0.50, 9, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (64, 4, 0.50, 5, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (65, 1, 8.20, 2, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (65, 2, 12.99, 3, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (65, 3, 16.99, 5, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (65, 4, 2.50, 6, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (66, 1, 2.50, 6, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (66, 2, 12.99, 4, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (67, 1, 3.29, 4, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (67, 2, 5.00, 4, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (68, 1, 2.50, 4, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (68, 2, 3.00, 3, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (68, 3, 12.99, 6, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (69, 1, 16.99, 7, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (69, 2, 0.50, 7, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (70, 1, 0.50, 8, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (70, 2, 0.50, 9, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (70, 3, 12.99, 9, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (70, 4, 16.99, 5, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (70, 5, 3.00, 10, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (71, 1, 16.99, 2, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (71, 2, 3.29, 5, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (71, 3, 0.50, 3, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (72, 1, 2.50, 4, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (72, 2, 0.50, 6, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (73, 1, 16.99, 10, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (73, 2, 3.00, 3, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (74, 1, 12.99, 3, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (74, 2, 8.20, 2, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (74, 3, 3.00, 5, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (74, 4, 3.29, 4, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (75, 1, 0.50, 10, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (75, 2, 16.99, 5, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (75, 3, 3.00, 4, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (75, 4, 12.99, 9, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (75, 5, 8.20, 6, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (76, 1, 3.29, 6, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (76, 2, 8.20, 9, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (77, 1, 12.99, 5, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (77, 2, 3.00, 3, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (77, 3, 0.50, 8, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (78, 1, 8.20, 10, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (78, 2, 5.00, 6, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (79, 1, 3.29, 10, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (80, 1, 0.50, 8, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (80, 2, 5.00, 1, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (80, 3, 3.00, 7, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (80, 4, 8.20, 8, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (80, 5, 3.29, 2, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (81, 1, 3.29, 5, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (81, 2, 5.00, 7, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (81, 3, 3.00, 4, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (81, 4, 2.50, 3, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (81, 5, 8.20, 9, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (82, 1, 0.50, 2, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (82, 2, 12.99, 1, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (82, 3, 16.99, 2, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (83, 1, 5.00, 2, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (83, 2, 12.99, 8, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (83, 3, 3.29, 1, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (83, 4, 16.99, 1, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (83, 5, 8.20, 7, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (84, 1, 3.29, 8, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (84, 2, 2.50, 6, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (84, 3, 16.99, 4, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (85, 1, 3.00, 9, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (86, 1, 0.50, 9, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (86, 2, 0.50, 3, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (86, 3, 16.99, 9, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (86, 4, 2.50, 6, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (86, 5, 3.29, 7, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (87, 1, 5.00, 5, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (88, 1, 2.50, 3, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (88, 2, 12.99, 5, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (88, 3, 16.99, 3, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (89, 1, 16.99, 2, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (89, 2, 0.50, 8, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (89, 3, 0.50, 2, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (90, 1, 0.50, 10, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (90, 2, 3.00, 6, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (90, 3, 12.99, 4, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (90, 4, 0.50, 2, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (90, 5, 8.20, 9, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (91, 1, 0.50, 4, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (92, 1, 0.50, 2, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (92, 2, 3.29, 2, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (93, 1, 8.20, 7, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (94, 1, 8.20, 8, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (94, 2, 16.99, 5, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (94, 3, 2.50, 5, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (94, 4, 0.50, 9, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (94, 5, 3.00, 6, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (95, 1, 8.20, 1, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (95, 2, 0.50, 2, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (95, 3, 5.00, 4, 3);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (95, 4, 3.00, 7, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (95, 5, 2.50, 7, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (96, 1, 12.99, 2, 9);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (96, 2, 3.29, 10, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (97, 1, 3.00, 3, 4);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (97, 2, 16.99, 4, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (98, 1, 0.50, 4, 1);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (98, 2, 0.50, 6, 2);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (98, 3, 16.99, 6, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (99, 1, 16.99, 6, 6);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (99, 2, 3.29, 5, 8);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (100, 1, 2.50, 5, 5);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (100, 2, 8.20, 2, 7);
INSERT INTO so_line (so_num, line_num, unit_price, quantity, product_id)
VALUES (100, 3, 12.99, 2, 9);

-- ADD PRODUCT ORDER DATA --
TRUNCATE TABLE product_order;
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE purchase_seq';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -2289 THEN
      RAISE;
    END IF;
END;
/
CREATE SEQUENCE purchase_seq;
INSERT INTO product_order (po_date, vendor_id, entered_by)
VALUES (TO_DATE('1/1/2016','mm/dd/yyyy'), 1, 1);
INSERT INTO product_order (po_date, vendor_id, entered_by)
VALUES (TO_DATE('3/29/2016','mm/dd/yyyy'), 6, 2);

-- ADD PRODUCT ORDER LINE DATA --
TRUNCATE TABLE po_line;
INSERT INTO po_line (po_num, line_num, quantity, product_id)
VALUES (1, 1, 3, 1);
INSERT INTO po_line (po_num, line_num, quantity, product_id)
VALUES (1, 2, 2, 2);
INSERT INTO po_line (po_num, line_num, quantity, product_id)
VALUES (1, 3, 10, 3);
INSERT INTO po_line (po_num, line_num, quantity, product_id)
VALUES (1, 4, 2, 4);
INSERT INTO po_line (po_num, line_num, quantity, product_id)
VALUES (2, 1, 5, 1);
