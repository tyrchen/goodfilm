-- Revert goodfilm:v1schema from pg

BEGIN;

drop schema "1";

COMMIT;
