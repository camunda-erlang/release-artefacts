--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg90+1)
-- Dumped by pg_dump version 12.2 (Debian 12.2-2.pgdg90+1)

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

--
-- Name: service_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.service_type AS ENUM (
    'subscription',
    'on-demand'
);


ALTER TYPE public.service_type OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: device_blacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.device_blacklist (
    id integer NOT NULL,
    service_id integer NOT NULL,
    model_id integer NOT NULL
);


ALTER TABLE public.device_blacklist OWNER TO postgres;

--
-- Name: device_blacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.device_blacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.device_blacklist_id_seq OWNER TO postgres;

--
-- Name: device_blacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.device_blacklist_id_seq OWNED BY public.device_blacklist.id;


--
-- Name: device_model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.device_model (
    id integer NOT NULL,
    model_code character(20) NOT NULL
);


ALTER TABLE public.device_model OWNER TO postgres;

--
-- Name: device_model_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.device_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.device_model_id_seq OWNER TO postgres;

--
-- Name: device_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.device_model_id_seq OWNED BY public.device_model.id;


--
-- Name: global_charging_blacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.global_charging_blacklist (
    id integer NOT NULL,
    msisdn character(20) NOT NULL
);


ALTER TABLE public.global_charging_blacklist OWNER TO postgres;

--
-- Name: global_charging_blacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.global_charging_blacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.global_charging_blacklist_id_seq OWNER TO postgres;

--
-- Name: global_charging_blacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.global_charging_blacklist_id_seq OWNED BY public.global_charging_blacklist.id;


--
-- Name: global_subscription_blacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.global_subscription_blacklist (
    id integer NOT NULL,
    msisdn character(20) NOT NULL
);


ALTER TABLE public.global_subscription_blacklist OWNER TO postgres;

--
-- Name: global_subscription_blacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.global_subscription_blacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.global_subscription_blacklist_id_seq OWNER TO postgres;

--
-- Name: global_subscription_blacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.global_subscription_blacklist_id_seq OWNED BY public.global_subscription_blacklist.id;


--
-- Name: group_blacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_blacklist (
    id integer NOT NULL,
    name character(20) NOT NULL
);


ALTER TABLE public.group_blacklist OWNER TO postgres;

--
-- Name: group_blacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_blacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_blacklist_id_seq OWNER TO postgres;

--
-- Name: group_blacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_blacklist_id_seq OWNED BY public.group_blacklist.id;


--
-- Name: group_whitelist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_whitelist (
    id integer NOT NULL,
    name character(20) NOT NULL
);


ALTER TABLE public.group_whitelist OWNER TO postgres;

--
-- Name: group_whitelist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_whitelist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_whitelist_id_seq OWNER TO postgres;

--
-- Name: group_whitelist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_whitelist_id_seq OWNED BY public.group_whitelist.id;


