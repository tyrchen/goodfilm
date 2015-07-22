-- Revert goodfilm:v1views from pg

BEGIN;

drop view "1".film;  
drop view "1".director;  
drop view "1".festival;

COMMIT;
