--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    description text NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions_of_years numeric,
    wormhole boolean DEFAULT false NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    speed integer,
    name character varying(255) NOT NULL,
    age_in_millions_of_years numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    name character varying(255) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description text,
    name character varying(255) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    star_id integer NOT NULL,
    population numeric NOT NULL,
    age_in_millions_of_years numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    mass integer,
    description text,
    name character varying(255) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'One of the most massive known black holes, located near the North Galactic Pole in the constellation Canes Venatici, with a mass of 66 billion solar masses', 'TON 618', NULL, false);
INSERT INTO public.blackhole VALUES (2, 'This supermassive black hole is at the center of the Milky Way Galaxy and has been directly imaged', 'Sagittarius A*', NULL, false);
INSERT INTO public.blackhole VALUES (3, 'Located in the constellation Virgo, it is the first black hole to be directly imaged by the Event Horizon Telescope', 'Messier 87', NULL, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'andromeda', NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'cartwheel', NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'cigar', NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'comet', NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'condor', NULL);
INSERT INTO public.galaxy VALUES (7, NULL, NULL, 'cosmos', NULL);
INSERT INTO public.galaxy VALUES (8, NULL, NULL, 'Milky Way', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 'The Moon', false, true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, NULL, 'lo', false, true, 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, NULL, 'Europa', false, true, 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, NULL, 'Ganymede', false, true, 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, NULL, 'Callisto', false, true, 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, NULL, 'Titan', false, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, NULL, 'Enceladus', false, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, NULL, 'Mimas', false, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, NULL, 'Tethys', false, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, NULL, 'Dione', false, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, NULL, 'Rhea', false, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, NULL, 'Iapetus', false, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, NULL, 'Hyperion', false, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, NULL, 'Triton', false, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, NULL, 'Nereid', false, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, NULL, 'Proteus', false, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, NULL, 'Larissa', false, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, NULL, 'Galatea', false, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, NULL, 'Naiad', false, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, NULL, 'Halimede', false, true, 7, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 'Earth', true, true, 1, 8, NULL);
INSERT INTO public.planet VALUES (2, NULL, 'Mercury', false, true, 1, 0, NULL);
INSERT INTO public.planet VALUES (3, NULL, 'Venus', false, true, 1, 0, NULL);
INSERT INTO public.planet VALUES (4, NULL, 'Jupiter', false, true, 1, 0, NULL);
INSERT INTO public.planet VALUES (5, NULL, 'Saturn', false, true, 1, 0, NULL);
INSERT INTO public.planet VALUES (6, NULL, 'Urnaus', false, true, 1, 0, NULL);
INSERT INTO public.planet VALUES (7, NULL, 'Neptune', false, true, 1, 0, NULL);
INSERT INTO public.planet VALUES (8, NULL, 'Mirach b', false, true, 3, 0, NULL);
INSERT INTO public.planet VALUES (9, NULL, 'Mars', false, true, 1, 0, NULL);
INSERT INTO public.planet VALUES (10, NULL, '51 Pegasi b', false, true, 6, 0, NULL);
INSERT INTO public.planet VALUES (11, NULL, 'Proxima Centauri b', false, true, 7, 0, NULL);
INSERT INTO public.planet VALUES (12, NULL, 'Gamma Cephei Ab', false, true, 6, 0, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, 'The Sun', 8, NULL);
INSERT INTO public.star VALUES (2, NULL, NULL, 'Alpheratz', 2, NULL);
INSERT INTO public.star VALUES (3, NULL, NULL, 'Mirach', 2, NULL);
INSERT INTO public.star VALUES (4, NULL, NULL, 'Stephenson', 8, NULL);
INSERT INTO public.star VALUES (5, NULL, NULL, 'Betelgeuse', 8, NULL);
INSERT INTO public.star VALUES (6, NULL, NULL, 'Antares', 8, NULL);
INSERT INTO public.star VALUES (7, NULL, NULL, 'Proxima Centauri', 8, NULL);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star pk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

