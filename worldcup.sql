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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (193, 2018, 'Final', 637, 638, 2, 4);
INSERT INTO public.games VALUES (194, 2018, 'Third Place', 639, 640, 0, 2);
INSERT INTO public.games VALUES (195, 2018, 'Semi-Final', 638, 640, 1, 2);
INSERT INTO public.games VALUES (196, 2018, 'Semi-Final', 637, 639, 0, 1);
INSERT INTO public.games VALUES (197, 2018, 'Quarter-Final', 638, 641, 2, 3);
INSERT INTO public.games VALUES (198, 2018, 'Quarter-Final', 640, 642, 0, 2);
INSERT INTO public.games VALUES (199, 2018, 'Quarter-Final', 639, 643, 1, 2);
INSERT INTO public.games VALUES (200, 2018, 'Quarter-Final', 637, 644, 0, 2);
INSERT INTO public.games VALUES (201, 2018, 'Eighth-Final', 640, 645, 1, 2);
INSERT INTO public.games VALUES (202, 2018, 'Eighth-Final', 642, 646, 0, 1);
INSERT INTO public.games VALUES (203, 2018, 'Eighth-Final', 639, 647, 2, 3);
INSERT INTO public.games VALUES (204, 2018, 'Eighth-Final', 643, 648, 0, 2);
INSERT INTO public.games VALUES (205, 2018, 'Eighth-Final', 638, 649, 1, 2);
INSERT INTO public.games VALUES (206, 2018, 'Eighth-Final', 641, 650, 1, 2);
INSERT INTO public.games VALUES (207, 2018, 'Eighth-Final', 644, 651, 1, 2);
INSERT INTO public.games VALUES (208, 2018, 'Eighth-Final', 637, 652, 3, 4);
INSERT INTO public.games VALUES (209, 2014, 'Final', 653, 652, 0, 1);
INSERT INTO public.games VALUES (210, 2014, 'Third Place', 654, 643, 0, 3);
INSERT INTO public.games VALUES (211, 2014, 'Semi-Final', 652, 654, 0, 1);
INSERT INTO public.games VALUES (212, 2014, 'Semi-Final', 653, 643, 1, 7);
INSERT INTO public.games VALUES (213, 2014, 'Quarter-Final', 654, 655, 0, 1);
INSERT INTO public.games VALUES (214, 2014, 'Quarter-Final', 652, 639, 0, 1);
INSERT INTO public.games VALUES (215, 2014, 'Quarter-Final', 643, 645, 1, 2);
INSERT INTO public.games VALUES (216, 2014, 'Quarter-Final', 653, 637, 0, 1);
INSERT INTO public.games VALUES (217, 2014, 'Eighth-Final', 643, 656, 1, 2);
INSERT INTO public.games VALUES (218, 2014, 'Eighth-Final', 645, 644, 0, 2);
INSERT INTO public.games VALUES (219, 2014, 'Eighth-Final', 637, 657, 0, 2);
INSERT INTO public.games VALUES (220, 2014, 'Eighth-Final', 653, 658, 1, 2);
INSERT INTO public.games VALUES (221, 2014, 'Eighth-Final', 654, 648, 1, 2);
INSERT INTO public.games VALUES (222, 2014, 'Eighth-Final', 655, 659, 1, 2);
INSERT INTO public.games VALUES (223, 2014, 'Eighth-Final', 652, 646, 0, 1);
INSERT INTO public.games VALUES (224, 2014, 'Eighth-Final', 639, 660, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (637, 'France');
INSERT INTO public.teams VALUES (638, 'Croatia');
INSERT INTO public.teams VALUES (639, 'Belgium');
INSERT INTO public.teams VALUES (640, 'England');
INSERT INTO public.teams VALUES (641, 'Russia');
INSERT INTO public.teams VALUES (642, 'Sweden');
INSERT INTO public.teams VALUES (643, 'Brazil');
INSERT INTO public.teams VALUES (644, 'Uruguay');
INSERT INTO public.teams VALUES (645, 'Colombia');
INSERT INTO public.teams VALUES (646, 'Switzerland');
INSERT INTO public.teams VALUES (647, 'Japan');
INSERT INTO public.teams VALUES (648, 'Mexico');
INSERT INTO public.teams VALUES (649, 'Denmark');
INSERT INTO public.teams VALUES (650, 'Spain');
INSERT INTO public.teams VALUES (651, 'Portugal');
INSERT INTO public.teams VALUES (652, 'Argentina');
INSERT INTO public.teams VALUES (653, 'Germany');
INSERT INTO public.teams VALUES (654, 'Netherlands');
INSERT INTO public.teams VALUES (655, 'Costa Rica');
INSERT INTO public.teams VALUES (656, 'Chile');
INSERT INTO public.teams VALUES (657, 'Nigeria');
INSERT INTO public.teams VALUES (658, 'Algeria');
INSERT INTO public.teams VALUES (659, 'Greece');
INSERT INTO public.teams VALUES (660, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 224, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 660, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

