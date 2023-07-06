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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    name character varying(80) NOT NULL,
    asteroid_mass numeric,
    asteroid_radius integer,
    synchronus_rotation boolean,
    volcanic_activity boolean,
    star_id integer,
    notes text,
    asteroid_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(80) NOT NULL,
    number_of_stars bigint,
    stellar_mass numeric,
    spiral_galaxy boolean DEFAULT false,
    active_galaxy boolean DEFAULT false,
    notes text,
    galaxy_id integer NOT NULL
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
    name character varying(80) NOT NULL,
    moon_mass numeric,
    moon_radius numeric,
    synchronous_rotation boolean,
    volcanic_activity boolean,
    planet_id integer,
    notes text,
    moon_id integer NOT NULL
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
    name character varying(80) NOT NULL,
    planet_type character varying(15) NOT NULL,
    planet_mass numeric,
    number_of_moons integer,
    habitable boolean DEFAULT false,
    rings boolean DEFAULT false,
    notes text,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(80) NOT NULL,
    star_mass numeric,
    star_age integer,
    variable_brightness boolean DEFAULT false,
    pulsar boolean DEFAULT false,
    notes text,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('asteroid-1', NULL, NULL, NULL, NULL, 1, NULL, 1);
INSERT INTO public.asteroid VALUES ('asteroid-2', NULL, NULL, NULL, NULL, 5, NULL, 3);
INSERT INTO public.asteroid VALUES ('asteroid-3', NULL, NULL, NULL, NULL, 6, NULL, 4);
INSERT INTO public.asteroid VALUES ('asteroid-4', NULL, NULL, NULL, NULL, 7, NULL, 5);
INSERT INTO public.asteroid VALUES ('asteroid-5', NULL, NULL, NULL, NULL, 3, NULL, 8);
INSERT INTO public.asteroid VALUES ('asteroid-6', NULL, NULL, NULL, NULL, 4, NULL, 9);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1000000000, 123456789, false, false, NULL, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 800000000, 678912345, false, false, NULL, 5);
INSERT INTO public.galaxy VALUES ('Triangulum', 100000, NULL, false, false, NULL, 6);
INSERT INTO public.galaxy VALUES ('Coma Berenices', 900000, NULL, false, false, NULL, 7);
INSERT INTO public.galaxy VALUES ('Pisces II', 820000, NULL, false, false, NULL, 8);
INSERT INTO public.galaxy VALUES ('Virgo I', 5030000, NULL, false, false, NULL, 9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', NULL, NULL, NULL, NULL, 3, NULL, 1);
INSERT INTO public.moon VALUES ('Callisto', NULL, NULL, NULL, NULL, 7, NULL, 2);
INSERT INTO public.moon VALUES ('Europa', NULL, NULL, NULL, NULL, 7, NULL, 3);
INSERT INTO public.moon VALUES ('Ganymedea', NULL, NULL, NULL, NULL, 7, NULL, 4);
INSERT INTO public.moon VALUES ('Titan', NULL, NULL, NULL, NULL, 8, NULL, 5);
INSERT INTO public.moon VALUES ('Mimasn', NULL, NULL, NULL, NULL, 8, NULL, 6);
INSERT INTO public.moon VALUES ('Dione', NULL, NULL, NULL, NULL, 8, NULL, 7);
INSERT INTO public.moon VALUES ('Hyperiume', NULL, NULL, NULL, NULL, 8, NULL, 8);
INSERT INTO public.moon VALUES ('Titanise', NULL, NULL, NULL, NULL, 9, NULL, 9);
INSERT INTO public.moon VALUES ('Miranda', NULL, NULL, NULL, NULL, 9, NULL, 10);
INSERT INTO public.moon VALUES ('Cupid', NULL, NULL, NULL, NULL, 9, NULL, 11);
INSERT INTO public.moon VALUES ('Ariel', NULL, NULL, NULL, NULL, 9, NULL, 12);
INSERT INTO public.moon VALUES ('Oberon', NULL, NULL, NULL, NULL, 9, NULL, 13);
INSERT INTO public.moon VALUES ('Moon-14', NULL, NULL, NULL, NULL, 10, NULL, 14);
INSERT INTO public.moon VALUES ('Moon-15', NULL, NULL, NULL, NULL, 11, NULL, 15);
INSERT INTO public.moon VALUES ('Moon-16', NULL, NULL, NULL, NULL, 12, NULL, 16);
INSERT INTO public.moon VALUES ('Moon-17', NULL, NULL, NULL, NULL, 13, NULL, 17);
INSERT INTO public.moon VALUES ('Moon-18', NULL, NULL, NULL, NULL, 14, NULL, 18);
INSERT INTO public.moon VALUES ('Moon-20', NULL, NULL, NULL, NULL, 15, NULL, 22);
INSERT INTO public.moon VALUES ('Moon-19', NULL, NULL, NULL, NULL, 15, NULL, 19);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 'terrestrial', NULL, NULL, false, false, NULL, 3, 1);
INSERT INTO public.planet VALUES ('Mercury', 'terrestrial', NULL, NULL, false, false, NULL, 4, 1);
INSERT INTO public.planet VALUES ('Venus', 'terrestrial', NULL, NULL, false, false, NULL, 5, 1);
INSERT INTO public.planet VALUES ('Mars', 'terrestrial', NULL, NULL, false, false, NULL, 6, 1);
INSERT INTO public.planet VALUES ('Jupiter', 'gas giant', NULL, NULL, false, false, NULL, 7, 1);
INSERT INTO public.planet VALUES ('Saturn', 'gas giant', NULL, NULL, false, true, NULL, 8, 1);
INSERT INTO public.planet VALUES ('Uranus', 'ice giant', NULL, NULL, false, true, NULL, 9, 1);
INSERT INTO public.planet VALUES ('Neptune', 'ice giant', NULL, NULL, false, true, NULL, 10, 1);
INSERT INTO public.planet VALUES ('Planet 9', 'gas giant', NULL, NULL, false, false, NULL, 11, 3);
INSERT INTO public.planet VALUES ('Planet 10', 'ice giant', NULL, NULL, false, false, NULL, 12, 4);
INSERT INTO public.planet VALUES ('Planet 11', 'terrestrial', NULL, NULL, false, false, NULL, 13, 5);
INSERT INTO public.planet VALUES ('Planet 12', 'terrestrial', NULL, NULL, false, false, NULL, 14, 6);
INSERT INTO public.planet VALUES ('Exo planet', 'ice dwarf', NULL, NULL, false, false, NULL, 15, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('The Sun', 1989000000000000000000000000000, NULL, false, false, NULL, 1, 1);
INSERT INTO public.star VALUES ('star_3', 74330000, NULL, false, false, NULL, 3, 5);
INSERT INTO public.star VALUES ('star_4', 54330000, NULL, false, false, NULL, 4, 6);
INSERT INTO public.star VALUES ('star_5', 84330000, NULL, false, false, NULL, 5, 7);
INSERT INTO public.star VALUES ('star_6', 94430000, NULL, false, false, NULL, 6, 8);
INSERT INTO public.star VALUES ('star_7', 29443000, NULL, false, false, NULL, 7, 9);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 9, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 3, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 2, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid unique_asteroid_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: asteroid asteroid_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

