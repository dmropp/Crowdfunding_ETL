-- CREATE TABLE contacts (
-- contact_id INTEGER NOT NULL PRIMARY KEY,
-- first_name VARCHAR(30) NOT NULL,
-- last_name VARCHAR(30) NOT NULL,
-- email VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE category (
-- category_name VARCHAR(30) NOT NULL PRIMARY KEY,
-- category_id VARCHAR(30) NOT NULL
-- );

-- CREATE TABLE subcategory (
-- subcategory_name VARCHAR(30) NOT NULL PRIMARY KEY,
-- subcategory_id VARCHAR(30) NOT NULL
-- );

-- CREATE TABLE campaign (
-- cf_id INTEGER NOT NULL PRIMARY KEY,
-- contact_id INTEGER NOT NULL,
-- FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
-- company_name VARCHAR NOT NULL,
-- description VARCHAR NOT NULL,
-- goal NUMERIC NOT NULL,
-- pledged NUMERIC NOT NULL,
-- outcome VARCHAR(30) NOT NULL,
-- backers_count INTEGER NOT NULL,
-- country VARCHAR(10) NOT NULL,
-- currency VARCHAR(10) NOT NULL,
-- launched_date DATE NOT NULL,
-- end_date DATE NOT NULL,
-- category_name VARCHAR(30) NOT NULL,
-- FOREIGN KEY (category_name) REFERENCES category(category_name),
-- subcategory_name VARCHAR(30) NOT NULL,
-- FOREIGN KEY (subcategory_name) REFERENCES subcategory(subcategory_name)
-- );

-- SELECT * FROM contacts;

-- SELECT * FROM subcategory;

-- SELECT * FROM subcategory;

-- SELECT * FROM campaign;