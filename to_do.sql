--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.8
-- Dumped by pg_dump version 9.5.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: michira
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE categories OWNER TO michira;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: michira
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO michira;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michira
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: tasks; Type: TABLE; Schema: public; Owner: michira
--

CREATE TABLE tasks (
    id integer NOT NULL,
    description character varying,
    categoryid integer
);


ALTER TABLE tasks OWNER TO michira;

--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: michira
--

CREATE SEQUENCE tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tasks_id_seq OWNER TO michira;

--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: michira
--

ALTER SEQUENCE tasks_id_seq OWNED BY tasks.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: michira
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: michira
--

ALTER TABLE ONLY tasks ALTER COLUMN id SET DEFAULT nextval('tasks_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: michira
--

COPY categories (id, name) FROM stdin;
1	Wanyore
2	Wazito
3	Morans
4	Bantu Dragon
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michira
--

SELECT pg_catalog.setval('categories_id_seq', 4, true);


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: michira
--

COPY tasks (id, description, categoryid) FROM stdin;
1	Buy groceries	1
2	Mow the lawn	2
3	Buy groceries	1
4	Plan for the Vacation.	2
\.


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: michira
--

SELECT pg_catalog.setval('tasks_id_seq', 5, true);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: michira
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: michira
--

ALTER TABLE ONLY tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

