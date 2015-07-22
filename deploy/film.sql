-- Deploy goodfilm:film to pg

BEGIN;

CREATE TABLE film.director
(
  name text NOT NULL PRIMARY KEY
);

CREATE TABLE film.film
(
  id serial PRIMARY KEY,
  title text NOT NULL,
  year date NOT NULL,
  director text,
  rating real NOT NULL DEFAULT 0,
  language text NOT NULL,
  CONSTRAINT film_director_fkey FOREIGN KEY (director)
    REFERENCES film.director (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE film.festival
(
  name text NOT NULL PRIMARY KEY
);

CREATE TABLE film.competition  
(
  id serial PRIMARY KEY,
  name text NOT NULL,
  festival text NOT NULL,
  year date NOT NULL,

  CONSTRAINT comp_festival_fkey FOREIGN KEY (festival)
    REFERENCES film.festival (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE film.nominations
(
  id serial PRIMARY KEY,
  competition integer NOT NULL,
  film integer NOT NULL,
  won boolean NOT NULL DEFAULT true,

  CONSTRAINT nomination_competition_fkey FOREIGN KEY (competition)
    REFERENCES film.competition (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,

  CONSTRAINT nomination_film_fkey FOREIGN KEY (film)
    REFERENCES film.film (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

COMMIT;
