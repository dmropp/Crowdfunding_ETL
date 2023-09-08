-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHARR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category_name" VARCHAR(30)   NOT NULL,
    "category_id" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_name"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_name" VARCHAR(30)   NOT NULL,
    "subcategory_id" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_name"
     )
);

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" NUMERIC   NOT NULL,
    "pledged" NUMERIC   NOT NULL,
    "outcome" VARCHAR(30)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(10)   NOT NULL,
    "currency" VARCHAR(10)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_name" VARCHAR(30)   NOT NULL,
    "subcategory_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_name" FOREIGN KEY("category_name")
REFERENCES "category" ("category_name");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_name" FOREIGN KEY("subcategory_name")
REFERENCES "subcategory" ("subcategory_name");

