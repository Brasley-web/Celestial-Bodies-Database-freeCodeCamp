--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: famous_astronomers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.famous_astronomers (
    famous_astronomers_id integer NOT NULL,
    name character varying(20) NOT NULL,
    had_children boolean NOT NULL
);


ALTER TABLE public.famous_astronomers OWNER TO freecodecamp;

--
-- Name: famous_astronomers_famous_astronomer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.famous_astronomers_famous_astronomer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.famous_astronomers_famous_astronomer_id_seq OWNER TO freecodecamp;

--
-- Name: famous_astronomers_famous_astronomer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.famous_astronomers_famous_astronomer_id_seq OWNED BY public.famous_astronomers.famous_astronomers_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(20) NOT NULL,
    age_million_years integer,
    has_life boolean
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
    name character varying(30) NOT NULL,
    description text,
    orbital_period integer NOT NULL,
    planet_id integer
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
    name character varying(30) NOT NULL,
    temperature integer,
    radius integer,
    star_id integer
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
    name character varying(30) NOT NULL,
    class character varying(5),
    distance_from_earth numeric(7,1) NOT NULL,
    galaxy_id integer
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
-- Name: famous_astronomers famous_astronomers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.famous_astronomers ALTER COLUMN famous_astronomers_id SET DEFAULT nextval('public.famous_astronomers_famous_astronomer_id_seq'::regclass);


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
-- Data for Name: famous_astronomers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.famous_astronomers VALUES (1, 'Galileo Galilei', true);
INSERT INTO public.famous_astronomers VALUES (2, 'Johannes Kepler', true);
INSERT INTO public.famous_astronomers VALUES (3, 'Nicolas Copernicus', false);
INSERT INTO public.famous_astronomers VALUES (4, 'Isaac Newton', false);
INSERT INTO public.famous_astronomers VALUES (5, 'Tycho Brahe', true);
INSERT INTO public.famous_astronomers VALUES (6, 'Edwin Hubble', true);
INSERT INTO public.famous_astronomers VALUES (7, 'Carl Sagan', true);
INSERT INTO public.famous_astronomers VALUES (8, 'Vera Rubin', true);
INSERT INTO public.famous_astronomers VALUES (9, 'Andrea Ghez', true);
INSERT INTO public.famous_astronomers VALUES (10, 'Neil deGrasse Tyson', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred spiral', 13, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum galaxy', 'Spiral', 12, false);
INSERT INTO public.galaxy VALUES (4, 'Centurus A', 'Elliptical galaxy', 12, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero galaxy', 'Spiral galaxy', 9, false);
INSERT INTO public.galaxy VALUES (6, 'Andromeda II galaxy', 'Elliptical galaxy', 12, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s only natural satellite.', 27, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Larger moon of Mars.', 7, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Smaller moon of Mars.', 30, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanically active moon with colorful surface.', 2, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Icy moon with a subsurface ocean.', 4, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the solar system, with a magnetic field.', 7, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Heavily cratered moon with an ancient surface.', 17, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Largest moon of Saturn, known for its thick atmosphere.', 16, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Icy moon with active water geysers.', 1, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Known for its large Herschel Crater.', 1, 6);
INSERT INTO public.moon VALUES (11, 'Miranda', 'Uniquely varied terrain with large, unique structures.', 1, 7);
INSERT INTO public.moon VALUES (12, 'Ariel', 'Smooth surface with canyons and valleys.', 3, 7);
INSERT INTO public.moon VALUES (13, 'Triton', 'Largest moon of Neptune, with a retrograde orbit.', 6, 8);
INSERT INTO public.moon VALUES (14, 'Charon', 'Pluto''s largest moon, part of a binary system.', 6, 9);
INSERT INTO public.moon VALUES (15, 'Dione', 'Icy moon with prominent bright streaks.', 3, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 'Heavily cratered moon with a large impact basin.', 2, 6);
INSERT INTO public.moon VALUES (17, 'Oberon', 'Outermost and second-largest moon of Uranus.', 14, 9);
INSERT INTO public.moon VALUES (18, 'Iapetus', 'Moon with a two-tone appearance, one dark, one bright.', 79, 6);
INSERT INTO public.moon VALUES (19, 'Rhea', 'Second-largest moon of Saturn with a bright surface.', 5, 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'Irregularly shaped moon with a porous surface.', 21, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Mercury', 427, 2439, 3);
INSERT INTO public.planet VALUES (4, 'Venus', 465, 6051, 3);
INSERT INTO public.planet VALUES (5, 'Earth', 15, 6371, 3);
INSERT INTO public.planet VALUES (6, 'Mars', -5, 3389, 3);
INSERT INTO public.planet VALUES (7, 'Jupiter', -145, 69911, 3);
INSERT INTO public.planet VALUES (8, 'Saturn', -178, 58232, 3);
INSERT INTO public.planet VALUES (9, 'Uranus', -224, 25362, 3);
INSERT INTO public.planet VALUES (10, 'Neptune', -218, 24622, 3);
INSERT INTO public.planet VALUES (11, 'Ceres', -105, 590, 3);
INSERT INTO public.planet VALUES (12, 'Pluto', -230, 1188, 3);
INSERT INTO public.planet VALUES (13, 'haumea', -241, 816, 3);
INSERT INTO public.planet VALUES (14, 'Eris', -231, 1163, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'M', 8.9, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'R', 640.0, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'G', 4.4, 1);
INSERT INTO public.star VALUES (4, 'Vega', ' M', 25.0, 1);
INSERT INTO public.star VALUES (5, 'Antares', 'R', 550.0, 1);
INSERT INTO public.star VALUES (6, 'Deneb', 'L', 1.4, 1);


--
-- Name: famous_astronomers_famous_astronomer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.famous_astronomers_famous_astronomer_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: famous_astronomers famous_astronomers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.famous_astronomers
    ADD CONSTRAINT famous_astronomers_pkey PRIMARY KEY (famous_astronomers_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: famous_astronomers name_astronomer; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.famous_astronomers
    ADD CONSTRAINT name_astronomer UNIQUE (name);


--
-- Name: moon name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_moon UNIQUE (name);


--
-- Name: star name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

