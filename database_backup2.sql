--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "GLai";

--
-- Name: divisions; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.divisions (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.divisions OWNER TO "GLai";

--
-- Name: divisions_id_seq; Type: SEQUENCE; Schema: public; Owner: GLai
--

CREATE SEQUENCE public.divisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.divisions_id_seq OWNER TO "GLai";

--
-- Name: divisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: GLai
--

ALTER SEQUENCE public.divisions_id_seq OWNED BY public.divisions.id;


--
-- Name: employee_projects; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.employee_projects (
    id bigint NOT NULL,
    project_id bigint,
    employee_id bigint
);


ALTER TABLE public.employee_projects OWNER TO "GLai";

--
-- Name: employee_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: GLai
--

CREATE SEQUENCE public.employee_projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_projects_id_seq OWNER TO "GLai";

--
-- Name: employee_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: GLai
--

ALTER SEQUENCE public.employee_projects_id_seq OWNED BY public.employee_projects.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.employees (
    id bigint NOT NULL,
    name character varying,
    "position" character varying,
    division_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.employees OWNER TO "GLai";

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: GLai
--

CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO "GLai";

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: GLai
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    name character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.projects OWNER TO "GLai";

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: GLai
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO "GLai";

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: GLai
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "GLai";

--
-- Name: divisions id; Type: DEFAULT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.divisions ALTER COLUMN id SET DEFAULT nextval('public.divisions_id_seq'::regclass);


--
-- Name: employee_projects id; Type: DEFAULT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.employee_projects ALTER COLUMN id SET DEFAULT nextval('public.employee_projects_id_seq'::regclass);


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-07 16:24:34.925944	2019-08-07 16:24:34.925944
\.


--
-- Data for Name: divisions; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.divisions (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: employee_projects; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.employee_projects (id, project_id, employee_id) FROM stdin;
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.employees (id, name, "position", division_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.projects (id, name, description, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.schema_migrations (version) FROM stdin;
20190807162045
20190807164233
20190807164655
20190807223311
\.


--
-- Name: divisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: GLai
--

SELECT pg_catalog.setval('public.divisions_id_seq', 16, true);


--
-- Name: employee_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: GLai
--

SELECT pg_catalog.setval('public.employee_projects_id_seq', 1, false);


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: GLai
--

SELECT pg_catalog.setval('public.employees_id_seq', 21, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: GLai
--

SELECT pg_catalog.setval('public.projects_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: divisions divisions_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT divisions_pkey PRIMARY KEY (id);


--
-- Name: employee_projects employee_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.employee_projects
    ADD CONSTRAINT employee_projects_pkey PRIMARY KEY (id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_employee_projects_on_employee_id; Type: INDEX; Schema: public; Owner: GLai
--

CREATE INDEX index_employee_projects_on_employee_id ON public.employee_projects USING btree (employee_id);


--
-- Name: index_employee_projects_on_project_id; Type: INDEX; Schema: public; Owner: GLai
--

CREATE INDEX index_employee_projects_on_project_id ON public.employee_projects USING btree (project_id);


--
-- Name: employees fk_rails_550e0790c5; Type: FK CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_550e0790c5 FOREIGN KEY (division_id) REFERENCES public.divisions(id);


--
-- PostgreSQL database dump complete
--

