--LEGO PARTS TABLE CREATION --

--query to check schema of the staging table
SELECT *
FROM TIL_PORTFOLIO_PROJECTS.STAGING.LEGO_PARTS
LIMIT 10;

-- for string columns: check column character length for carchar() length to set data types
SELECT MAX(LENGTH(NAME))
FROM TIL_PORTFOLIO_PROJECTS.STAGING.LEGO_PARTS;

CREATE OR REPLACE TABLE til_portfolio_projects.vl_lego.lego_parts (
    PART_NUMBER VARCHAR(15),
    PART_NAME VARCHAR(223),
    PART_CATEGORY_ID INTEGER
);

-- LEGO INVENTORY_SETS TABLE CREATION --
SELECT *
FROM TIL_PORTFOLIO_PROJECTS.STAGING.LEGO_INVENTORY_SETS
LIMIT 10;

-- check column character length
SELECT MAX(LENGTH(SET_NUM))
FROM TIL_PORTFOLIO_PROJECTS.STAGING.LEGO_INVENTORY_SETS;

CREATE OR REPLACE TABLE til_portfolio_projects.vl_lego.lego_inventory_sets (
    Inventory_ID INTEGER,
    Set_Number VARCHAR(10),
    Quantity INTEGER
);

-- LEGO Colours --
create or replace table til_portfolio_projects.vl_lego.lego_colors (
    color_id integer,
    color_name varchar(28),
    color_rgb varchar(6),
    color_is_trans varchar(1)
);

-- LEGO Sets
create or replace table til_portfolio_projects.vl_lego.lego_sets (
    set_number varchar(16)
    , set_name varchar(95)
    , year integer
    , theme_id integer
    , num_parts integer

);

-- LEGO THEMES
CREATE OR REPLACE TABLE til_portfolio_projects.vl_lego.lego_themes (
    THEME_ID INTEGER
    , THEME_NAME VARCHAR(32)
    , THEME_PARENT_ID INTEGER
);

-- LEGO INVENTORIES
CREATE OR REPLACE TABLE til_portfolio_projects.vl_lego.lego_inventories (
    id integer,
    version integer,
    set_num varchar(16)
);

--LEGO INVENTORY_PARTS
CREATE OR REPLACE TABLE til_portfolio_projects.vl_lego.lego_inventory_parts (
    INVENTORY_ID INTEGER,
    PART_NUM VARCHAR(255),
    COLOR_ID INTEGER,
    QUANTITY INTEGER,
    IS_SPARE VARCHAR(255)
);

--LEGO PART_CATEGORIES
CREATE OR REPLACE TABLE TIL_PORTFOLIO_PROJECTS.vl_lego.lego_part_categories (
PART_CAT_NAME VARCHAR(108),
PART_CAT_ID INTEGER
);

