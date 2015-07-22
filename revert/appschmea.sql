-- Revert goodfilm:appschmea from pg

BEGIN;
drop schema film;
COMMIT;
