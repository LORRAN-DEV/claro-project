--
-- PostgreSQL database dump
--

\restrict AtICXPzwHBSWFsXiKMThttuX5soMaWs5xgo9t5w3xB2KOWQp7seVKsd7baAE67g

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

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
-- Name: ticket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticket (
    protocol character varying(20) NOT NULL,
    user_id character(11) NOT NULL,
    report_text text,
    report_dt timestamp without time zone NOT NULL,
    ip_adress text
);


ALTER TABLE public.ticket OWNER TO postgres;

--
-- Name: usertable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usertable (
    user_id character varying(11) NOT NULL,
    user_name text NOT NULL
);


ALTER TABLE public.usertable OWNER TO postgres;

--
-- Data for Name: ticket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticket (protocol, user_id, report_text, report_dt, ip_adress) FROM stdin;
1000000001	12312312312	Erro no pagamento online	2024-11-21 01:50:25	114.38.177.132
1000000002	22222222222	Problema na entrega de produto	2025-06-21 17:52:02	15.224.31.195
1000000003	11111111111	Serviço fora do ar	2023-12-10 03:52:56	175.165.201.249
1000000004	44245143343	Fatura com valores incorretos	2024-07-26 05:07:36	60.50.109.194
1000000005	57217898091	Serviço de internet instável	2023-03-14 10:17:01	61.9.80.229
1000000006	11122233344	Atendimento ao cliente lento	2024-07-17 21:24:04	182.195.174.206
1000000007	57217898091	Serviço de internet instável	2025-04-19 09:29:05	179.98.88.98
1000000008	01189998819	Problema na entrega de produto	2023-07-03 20:09:02	42.80.137.96
1000000009	11111111111	Fatura com valores incorretos	2024-08-22 17:02:22	35.39.5.18
1000000010	11111111111	Fatura com valores incorretos	2023-09-30 22:07:40	13.208.154.76
1000000011	00011122233	Atendimento ao cliente lento	2023-03-13 18:38:29	152.248.120.238
1000000012	00012345678	Não recebi suporte solicitado	2023-05-02 22:29:08	136.221.45.153
1000000013	22211133344	Erro no pagamento online	2024-12-05 11:06:00	76.247.90.34
1000000014	12342527289	Problema na entrega de produto	2023-05-15 05:42:26	87.183.224.104
1000000015	12354156789	Cobrança indevida na fatura	2023-02-15 07:29:51	48.6.182.245
1000000016	00012345678	Problema na entrega de produto	2023-08-03 01:42:48	189.81.195.14
1000000017	01189998819	Serviço de internet instável	2023-09-14 17:46:47	83.32.131.199
1000000018	12342527289	Cobrança indevida na fatura	2025-01-03 15:50:02	127.32.224.248
1000000019	99911166611	Cobrança indevida na fatura	2024-07-23 13:09:38	119.73.208.99
1000000020	22333111000	Aplicativo travando com frequência	2023-12-25 01:42:25	159.37.17.180
1000000021	18954661239	Serviço de internet instável	2023-01-02 04:18:00	142.197.239.194
1000000022	12354156789	Não recebi suporte solicitado	2025-03-23 22:53:05	131.21.49.81
1000000023	18954661239	Serviço de internet instável	2024-06-05 13:33:19	177.84.249.228
1000000024	57217898091	Serviço de internet instável	2023-02-17 22:47:35	156.22.56.99
1000000025	00012345678	Serviço fora do ar	2023-03-10 17:47:50	77.63.55.143
1000000026	22333111000	Erro no pagamento online	2024-07-06 00:57:53	80.185.65.154
1000000027	11111111111	Serviço fora do ar	2023-12-26 12:14:33	97.99.54.234
1000000028	22233111455	Aplicativo travando com frequência	2025-01-09 07:20:24	147.230.111.198
1000000029	33333333333	Serviço de internet instável	2023-07-29 12:19:54	56.246.132.217
1000000030	99911166611	Aplicativo travando com frequência	2025-08-04 14:03:11	107.166.42.78
1000000031	22233111455	Serviço de internet instável	2023-05-25 17:39:27	170.180.200.207
1000000032	22222222222	Problema na instalação do serviço	2025-07-24 12:47:15	92.207.14.37
1000000033	55555577711	Erro no pagamento online	2024-09-01 23:40:21	125.116.168.162
1000000034	11111111111	Serviço fora do ar	2023-01-05 17:19:22	55.131.155.5
1000000035	57217898091	Aplicativo travando com frequência	2025-03-21 15:59:57	26.228.98.204
1000000036	11111111111	Fatura com valores incorretos	2024-08-09 00:27:56	88.215.49.75
1000000037	55555577711	Problema na entrega de produto	2024-10-20 22:36:54	185.84.224.17
1000000038	22333111000	Fatura com valores incorretos	2024-11-23 21:52:50	32.125.137.201
1000000039	12342527289	Serviço de internet instável	2023-07-19 13:02:46	48.128.98.50
1000000040	00011122233	Problema na entrega de produto	2025-04-26 08:33:33	59.82.44.6
1000000041	00011122233	Atendimento ao cliente lento	2025-07-09 18:22:25	136.145.51.202
1000000042	01189998819	Aplicativo travando com frequência	2024-08-06 02:06:51	97.2.126.237
1000000043	57217898091	Atendimento ao cliente lento	2024-07-28 07:57:37	85.60.212.117
1000000044	55555577711	Fatura com valores incorretos	2023-05-24 12:51:15	90.59.150.67
1000000045	12354156789	Erro no pagamento online	2023-01-23 21:55:00	57.109.88.252
1000000046	22333111000	Cobrança indevida na fatura	2024-08-16 08:14:56	174.29.146.22
1000000047	12342527289	Não recebi suporte solicitado	2023-10-21 18:23:45	134.171.32.153
1000000048	44245143343	Serviço de internet instável	2024-11-19 20:37:50	62.215.47.72
1000000049	33333333333	Aplicativo travando com frequência	2023-11-26 00:43:10	123.11.207.9
1000000050	11111111111	Aplicativo travando com frequência	2023-12-27 14:10:11	77.131.12.86
1000000051	12342527289	Serviço fora do ar	2024-10-09 16:15:21	62.7.36.230
1000000052	11111111111	Problema na entrega de produto	2023-10-16 08:57:32	189.90.147.167
1000000053	12354156789	Erro no pagamento online	2023-02-20 15:10:22	94.241.102.148
1000000054	00011122233	Não recebi suporte solicitado	2025-01-16 02:00:37	85.33.170.7
1000000055	18954661239	Erro no pagamento online	2023-10-23 14:50:58	178.26.185.77
1000000056	12312312312	Cobrança indevida na fatura	2024-06-30 20:55:35	176.84.18.109
1000000057	33333333333	Aplicativo travando com frequência	2025-01-16 18:56:02	115.147.182.191
1000000058	00012345678	Atendimento ao cliente lento	2025-05-09 06:26:44	88.92.56.120
1000000059	00011122233	Atendimento ao cliente lento	2023-04-22 02:53:56	79.63.220.121
1000000060	44411122233	Não recebi suporte solicitado	2025-01-29 05:14:29	163.152.82.206
1000000061	18954661239	Problema na entrega de produto	2024-06-06 01:03:48	145.217.81.218
1000000062	19991197253	Serviço fora do ar	2023-05-01 16:47:38	180.158.245.13
1000000063	99911166611	Problema na entrega de produto	2024-03-28 14:02:01	46.15.134.71
1000000064	55555577711	Serviço de internet instável	2023-01-19 21:26:57	122.50.196.29
1000000065	12342527289	Serviço de internet instável	2024-03-03 23:41:44	145.86.184.12
1000000066	11111111111	Aplicativo travando com frequência	2024-10-02 04:50:15	164.20.39.103
1000000067	00012345678	Não recebi suporte solicitado	2025-05-22 23:34:29	35.42.188.242
1000000068	55555577711	Problema na instalação do serviço	2023-08-15 21:12:55	100.157.91.37
1000000069	01189998819	Erro no pagamento online	2024-04-16 01:40:11	171.147.10.142
1000000070	44411122233	Aplicativo travando com frequência	2023-07-28 14:12:35	125.53.12.245
1000000071	19991197253	Serviço de internet instável	2025-07-21 02:41:04	136.76.114.153
1000000072	12342527289	Aplicativo travando com frequência	2023-06-13 05:10:27	101.23.14.48
1000000073	19991197253	Serviço fora do ar	2025-03-12 21:20:16	103.174.35.103
1000000074	44411122233	Cobrança indevida na fatura	2024-05-28 16:42:36	33.142.128.66
1000000075	57217898091	Serviço de internet instável	2025-01-04 19:21:05	168.142.209.94
1000000076	12354156789	Cobrança indevida na fatura	2023-05-16 18:51:40	49.96.105.72
1000000077	55555577711	Serviço de internet instável	2025-04-26 00:36:17	74.22.11.250
1000000078	00012345678	Atendimento ao cliente lento	2024-11-27 22:33:51	127.63.80.95
1000000079	11122233344	Problema na entrega de produto	2023-04-14 11:23:33	58.7.91.215
1000000080	00012345678	Problema na instalação do serviço	2024-02-19 20:02:56	61.147.53.176
1000000081	12342527289	Aplicativo travando com frequência	2024-01-28 13:29:57	124.74.232.118
1000000082	57217898091	Problema na instalação do serviço	2024-08-05 19:55:36	14.118.241.77
1000000083	33333333333	Serviço fora do ar	2025-07-25 17:26:38	144.115.61.73
1000000084	55555577711	Erro no pagamento online	2024-06-29 23:29:28	14.207.171.110
1000000085	22222222222	Problema na entrega de produto	2023-09-12 10:49:38	70.88.111.115
1000000086	12312312312	Serviço de internet instável	2025-07-12 15:25:11	163.198.138.121
1000000087	00011122233	Serviço fora do ar	2023-02-05 01:58:23	59.63.198.122
1000000088	01189998819	Problema na instalação do serviço	2025-03-18 19:51:44	109.92.210.146
1000000089	44411122233	Aplicativo travando com frequência	2025-01-27 12:29:03	80.90.165.189
1000000090	19991197253	Erro no pagamento online	2023-04-09 03:10:55	77.65.134.220
1000000091	57217898091	Serviço fora do ar	2023-05-11 09:36:21	25.57.119.91
1000000092	22211133344	Não recebi suporte solicitado	2023-07-17 20:12:40	184.202.64.66
1000000093	12312312312	Cobrança indevida na fatura	2023-03-23 23:54:16	54.49.198.143
1000000094	12342527289	Erro no pagamento online	2023-08-12 11:49:08	34.188.65.31
1000000095	22222222222	Problema na instalação do serviço	2023-06-28 15:30:10	179.186.25.157
1000000096	55555577711	Aplicativo travando com frequência	2023-12-17 08:18:19	85.52.174.84
1000000097	12354156789	Não recebi suporte solicitado	2025-03-05 22:50:23	22.72.194.92
1000000098	22333111000	Problema na entrega de produto	2024-08-30 02:18:30	93.221.189.54
1000000099	00012345678	Serviço de internet instável	2025-02-22 12:20:18	46.57.135.39
1000000100	22333111000	Erro no pagamento online	2023-06-29 19:39:14	44.102.216.119
\.


