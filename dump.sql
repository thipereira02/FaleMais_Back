--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: codes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.codes (
    id integer NOT NULL,
    code character varying(2) NOT NULL
);


--
-- Name: codes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.codes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.codes_id_seq OWNED BY public.codes.id;


--
-- Name: oldValues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."oldValues" (
    id integer NOT NULL,
    "originId" integer NOT NULL,
    "destinationId" integer NOT NULL,
    "oldPrice" numeric NOT NULL,
    "newPrice" numeric NOT NULL
);


--
-- Name: oldValues_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."oldValues_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oldValues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."oldValues_id_seq" OWNED BY public."oldValues".id;


--
-- Name: plans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.plans (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL
);


--
-- Name: plans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.plans_id_seq OWNED BY public.plans.id;


--
-- Name: simulations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.simulations (
    id integer NOT NULL,
    "originId" integer NOT NULL,
    "destinationId" integer NOT NULL,
    minutes integer NOT NULL,
    "planId" integer NOT NULL,
    "withoutPlan" numeric NOT NULL,
    "withPlan" numeric NOT NULL,
    economy numeric NOT NULL
);


--
-- Name: simulations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.simulations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: simulations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.simulations_id_seq OWNED BY public.simulations.id;


--
-- Name: codes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.codes ALTER COLUMN id SET DEFAULT nextval('public.codes_id_seq'::regclass);


--
-- Name: oldValues id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."oldValues" ALTER COLUMN id SET DEFAULT nextval('public."oldValues_id_seq"'::regclass);


--
-- Name: plans id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plans ALTER COLUMN id SET DEFAULT nextval('public.plans_id_seq'::regclass);


--
-- Name: simulations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.simulations ALTER COLUMN id SET DEFAULT nextval('public.simulations_id_seq'::regclass);


--
-- Data for Name: codes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.codes VALUES (1, '11');
INSERT INTO public.codes VALUES (2, '16');
INSERT INTO public.codes VALUES (3, '17');
INSERT INTO public.codes VALUES (4, '18');


--
-- Data for Name: oldValues; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."oldValues" VALUES (1, 1, 2, 1.90, 2.09);
INSERT INTO public."oldValues" VALUES (2, 2, 1, 2.90, 3.19);
INSERT INTO public."oldValues" VALUES (3, 1, 3, 1.70, 1.87);
INSERT INTO public."oldValues" VALUES (4, 3, 1, 2.70, 2.97);
INSERT INTO public."oldValues" VALUES (5, 1, 4, 0.90, 0.99);
INSERT INTO public."oldValues" VALUES (6, 4, 1, 1.90, 2.09);


--
-- Data for Name: plans; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.plans VALUES (1, 'FaleMais 30', 30);
INSERT INTO public.plans VALUES (2, 'FaleMais 60', 60);
INSERT INTO public.plans VALUES (3, 'FaleMais 120', 120);


