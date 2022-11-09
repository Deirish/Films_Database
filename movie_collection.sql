--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: film_directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film_directors (
    id integer NOT NULL,
    movie character varying(50) NOT NULL,
    director_name character varying(50) NOT NULL
);


ALTER TABLE public.film_directors OWNER TO postgres;

--
-- Name: film_directors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.film_directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_directors_id_seq OWNER TO postgres;

--
-- Name: film_directors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.film_directors_id_seq OWNED BY public.film_directors.id;


--
-- Name: lead_actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lead_actors (
    id integer NOT NULL,
    actor_name character varying(50) NOT NULL,
    "character" character varying(50) NOT NULL
);


ALTER TABLE public.lead_actors OWNER TO postgres;

--
-- Name: lead_actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lead_actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lead_actors_id_seq OWNER TO postgres;

--
-- Name: lead_actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lead_actors_id_seq OWNED BY public.lead_actors.id;


--
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    realese character varying(10) NOT NULL
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_id_seq OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;


--
-- Name: film_directors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_directors ALTER COLUMN id SET DEFAULT nextval('public.film_directors_id_seq'::regclass);


--
-- Name: lead_actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lead_actors ALTER COLUMN id SET DEFAULT nextval('public.lead_actors_id_seq'::regclass);


--
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);


--
-- Data for Name: film_directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.film_directors (id, movie, director_name) FROM stdin;
1	SkyFall	Sam_Mendes
2	Die_Another_Day	Lee_Tamahori
3	The_Batman	Matt_Reeves
4	The_Sandman	Jamie_Childs
5	Black_Widow	Cate_Shortland
6	Venom_2	Andy_Serkis
7	Thor_LoveAndThunder	Taika_Waititi
8	WandaVision	Matt_Shokman
\.


--
-- Data for Name: lead_actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lead_actors (id, actor_name, "character") FROM stdin;
1	Daniel_Craig	James_Bond
2	Piers_Brosnan	James_Bond
3	Robert_Pattinson	Bruce_Wayne
4	Thomas_Sturridge	Lord_Morphais
5	Scarlett_Johansson	Natasha_Romanoff
6	Tom_Hardy	Eddie_Brock
7	Chris_Hemsworth	Thor
8	Elizabeth_Olsen/Paul_Bettany	Wanda_Maximoff/Vision
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (id, name, realese) FROM stdin;
1	SkyFall	2012
2	Die_Another_Day	2002
3	The_Batman	2022
4	The_Sandman	2022
5	Black_Widow	2021
6	Venom_2	2021
7	Thor_LoveAndThunder	2022
8	WandaVision	2021
\.


--
-- Name: film_directors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.film_directors_id_seq', 1, false);


--
-- Name: lead_actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lead_actors_id_seq', 1, false);


--
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

