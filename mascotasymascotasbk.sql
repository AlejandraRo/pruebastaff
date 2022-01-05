--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: mascota; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mascota (
    idmascota integer NOT NULL,
    nombre character varying(45),
    tipo_mascota integer NOT NULL,
    propietario integer
);


ALTER TABLE public.mascota OWNER TO postgres;

--
-- Name: mascota_idmascota_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mascota_idmascota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mascota_idmascota_seq OWNER TO postgres;

--
-- Name: mascota_idmascota_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mascota_idmascota_seq OWNED BY public.mascota.idmascota;


--
-- Name: propietario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propietario (
    idpropietario integer NOT NULL,
    nombre character varying(45) NOT NULL,
    direccion character varying(45) NOT NULL,
    telefono character varying(30) NOT NULL,
    correo character varying(60) NOT NULL,
    comentarios text
);


ALTER TABLE public.propietario OWNER TO postgres;

--
-- Name: propietario_idpropietario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.propietario_idpropietario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.propietario_idpropietario_seq OWNER TO postgres;

--
-- Name: propietario_idpropietario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.propietario_idpropietario_seq OWNED BY public.propietario.idpropietario;


--
-- Name: tipo_mascota; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_mascota (
    idtipo integer NOT NULL,
    descripcion character varying(45) NOT NULL
);


ALTER TABLE public.tipo_mascota OWNER TO postgres;

--
-- Name: tipo_mascota_idtipo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_mascota_idtipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_mascota_idtipo_seq OWNER TO postgres;

--
-- Name: tipo_mascota_idtipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_mascota_idtipo_seq OWNED BY public.tipo_mascota.idtipo;


--
-- Name: mascota idmascota; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mascota ALTER COLUMN idmascota SET DEFAULT nextval('public.mascota_idmascota_seq'::regclass);


--
-- Name: propietario idpropietario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propietario ALTER COLUMN idpropietario SET DEFAULT nextval('public.propietario_idpropietario_seq'::regclass);


--
-- Name: tipo_mascota idtipo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_mascota ALTER COLUMN idtipo SET DEFAULT nextval('public.tipo_mascota_idtipo_seq'::regclass);


--
-- Data for Name: mascota; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mascota (idmascota, nombre, tipo_mascota, propietario) FROM stdin;
1	Lucky	1	\N
2	Kika	3	1
3	Roberto	4	1
4	Pepe	1	2
\.


--
-- Data for Name: propietario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propietario (idpropietario, nombre, direccion, telefono, correo, comentarios) FROM stdin;
1	Milena López	Cr 16#45-67 Bogotá	310 584 6731	mile.08@gmail.com	Vive en casa con jardín
2	Jaime Rosero	Cll 1A #13-45 Cali	315 678 1012	jm.ro@yahoo.com.ar	\N
3	Emily Hernández	Cr 25 #90A-123	321 453 6723	emis.67@hotmail.es	Busca adoptar ave
\.


--
-- Data for Name: tipo_mascota; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_mascota (idtipo, descripcion) FROM stdin;
1	perro
2	hamster
3	conejo
4	loro
5	pex
6	otro
\.


--
-- Name: mascota_idmascota_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mascota_idmascota_seq', 4, true);


--
-- Name: propietario_idpropietario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.propietario_idpropietario_seq', 3, true);


--
-- Name: tipo_mascota_idtipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_mascota_idtipo_seq', 6, true);


--
-- Name: mascota mascota_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mascota
    ADD CONSTRAINT mascota_pkey PRIMARY KEY (idmascota);


--
-- Name: propietario propietario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propietario
    ADD CONSTRAINT propietario_pkey PRIMARY KEY (idpropietario);


--
-- Name: tipo_mascota tipo_mascota_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_mascota
    ADD CONSTRAINT tipo_mascota_pkey PRIMARY KEY (idtipo);


--
-- Name: mascota prop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mascota
    ADD CONSTRAINT prop FOREIGN KEY (propietario) REFERENCES public.propietario(idpropietario);


--
-- Name: mascota tpm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mascota
    ADD CONSTRAINT tpm FOREIGN KEY (tipo_mascota) REFERENCES public.tipo_mascota(idtipo);


--
-- PostgreSQL database dump complete
--

/*CONSULTAS*/
--listar todas las mascotas
select * from mascota;
--listar las mascotas que no han sido adoptadas
select * from mascota where propietario is null;
--listar el número de mascotas por cada tipo de mascota
select tipo_mascota,
count(*) from mascota group by tipo_mascota;
--listar los propietarios que tengan mas de una mascota
select propietario.nombre,count(idmascota)
from propietario inner join mascota on propietario.idpropietario
=mascota.propietario group by propietario.nombre
having count(idmascota)>1;
--listar el número de mascotas por cada tipo de mascota y por cada propietario
select tipo_mascota,propietario.nombre,
count(idmascota)
from mascota inner join propietario on mascota.propietario=propietario.idpropietario
group by tipo_mascota,propietario.nombre;
--listar propietarios que no tienen mascotas
select propietario.nombre
from propietario left join
mascota on propietario.idpropietario
=mascota.propietario where mascota.propietario is null;



