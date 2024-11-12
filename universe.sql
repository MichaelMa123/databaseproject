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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    distance_from_earth numeric(10,2),
    size_in_lightyears numeric(10,2)
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
    has_life boolean NOT NULL,
    distance_from_earth integer,
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
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance numeric(30,2) NOT NULL
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    distance_from_earth_in_light_day integer,
    mass_in_kg numeric(30,2),
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
    description text,
    has_life boolean NOT NULL,
    distance_from_earth numeric(10,2),
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home galaxy of Earth. Barred spiral galaxy.', true, 0.03, 87400.00);
INSERT INTO public.galaxy VALUES (2, 'Ursa Major III', 'Satellite of Milky Way', false, 0.03, 10.00);
INSERT INTO public.galaxy VALUES (3, 'Draco II', 'Satellite of Milky Way', false, 0.07, 120.00);
INSERT INTO public.galaxy VALUES (4, 'Tucana III', 'Satellite of Milky Way being tidally disrupted', false, 0.07, 220.00);
INSERT INTO public.galaxy VALUES (5, 'Sagittarius Dwarf Sphr', 'Satellite of Milky Way', false, 0.08, 10000.00);
INSERT INTO public.galaxy VALUES (6, 'Hydrus I', 'Satellite of Milky Way, associated with Magellanic Clouds', false, 0.09, 348.00);
INSERT INTO public.galaxy VALUES (7, 'Carina III', 'Satellite of Milky Way', false, 0.09, 200.00);
INSERT INTO public.galaxy VALUES (8, 'Triangulum II', 'Satellite of Milky Way', false, 0.10, NULL);
INSERT INTO public.galaxy VALUES (9, 'Large Magellanic Cloud', 'Satellite of Milky Way', false, 0.16, 32200.00);
INSERT INTO public.galaxy VALUES (10, 'Small Magellanic Cloud', 'Satellite of Milky Way', false, 0.21, 18900.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller and more distant of Mars''s two moons.', false, 23458, 17);
INSERT INTO public.moon VALUES (4, 'Io', 'Most geologically active moon, orbiting Jupiter.', false, 421700, 21);
INSERT INTO public.moon VALUES (5, 'Europa', 'Icy moon with potential for subsurface ocean.', false, 670900, 21);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the Solar System, bigger than Mercury.', false, 1070400, 21);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Heavily cratered moon, second largest of Jupiter.', false, 1882700, 21);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Small inner moon of Jupiter.', false, 181400, 21);
INSERT INTO public.moon VALUES (9, 'Himalia', 'A small irregular prograde moon of Jupiter.', false, 11461000, 21);
INSERT INTO public.moon VALUES (10, 'Titan', 'Second-largest moon with a dense atmosphere.', false, 1222000, 22);
INSERT INTO public.moon VALUES (11, 'Enceladus', 'Icy moon with geysers of water vapor.', false, 238020, 22);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Second-largest moon of Saturn, with a thin atmosphere.', false, 527040, 22);
INSERT INTO public.moon VALUES (13, 'Dione', 'Bright ice cliffs and impact craters.', false, 377400, 22);
INSERT INTO public.moon VALUES (14, 'Tethys', 'Icy moon of Saturn with large impact crater.', false, 294670, 22);
INSERT INTO public.moon VALUES (15, 'Mimas', 'Known for its large impact crater Herschel.', false, 185520, 22);
INSERT INTO public.moon VALUES (16, 'Hyperion', 'Irregularly shaped, chaotic rotation.', false, 1481000, 22);
INSERT INTO public.moon VALUES (17, 'Iapetus', 'Moon with stark contrasting regions of brightness.', false, 3561000, 22);
INSERT INTO public.moon VALUES (18, 'Phoebe', 'Retrograde moon likely captured by Saturn.', false, 12943000, 22);
INSERT INTO public.moon VALUES (19, 'Epimetheus', 'Co-orbits with Janus in a unique configuration.', false, 151410, 22);
INSERT INTO public.moon VALUES (29, 'Thebe', 'An inner moon of Jupiter with a rough surface.', false, 221900, 21);
INSERT INTO public.moon VALUES (2, 'Phobos', 'The larger and closer of Mars''s two moons.', false, 9376, 17);
INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s only natural satellite, largest of any rocky planet.', false, 384400, 23);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Glowing Eye Nebula', 'Also known as Dandelion Puffball Nebula', 6500.00);
INSERT INTO public.nebula VALUES (2, 'Turtle Nebula', 'Located in the constellation Hercules', 4700.00);
INSERT INTO public.nebula VALUES (3, 'Bow-Tie Nebula', 'Also known as Caldwell 2', 3500.00);
INSERT INTO public.nebula VALUES (4, 'Ghost of Jupiter', 'Located in Hydra constellation', 1400.00);
INSERT INTO public.nebula VALUES (5, 'Blinking Planetary', 'Located in the Cygnus constellation', 2000.00);
INSERT INTO public.nebula VALUES (6, 'Dumbbell Nebula', 'Messier object M27', 1360.00);
INSERT INTO public.nebula VALUES (7, 'Ring Nebula', 'Messier object M57', 2300.00);
INSERT INTO public.nebula VALUES (8, 'Eskimo Nebula', 'Also known as the Clown Face Nebula', 2900.00);
INSERT INTO public.nebula VALUES (9, 'Cat''s Eye Nebula', 'Located in the constellation Draco', 3300.00);
INSERT INTO public.nebula VALUES (10, 'Little Ghost Nebula', 'Located in Ophiuchus', 2000.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Proxima Centauri b', 'A potentially habitable exoplanet orbiting Proxima Centauri.', false, 1461, 4000000000000000000000000.00, 2);
INSERT INTO public.planet VALUES (2, 'Barnard''s Star b', 'A super-Earth exoplanet orbiting Barnard''s Star.', false, 2192, 3200000000000000000000000.00, 4);
INSERT INTO public.planet VALUES (3, 'Ross 128 b', 'A terrestrial exoplanet orbiting Ross 128.', false, 4018, 5600000000000000000000000.00, 17);
INSERT INTO public.planet VALUES (4, 'Luyten b', 'An exoplanet orbiting Luyten''s Star with potential for habitability.', false, 4383, 4300000000000000000000000.00, 16);
INSERT INTO public.planet VALUES (5, 'YZ Ceti b', 'A small rocky planet orbiting YZ Ceti.', false, 4383, 750000000000000000000000.00, 18);
INSERT INTO public.planet VALUES (6, 'Epsilon Eridani b', 'A giant exoplanet in the Epsilon Eridani system.', false, 4018, 1200000000000000000000000000.00, 10);
INSERT INTO public.planet VALUES (7, 'Tau Ceti e', 'Potentially habitable exoplanet orbiting Tau Ceti.', false, 4383, 5600000000000000000000000.00, 15);
INSERT INTO public.planet VALUES (8, 'GJ 273 b', 'A super-Earth orbiting the red dwarf star GJ 273.', false, 4383, 3800000000000000000000000.00, 19);
INSERT INTO public.planet VALUES (9, 'Teegarden''s Star b', 'Potentially habitable exoplanet orbiting Teegarden''s Star.', false, 4748, 1000000000000000000000000.00, 20);
INSERT INTO public.planet VALUES (10, 'Teegarden''s Star c', 'Second exoplanet in the Teegarden''s Star system.', false, 4748, 1100000000000000000000000.00, 20);
INSERT INTO public.planet VALUES (11, 'GJ 1061 d', 'An exoplanet orbiting GJ 1061, known for its habitability potential.', false, 4383, 1600000000000000000000000.00, 21);
INSERT INTO public.planet VALUES (12, 'Wolf 1061 c', 'Exoplanet orbiting the nearby star Wolf 1061.', false, 5114, 4300000000000000000000000.00, 22);
INSERT INTO public.planet VALUES (13, 'Kapteyn b', 'An old exoplanet orbiting the red dwarf Kapteyn''s Star.', false, 4748, 4900000000000000000000000.00, 23);
INSERT INTO public.planet VALUES (14, 'LHS 1140 b', 'A super-Earth exoplanet orbiting within the habitable zone of LHS 1140.', false, 5479, 6600000000000000000000000.00, 24);
INSERT INTO public.planet VALUES (15, 'Groombridge 34 b', 'A nearby exoplanet orbiting Groombridge 34.', false, 4383, 4500000000000000000000000.00, 25);
INSERT INTO public.planet VALUES (16, 'YZ Ceti d', 'A rocky exoplanet orbiting YZ Ceti.', false, 4383, 1500000000000000000000000.00, 18);
INSERT INTO public.planet VALUES (17, 'Mars', 'fourth planet from the Sun', false, 0, 641710000000000000000000.00, 1);
INSERT INTO public.planet VALUES (21, 'Jupiter', 'fifth planet from the Sun and the largest in the Solar System', false, 0, 5972000000000000000000000.00, 1);
INSERT INTO public.planet VALUES (22, 'Saturn', 'sixth planet from the Sun and the second largest in the Solar System', false, 1, 568340000000000000000000000.00, 1);
INSERT INTO public.planet VALUES (23, 'Earth', 'Our home planet', true, 0, 5972000000000000000000000.00, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'A typical yellow dwarf star. It has eight planets orbiting it.', true, 0.00, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'A dim red dwarf and the nearest star to the Sun, part of Alpha Centauri system.', false, 4.22, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A,B', 'An orange and yellow dwarf star system, part of Alpha Centauri.', false, 4.39, 1);
INSERT INTO public.star VALUES (4, 'Barnard''s Star', 'A dim red dwarf famous for having the largest proper motion of any star.', false, 5.94, 1);
INSERT INTO public.star VALUES (5, 'Wolf 359', 'A very dim red dwarf, once considered the least luminous known star.', false, 7.80, 1);
INSERT INTO public.star VALUES (6, 'Lalande 21185', 'One of the brightest red dwarfs in the sky, needs binoculars to see.', false, 8.31, 1);
INSERT INTO public.star VALUES (7, 'Sirius A,B', 'A brilliant white star, the brightest star in the night sky, with a white dwarf companion.', false, 8.60, 1);
INSERT INTO public.star VALUES (8, 'Luyten 726-8 A,B', 'A dim binary system of two red dwarfs, also known as UV Ceti.', false, 8.73, 1);
INSERT INTO public.star VALUES (9, 'Ross 154', 'A dim red dwarf, also known as a flare star.', false, 9.69, 1);
INSERT INTO public.star VALUES (10, 'Epsilon Eridani', 'An orange dwarf star, surrounded by dust indicating a potential forming solar system.', false, 10.50, 1);
INSERT INTO public.star VALUES (11, 'Lacaille 9352', 'A fairly bright red dwarf, first recorded in 1752.', false, 10.73, 1);
INSERT INTO public.star VALUES (12, 'Procyon A,B', 'A bright yellow-white star, orbited by a white dwarf companion.', false, 11.41, 1);
INSERT INTO public.star VALUES (13, '61 Cygni A,B', 'A binary system of two orange dwarfs, the first star to have its distance measured.', false, 11.41, 1);
INSERT INTO public.star VALUES (14, 'Groombridge 34 A,B', 'A pair of red dwarfs known for their variable brightness.', false, 11.64, 1);
INSERT INTO public.star VALUES (15, 'Tau Ceti', 'The nearest sun-like star, searched for intelligent life.', false, 11.90, 1);
INSERT INTO public.star VALUES (16, 'Luyten''s Star', 'A red dwarf discovered to be nearby in 1935.', false, 12.39, 1);
INSERT INTO public.star VALUES (17, 'Ross 128', 'A red dwarf star located in the Virgo constellation.', false, 11.03, 1);
INSERT INTO public.star VALUES (18, 'YZ Ceti', 'A red dwarf star in the constellation Cetus.', false, 12.13, 1);
INSERT INTO public.star VALUES (19, 'GJ 273', 'A red dwarf star also known as Luyten''s Star in the constellation Canis Minor.', false, 12.36, 1);
INSERT INTO public.star VALUES (20, 'Teegarden''s Star', 'A nearby red dwarf star located in the constellation Aries.', false, 12.50, 1);
INSERT INTO public.star VALUES (21, 'GJ 1061', 'A nearby red dwarf star located in the constellation Horologium.', false, 12.00, 1);
INSERT INTO public.star VALUES (22, 'Wolf 1061', 'A nearby red dwarf star located in the constellation Ophiuchus with a known habitable zone planet.', false, 14.10, 1);
INSERT INTO public.star VALUES (23, 'Kapteyn''s Star', 'An old halo star with a planetary system, located in the constellation Pictor.', false, 12.80, 1);
INSERT INTO public.star VALUES (24, 'LHS 1140', 'A nearby M-dwarf with a super-Earth in the habitable zone, located in the constellation Cetus.', false, 14.90, 1);
INSERT INTO public.star VALUES (25, 'Groombridge 34', 'A binary star system located in the constellation Andromeda.', false, 11.60, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 59, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 10, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 25, true);


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
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


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

