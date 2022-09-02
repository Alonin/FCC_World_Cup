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
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (653, 2018, 'Final', 474, 473, 4, 2);
INSERT INTO public.games VALUES (654, 2018, 'Third Place', 476, 475, 2, 0);
INSERT INTO public.games VALUES (655, 2018, 'Semi-Final', 473, 475, 2, 1);
INSERT INTO public.games VALUES (656, 2018, 'Semi-Final', 474, 476, 1, 0);
INSERT INTO public.games VALUES (657, 2018, 'Quarter-Final', 473, 477, 3, 2);
INSERT INTO public.games VALUES (658, 2018, 'Quarter-Final', 475, 478, 2, 0);
INSERT INTO public.games VALUES (659, 2018, 'Quarter-Final', 476, 479, 2, 1);
INSERT INTO public.games VALUES (660, 2018, 'Quarter-Final', 474, 480, 2, 0);
INSERT INTO public.games VALUES (661, 2018, 'Eighth-Final', 475, 481, 2, 1);
INSERT INTO public.games VALUES (662, 2018, 'Eighth-Final', 478, 482, 1, 0);
INSERT INTO public.games VALUES (663, 2018, 'Eighth-Final', 476, 483, 3, 2);
INSERT INTO public.games VALUES (664, 2018, 'Eighth-Final', 479, 484, 2, 0);
INSERT INTO public.games VALUES (665, 2018, 'Eighth-Final', 473, 485, 2, 1);
INSERT INTO public.games VALUES (666, 2018, 'Eighth-Final', 477, 486, 2, 1);
INSERT INTO public.games VALUES (667, 2018, 'Eighth-Final', 480, 487, 2, 1);
INSERT INTO public.games VALUES (668, 2018, 'Eighth-Final', 474, 488, 4, 3);
INSERT INTO public.games VALUES (669, 2014, 'Final', 489, 488, 1, 0);
INSERT INTO public.games VALUES (670, 2014, 'Third Place', 490, 479, 3, 0);
INSERT INTO public.games VALUES (671, 2014, 'Semi-Final', 488, 490, 1, 0);
INSERT INTO public.games VALUES (672, 2014, 'Semi-Final', 489, 479, 7, 1);
INSERT INTO public.games VALUES (673, 2014, 'Quarter-Final', 490, 491, 1, 0);
INSERT INTO public.games VALUES (674, 2014, 'Quarter-Final', 488, 476, 1, 0);
INSERT INTO public.games VALUES (675, 2014, 'Quarter-Final', 479, 481, 2, 1);
INSERT INTO public.games VALUES (676, 2014, 'Quarter-Final', 489, 474, 1, 0);
INSERT INTO public.games VALUES (677, 2014, 'Eighth-Final', 479, 492, 2, 1);
INSERT INTO public.games VALUES (678, 2014, 'Eighth-Final', 481, 480, 2, 0);
INSERT INTO public.games VALUES (679, 2014, 'Eighth-Final', 474, 493, 2, 0);
INSERT INTO public.games VALUES (680, 2014, 'Eighth-Final', 489, 494, 2, 1);
INSERT INTO public.games VALUES (681, 2014, 'Eighth-Final', 490, 484, 2, 1);
INSERT INTO public.games VALUES (682, 2014, 'Eighth-Final', 491, 495, 2, 1);
INSERT INTO public.games VALUES (683, 2014, 'Eighth-Final', 488, 482, 1, 0);
INSERT INTO public.games VALUES (684, 2014, 'Eighth-Final', 476, 496, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (473, 'Croatia');
INSERT INTO public.teams VALUES (474, 'France');
INSERT INTO public.teams VALUES (475, 'England');
INSERT INTO public.teams VALUES (476, 'Belgium');
INSERT INTO public.teams VALUES (477, 'Russia');
INSERT INTO public.teams VALUES (478, 'Sweden');
INSERT INTO public.teams VALUES (479, 'Brazil');
INSERT INTO public.teams VALUES (480, 'Uruguay');
INSERT INTO public.teams VALUES (481, 'Colombia');
INSERT INTO public.teams VALUES (482, 'Switzerland');
INSERT INTO public.teams VALUES (483, 'Japan');
INSERT INTO public.teams VALUES (484, 'Mexico');
INSERT INTO public.teams VALUES (485, 'Denmark');
INSERT INTO public.teams VALUES (486, 'Spain');
INSERT INTO public.teams VALUES (487, 'Portugal');
INSERT INTO public.teams VALUES (488, 'Argentina');
INSERT INTO public.teams VALUES (489, 'Germany');
INSERT INTO public.teams VALUES (490, 'Netherlands');
INSERT INTO public.teams VALUES (491, 'Costa Rica');
INSERT INTO public.teams VALUES (492, 'Chile');
INSERT INTO public.teams VALUES (493, 'Nigeria');
INSERT INTO public.teams VALUES (494, 'Algeria');
INSERT INTO public.teams VALUES (495, 'Greece');
INSERT INTO public.teams VALUES (496, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 684, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 496, true);


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

