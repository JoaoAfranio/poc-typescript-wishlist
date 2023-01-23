--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-01-23 17:22:22

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
-- TOC entry 215 (class 1259 OID 42007)
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id integer NOT NULL,
    name text NOT NULL,
    plataform text NOT NULL,
    genre text NOT NULL,
    acquired boolean DEFAULT false NOT NULL,
    rating integer,
    CONSTRAINT games_rating_check CHECK (((rating >= 1) AND (rating <= 10)))
);


ALTER TABLE public.games OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 42006)
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO postgres;

--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 214
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- TOC entry 3173 (class 2604 OID 42010)
-- Name: games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- TOC entry 3321 (class 0 OID 42007)
-- Dependencies: 215
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (id, name, plataform, genre, acquired, rating) FROM stdin;
3	No Man's Sky	Steam	Survival	f	\N
4	No Man's Sky	Steam	Survival	f	\N
1	Settlement Survival	Steam	Strategy	t	6
5	No Man's Sky	Steam	Adm	f	\N
7	No Man's Sky	Steam	Adm	f	\N
\.


--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 214
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_id_seq', 7, true);


--
-- TOC entry 3177 (class 2606 OID 42016)
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


-- Completed on 2023-01-23 17:22:22

--
-- PostgreSQL database dump complete
--

