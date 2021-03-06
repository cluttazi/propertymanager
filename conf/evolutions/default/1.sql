# --- !Ups

create table "PRICEHISTORY" (
"ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,
"PROPERTY" BIGINT,
"TIMESTAMP" BIGINT NOT NULL,
"PRICE" VARCHAR NOT NULL);

create table "PROPERTY" (
"ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,
"ADDRESS" VARCHAR NOT NULL,
"POSTCODE" VARCHAR NOT NULL,
"LATITUDE" DOUBLE NOT NULL,
"LONGITUDE" DOUBLE NOT NULL,
"SURFACE" BIGINT,
"BEDROOMS" INT,
"PRICE" DOUBLE);

# --- !Downs

drop table "PRICEHISTORY";
drop table "PROPERTY";
