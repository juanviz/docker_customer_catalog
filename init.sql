CREATE SCHEMA IF NOT EXISTS SG;
USE SG;

DROP TABLE IF EXISTS s_customer;
CREATE TABLE s_customer 
 (id                         VARCHAR(3)  NOT NULL,
  name                       VARCHAR(20) NOT NULL,
  phone                      VARCHAR(20) NOT NULL,
  address                    VARCHAR(20),
  city                       VARCHAR(20),
  state                      VARCHAR(15),
  country                    VARCHAR(20),
  zip_code                   VARCHAR(15),
  credit_rating              VARCHAR(9),
  sales_rep_id               VARCHAR(3),
  region_id                  VARCHAR(3),
  comments                   VARCHAR(255),
  CONSTRAINT s_customer_id_pk PRIMARY KEY (id),
  CONSTRAINT s_customer_credit_rating_ck
  CHECK (credit_rating IN ('EXCELLENT', 'GOOD', 'POOR'))
 );

INSERT INTO s_customer VALUES ('101', 'Global Sports', '305-987-1234','120 Ocean Dr',
'Miami', 'FL','US', '33101','GOOD', '10', '1', NULL);
INSERT INTO s_customer VALUES ('102', 'Elite Athletics', '312-456-7890','874 Lake Shore Dr',
'Chicago', 'IL','US', '60611','POOR', '15', '1', NULL);
INSERT INTO s_customer VALUES ('103', 'Pro Gear', '415-789-1234','225 Market St',
'Los Angeles', 'CA','US', '90001','EXCELLENT', '15', '1', NULL);
INSERT INTO s_customer VALUES ('104', 'Champions Zone', '212-654-9876','99 Broadway', 
'New York', 'NY','US', '10001','GOOD', '10', '1', NULL);
INSERT INTO s_customer VALUES ('105', 'Active Wear', '210-123-9876','500 River Walk',
'San Antonio', 'TX','US', '78205','EXCELLENT', '15', '1', NULL);
INSERT INTO s_customer VALUES ('106', 'SpeedX Sports', '503-456-9999','74 Sunset Blvd',
'Portland', 'OR','US', '97201','POOR', '10', '1', NULL);

INSERT INTO s_customer VALUES ('201', 'Victory Sports', '55-998877665','45 Avenida Paulista',
'Sao Paulo', NULL, 'Brazil', NULL,'EXCELLENT', '10', '2', NULL);
INSERT INTO s_customer VALUES ('202', 'Deportes Andes', '58-7654321','12 Plaza Bolivar',
'Caracas', NULL, 'Venezuela', NULL,'EXCELLENT', '10', '2', NULL);
INSERT INTO s_customer VALUES ('203', 'India Sports House', '91-1100223344','76 MG Road',
'Mumbai', NULL, 'India', NULL,'GOOD', '14', '4', NULL);
INSERT INTO s_customer VALUES ('204', 'Seattle Athletics', '1-206-555-0111','300 Pike St',
'Seattle', 'WA', 'US', NULL,'EXCELLENT', '14', '1', NULL);
INSERT INTO s_customer VALUES ('205', 'Hong Kong Fitness', '852-55667788','88 Queen''s Road',
'Hong Kong', NULL, NULL, NULL,'EXCELLENT', '14', '4', NULL);
INSERT INTO s_customer VALUES ('206', 'Paris Fit', '33-1122334455','21 Rue Lafayette',
'Paris', NULL, 'France', NULL,'EXCELLENT', '16', '5', NULL);
INSERT INTO s_customer VALUES ('207', 'Lagos Gym', '234-99887766','5 Marina Road',
'Lagos', NULL, 'Nigeria', NULL,'GOOD', NULL, '3', NULL);
INSERT INTO s_customer VALUES ('208', 'Berlin Athletes', '49-66778899','200 Alexanderplatz',
'Berlin', NULL, 'Germany', NULL,'GOOD', '16', '5', NULL);

INSERT INTO s_customer VALUES ('209', 'Pelota Club', '809-567890','10 Playa Caribe',
'Santo Domingo', NULL, 'Dominican Republic', NULL, 'EXCELLENT', '14', '6', NULL);
INSERT INTO s_customer VALUES ('210', 'Golazo MX', '52-9090909','22 Avenida del Sol',
'Guadalajara', NULL, 'Mexico', NULL,'EXCELLENT', '10', '2', NULL);
INSERT INTO s_customer VALUES ('211', 'Prague Gym', '42-3030303','33 Charles Bridge',
'Prague', NULL, 'Czech Republic', NULL,'EXCELLENT', '14', '5', NULL);
INSERT INTO s_customer VALUES ('212', 'Cairo Fitness', '20-6060606','555 Nile Street', 
'Cairo', NULL, 'Egypt', NULL,'EXCELLENT', '16', '3', NULL);
INSERT INTO s_customer VALUES ('213', 'Golden State Sports', '1-415-555-9999','789 Golden Gate Ave',
'San Francisco', 'CA', 'US', NULL,'EXCELLENT', '14', '1', NULL);
INSERT INTO s_customer VALUES ('214', 'Buffalo Sports Hub', '1-716-555-8888','444 Elm Street',
'Buffalo', 'NY', 'US', NULL, 'POOR', '14', '1', NULL);
INSERT INTO s_customer VALUES ('215', 'Moscow Marathon', '7-0953337777','100 Red Square',
'Moscow', NULL, 'Russia', NULL,'POOR', '14', '5', NULL);

COMMIT;
