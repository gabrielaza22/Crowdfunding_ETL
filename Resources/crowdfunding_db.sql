CREATE TABLE "campaign" (
    "cf_id" INTEGER   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR(100)   NOT NULL,
    "goal" INTEGER   NOT NULL,
    "pleadged" INTEGER   NOT NULL,
    "outcome" VARCHAR(100)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(100)   NOT NULL,
    "currency" VARCHAR(100)   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "staff_pick" VARCHAR(100)   NOT NULL,
    "spotlight" VARCHAR(100)   NOT NULL,
    "category_and_sub-category" VARCHAR(100)   NOT NULL,
    "category" VARCHAR(100)   NOT NULL,
    "subcategory" VARCHAR(100)   NOT NULL,
    "category_id" VARCHAR(100)   NOT NULL,
    "subcategory_id" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" VARCHAR(100)   NOT NULL,
    "category_name" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INTEGER   NOT NULL,
    "first_name" VARCHAR(100)   NOT NULL,
    "last_name" VARCHAR(100)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(100)   NOT NULL,
    "subcategory_name" VARCHAR(100)   NOT NULL,
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