--
-- Data for Name: usertable; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usertable (user_id, user_name) FROM stdin;
00011122233	Jose Farias
11122233344	Joao da Silva
12354156789	Maria Pereira
00012345678	Maria das Dores
44411122233	Soraya Campos
22211133344	Lygia Oliveira
55555577711	Jonas Gomes
22233111455	Renato Paiva
01189998819	Filipe Falcão
19991197253	Roberta Fisher
22333111000	Carlos Garcia
12312312312	Gabriel Lourenzo
11111111111	Estefania Dantas
22222222222	Fernando Sobral
33333333333	Vitoria Regia dos Santos
12342527289	Julia Aparecida
44245143343	Luis Carlos Junior
99911166611	Ledio Carmona
57217898091	Kleber Santana
18954661239	Cairo Santos
\.


--
-- Name: ticket ticket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_pkey PRIMARY KEY (protocol);


--
-- Name: usertable usertable_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usertable
    ADD CONSTRAINT usertable_pkey PRIMARY KEY (user_id);


--
-- Name: ticket ticket_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usertable(user_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT USAGE ON SCHEMA public TO projetoclaroada;


--
-- Name: TABLE ticket; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ticket TO projetoclaroada;


--
-- Name: TABLE usertable; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.usertable TO projetoclaroada;


--
-- PostgreSQL database dump complete
--

\unrestrict AtICXPzwHBSWFsXiKMThttuX5soMaWs5xgo9t5w3xB2KOWQp7seVKsd7baAE67g
