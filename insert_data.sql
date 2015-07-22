--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = film, pg_catalog;

--
-- Data for Name: festival; Type: TABLE DATA; Schema: film; Owner: jonathan
--

COPY festival (name) FROM stdin;
Venice Film Festival
Cannes Film Festival
\.


--
-- Data for Name: competition; Type: TABLE DATA; Schema: film; Owner: jonathan
--

COPY competition (id, name, festival, year) FROM stdin;
1	Golden Lion	Venice Film Festival	2014-01-01
2	Palme d'Or	Cannes Film Festival	2014-01-01
\.


--
-- Name: competition_id_seq; Type: SEQUENCE SET; Schema: film; Owner: jonathan
--

SELECT pg_catalog.setval('competition_id_seq', 2, true);


--
-- Data for Name: director; Type: TABLE DATA; Schema: film; Owner: jonathan
--

COPY director (name) FROM stdin;
Bertrand Bonello
Atom Egoyan
David Gordon Green
Andrey Konchalovskiy
Mario Martone
Mike Leigh
Roy Andersson
Saverio Costanzo
Alix Delaporte
Jean-Pierre Dardenne
Xiaoshuai Wang
Kaan Müjdeci
Tommy Lee Jones
Nuri Bilge Ceylan
Michel Hazanavicius
Xavier Dolan
Ramin Bahrani
Alice Rohrwacher
Andrew Niccol
Rakhshan Bani-Etemad
David Oelhoffen
Bennett Miller
David Cronenberg
Shin'ya Tsukamoto
Joshua Oppenheimer
Olivier Assayas
Jean-Luc Godard
Alejandro González Iñárritu
Benoît Jacquot
Fatih Akin
Francesco Munzi
Ken Loach
Abel Ferrara
Xavier Beauvois
Naomi Kawase
\.


--
-- Data for Name: film; Type: TABLE DATA; Schema: film; Owner: jonathan
--

COPY film (id, title, year, director, rating, language) FROM stdin;
1	Chuang ru zhe	2014-01-01	Xiaoshuai Wang	6.19999981	english
2	The Look of Silence	2014-01-01	Joshua Oppenheimer	8.30000019	Indonesian
3	Fires on the Plain	2014-01-01	Shin'ya Tsukamoto	5.80000019	Japanese
4	Far from Men	2014-01-01	David Oelhoffen	7.5	english
5	Good Kill	2014-01-01	Andrew Niccol	6.0999999	english
6	Leopardi	2014-01-01	Mario Martone	6.9000001	english
7	Sivas	2014-01-01	Kaan Müjdeci	7.69999981	english
8	Black Souls	2014-01-01	Francesco Munzi	7.0999999	english
9	Three Hearts	2014-01-01	Benoît Jacquot	5.80000019	French
10	Pasolini	2014-01-01	Abel Ferrara	5.80000019	english
11	Le dernier coup de marteau	2014-01-01	Alix Delaporte	6.5	english
12	Manglehorn	2014-01-01	David Gordon Green	7.0999999	english
13	Hungry Hearts	2014-01-01	Saverio Costanzo	6.4000001	English
14	Belye nochi pochtalona Alekseya Tryapitsyna	2014-01-01	Andrey Konchalovskiy	6.9000001	Russian
15	99 Homes	2014-01-01	Ramin Bahrani	7.30000019	english
16	The Cut	2014-01-01	Fatih Akin	6	Armenian
17	Birdman: Or (The Unexpected Virtue of Ignorance)	2014-01-01	Alejandro González Iñárritu	8	English
18	La rançon de la gloire	2014-01-01	Xavier Beauvois	5.69999981	French
19	A Pigeon Sat on a Branch Reflecting on Existence	2014-01-01	Roy Andersson	7.19999981	english
20	Tales	2014-01-01	Rakhshan Bani-Etemad	6.80000019	english
21	The Wonders	2014-01-01	Alice Rohrwacher	6.80000019	Italian
22	Foxcatcher	2014-01-01	Bennett Miller	7.19999981	English
23	Mr. Turner	2014-01-01	Mike Leigh	7	English
24	Jimmy's Hall	2014-01-01	Ken Loach	6.69999981	English
25	The Homesman	2014-01-01	Tommy Lee Jones	6.5999999	English
26	The Captive	2014-01-01	Atom Egoyan	5.9000001	english
27	Goodbye to Language	2014-01-01	Jean-Luc Godard	6.19999981	French
28	The Search	2014-01-01	Michel Hazanavicius	6.9000001	French
29	Still the Water	2014-01-01	Naomi Kawase	6.9000001	Japanese
30	Mommy	2014-01-01	Xavier Dolan	8.30000019	French
31	Two Days, One Night	2014-01-01	Jean-Pierre Dardenne	7.4000001	French
32	Maps to the Stars	2014-01-01	David Cronenberg	6.4000001	English
33	Saint Laurent	2014-01-01	Bertrand Bonello	6.5	French
34	Clouds of Sils Maria	2014-01-01	Olivier Assayas	6.9000001	english
35	Winter Sleep	2014-01-01	Nuri Bilge Ceylan	8.5	Turkish
\.