--
-- Data for Name: simulations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.simulations VALUES (2, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (3, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (4, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (5, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (6, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (7, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (8, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (9, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (10, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (11, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (12, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (13, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (14, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (15, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (16, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (17, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (18, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (19, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (20, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (21, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (22, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (23, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (24, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (25, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (26, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (27, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (28, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (29, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (30, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (31, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (32, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (33, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (34, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (35, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (36, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (37, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (38, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (39, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (40, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (41, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (42, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (43, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (44, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (45, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (46, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (47, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (48, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (49, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (50, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (51, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (52, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (53, 1, 3, 29, 1, 49.3, 0, 49.3);
INSERT INTO public.simulations VALUES (54, 1, 1, 4, 1, 0, 0, 0);
INSERT INTO public.simulations VALUES (55, 1, 2, 4, 1, 7.6, 0, 7.6);
INSERT INTO public.simulations VALUES (56, 1, 1, 4, 1, 0, 0, 0);
INSERT INTO public.simulations VALUES (57, 1, 3, 20, 1, 34, 0, 34);
INSERT INTO public.simulations VALUES (58, 1, 3, 20, 2, 34, 0, 34);
INSERT INTO public.simulations VALUES (59, 2, 3, 20, 2, 0, 0, 0);
INSERT INTO public.simulations VALUES (60, 2, 3, 50, 2, 0, 0, 0);
INSERT INTO public.simulations VALUES (61, 2, 3, 50, 2, 0, 0, 0);
INSERT INTO public.simulations VALUES (62, 1, 2, 300, 1, 570, 564.3, 5.7000000000000455);
INSERT INTO public.simulations VALUES (63, 1, 2, 400, 1, 760, 773.3, -13.299999999999955);
INSERT INTO public.simulations VALUES (64, 1, 2, 400, 2, 760, 710.5999999999999, 49.40000000000009);
INSERT INTO public.simulations VALUES (65, 1, 2, 400, 3, 760, 585.1999999999999, 174.80000000000007);
INSERT INTO public.simulations VALUES (66, 1, 2, 40, 3, 76, 0, 76);
INSERT INTO public.simulations VALUES (67, 1, 2, 40, 3, 76, 0, 76);
INSERT INTO public.simulations VALUES (68, 1, 2, 40, 1, 76, 20.9, 55.1);
INSERT INTO public.simulations VALUES (69, 1, 2, 40, 2, 76, 0, 76);
INSERT INTO public.simulations VALUES (70, 1, 2, 30, 1, 57, 0, 57);
INSERT INTO public.simulations VALUES (71, 1, 2, 58, 1, 110.19999999999999, 58.519999999999996, 51.67999999999999);
INSERT INTO public.simulations VALUES (72, 1, 2, 58, 2, 110.19999999999999, 0, 110.19999999999999);
INSERT INTO public.simulations VALUES (73, 1, 2, 58, 3, 110.19999999999999, 0, 110.19999999999999);
INSERT INTO public.simulations VALUES (74, 1, 2, 58, 2, 110.19999999999999, 0, 110.19999999999999);
INSERT INTO public.simulations VALUES (75, 1, 2, 4, 1, 7.6, 0, 7.6);
INSERT INTO public.simulations VALUES (76, 1, 2, 4, 1, 7.6, 0, 7.6);
INSERT INTO public.simulations VALUES (77, 1, 2, 4, 2, 7.6, 0, 7.6);
INSERT INTO public.simulations VALUES (78, 1, 2, 4, 3, 7.6, 0, 7.6);
INSERT INTO public.simulations VALUES (79, 1, 2, 50, 1, 95, 41.8, 53.2);
INSERT INTO public.simulations VALUES (80, 1, 2, 50, 2, 95, 0, 95);
INSERT INTO public.simulations VALUES (81, 1, 2, 50, 3, 95, 0, 95);
INSERT INTO public.simulations VALUES (82, 1, 2, 50, 3, 95, 0, 95);
INSERT INTO public.simulations VALUES (83, 1, 2, 4, 3, 7.6, 0, 7.6);
INSERT INTO public.simulations VALUES (84, 1, 2, 4, 3, 7.6, 0, 7.6);
INSERT INTO public.simulations VALUES (85, 1, 2, 4, 3, 7.6, 0, 7.6);
INSERT INTO public.simulations VALUES (86, 1, 2, 4, 3, 7.6, 0, 7.6);
INSERT INTO public.simulations VALUES (87, 1, 2, 137, 3, 260.3, 35.53, 224.77);
INSERT INTO public.simulations VALUES (88, 1, 2, 137, 1, 260.3, 223.63, 36.670000000000016);
INSERT INTO public.simulations VALUES (89, 1, 2, 137, 1, 260.3, 223.63, 36.670000000000016);
INSERT INTO public.simulations VALUES (90, 1, 2, 137, 2, 260.3, 160.92999999999998, 99.37000000000003);
INSERT INTO public.simulations VALUES (91, 1, 2, 137, 2, 260.3, 160.92999999999998, 99.37000000000003);
INSERT INTO public.simulations VALUES (92, 1, 2, 137, 2, 260.3, 160.92999999999998, 99.37000000000003);
INSERT INTO public.simulations VALUES (93, 1, 2, 137, 2, 260.3, 160.92999999999998, 99.37000000000003);
INSERT INTO public.simulations VALUES (94, 1, 2, 57, 1, 108.3, 56.42999999999999, 51.870000000000005);
INSERT INTO public.simulations VALUES (95, 1, 3, 57, 1, 96.9, 50.49, 46.41);
INSERT INTO public.simulations VALUES (96, 1, 3, 57, 2, 96.9, 0, 96.9);
INSERT INTO public.simulations VALUES (97, 1, 3, 123, 2, 209.1, 117.81, 91.29);
INSERT INTO public.simulations VALUES (98, 1, 3, 12345, 2, 20986.5, 22972.95, -1986.45);
INSERT INTO public.simulations VALUES (99, 1, 3, 2400, 2, 4080, 4375.8, -295.8);
INSERT INTO public.simulations VALUES (100, 1, 3, 2400, 1, 4080, 4431.9, -351.9);
INSERT INTO public.simulations VALUES (101, 1, 3, 2400, 3, 4080, 4263.6, -183.6);
INSERT INTO public.simulations VALUES (102, 1, 3, 2400, 1, 4080, 4431.9, -351.9);
INSERT INTO public.simulations VALUES (103, 1, 3, 2400, 2, 4080, 4375.8, -295.8);
INSERT INTO public.simulations VALUES (104, 1, 3, 20, 1, 34, 0, 34);
INSERT INTO public.simulations VALUES (105, 1, 3, 20, 1, 34, 0, 34);
INSERT INTO public.simulations VALUES (106, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (107, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (108, 1, 3, 20, 1, 34, 0, 34);
INSERT INTO public.simulations VALUES (109, 1, 3, 20, 2, 34, 0, 34);
INSERT INTO public.simulations VALUES (110, 1, 3, 20, 1, 34, 0, 34);
INSERT INTO public.simulations VALUES (111, 1, 3, 21, 1, 35.7, 0, 35.7);
INSERT INTO public.simulations VALUES (112, 1, 3, 20, 1, 34, 0, 34);
INSERT INTO public.simulations VALUES (113, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (114, 1, 3, 20, 1, 34, 0, 34);
INSERT INTO public.simulations VALUES (115, 2, 3, 20, 1, 0, 0, 0);
INSERT INTO public.simulations VALUES (116, 2, 4, 20, 1, 0, 0, 0);
INSERT INTO public.simulations VALUES (117, 2, 4, 20, 1, 0, 0, 0);
INSERT INTO public.simulations VALUES (118, 2, 4, 120, 1, 0, 0, 0);
INSERT INTO public.simulations VALUES (119, 2, 4, 120, 2, 0, 0, 0);
INSERT INTO public.simulations VALUES (120, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (121, 1, 2, 20, 3, 38, 0, 38);
INSERT INTO public.simulations VALUES (122, 1, 2, 120, 3, 228, 0, 228);
INSERT INTO public.simulations VALUES (123, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (124, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (125, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (126, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (127, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (128, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (129, 1, 2, 20, 2, 38, 0, 38);
INSERT INTO public.simulations VALUES (130, 1, 2, 20, 3, 38, 0, 38);
INSERT INTO public.simulations VALUES (131, 1, 2, 50, 3, 95, 0, 95);
INSERT INTO public.simulations VALUES (132, 1, 2, 50, 1, 95, 41.8, 53.2);
INSERT INTO public.simulations VALUES (133, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (134, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (135, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (136, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (137, 1, 2, 50, 2, 95, 0, 95);
INSERT INTO public.simulations VALUES (138, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (139, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (140, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (141, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (142, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (143, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (144, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (145, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (146, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (147, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (148, 1, 2, 20, 1, 38, 0, 38);
INSERT INTO public.simulations VALUES (149, 1, 2, 20, 1, 38, 0, 38);


--
-- Name: codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.codes_id_seq', 4, true);


--
-- Name: oldValues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."oldValues_id_seq"', 6, true);


--
-- Name: plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.plans_id_seq', 3, true);


--
-- Name: simulations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.simulations_id_seq', 149, true);


--
-- Name: codes codes_code_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.codes
    ADD CONSTRAINT codes_code_key UNIQUE (code);


--
-- Name: codes codes_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.codes
    ADD CONSTRAINT codes_pk PRIMARY KEY (id);


--
-- Name: oldValues oldValues_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."oldValues"
    ADD CONSTRAINT "oldValues_pk" PRIMARY KEY (id);


--
-- Name: plans plans_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_name_key UNIQUE (name);


--
-- Name: plans plans_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_pk PRIMARY KEY (id);


--
-- Name: simulations simulations_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.simulations
    ADD CONSTRAINT simulations_pk PRIMARY KEY (id);


--
-- Name: oldValues oldValues_fk0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."oldValues"
    ADD CONSTRAINT "oldValues_fk0" FOREIGN KEY ("originId") REFERENCES public.codes(id);


--
-- Name: oldValues oldValues_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."oldValues"
    ADD CONSTRAINT "oldValues_fk1" FOREIGN KEY ("destinationId") REFERENCES public.codes(id);


--
-- Name: simulations simulations_fk0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.simulations
    ADD CONSTRAINT simulations_fk0 FOREIGN KEY ("originId") REFERENCES public.codes(id);


--
-- Name: simulations simulations_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.simulations
    ADD CONSTRAINT simulations_fk1 FOREIGN KEY ("destinationId") REFERENCES public.codes(id);


--
-- Name: simulations simulations_fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.simulations
    ADD CONSTRAINT simulations_fk2 FOREIGN KEY ("planId") REFERENCES public.plans(id);


--
-- PostgreSQL database dump complete
--

