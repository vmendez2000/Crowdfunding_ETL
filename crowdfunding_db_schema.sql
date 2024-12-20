-- Create the crowdfunding_db database
CREATE DATABASE crowdfunding_db;

-- Switch to the database
\c crowdfunding_db;

-- Table: contacts
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Table: category
CREATE TABLE category (
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

-- Table: subcategory
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

-- Table: campaign
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL REFERENCES contacts(contact_id),
    company_name VARCHAR(255),
    description VARCHAR(1000),
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(100),
    currency VARCHAR(10),
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(50) REFERENCES category(category_id),
    subcategory_id VARCHAR(50) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;