--
-- Name: film_id_seq; Type: SEQUENCE SET; Schema: film; Owner: jonathan
--

SELECT pg_catalog.setval('film_id_seq', 35, true);


--
-- Data for Name: nominations; Type: TABLE DATA; Schema: film; Owner: jonathan
--

COPY nominations (id, competition, film, won) FROM stdin;
1	1	1	f
2	1	2	f
3	1	3	f
4	1	4	f
5	1	5	f
6	1	6	f
7	1	7	f
8	1	8	f
9	1	9	f
10	1	10	f
11	1	11	f
12	1	12	f
13	1	13	f
14	1	14	f
15	1	15	f
16	1	16	f
17	1	17	f
18	1	18	f
19	1	19	f
20	1	20	f
21	2	21	f
22	2	22	f
23	2	23	f
24	2	24	f
25	2	25	f
26	2	26	f
27	2	27	f
28	2	28	f
29	2	29	f
30	2	30	f
31	2	31	f
32	2	32	f
33	2	33	f
34	2	34	f
35	2	35	f
\.


--
-- Name: nominations_id_seq; Type: SEQUENCE SET; Schema: film; Owner: jonathan
--

SELECT pg_catalog.setval('nominations_id_seq', 35, true);


SET search_path = sqitch, pg_catalog;

--
-- Data for Name: projects; Type: TABLE DATA; Schema: sqitch; Owner: jonathan
--

COPY projects (project, uri, created_at, creator_name, creator_email) FROM stdin;
goodfilm	\N	2015-03-16 17:05:50.556662+00	Jonathan Harrington	jonathan@jonharrington.org
\.


--
-- Data for Name: changes; Type: TABLE DATA; Schema: sqitch; Owner: jonathan
--

COPY changes (change_id, script_hash, change, project, note, committed_at, committer_name, committer_email, planned_at, planner_name, planner_email) FROM stdin;
755e3fec2f92428d30a093e1477dcd493090708d	238196dc16257dff36e562ebf51548b9e3e4e1e5	appschmea	goodfilm	Add schema for goodfilm objects	2015-03-18 07:37:31.105538+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
7940e120ef5e414a3c6f9237b24007c6becdc998	c5bbb9d2571681fb2880fa348f0d09caf929ecf4	film	goodfilm	Add the goodfilm tables	2015-03-18 07:37:31.25917+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
25da391c097cb089c752ef72461d828bdda6155b	60852e3bfb17fdc1df2a4ef0a66eecae23d0d674	v1scheman	goodfilm	Adding API v1 schema	2015-03-18 07:37:31.308952+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
120310ec0ec0f25d120403ed39aa58d0cb34513b	8499269fa5e9dd44395b517163fc58a3c458a6fe	v1views	goodfilm	Adding API v1 views	2015-03-18 07:37:31.368976+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
\.


--
-- Data for Name: dependencies; Type: TABLE DATA; Schema: sqitch; Owner: jonathan
--

COPY dependencies (change_id, type, dependency, dependency_id) FROM stdin;
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: sqitch; Owner: jonathan
--

