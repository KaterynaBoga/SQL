--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.9
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: article; Type: TABLE; Schema: public; Owner: myblog
--

CREATE TABLE public.article (
    id integer NOT NULL,
    posted_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    type character varying(250)
);


ALTER TABLE public.article OWNER TO myblog;

--
-- Name: article_images; Type: TABLE; Schema: public; Owner: myblog
--

CREATE TABLE public.article_images (
    id integer NOT NULL,
    article_id integer,
    file_name character varying(250) DEFAULT NULL::character varying,
    update_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE public.article_images OWNER TO myblog;

--
-- Name: article_translation; Type: TABLE; Schema: public; Owner: myblog
--

CREATE TABLE public.article_translation (
    id integer NOT NULL,
    title character varying(250) DEFAULT NULL::character varying,
    description character varying(250) DEFAULT NULL::character varying,
    content text,
    translatable_id integer,
    locale character varying(255) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE public.article_translation OWNER TO myblog;

--
-- Name: contacts; Type: TABLE; Schema: public; Owner: myblog
--

CREATE TABLE public.contacts (
    id integer NOT NULL,
    name character varying(250) DEFAULT NULL::character varying,
    email character varying(250) DEFAULT NULL::character varying,
    subject character varying(1000) DEFAULT NULL::character varying,
    message text
);


ALTER TABLE public.contacts OWNER TO myblog;

--
-- Name: migration_versions; Type: TABLE; Schema: public; Owner: myblog
--

CREATE TABLE public.migration_versions (
    version character varying(255) NOT NULL
);


ALTER TABLE public.migration_versions OWNER TO myblog;

--
-- Name: tag; Type: TABLE; Schema: public; Owner: myblog
--

CREATE TABLE public.tag (
    id integer NOT NULL,
    name character varying(250) DEFAULT NULL::character varying,
    active boolean
);


ALTER TABLE public.tag OWNER TO myblog;

--
-- Name: tag_article; Type: TABLE; Schema: public; Owner: myblog
--

CREATE TABLE public.tag_article (
    tag_id integer NOT NULL,
    article_id integer NOT NULL
);


ALTER TABLE public.tag_article OWNER TO myblog;

--
-- Name: work; Type: TABLE; Schema: public; Owner: myblog
--

CREATE TABLE public.work (
    id integer NOT NULL,
    url character varying(250) DEFAULT NULL::character varying
);


ALTER TABLE public.work OWNER TO myblog;

--
-- Name: work_image; Type: TABLE; Schema: public; Owner: myblog
--

CREATE TABLE public.work_image (
    id integer NOT NULL,
    work_id integer,
    file_name character varying(250) DEFAULT NULL::character varying,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE public.work_image OWNER TO myblog;

--
-- Name: work_translation; Type: TABLE; Schema: public; Owner: myblog
--

CREATE TABLE public.work_translation (
    id integer NOT NULL,
    title character varying(250) DEFAULT NULL::character varying,
    description text,
    translatable_id integer,
    locale character varying(255) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE public.work_translation OWNER TO myblog;

--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: myblog
--



--
-- Data for Name: article_images; Type: TABLE DATA; Schema: public; Owner: myblog
--



--
-- Data for Name: article_translation; Type: TABLE DATA; Schema: public; Owner: myblog
--



--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: myblog
--



--
-- Data for Name: migration_versions; Type: TABLE DATA; Schema: public; Owner: myblog
--

INSERT INTO public.migration_versions VALUES ('20180825175639');
INSERT INTO public.migration_versions VALUES ('20180825182854');
INSERT INTO public.migration_versions VALUES ('20180827192344');
INSERT INTO public.migration_versions VALUES ('20180829190809');
INSERT INTO public.migration_versions VALUES ('20180903174251');
INSERT INTO public.migration_versions VALUES ('20180903192748');
INSERT INTO public.migration_versions VALUES ('20180927182445');
INSERT INTO public.migration_versions VALUES ('20181007172649');
INSERT INTO public.migration_versions VALUES ('20180928140641');
INSERT INTO public.migration_versions VALUES ('20181024202006');
INSERT INTO public.migration_versions VALUES ('20181024202818');
INSERT INTO public.migration_versions VALUES ('20190109212754');


--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: myblog
--



--
-- Data for Name: tag_article; Type: TABLE DATA; Schema: public; Owner: myblog
--



--
-- Data for Name: work; Type: TABLE DATA; Schema: public; Owner: myblog
--

INSERT INTO public.work VALUES (1, 'url.test');
INSERT INTO public.work VALUES (2, 'hhh');
INSERT INTO public.work VALUES (4, 'url.test');
INSERT INTO public.work VALUES (5, 'url.test');


--
-- Data for Name: work_image; Type: TABLE DATA; Schema: public; Owner: myblog
--

INSERT INTO public.work_image VALUES (2, NULL, 'Знімок екрану з 2018-08-10 21-21-41.png', '2018-08-29 22:55:06');
INSERT INTO public.work_image VALUES (1, NULL, NULL, '2018-08-29 22:54:51');
INSERT INTO public.work_image VALUES (4, 4, 'img-5.jpg', '2018-11-06 23:32:52');
INSERT INTO public.work_image VALUES (3, 1, 'team.jpg', '2018-11-27 23:09:47');
INSERT INTO public.work_image VALUES (6, 2, 'about-1.jpg', '2018-11-28 21:24:59');
INSERT INTO public.work_image VALUES (5, 5, 'post-page.jpg', '2018-12-17 23:28:10');


--
-- Data for Name: work_translation; Type: TABLE DATA; Schema: public; Owner: myblog
--

INSERT INTO public.work_translation VALUES (6, 'title', 'title', 4, 'en', '2018-08-29 22:28:44', '2018-08-29 22:54:33');
INSERT INTO public.work_translation VALUES (5, 'title', 'Зачем ребенку занятия Cambridge English  Для чего вашему ребенку сдавать экзамен KET, PET? Экзамены KET, PET – это сертификационные экзамены по английскому языку, которые входят в линейку Кембриджских экзаменов (Cambridge Exams) и результаты которых признаются по всему миру. Сдав экзамен KET или PET, ученик получит подтверждение своего уровня владения английским языком и подтверждение того, что он не зря ходил на занятия по английскому на протяжении нескольких лет.  Международный официальный сертификат KET или PET поощрит ребенка, позволит выделиться среди одноклассников и друзей и разовьет интерес к дальнейшему изучению английского.  Родители школьников часто сталкиваются с ситуацией, когда ребенок учит английский язык в школе, вроде бы, выполняет домашние задания, получает хорошие оценки, но при этом абсолютно не понятно, каковы же успехи ребенка и на каком уровне он владеет английским языком: достаточно ли его знаний, чтобы общаться с людьми во время поездки за границу?  Сможет ли он поддержать разговор с ребятами его возраста, если поедет в языковой лагерь в Англию, Америку или в Финляндию? Будет ли он владеть языком на достаточном уровне для поступления в университет в другой стране или необходимо срочно бросать все силы и возможности на освоение английского?  Сдача экзамена KET или PET как раз поможет вам определить и подтвердить объем знаний вашего ребенка и его успехи в изучении языка.  К тому же, когда перед школьником стоит задача сдать международный экзамен и получить официальный международный диплом, у него появляется стимул в изучении языка, желание успешно выполнять домашнее задание, чтобы лучше подготовиться к экзамену и получить диплом с отличаем. Такой подход поможет дополнительно стимулировать не только «отличников», но и ребят, которые прежде были не очень заинтересованы в учебе.  Подготовка к экзаменам в Пространство развития "Кот да Винчи" проходит в воскресенье 12.00 - 13.30.  Присоединяйтесь, Natalia Zaytseva', 4, 'uk', '2018-08-29 22:28:44', '2018-11-06 23:32:52');
INSERT INTO public.work_translation VALUES (2, 'description', '<p>description</p>', 1, 'en', '2018-08-27 22:28:01', '2018-11-27 23:09:31');
INSERT INTO public.work_translation VALUES (1, 'description', '<p>description</p>', 1, 'uk', '2018-08-27 22:28:01', '2018-11-27 23:09:31');
INSERT INTO public.work_translation VALUES (8, 'Title work', NULL, 5, 'en', '2018-11-27 23:13:28', '2018-11-27 23:14:27');
INSERT INTO public.work_translation VALUES (7, 'Назва роботи', NULL, 5, 'uk', '2018-11-27 23:13:28', '2018-11-27 23:14:27');
INSERT INTO public.work_translation VALUES (4, 'test', NULL, 2, 'en', '2018-08-28 21:40:08', '2018-11-28 21:25:00');
INSERT INTO public.work_translation VALUES (3, 'test', NULL, 2, 'uk', '2018-08-28 21:40:07', '2018-11-28 21:25:00');


--
-- Name: article_images article_images_pkey; Type: CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.article_images
    ADD CONSTRAINT article_images_pkey PRIMARY KEY (id);


--
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- Name: article_translation article_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.article_translation
    ADD CONSTRAINT article_translation_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: migration_versions migration_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.migration_versions
    ADD CONSTRAINT migration_versions_pkey PRIMARY KEY (version);


--
-- Name: tag_article tag_article_pkey; Type: CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.tag_article
    ADD CONSTRAINT tag_article_pkey PRIMARY KEY (tag_id, article_id);


--
-- Name: tag tag_pkey; Type: CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- Name: work_image work_image_pkey; Type: CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.work_image
    ADD CONSTRAINT work_image_pkey PRIMARY KEY (id);


--
-- Name: work work_pkey; Type: CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_pkey PRIMARY KEY (id);


--
-- Name: work_translation work_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.work_translation
    ADD CONSTRAINT work_translation_pkey PRIMARY KEY (id);


--
-- Name: article_translation_unique_translation; Type: INDEX; Schema: public; Owner: myblog
--

CREATE UNIQUE INDEX article_translation_unique_translation ON public.article_translation USING btree (translatable_id, locale);


--
-- Name: idx_2eea2f082c2ac5d3; Type: INDEX; Schema: public; Owner: myblog
--

CREATE INDEX idx_2eea2f082c2ac5d3 ON public.article_translation USING btree (translatable_id);


--
-- Name: idx_300b23cc7294869c; Type: INDEX; Schema: public; Owner: myblog
--

CREATE INDEX idx_300b23cc7294869c ON public.tag_article USING btree (article_id);


--
-- Name: idx_300b23ccbad26311; Type: INDEX; Schema: public; Owner: myblog
--

CREATE INDEX idx_300b23ccbad26311 ON public.tag_article USING btree (tag_id);


--
-- Name: idx_8ad829ea7294869c; Type: INDEX; Schema: public; Owner: myblog
--

CREATE INDEX idx_8ad829ea7294869c ON public.article_images USING btree (article_id);


--
-- Name: idx_aba8a5ac2c2ac5d3; Type: INDEX; Schema: public; Owner: myblog
--

CREATE INDEX idx_aba8a5ac2c2ac5d3 ON public.work_translation USING btree (translatable_id);


--
-- Name: idx_edc67f70bb3453db; Type: INDEX; Schema: public; Owner: myblog
--

CREATE INDEX idx_edc67f70bb3453db ON public.work_image USING btree (work_id);


--
-- Name: work_translation_unique_translation; Type: INDEX; Schema: public; Owner: myblog
--

CREATE UNIQUE INDEX work_translation_unique_translation ON public.work_translation USING btree (translatable_id, locale);


--
-- Name: article_translation fk_2eea2f082c2ac5d3; Type: FK CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.article_translation
    ADD CONSTRAINT fk_2eea2f082c2ac5d3 FOREIGN KEY (translatable_id) REFERENCES public.article(id) ON DELETE CASCADE;


--
-- Name: tag_article fk_300b23cc7294869c; Type: FK CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.tag_article
    ADD CONSTRAINT fk_300b23cc7294869c FOREIGN KEY (article_id) REFERENCES public.article(id) ON DELETE CASCADE;


--
-- Name: tag_article fk_300b23ccbad26311; Type: FK CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.tag_article
    ADD CONSTRAINT fk_300b23ccbad26311 FOREIGN KEY (tag_id) REFERENCES public.tag(id) ON DELETE CASCADE;


--
-- Name: article_images fk_8ad829ea7294869c; Type: FK CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.article_images
    ADD CONSTRAINT fk_8ad829ea7294869c FOREIGN KEY (article_id) REFERENCES public.article(id) ON DELETE CASCADE;


--
-- Name: work_translation fk_aba8a5ac2c2ac5d3; Type: FK CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.work_translation
    ADD CONSTRAINT fk_aba8a5ac2c2ac5d3 FOREIGN KEY (translatable_id) REFERENCES public.work(id) ON DELETE CASCADE;


--
-- Name: work_image fk_edc67f70bb3453db; Type: FK CONSTRAINT; Schema: public; Owner: myblog
--

ALTER TABLE ONLY public.work_image
    ADD CONSTRAINT fk_edc67f70bb3453db FOREIGN KEY (work_id) REFERENCES public.work(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

