-- Revert goodfilm:film from pg

BEGIN;

DROP TABLE film.director CASCADE;
DROP TABLE film.film CASCADE;
DROP TABLE film.festival CASCADE;
DROP TABLE film.competition CASCADE;
DROP TABLE film.nominations CASCADE;

COMMIT;
