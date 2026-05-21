--
-- PostgreSQL database dump
--

\restrict 6Qo69z6ghSV9nZf6eaWaNbs9qGbuQx5mFVLSyr9AP7Jk57dvWVCEfcmd57dhbkh

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: broadway; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.broadway (
    id integer NOT NULL,
    nome text NOT NULL,
    dia date,
    indicacao text NOT NULL
);


ALTER TABLE public.broadway OWNER TO postgres;

--
-- Name: broadway_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.broadway_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.broadway_id_seq OWNER TO postgres;

--
-- Name: broadway_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.broadway_id_seq OWNED BY public.broadway.id;


--
-- Name: broadway id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.broadway ALTER COLUMN id SET DEFAULT nextval('public.broadway_id_seq'::regclass);


--
-- Data for Name: broadway; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.broadway (id, nome, dia, indicacao) FROM stdin;
1	Hamilton	2026-10-19	+10
2	Wicked	2026-07-20	+8
3	Chicago	2026-08-16	+13
\.


--
-- Name: broadway_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.broadway_id_seq', 3, true);


--
-- Name: broadway broadway_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.broadway
    ADD CONSTRAINT broadway_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict 6Qo69z6ghSV9nZf6eaWaNbs9qGbuQx5mFVLSyr9AP7Jk57dvWVCEfcmd57dhbkh

