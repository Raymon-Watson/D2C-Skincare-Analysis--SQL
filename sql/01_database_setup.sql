-- ================================
--         Project Setup
-- ================================


-- ######## 1. Remove pre-existing tables ########
-- CAREFUL: This will delete these tables.
DROP TABLE IF EXISTS superstore;



-- ######## 2. Create core table ########
-- Note: This table contains a large amount of data that needs 
-- to be separated into a handful of related tables.
-- However, this must be done carefully, so we must check key
-- details of the table's construction prior to this.

CREATE TABLE superstore (
  category TEXT,
  city TEXT,
  country TEXT,
  customer_ID TEXT,
  customer_name TEXT,
  discount NUMERIC,
  maket TEXT,
  unknown_data INT,
  order_date TIMESTAMP,
  order_id TEXT,
  oder_priority TEXT,
  product_id TEXT,
  product_name TEXT,
  profit NUMERIC,
  quantity INT,
  region TEXT,
  row_id INT,
  sales INT,
  segment TEXT,
  ship_date TIMESTAMP,
  ship_mode TEXT,
  state_name TEXT,
  sub_category TEXT,
  year_order INT,
  market2 TEXT,
  weeknum INT
);