--
-- Name: msisdn_group_blacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.msisdn_group_blacklist (
    id integer NOT NULL,
    msisdn character(20) NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.msisdn_group_blacklist OWNER TO postgres;

--
-- Name: msisdn_group_blacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.msisdn_group_blacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.msisdn_group_blacklist_id_seq OWNER TO postgres;

--
-- Name: msisdn_group_blacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.msisdn_group_blacklist_id_seq OWNED BY public.msisdn_group_blacklist.id;


--
-- Name: msisdn_group_whitelist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.msisdn_group_whitelist (
    id integer NOT NULL,
    msisdn character(20) NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.msisdn_group_whitelist OWNER TO postgres;

--
-- Name: msisdn_group_whitelist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.msisdn_group_whitelist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.msisdn_group_whitelist_id_seq OWNER TO postgres;

--
-- Name: msisdn_group_whitelist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.msisdn_group_whitelist_id_seq OWNED BY public.msisdn_group_whitelist.id;


--
-- Name: partner_dnd; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partner_dnd (
    id integer NOT NULL,
    msisdn character(20) NOT NULL,
    partner_id integer NOT NULL
);


ALTER TABLE public.partner_dnd OWNER TO postgres;

--
-- Name: partner_dnd_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.partner_dnd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_dnd_id_seq OWNER TO postgres;

--
-- Name: partner_dnd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.partner_dnd_id_seq OWNED BY public.partner_dnd.id;


--
-- Name: service_blacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_blacklist (
    id integer NOT NULL,
    service_id integer NOT NULL,
    msisdn character(20) NOT NULL
);


ALTER TABLE public.service_blacklist OWNER TO postgres;

--
-- Name: service_blacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.service_blacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_blacklist_id_seq OWNER TO postgres;

--
-- Name: service_blacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.service_blacklist_id_seq OWNED BY public.service_blacklist.id;


--
-- Name: service_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_details (
    id integer NOT NULL,
    service_code character(50) NOT NULL,
    partner_id integer NOT NULL,
    name character(50) NOT NULL,
    managed boolean NOT NULL,
    global_service_whitelist boolean NOT NULL,
    enable_service_whitelist boolean NOT NULL,
    global_service_blacklist boolean NOT NULL,
    enable_service_blacklist boolean NOT NULL,
    enable_global_subscription_blacklist boolean NOT NULL,
    enable_global_charging_blacklist boolean NOT NULL,
    service_type public.service_type NOT NULL
);


ALTER TABLE public.service_details OWNER TO postgres;

--
-- Name: service_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.service_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_details_id_seq OWNER TO postgres;

--
-- Name: service_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.service_details_id_seq OWNED BY public.service_details.id;


--
-- Name: service_group_blacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_group_blacklist (
    id integer NOT NULL,
    service_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.service_group_blacklist OWNER TO postgres;

--
-- Name: service_group_blacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.service_group_blacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_group_blacklist_id_seq OWNER TO postgres;

--
-- Name: service_group_blacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.service_group_blacklist_id_seq OWNED BY public.service_group_blacklist.id;


--
-- Name: service_group_whitelist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_group_whitelist (
    id integer NOT NULL,
    service_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.service_group_whitelist OWNER TO postgres;

--
-- Name: service_group_whitelist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.service_group_whitelist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_group_whitelist_id_seq OWNER TO postgres;

--
-- Name: service_group_whitelist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.service_group_whitelist_id_seq OWNED BY public.service_group_whitelist.id;


--
-- Name: service_whitelist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_whitelist (
    id integer NOT NULL,
    service_id integer NOT NULL,
    msisdn character(20) NOT NULL
);


ALTER TABLE public.service_whitelist OWNER TO postgres;

--
-- Name: service_whitelist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.service_whitelist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_whitelist_id_seq OWNER TO postgres;

--
-- Name: service_whitelist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.service_whitelist_id_seq OWNED BY public.service_whitelist.id;


--
-- Name: device_blacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device_blacklist ALTER COLUMN id SET DEFAULT nextval('public.device_blacklist_id_seq'::regclass);


--
-- Name: device_model id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device_model ALTER COLUMN id SET DEFAULT nextval('public.device_model_id_seq'::regclass);


--
-- Name: global_charging_blacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.global_charging_blacklist ALTER COLUMN id SET DEFAULT nextval('public.global_charging_blacklist_id_seq'::regclass);


--
-- Name: global_subscription_blacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.global_subscription_blacklist ALTER COLUMN id SET DEFAULT nextval('public.global_subscription_blacklist_id_seq'::regclass);


--
-- Name: group_blacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_blacklist ALTER COLUMN id SET DEFAULT nextval('public.group_blacklist_id_seq'::regclass);


--
-- Name: group_whitelist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_whitelist ALTER COLUMN id SET DEFAULT nextval('public.group_whitelist_id_seq'::regclass);


--
-- Name: msisdn_group_blacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msisdn_group_blacklist ALTER COLUMN id SET DEFAULT nextval('public.msisdn_group_blacklist_id_seq'::regclass);


--
-- Name: msisdn_group_whitelist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msisdn_group_whitelist ALTER COLUMN id SET DEFAULT nextval('public.msisdn_group_whitelist_id_seq'::regclass);


--
-- Name: partner_dnd id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner_dnd ALTER COLUMN id SET DEFAULT nextval('public.partner_dnd_id_seq'::regclass);


--
-- Name: service_blacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_blacklist ALTER COLUMN id SET DEFAULT nextval('public.service_blacklist_id_seq'::regclass);


--
-- Name: service_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_details ALTER COLUMN id SET DEFAULT nextval('public.service_details_id_seq'::regclass);


--
-- Name: service_group_blacklist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_group_blacklist ALTER COLUMN id SET DEFAULT nextval('public.service_group_blacklist_id_seq'::regclass);


--
-- Name: service_group_whitelist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_group_whitelist ALTER COLUMN id SET DEFAULT nextval('public.service_group_whitelist_id_seq'::regclass);


--
-- Name: service_whitelist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_whitelist ALTER COLUMN id SET DEFAULT nextval('public.service_whitelist_id_seq'::regclass);


--
-- Data for Name: device_blacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.device_blacklist (id, service_id, model_id) FROM stdin;
1	3	3
\.


--
-- Data for Name: device_model; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.device_model (id, model_code) FROM stdin;
1	nova3E              
2	nova31              
3	nova3i              
4	p20                 
5	p30                 
\.


--
-- Data for Name: global_charging_blacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.global_charging_blacklist (id, msisdn) FROM stdin;
1	97733554421         
\.


--
-- Data for Name: global_subscription_blacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.global_subscription_blacklist (id, msisdn) FROM stdin;
1	97733554421         
\.


--
-- Data for Name: group_blacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_blacklist (id, name) FROM stdin;
1	BLG1                
2	BLG2                
3	BLG3                
4	BLG4                
\.


--
-- Data for Name: group_whitelist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_whitelist (id, name) FROM stdin;
1	WLG1                
2	WLG2                
3	WLG3                
4	WLG4                
\.


--
-- Data for Name: msisdn_group_blacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.msisdn_group_blacklist (id, msisdn, group_id) FROM stdin;
1	97733554421         	1
2	97733554421         	2
\.


--
-- Data for Name: msisdn_group_whitelist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.msisdn_group_whitelist (id, msisdn, group_id) FROM stdin;
1	97733554421         	1
2	97733554421         	2
\.


--
-- Data for Name: partner_dnd; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partner_dnd (id, msisdn, partner_id) FROM stdin;
1	97733554421         	11
\.


--
-- Data for Name: service_blacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_blacklist (id, service_id, msisdn) FROM stdin;
1	7	97733554421         
\.


--
-- Data for Name: service_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_details (id, service_code, partner_id, name, managed, global_service_whitelist, enable_service_whitelist, global_service_blacklist, enable_service_blacklist, enable_global_subscription_blacklist, enable_global_charging_blacklist, service_type) FROM stdin;
1	wn100                                             	10	service100                                        	f	f	t	f	t	t	t	on-demand
2	wn101                                             	11	service101                                        	t	f	t	f	t	t	t	on-demand
4	wn103                                             	10	service103                                        	t	t	t	f	t	t	t	on-demand
5	wn104                                             	10	service104                                        	t	f	t	t	t	t	t	on-demand
6	wn105                                             	10	service105                                        	t	f	t	f	t	t	t	on-demand
7	wn106                                             	10	service106                                        	t	f	t	f	t	t	t	on-demand
9	wn108                                             	10	service108                                        	t	f	t	f	t	t	t	on-demand
10	wn109                                             	10	service109                                        	t	f	t	f	t	f	t	on-demand
11	wn110                                             	10	service110                                        	t	f	t	f	t	t	t	on-demand
3	wn102                                             	10	service102                                        	t	f	t	f	t	f	f	on-demand
8	wn107                                             	10	service107                                        	t	f	t	f	t	t	t	on-demand
\.


--
-- Data for Name: service_group_blacklist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_group_blacklist (id, service_id, group_id) FROM stdin;
1	9	1
2	9	2
3	9	3
\.


--
-- Data for Name: service_group_whitelist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_group_whitelist (id, service_id, group_id) FROM stdin;
1	8	1
2	8	2
3	8	3
\.


--
-- Data for Name: service_whitelist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_whitelist (id, service_id, msisdn) FROM stdin;
1	6	97733554421         
\.


--
-- Name: device_blacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.device_blacklist_id_seq', 1, true);


--
-- Name: device_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.device_model_id_seq', 5, true);


--
-- Name: global_charging_blacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.global_charging_blacklist_id_seq', 1, true);


--
-- Name: global_subscription_blacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.global_subscription_blacklist_id_seq', 1, true);


--
-- Name: group_blacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_blacklist_id_seq', 4, true);


--
-- Name: group_whitelist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_whitelist_id_seq', 4, true);


--
-- Name: msisdn_group_blacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.msisdn_group_blacklist_id_seq', 2, true);


--
-- Name: msisdn_group_whitelist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.msisdn_group_whitelist_id_seq', 2, true);


--
-- Name: partner_dnd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partner_dnd_id_seq', 1, true);


--
-- Name: service_blacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_blacklist_id_seq', 1, true);


--
-- Name: service_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_details_id_seq', 11, true);


--
-- Name: service_group_blacklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_group_blacklist_id_seq', 3, true);


--
-- Name: service_group_whitelist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_group_whitelist_id_seq', 3, true);


--
-- Name: service_whitelist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_whitelist_id_seq', 1, true);


--
-- Name: device_blacklist device_blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device_blacklist
    ADD CONSTRAINT device_blacklist_pkey PRIMARY KEY (id);


--
-- Name: device_model device_model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device_model
    ADD CONSTRAINT device_model_pkey PRIMARY KEY (id);


--
-- Name: global_charging_blacklist global_charging_blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.global_charging_blacklist
    ADD CONSTRAINT global_charging_blacklist_pkey PRIMARY KEY (id);


--
-- Name: global_subscription_blacklist global_subscription_blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.global_subscription_blacklist
    ADD CONSTRAINT global_subscription_blacklist_pkey PRIMARY KEY (id);


--
-- Name: group_blacklist group_blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_blacklist
    ADD CONSTRAINT group_blacklist_pkey PRIMARY KEY (id);


--
-- Name: group_whitelist group_whitelist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_whitelist
    ADD CONSTRAINT group_whitelist_pkey PRIMARY KEY (id);


--
-- Name: msisdn_group_blacklist msisdn_group_blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msisdn_group_blacklist
    ADD CONSTRAINT msisdn_group_blacklist_pkey PRIMARY KEY (id);


--
-- Name: msisdn_group_whitelist msisdn_group_whitelist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msisdn_group_whitelist
    ADD CONSTRAINT msisdn_group_whitelist_pkey PRIMARY KEY (id);


--
-- Name: partner_dnd partner_dnd_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner_dnd
    ADD CONSTRAINT partner_dnd_pkey PRIMARY KEY (id);


--
-- Name: service_blacklist service_blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_blacklist
    ADD CONSTRAINT service_blacklist_pkey PRIMARY KEY (id);


--
-- Name: service_details service_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_details
    ADD CONSTRAINT service_details_pkey PRIMARY KEY (id);


--
-- Name: service_group_blacklist service_group_blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_group_blacklist
    ADD CONSTRAINT service_group_blacklist_pkey PRIMARY KEY (id);


--
-- Name: service_group_whitelist service_group_whitelist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_group_whitelist
    ADD CONSTRAINT service_group_whitelist_pkey PRIMARY KEY (id);


--
-- Name: service_whitelist service_whitelist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_whitelist
    ADD CONSTRAINT service_whitelist_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

