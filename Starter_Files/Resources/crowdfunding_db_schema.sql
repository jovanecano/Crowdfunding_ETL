--Crowdfunding database

--create contacts table and set our PRIMARY KEY

CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR (125)  NOT NULL,
    last_name VARCHAR (125)  NOT NULL,
    email VARCHAR (125)  NOT NULL,
	PRIMARY KEY (contact_id)
);

SELECT * FROM contacts

--create category table and set our PRIMARY KEY
CREATE TABLE category (
    category_id VARCHAR (125)   NOT NULL,
    category VARCHAR (125)  NOT NULL,
	PRIMARY KEY (category_id)
);

SELECT * FROM category

--create subcategory table and set our PRIMARY KEY
CREATE TABLE subcategory (
    subcategory_id VARCHAR (125)  NOT NULL,
    subcategory VARCHAR (125)  NOT NULL,
	PRIMARY KEY (subcategory_id)
);

SELECT * FROM subcategory

--create campaign table and set our PRIMARY KEY and FOREIGN keys
CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR (250)  NOT NULL,
    description VARCHAR (250)  NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR (250)  NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR (250)  NOT NULL,
    currency VARCHAR (250)  NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id VARCHAR (250)  NOT NULL,
    subcategory_id VARCHAR (250)  NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN key (contact_id) references contacts(contact_id),
	FOREIGN key (category_id) references category(category_id),
	FOREIGN key (subcategory_id) references subcategory(subcategory_id)
);

SELECT * FROM campaign