COPY events (event, change_id, change, project, note, requires, conflicts, tags, committed_at, committer_name, committer_email, planned_at, planner_name, planner_email) FROM stdin;
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 17:05:50.641977+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
fail	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 17:44:49.747068+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 17:48:10.930365+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 18:06:09.399733+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 18:06:09.445179+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 18:07:42.698677+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 18:07:42.789617+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 21:26:17.372623+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 21:26:17.407196+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 21:26:23.495824+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 21:26:23.581083+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 21:26:47.275761+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 21:26:47.308568+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 21:26:48.166659+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 21:26:48.251515+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 21:31:47.869923+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 21:31:47.903924+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 21:31:48.78753+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 21:31:48.866776+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 21:35:12.127192+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 21:35:12.160942+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 21:35:13.015995+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 21:35:13.100247+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 23:22:29.524656+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 23:22:29.562672+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 23:22:30.466834+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
fail	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 23:22:30.516141+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 23:22:30.55443+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-16 23:23:23.708394+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-16 23:23:23.789802+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
fail	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-16 23:43:45.643041+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-16 23:44:53.772982+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
revert	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-17 10:12:17.326639+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-17 10:12:17.40008+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-17 10:12:17.434602+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-17 10:12:23.792881+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-17 10:12:23.898175+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-17 10:12:23.93092+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 10:12:23.986139+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 10:44:40.345869+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-17 10:44:40.381647+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-17 10:44:40.448722+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-17 10:44:40.483174+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-17 10:45:35.839085+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-17 10:45:35.946499+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-17 10:45:35.988363+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 10:45:36.036987+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 10:47:29.047317+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 10:47:38.02429+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 11:07:29.27069+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 11:07:32.887736+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 16:39:54.533568+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-17 16:39:54.570623+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-17 16:39:54.641629+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-17 16:39:54.679376+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-17 16:40:00.449604+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-17 16:40:00.542162+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-17 16:40:00.576405+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 16:40:00.625181+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 16:44:54.562125+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-17 16:44:54.594412+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-17 16:44:54.651845+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-17 16:44:54.689659+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-17 16:44:58.136249+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-17 16:44:58.208912+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-17 16:44:58.246916+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 16:44:58.290905+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 16:45:59.999954+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-17 16:46:00.040081+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-17 16:46:00.097351+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-17 16:46:00.135145+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-17 16:46:03.498017+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-17 16:46:03.575737+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-17 16:46:03.610945+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-17 16:46:03.661327+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-18 07:37:15.994207+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
revert	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-18 07:37:16.036988+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
revert	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-18 07:37:16.093889+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
revert	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-18 07:37:16.13068+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	755e3fec2f92428d30a093e1477dcd493090708d	appschmea	goodfilm	Add schema for goodfilm objects	{}	{}	{}	2015-03-18 07:37:31.109836+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:02:35+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	7940e120ef5e414a3c6f9237b24007c6becdc998	film	goodfilm	Add the goodfilm tables	{}	{}	{}	2015-03-18 07:37:31.263069+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 17:09:23+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	25da391c097cb089c752ef72461d828bdda6155b	v1scheman	goodfilm	Adding API v1 schema	{}	{}	{}	2015-03-18 07:37:31.313276+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:41:50+00	Jonathan Harrington	jonathan@jonharrington.org
deploy	120310ec0ec0f25d120403ed39aa58d0cb34513b	v1views	goodfilm	Adding API v1 views	{}	{}	{}	2015-03-18 07:37:31.371517+00	Jonathan Harrington	jonathan@jonharrington.org	2015-03-16 23:45:35+00	Jonathan Harrington	jonathan@jonharrington.org
\.


--
-- Data for Name: releases; Type: TABLE DATA; Schema: sqitch; Owner: jonathan
--

COPY releases (version, installed_at, installer_name, installer_email) FROM stdin;
1	2015-03-16 17:05:50.550235+00	Jonathan Harrington	jonathan@jonharrington.org
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: sqitch; Owner: jonathan
--

COPY tags (tag_id, tag, project, change_id, note, committed_at, committer_name, committer_email, planned_at, planner_name, planner_email) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

