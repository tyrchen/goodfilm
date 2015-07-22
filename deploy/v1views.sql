-- Deploy v1views

BEGIN;

create or replace view "1".film as
select title, film.year, director, rating, language, comp.name as competition from film.film  
 left join film.nominations as n on film.id = n.film
 left join film.competition as comp on n.competition = comp.id;

create or replace view "1".festival as
select comp.festival,
       comp.name as competition,
       comp.year,
       film.title,
       film.director,
       film.rating
 from film.nominations as noms
 left join film.film as film on noms.film = film.id
 left join film.competition as comp on noms.competition = comp.id
 order by comp.year desc, comp.festival, competition;

create or replace view "1".director as
select d.name, f.title, f.year, f.rating from film.director as d
 left join film.film as f on f.director = d.name;

COMMIT;
