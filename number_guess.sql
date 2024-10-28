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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    guess_id integer NOT NULL,
    user_id integer,
    guess integer NOT NULL,
    guess_number integer NOT NULL
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_guess_id_seq OWNED BY public.guesses.guess_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: guesses guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses ALTER COLUMN guess_id SET DEFAULT nextval('public.guesses_guess_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.guesses (guess_id, user_id, guess, guess_number) FROM stdin;
1	12	103	104
2	12	494	495
3	13	285	286
4	13	895	896
5	12	755	758
6	12	662	664
7	12	410	411
8	14	756	9
9	15	435	436
10	15	51	52
11	16	501	502
12	16	89	90
13	15	698	701
14	15	196	198
15	15	178	179
16	17	552	553
17	17	567	568
18	18	52	53
19	18	141	142
20	17	457	460
21	17	69	71
22	17	149	150
23	11	213	11
24	19	252	253
25	19	722	723
26	20	560	561
27	20	222	223
28	19	516	519
29	19	492	494
30	19	345	346
31	21	623	624
32	21	971	972
33	22	918	919
34	22	140	141
35	21	854	857
36	21	366	368
37	21	921	922
38	23	683	684
39	23	39	40
40	24	242	243
41	24	635	636
42	23	746	749
43	23	582	584
44	23	964	965
45	25	347	348
46	25	577	578
47	26	495	496
48	26	367	368
49	25	701	704
50	25	450	452
51	25	828	829
52	27	74	75
53	27	330	331
54	28	567	568
55	28	946	947
56	27	645	648
57	27	583	585
58	27	533	534
59	29	173	174
60	29	235	236
61	30	632	633
62	30	53	54
63	29	804	807
64	29	454	456
65	29	172	173
66	11	278	12
67	31	421	422
68	31	324	325
69	32	181	182
70	32	808	809
71	31	496	499
72	31	593	595
73	31	889	890
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.users (user_id, username, games_played, best_game) FROM stdin;
1	user_1730154458581	0	\N
2	user_1730154458580	0	\N
3	user_1730155832542	0	\N
4	user_1730155832541	0	\N
5	user_1730155857989	0	\N
6	user_1730155857988	0	\N
7	user_1730155982635	0	\N
8	user_1730155982634	0	\N
9	user_1730155985575	0	\N
10	user_1730155985574	0	\N
13	user_1730156787469	2	\N
12	user_1730156787470	5	\N
14		1	\N
26	user_1730157884434	2	368
25	user_1730157884435	5	348
16	user_1730157393927	2	90
15	user_1730157393928	5	52
18	user_1730157398314	2	53
28	user_1730158088494	2	568
27	user_1730158088495	5	75
17	user_1730157398315	5	71
20	user_1730157535813	2	223
30	user_1730158167054	2	54
19	user_1730157535814	5	253
29	user_1730158167055	5	173
11	Ben	2	11
22	user_1730157595293	2	141
21	user_1730157595294	5	368
32	user_1730158293293	2	182
24	user_1730157685700	2	243
31	user_1730158293294	5	325
23	user_1730157685701	5	40
\.


--
-- Name: guesses_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_guess_id_seq', 73, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);


--
-- Name: guesses guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (guess_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: guesses guesses_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

