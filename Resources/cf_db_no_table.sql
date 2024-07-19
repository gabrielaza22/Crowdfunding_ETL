CREATE TABLE "campaign" (
    "cf_id" INTEGER   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company_name" VARCHAR(20)   NOT NULL,
    "Description" VARCHAR(100)   NOT NULL,
    "goal" INTEGER   NOT NULL,
    "pledged" INTEGER   NOT NULL,
    "outcome" VARCHAR(50)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(50)   NOT NULL,
    "currency" VARCHAR(50)   NOT NULL,
    "Launch Date" DATE   NOT NULL,
    "End Date" DATE   NOT NULL,
    "staff_pick" VARCHAR(10)   NOT NULL,
    "spotlight" VARCHAR(10)   NOT NULL,
    "category & subcategory" VARCHAR(80)   NOT NULL,
    "category" VARCHAR(80)   NOT NULL,
    "subcategory" VARCHAR(80)   NOT NULL,
    "category_id" VARCHAR(80)   NOT NULL,
    "subcategory_id" VARCHAR(80)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" VARCHAR(50)   NOT NULL,
    "category_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INTEGER   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(50)   NOT NULL,
    "subcategory_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");