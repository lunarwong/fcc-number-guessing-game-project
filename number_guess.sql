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
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Bravo', NULL, NULL);
INSERT INTO public.users VALUES ('user_1752768930914', 2, 345);
INSERT INTO public.users VALUES ('user_1752768930915', 5, 109);
INSERT INTO public.users VALUES ('user_1752769702960', 2, 393);
INSERT INTO public.users VALUES ('user_1752768948951', 2, 334);
INSERT INTO public.users VALUES ('user_1752769702961', 5, 277);
INSERT INTO public.users VALUES ('user_1752768948952', 5, 173);
INSERT INTO public.users VALUES ('Luna', 2, 5);
INSERT INTO public.users VALUES ('user_1752769953351', 1, 265);
INSERT INTO public.users VALUES ('user_1752769738301', 2, 628);
INSERT INTO public.users VALUES ('user_1752769953351', 1, 265);
INSERT INTO public.users VALUES ('user_1752769261207', 2, 669);
INSERT INTO public.users VALUES ('user_1752769738302', 5, 18);
INSERT INTO public.users VALUES ('user_1752769261208', 5, 87);
INSERT INTO public.users VALUES ('Theo', 1, 2);
INSERT INTO public.users VALUES ('user_1752769323404', 2, 595);
INSERT INTO public.users VALUES ('user_1752770059156', 1, 648);
INSERT INTO public.users VALUES ('user_1752768876681', 2, 555);
INSERT INTO public.users VALUES ('user_1752770059156', 1, 648);
INSERT INTO public.users VALUES ('user_1752769323405', 5, 251);
INSERT INTO public.users VALUES ('user_1752768876682', 5, 374);
INSERT INTO public.users VALUES ('Momo', 3, 11);
INSERT INTO public.users VALUES ('user_1752768896134', 2, 642);
INSERT INTO public.users VALUES ('user_1752769877584', 1, 551);
INSERT INTO public.users VALUES ('user_1752768896135', 5, 118);
INSERT INTO public.users VALUES ('user_1752769877584', 1, 551);
INSERT INTO public.users VALUES ('user_1752769486642', 2, 882);
INSERT INTO public.users VALUES ('user_1752770168738', 1, 347);
INSERT INTO public.users VALUES ('user_1752770168738', 1, 347);
INSERT INTO public.users VALUES ('user_1752769486643', 5, 120);
INSERT INTO public.users VALUES ('user_1752769953352', 1, 391);
INSERT INTO public.users VALUES ('user_1752769953352', 1, 391);
INSERT INTO public.users VALUES ('user_1752769953352', 1, 391);
INSERT INTO public.users VALUES ('user_1752769953352', 1, 391);
INSERT INTO public.users VALUES ('user_1752769953352', 1, 391);
INSERT INTO public.users VALUES ('user_1752769877585', 1, 913);
INSERT INTO public.users VALUES ('user_1752769877585', 1, 913);
INSERT INTO public.users VALUES ('user_1752769877585', 1, 913);
INSERT INTO public.users VALUES ('user_1752769877585', 1, 913);
INSERT INTO public.users VALUES ('user_1752769877585', 1, 913);
INSERT INTO public.users VALUES ('user_1752770059157', 1, 7);
INSERT INTO public.users VALUES ('user_1752769972893', 1, 926);
INSERT INTO public.users VALUES ('user_1752769972893', 1, 926);
INSERT INTO public.users VALUES ('user_1752770059157', 1, 7);
INSERT INTO public.users VALUES ('user_1752770059157', 1, 7);
INSERT INTO public.users VALUES ('user_1752770059157', 1, 7);
INSERT INTO public.users VALUES ('user_1752770059157', 1, 7);
INSERT INTO public.users VALUES ('user_1752770168739', 1, 987);
INSERT INTO public.users VALUES ('user_1752770071591', 1, 20);
INSERT INTO public.users VALUES ('user_1752769972894', 1, 469);
INSERT INTO public.users VALUES ('user_1752769972894', 1, 469);
INSERT INTO public.users VALUES ('user_1752769972894', 1, 469);
INSERT INTO public.users VALUES ('user_1752769972894', 1, 469);
INSERT INTO public.users VALUES ('user_1752769972894', 1, 469);
INSERT INTO public.users VALUES ('user_1752770071591', 1, 20);
INSERT INTO public.users VALUES ('user_1752770168739', 1, 987);
INSERT INTO public.users VALUES ('user_1752770168739', 1, 987);
INSERT INTO public.users VALUES ('user_1752770168739', 1, 987);
INSERT INTO public.users VALUES ('user_1752770168739', 1, 987);
INSERT INTO public.users VALUES ('user_1752770071592', 1, 419);
INSERT INTO public.users VALUES ('user_1752770071592', 1, 419);
INSERT INTO public.users VALUES ('user_1752770071592', 1, 419);
INSERT INTO public.users VALUES ('user_1752770071592', 1, 419);
INSERT INTO public.users VALUES ('user_1752770071592', 1, 419);


--
-- PostgreSQL database dump complete
--

