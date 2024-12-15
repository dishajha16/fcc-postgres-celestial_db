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
-- Name: distance_from_earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distance_from_earth (
    distance_from_earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer,
    age integer,
    weight numeric(8,1),
    description text,
    is_star boolean,
    is_planet boolean
);


ALTER TABLE public.distance_from_earth OWNER TO freecodecamp;

--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.distance_from_earth_distance_from_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distance_from_earth_distance_from_earth_id_seq OWNER TO freecodecamp;

--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.distance_from_earth_distance_from_earth_id_seq OWNED BY public.distance_from_earth.distance_from_earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    scount integer,
    pcount integer,
    weight numeric(4,1),
    descr text,
    has_bh boolean,
    has_wh boolean
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
    m_count integer,
    m_age integer,
    m_weight numeric(4,1),
    m_desc text,
    has_ast boolean,
    has_planet boolean,
    planet_id integer NOT NULL
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
    p_count integer,
    p_age integer,
    p_weight numeric(6,1),
    p_desc text,
    has_moon boolean,
    has_sun boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_count integer,
    age integer,
    s_weight numeric(4,1),
    s_desc text,
    is_binary boolean,
    is_bright boolean,
    galaxy_id integer NOT NULL
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
-- Name: distance_from_earth distance_from_earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth ALTER COLUMN distance_from_earth_id SET DEFAULT nextval('public.distance_from_earth_distance_from_earth_id_seq'::regclass);


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
-- Data for Name: distance_from_earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.distance_from_earth VALUES (1, 'Proxima Centauri', 4240, 4500, 0.1, 'The closest star to Earth after the Sun.', true, false);
INSERT INTO public.distance_from_earth VALUES (2, 'Jupiter', 778, 4600, 1898.0, 'The largest planet in our solar system.', false, true);
INSERT INTO public.distance_from_earth VALUES (3, 'Kepler-22b', 600000, 6000, 5.0, 'A potential habitable exoplanet located 600 light-years away.', false, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 250000000, 8, 1.5, 'Our home galaxy, spiral in shape.', true, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000000000, 14, 2.2, 'Closest spiral galaxy to Milky Way.', true, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 40000000, 3, 0.8, 'A small spiral galaxy near Andromeda.', true, false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 30000000, 1, 0.5, 'A satellite galaxy of the Milky Way.', false, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 80000000, 6, 2.0, 'Known for its bright nucleus and large central bulge.', true, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 100000000, 9, 1.7, 'Famous for its interaction with a companion galaxy.', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (41, 'Luna', 1, 4500, 0.1, 'Earth’s only natural satellite.', true, true, 13);
INSERT INTO public.moon VALUES (42, 'Phobos', 1, 4600, 0.0, 'One of Mars’ small moons, irregular in shape.', false, true, 14);
INSERT INTO public.moon VALUES (43, 'Deimos', 1, 4600, 0.0, 'Mars’ second moon, smaller and more distant.', false, true, 14);
INSERT INTO public.moon VALUES (44, 'Io', 1, 4600, 0.0, 'The most volcanically active body in the solar system.', false, true, 15);
INSERT INTO public.moon VALUES (45, 'Europa', 1, 4600, 0.0, 'Icy moon with a possible subsurface ocean.', false, true, 15);
INSERT INTO public.moon VALUES (46, 'Ganymede', 1, 4600, 0.2, 'The largest moon in the solar system.', false, true, 15);
INSERT INTO public.moon VALUES (47, 'Callisto', 1, 4600, 0.1, 'Heavily cratered moon of Jupiter.', false, true, 15);
INSERT INTO public.moon VALUES (48, 'Titan', 1, 4600, 0.1, 'Saturn’s largest moon with a thick atmosphere.', false, true, 16);
INSERT INTO public.moon VALUES (49, 'Enceladus', 1, 4600, 0.0, 'Icy moon with active geysers.', true, true, 16);
INSERT INTO public.moon VALUES (50, 'Mimas', 1, 4600, 0.0, 'Small moon with a large crater resembling the Death Star.', false, true, 16);
INSERT INTO public.moon VALUES (51, 'Triton', 1, 4600, 0.0, 'Neptune’s largest moon, retrograde orbit.', false, true, 18);
INSERT INTO public.moon VALUES (52, 'Charon', 1, 4600, 0.0, 'Largest moon of the dwarf planet Pluto.', false, true, 18);
INSERT INTO public.moon VALUES (53, 'Proxima c', 1, 4900, 0.0, 'Moon of Proxima b, potentially rocky.', true, true, 19);
INSERT INTO public.moon VALUES (54, 'Kepler-22b Moon', 1, 6000, 0.5, 'Hypothetical moon of Kepler-22b.', false, true, 20);
INSERT INTO public.moon VALUES (55, 'HD 209458 b Moon', 1, 7000, 0.4, 'Hypothetical moon of Osiris.', false, true, 21);
INSERT INTO public.moon VALUES (56, 'TRAPPIST-1 Moon 1', 1, 7500, 0.0, 'One of the potential moons in the TRAPPIST-1 system.', false, true, 22);
INSERT INTO public.moon VALUES (57, 'TRAPPIST-1 Moon 2', 1, 7500, 0.0, 'Another potential moon in the TRAPPIST-1 system.', false, true, 22);
INSERT INTO public.moon VALUES (58, 'Oberon', 1, 4600, 0.0, 'Uranus’ outermost major moon.', false, true, 17);
INSERT INTO public.moon VALUES (59, 'Titania', 1, 4600, 0.0, 'Uranus’ largest moon.', false, true, 17);
INSERT INTO public.moon VALUES (60, 'Miranda', 1, 4600, 0.0, 'A small and uniquely fractured moon of Uranus.', false, true, 17);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', 1, 4500, 0.3, 'The smallest and closest planet to the Sun.', false, true, 1);
INSERT INTO public.planet VALUES (14, 'Venus', 1, 4600, 4.9, 'Second planet from the Sun, with a thick atmosphere.', false, true, 1);
INSERT INTO public.planet VALUES (15, 'Earth', 1, 4600, 6.0, 'Our home planet, the only one known to support life.', true, true, 1);
INSERT INTO public.planet VALUES (16, 'Mars', 2, 4600, 0.6, 'The red planet, known for its dusty landscape.', true, true, 1);
INSERT INTO public.planet VALUES (17, 'Jupiter', 79, 4600, 1898.0, 'The largest planet in our solar system.', true, true, 1);
INSERT INTO public.planet VALUES (18, 'Saturn', 83, 4600, 568.0, 'Famous for its stunning ring system.', true, true, 1);
INSERT INTO public.planet VALUES (19, 'Uranus', 27, 4600, 86.8, 'An ice giant with a unique sideways rotation.', true, true, 1);
INSERT INTO public.planet VALUES (20, 'Neptune', 14, 4600, 102.0, 'The farthest planet, known for its blue hue.', true, true, 1);
INSERT INTO public.planet VALUES (21, 'Proxima b', 1, 4900, 1.3, 'An exoplanet orbiting Proxima Centauri.', false, false, 4);
INSERT INTO public.planet VALUES (22, 'Kepler-22b', 0, 6000, 5.0, 'A potential habitable exoplanet.', false, false, 5);
INSERT INTO public.planet VALUES (23, 'HD 209458 b', 0, 7000, 0.7, 'A gas giant also known as Osiris.', false, false, 5);
INSERT INTO public.planet VALUES (24, 'TRAPPIST-1d', 0, 7500, 0.8, 'One of seven planets in the TRAPPIST-1 system.', false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirius', 1, 250, 2.1, 'Brightest star in the night sky, part of a binary system.', true, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 8000, 8.5, 'A red supergiant star in the constellation Orion.', false, true, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 1, 4500, 1.1, 'The primary star of the closest star system to Earth.', true, true, 2);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, 4900, 0.2, 'The closest individual star to Earth, a red dwarf.', false, false, 2);
INSERT INTO public.star VALUES (6, 'Vega', 1, 450, 2.5, 'A bright star in the Lyra constellation, highly luminous.', false, true, 3);
INSERT INTO public.star VALUES (1, 'Antares', 1, 12000, 12.0, 'A red supergiant star, one of the largest visible stars.', false, true, 4);


--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.distance_from_earth_distance_from_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 60, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: distance_from_earth distance_from_earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_name_key UNIQUE (name);


--
-- Name: distance_from_earth distance_from_earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_pkey PRIMARY KEY (distance_from_earth_id);


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

