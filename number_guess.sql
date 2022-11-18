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
    username character varying(22),
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1668626556098', 2, 0);
INSERT INTO public.users VALUES ('user_1668626556099', 5, 0);
INSERT INTO public.users VALUES ('user_1668626859479', 2, 0);
INSERT INTO public.users VALUES ('user_1668632470353', 2, 0);
INSERT INTO public.users VALUES ('user_1668626859480', 5, 0);
INSERT INTO public.users VALUES ('user_1668629846458', 2, 326);
INSERT INTO public.users VALUES ('user_1668626991056', 2, 0);
INSERT INTO public.users VALUES ('user_1668626991057', 5, 0);
INSERT INTO public.users VALUES ('user_1668632470354', 5, 0);
INSERT INTO public.users VALUES ('user_1668627052758', 2, 0);
INSERT INTO public.users VALUES ('user_1668629846459', 5, 157);
INSERT INTO public.users VALUES ('user_1668627052759', 5, 0);
INSERT INTO public.users VALUES ('NACHO', 2, NULL);
INSERT INTO public.users VALUES ('user_1668667798267', 2, 186);
INSERT INTO public.users VALUES ('kali', 2, 2);
INSERT INTO public.users VALUES ('joa', 4, 2);
INSERT INTO public.users VALUES ('user_1668627528249', 2, 447);
INSERT INTO public.users VALUES ('user_1668669383349', 2, 44);
INSERT INTO public.users VALUES ('user_1668627528250', 5, 374);
INSERT INTO public.users VALUES ('user_1668667798268', 5, 378);
INSERT INTO public.users VALUES ('user_1668630954601', 2, 17);
INSERT INTO public.users VALUES ('user_1668628195103', 2, 266);
INSERT INTO public.users VALUES ('user_1668630954602', 5, 12);
INSERT INTO public.users VALUES ('user_1668628195104', 5, 235);
INSERT INTO public.users VALUES ('user_1668670059367', 1, 236);
INSERT INTO public.users VALUES ('user_1668632881190', 2, 106);
INSERT INTO public.users VALUES ('user_1668628204484', 2, 547);
INSERT INTO public.users VALUES ('user_1668631133311', 2, 994);
INSERT INTO public.users VALUES ('user_1668628204485', 5, 161);
INSERT INTO public.users VALUES ('user_1668632881191', 5, 106);
INSERT INTO public.users VALUES ('user_1668628224027', 2, 626);
INSERT INTO public.users VALUES ('user_1668631133312', 5, 538);
INSERT INTO public.users VALUES ('user_1668628224028', 5, 239);
INSERT INTO public.users VALUES ('user_1668667808373', 2, 183);
INSERT INTO public.users VALUES ('user_1668669383350', 5, 122);
INSERT INTO public.users VALUES ('male', 2, 6);
INSERT INTO public.users VALUES ('emilia', 4, 2);
INSERT INTO public.users VALUES ('gab', 1, 0);
INSERT INTO public.users VALUES ('user_1668667808374', 5, 241);
INSERT INTO public.users VALUES ('kk', 2, 2);
INSERT INTO public.users VALUES ('user_1668632891838', 2, 37);
INSERT INTO public.users VALUES ('clas', 2, 2);
INSERT INTO public.users VALUES ('poi', 1, 0);
INSERT INTO public.users VALUES ('ñlk', 2, 2);
INSERT INTO public.users VALUES ('', 1, 5);
INSERT INTO public.users VALUES ('user_1668632891839', 5, 152);
INSERT INTO public.users VALUES ('user_1668632284554', 2, 147);
INSERT INTO public.users VALUES ('user_1668670059368', 4, 252);
INSERT INTO public.users VALUES ('user_1668632284555', 5, 102);
INSERT INTO public.users VALUES ('user_1668632929371', 2, NULL);
INSERT INTO public.users VALUES ('user_1668632929372', 5, NULL);
INSERT INTO public.users VALUES ('user_1668632300146', 2, 599);
INSERT INTO public.users VALUES ('user_1668632300147', 5, 256);
INSERT INTO public.users VALUES ('user_1668669785694', 2, 629);
INSERT INTO public.users VALUES ('user_1668667825771', 2, 238);
INSERT INTO public.users VALUES ('user_1668632974988', 2, 925);
INSERT INTO public.users VALUES ('user_1668632365119', 2, 665);
INSERT INTO public.users VALUES ('user_1668632974989', 5, 218);
INSERT INTO public.users VALUES ('user_1668632365120', 5, 401);
INSERT INTO public.users VALUES ('user_1668667825772', 5, 361);
INSERT INTO public.users VALUES ('user_1668669785695', 5, 176);
INSERT INTO public.users VALUES ('user_1668632985092', 2, 212);
INSERT INTO public.users VALUES ('user_1668632985093', 5, 123);
INSERT INTO public.users VALUES ('user_1668669060660', 2, 56);
INSERT INTO public.users VALUES ('user_1668633234508', 2, 223);
INSERT INTO public.users VALUES ('user_1668669060661', 5, 223);
INSERT INTO public.users VALUES ('user_1668633234509', 5, 526);
INSERT INTO public.users VALUES ('user_1668669820876', 2, 537);
INSERT INTO public.users VALUES ('user_1668667709657', 2, 197);
INSERT INTO public.users VALUES ('user_1668669151305', 2, 330);
INSERT INTO public.users VALUES ('user_1668667709658', 5, 400);
INSERT INTO public.users VALUES ('user_1668669820877', 5, 258);
INSERT INTO public.users VALUES ('lola', 2, 2);
INSERT INTO public.users VALUES ('user_1668669151306', 5, 168);
INSERT INTO public.users VALUES ('fer', 11, 2);
INSERT INTO public.users VALUES ('clarin', 2, 2);
INSERT INTO public.users VALUES ('user_1668669182274', 2, 560);
INSERT INTO public.users VALUES ('user_1668669182275', 5, 485);
INSERT INTO public.users VALUES ('user_1668669858137', 2, 487);
INSERT INTO public.users VALUES ('user_1668669858138', 5, 258);
INSERT INTO public.users VALUES ('pq', 2, 2);


--
-- PostgreSQL database dump complete
--

