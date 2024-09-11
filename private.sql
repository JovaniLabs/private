--created table tri
CREATE TABLE IF NOT EXISTS "tri"(
    "s_id" INT,         --sentence id to link with sentences table
    "start_char" INT,   --starting character position
    "s_length" INT      --length of the substring to extract
);

--insert data into tri table
INSERT OR IGNORE INTO "tri" ("s_id", "start_char", "s_length")
VALUES
--first number represents "sentence number": 's_id'
--second number represents "character number": 'start_char'
--third number represents "message length": 's_length'
    (14, 98, 4),
    (114, 3, 5),
    (618, 72, 9),
    (630, 7, 3),
    (932, 12, 5),
    (2230, 50, 7),
    (2346, 44, 10),
    (3041, 14, 5);

--The view should be named message
CREATE VIEW "message" AS

--The view should have a single column, phrase
SELECT
    TRIM(substr("sen"."sentence", "tri"."start_char", "tri"."s_length")) AS "phrase"
FROM

--use "sen" as an alias for sentences table
    "sentences" AS "sen"
INNER JOIN

--joion sentences and tri tables on matching IDs
    "tri" ON "sen"."id" = "tri"."s_id";

--query that returns single column and row had one phrase
SELECT "phrase" FROM "message";
