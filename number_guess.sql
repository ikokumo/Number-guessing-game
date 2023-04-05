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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    games_played integer NOT NULL,
    best_game integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1680712527275', 1, 3);
INSERT INTO public.users VALUES ('user_1680712527274', 1, 3);
INSERT INTO public.users VALUES ('user_1680712556624', 1, 3);
INSERT INTO public.users VALUES ('user_1680712556623', 1, 3);
INSERT INTO public.users VALUES ('user_1680712566154', 1, 3);
INSERT INTO public.users VALUES ('user_1680712566153', 1, 3);
INSERT INTO public.users VALUES ('user_1680713131897', 1, 4);
INSERT INTO public.users VALUES ('user_1680713131896', 1, 4);
INSERT INTO public.users VALUES ('user_1680713299941', 1, 4);
INSERT INTO public.users VALUES ('user_1680713299940', 1, 4);
INSERT INTO public.users VALUES ('Koks', 2, 3);
INSERT INTO public.users VALUES ('user_1680713411553', 2, 4);
INSERT INTO public.users VALUES ('user_1680713411554', 5, 4);
INSERT INTO public.users VALUES ('user_1680713421349', 2, 4);
INSERT INTO public.users VALUES ('user_1680713421350', 5, 4);
INSERT INTO public.users VALUES ('user_1680713425344', 2, 4);
INSERT INTO public.users VALUES ('user_1680713425345', 5, 4);
INSERT INTO public.users VALUES ('user_1680714056168', 2, 3);
INSERT INTO public.users VALUES ('user_1680714056169', 4, 3);
INSERT INTO public.users VALUES ('user_1680714061102', 2, 3);
INSERT INTO public.users VALUES ('user_1680714061103', 5, 2);
INSERT INTO public.users VALUES ('user_1680714070178', 1, 3);
INSERT INTO public.users VALUES ('user_1680714070179', 2, 3);
INSERT INTO public.users VALUES ('user_1680714077290', 1, 4);
INSERT INTO public.users VALUES ('user_1680714077289', 1, 3);
INSERT INTO public.users VALUES ('user_1680714081261', 2, 3);
INSERT INTO public.users VALUES ('user_1680714081262', 4, 2);
INSERT INTO public.users VALUES ('Ishaq', 6, 1);
INSERT INTO public.users VALUES ('user_1680714132006', 2, 3);
INSERT INTO public.users VALUES ('user_1680714132007', 5, 1);
INSERT INTO public.users VALUES ('user_1680714147395', 2, 3);
INSERT INTO public.users VALUES ('user_1680714147396', 5, 2);
INSERT INTO public.users VALUES ('user_1680714152736', 2, 2);
INSERT INTO public.users VALUES ('user_1680714152737', 5, 3);
INSERT INTO public.users VALUES ('user_1680714243362', 2, 633);
INSERT INTO public.users VALUES ('user_1680714243363', 5, 29);


--
-- PostgreSQL database dump complete
--

