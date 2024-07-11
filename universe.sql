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
-- Name: celestial_body; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_body (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL,
    celestial_body_id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public.celestial_body OWNER TO freecodecamp;

--
-- Name: celestial_body_celestial_body_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_body_celestial_body_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_body_celestial_body_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_body_celestial_body_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_body_celestial_body_id_seq OWNED BY public.celestial_body.celestial_body_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_sperical boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer
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
    description text NOT NULL,
    has_life boolean,
    is_sperical boolean,
    age_in_millions_of_years integer,
    distance_from_earth_in_au integer,
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
    description text NOT NULL,
    has_life boolean,
    is_sperical boolean,
    age_in_millions_of_years integer,
    distance_from_earth_in_au numeric(8,2),
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
    description text NOT NULL,
    has_life boolean,
    is_sperical boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
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
-- Name: celestial_body celestial_body_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body ALTER COLUMN celestial_body_id SET DEFAULT nextval('public.celestial_body_celestial_body_id_seq'::regclass);


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
-- Data for Name: celestial_body; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_body VALUES (1, 1, 2, 2, 2, 'Milky Way');
INSERT INTO public.celestial_body VALUES (1, 1, 1, 1, 1, 'Milky Way');
INSERT INTO public.celestial_body VALUES (2, 2, 2, 11, 11, 'Andromeda');
INSERT INTO public.celestial_body VALUES (2, 2, 3, 4, 4, 'Andromeda');
INSERT INTO public.celestial_body VALUES (2, 2, 3, 3, 3, 'Andromeda');
INSERT INTO public.celestial_body VALUES (3, 3, 3, 19, 19, 'Triangulum');
INSERT INTO public.celestial_body VALUES (3, 3, 4, 6, 6, 'Triangulum');
INSERT INTO public.celestial_body VALUES (3, 3, 4, 5, 5, 'Triangulum');
INSERT INTO public.celestial_body VALUES (4, 4, 4, 20, 20, 'Messier 87');
INSERT INTO public.celestial_body VALUES (4, 4, 4, 18, 18, 'Messier 87');
INSERT INTO public.celestial_body VALUES (4, 4, 4, 16, 16, 'Messier 87');
INSERT INTO public.celestial_body VALUES (4, 4, 5, 8, 8, 'Messier 87');
INSERT INTO public.celestial_body VALUES (4, 4, 5, 7, 7, 'Messier 87');
INSERT INTO public.celestial_body VALUES (5, 5, 6, 17, 17, 'Sombrero');
INSERT INTO public.celestial_body VALUES (5, 5, 5, 15, 15, 'Sombrero');
INSERT INTO public.celestial_body VALUES (5, 5, 6, 14, 14, 'Sombrero');
INSERT INTO public.celestial_body VALUES (5, 5, 5, 13, 13, 'Sombrero');
INSERT INTO public.celestial_body VALUES (5, 5, 5, 12, 12, 'Sombrero');
INSERT INTO public.celestial_body VALUES (5, 5, 5, 10, 10, 'Sombrero');
INSERT INTO public.celestial_body VALUES (5, 5, 6, 9, 9, 'Sombrero');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy where the Solar System resides', true, true, 13000, 27000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest spiral galaxy to the Milky Way', true, true, 220000, 2500000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy in the Local Group', false, true, 40000, 3000000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical galaxy in the Virgo Cluster', false, false, 60000, 54000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral galaxy with a prominent dust lane', false, true, 13000, 29000000);
INSERT INTO public.galaxy VALUES (6, 'Anggrozh', 'A majestic spiral galaxy with billions of stars', true, true, 2200, 2540000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'The Earth''s only natural satellite', false, true, 5, 0, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'The larger and closer of Mars'' two moons', false, true, 5, 0, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller and more distant of Mars'' two moons', false, true, 5, 0, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'One of Jupiter''s Galilean moons, known for its volcanic activity', false, true, 5, 0, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter''s moon with an icy crust and potential subsurface ocean', false, true, 5, 0, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon in the Solar System, orbiting Jupiter', false, true, 5, 0, 3);
INSERT INTO public.moon VALUES (7, 'Titan', 'Saturn''s largest moon, with a thick atmosphere and lakes of liquid methane', false, true, 5, 0, 4);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Saturn''s moon with active geysers ejecting water into space', false, true, 5, 0, 4);
INSERT INTO public.moon VALUES (9, 'Miranda', 'Uranus''s smallest spherical moon with unique surface features', false, true, 5, 0, 5);
INSERT INTO public.moon VALUES (10, 'Triton', 'Neptune''s largest moon, with a retrograde orbit and geysers', false, true, 5, 0, 6);
INSERT INTO public.moon VALUES (11, 'Phobos II', 'A hypothetical second moon of Mars', false, true, 0, 0, 2);
INSERT INTO public.moon VALUES (12, 'Oberon', 'Uranus''s second-largest moon and most distant major moon', false, true, 5, 0, 5);
INSERT INTO public.moon VALUES (13, 'Ariel', 'Uranus''s brightest and fourth-largest moon', false, true, 5, 0, 5);
INSERT INTO public.moon VALUES (14, 'Proteus', 'Neptune''s second-largest moon, discovered by Voyager 2', false, true, 5, 0, 6);
INSERT INTO public.moon VALUES (15, 'Puck', 'Uranus''s smallest spherical moon', false, true, 5, 0, 5);
INSERT INTO public.moon VALUES (16, 'Charon', 'Pluto''s largest moon, considered a dwarf planet system with Pluto', false, true, 5, 0, 7);
INSERT INTO public.moon VALUES (17, 'Nereid', 'Neptune''s third-largest moon, discovered in 1949', false, true, 5, 0, 6);
INSERT INTO public.moon VALUES (18, 'Dione', 'Saturn''s moon with bright ice cliffs and numerous impact craters', false, true, 5, 0, 4);
INSERT INTO public.moon VALUES (19, 'Callisto', 'Jupiter''s moon with a heavily cratered surface and a possible subsurface ocean', false, true, 5, 0, 3);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'Saturn''s irregularly shaped moon with a porous, spongy appearance', false, true, 5, 0, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The third planet from the Sun and the only astronomical object known to harbor life', true, true, 5, 1.00, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'The fourth planet from the Sun and the second-smallest planet in the Solar System', false, true, 5, 2.00, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'The fifth planet from the Sun and the largest in the Solar System', false, false, 5, 5.00, 2);
INSERT INTO public.planet VALUES (4, 'Saturn', 'The sixth planet from the Sun and the second-largest in the Solar System', false, false, 5, 10.00, 2);
INSERT INTO public.planet VALUES (5, 'Uranus', 'The seventh planet from the Sun and the third-largest in the Solar System', false, false, 5, 19.00, 3);
INSERT INTO public.planet VALUES (6, 'Neptune', 'The eighth and farthest planet from the Sun in the Solar System', false, false, 5, 30.00, 3);
INSERT INTO public.planet VALUES (7, 'Mercury', 'The smallest and innermost planet in the Solar System', false, true, 5, 0.00, 1);
INSERT INTO public.planet VALUES (8, 'Venus', 'The second planet from the Sun and the hottest in the Solar System', false, true, 5, 1.00, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Exoplanet orbiting Proxima Centauri, the closest known star to the Sun', false, true, 0, 267000.00, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'Exoplanet discovered by the Kepler space telescope in the habitable zone of its star', false, true, 0, 97.00, 2);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 'One of seven Earth-sized exoplanets orbiting the ultracool dwarf star TRAPPIST-1', false, true, 0, 0.00, 3);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 'Exoplanet orbiting the red dwarf star Gliese 581 within its habitable zone', false, true, 0, 0.00, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the Solar System', true, true, 4500, 0, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Nearest known star to the Sun', false, false, 4600, 4, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Brightest star in the Alpha Centauri system', true, true, 6000, 4, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red supergiant in the constellation Orion', true, false, 8000, 640, 2);
INSERT INTO public.star VALUES (5, 'Sirius', 'Brightest star in the night sky', true, true, 230, 9, 2);
INSERT INTO public.star VALUES (6, 'Glorius', 'A bright pole star in the constellation Ursa Minor', false, false, 50, 433, 3);


--
-- Name: celestial_body_celestial_body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_body_celestial_body_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: celestial_body celestial_body_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_pkey PRIMARY KEY (celestial_body_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


--
-- Name: star stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_pkey PRIMARY KEY (star_id);


--
-- Name: celestial_body u_cb_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT u_cb_name UNIQUE (moon_id);


--
-- Name: moon u_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT u_moon_name UNIQUE (name);


--
-- Name: planet u_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT u_planet_name UNIQUE (name);


--
-- Name: star u_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT u_star_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: celestial_body fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: celestial_body fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT fk_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: celestial_body fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: celestial_body fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

