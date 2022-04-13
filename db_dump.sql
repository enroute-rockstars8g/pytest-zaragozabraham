Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO abraham_zaragoza;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO abraham_zaragoza;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO abraham_zaragoza;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO abraham_zaragoza;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO abraham_zaragoza;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO abraham_zaragoza;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO abraham_zaragoza;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO abraham_zaragoza;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO abraham_zaragoza;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO abraham_zaragoza;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO abraham_zaragoza;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO abraham_zaragoza;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO abraham_zaragoza;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO abraham_zaragoza;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    publish_year smallint NOT NULL,
    pages smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.books_book OWNER TO abraham_zaragoza;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO abraham_zaragoza;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO abraham_zaragoza;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO abraham_zaragoza;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_booksgenres; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.books_booksgenres (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    genre_id bigint NOT NULL
);


ALTER TABLE public.books_booksgenres OWNER TO abraham_zaragoza;

--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.books_booksgenres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksgenres_id_seq OWNER TO abraham_zaragoza;

--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.books_booksgenres_id_seq OWNED BY public.books_booksgenres.id;


--
-- Name: books_bookslanguages; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.books_bookslanguages (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    language_id bigint NOT NULL
);


ALTER TABLE public.books_bookslanguages OWNER TO abraham_zaragoza;

--
-- Name: books_bookslanguages_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.books_bookslanguages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_bookslanguages_id_seq OWNER TO abraham_zaragoza;

--
-- Name: books_bookslanguages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.books_bookslanguages_id_seq OWNED BY public.books_bookslanguages.id;


--
-- Name: books_genre; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.books_genre (
    id bigint NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.books_genre OWNER TO abraham_zaragoza;

--
-- Name: books_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.books_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_genre_id_seq OWNER TO abraham_zaragoza;

--
-- Name: books_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.books_genre_id_seq OWNED BY public.books_genre.id;


--
-- Name: books_language; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.books_language (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    code character varying(3) NOT NULL
);


ALTER TABLE public.books_language OWNER TO abraham_zaragoza;

--
-- Name: books_language_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.books_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_language_id_seq OWNER TO abraham_zaragoza;

--
-- Name: books_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.books_language_id_seq OWNED BY public.books_language.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO abraham_zaragoza;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO abraham_zaragoza;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO abraham_zaragoza;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO abraham_zaragoza;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO abraham_zaragoza;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO abraham_zaragoza;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO abraham_zaragoza;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO abraham_zaragoza;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO abraham_zaragoza;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: abraham_zaragoza
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO abraham_zaragoza;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: abraham_zaragoza
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO abraham_zaragoza;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abraham_zaragoza
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_booksgenres id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_booksgenres ALTER COLUMN id SET DEFAULT nextval('public.books_booksgenres_id_seq'::regclass);


--
-- Name: books_bookslanguages id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_bookslanguages ALTER COLUMN id SET DEFAULT nextval('public.books_bookslanguages_id_seq'::regclass);


--
-- Name: books_genre id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_genre ALTER COLUMN id SET DEFAULT nextval('public.books_genre_id_seq'::regclass);


--
-- Name: books_language id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_language ALTER COLUMN id SET DEFAULT nextval('public.books_language_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add books authors	9	add_booksauthors
34	Can change books authors	9	change_booksauthors
35	Can delete books authors	9	delete_booksauthors
36	Can view books authors	9	view_booksauthors
37	Can add genre	10	add_genre
38	Can change genre	10	change_genre
39	Can delete genre	10	delete_genre
40	Can view genre	10	view_genre
41	Can add language	11	add_language
42	Can change language	11	change_language
43	Can delete language	11	delete_language
44	Can view language	11	view_language
45	Can add books languages	12	add_bookslanguages
46	Can change books languages	12	change_bookslanguages
47	Can delete books languages	12	delete_bookslanguages
48	Can view books languages	12	view_bookslanguages
49	Can add books genres	13	add_booksgenres
50	Can change books genres	13	change_booksgenres
51	Can delete books genres	13	delete_booksgenres
52	Can view books genres	13	view_booksgenres
53	Can add blacklisted token	14	add_blacklistedtoken
54	Can change blacklisted token	14	change_blacklistedtoken
55	Can delete blacklisted token	14	delete_blacklistedtoken
56	Can view blacklisted token	14	view_blacklistedtoken
57	Can add outstanding token	15	add_outstandingtoken
58	Can change outstanding token	15	change_outstandingtoken
59	Can delete outstanding token	15	delete_outstandingtoken
60	Can view outstanding token	15	view_outstandingtoken
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$4UO7pNxPbDS69HGwY3lmlA$tdVz1j+U7i+ZyjjSF0OWUcTv3VhFz16bABihiMlK73E=	\N	f	newUser7			newuser7@test.com	f	t	2022-04-12 20:47:45.447393+00
2	pbkdf2_sha256$320000$Dsjw5NgAWjEgknRM75vMh0$MsluHsNKqzdi68CUSEpvmFBzeP8/TeBg144uhQgRMF0=	\N	f	newUser8			newuser8@test.com	f	t	2022-04-12 21:41:16.253201+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.books_book (id, name, publish_year, pages, price, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_booksgenres; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.books_booksgenres (id, book_id, genre_id) FROM stdin;
\.


--
-- Data for Name: books_bookslanguages; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.books_bookslanguages (id, book_id, language_id) FROM stdin;
\.


--
-- Data for Name: books_genre; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.books_genre (id, name) FROM stdin;
\.


--
-- Data for Name: books_language; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.books_language (id, name, code) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	books	author
8	books	book
9	books	booksauthors
10	books	genre
11	books	language
12	books	bookslanguages
13	books	booksgenres
14	token_blacklist	blacklistedtoken
15	token_blacklist	outstandingtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 20:37:07.77583+00
2	auth	0001_initial	2022-04-12 20:37:07.862229+00
3	admin	0001_initial	2022-04-12 20:37:07.881475+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 20:37:07.887527+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 20:37:07.893442+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 20:37:07.906234+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 20:37:07.912188+00
8	auth	0003_alter_user_email_max_length	2022-04-12 20:37:07.918237+00
9	auth	0004_alter_user_username_opts	2022-04-12 20:37:07.923736+00
10	auth	0005_alter_user_last_login_null	2022-04-12 20:37:07.930324+00
11	auth	0006_require_contenttypes_0002	2022-04-12 20:37:07.931845+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 20:37:07.937864+00
13	auth	0008_alter_user_username_max_length	2022-04-12 20:37:07.949709+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 20:37:07.955882+00
15	auth	0010_alter_group_name_max_length	2022-04-12 20:37:07.963596+00
16	auth	0011_update_proxy_permissions	2022-04-12 20:37:07.969112+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 20:37:07.974815+00
18	books	0001_initial	2022-04-12 20:37:07.998235+00
19	books	0002_genre_language_bookslanguages_booksgenres_book_genre_and_more	2022-04-12 20:37:08.039287+00
20	sessions	0001_initial	2022-04-12 20:37:08.051922+00
21	token_blacklist	0001_initial	2022-04-12 20:37:08.081029+00
22	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 20:37:08.087672+00
23	token_blacklist	0003_auto_20171017_2007	2022-04-12 20:37:08.09817+00
24	token_blacklist	0004_auto_20171017_2013	2022-04-12 20:37:08.110839+00
25	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 20:37:08.11779+00
26	token_blacklist	0006_auto_20171017_2113	2022-04-12 20:37:08.125086+00
27	token_blacklist	0007_auto_20171017_2214	2022-04-12 20:37:08.144588+00
28	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 20:37:08.187277+00
29	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 20:37:08.202535+00
30	token_blacklist	0011_linearizes_history	2022-04-12 20:37:08.204175+00
31	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 20:37:08.211173+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-12 21:28:28.460826+00	6
2	2022-04-12 21:29:45.224416+00	7
3	2022-04-12 21:30:38.481771+00	8
4	2022-04-12 21:32:35.317422+00	9
5	2022-04-12 21:35:04.134922+00	10
6	2022-04-12 21:37:16.586104+00	11
7	2022-04-12 21:42:51.237818+00	12
8	2022-04-12 21:45:32.521898+00	13
9	2022-04-12 21:45:59.933429+00	14
10	2022-04-12 21:51:12.463762+00	18
11	2022-04-12 21:52:18.015237+00	19
12	2022-04-12 21:56:21.893706+00	21
13	2022-04-12 21:57:10.582739+00	23
14	2022-04-12 22:00:16.434607+00	24
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: abraham_zaragoza
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Mzc2MiwiaWF0IjoxNjQ5Nzk3MzYyLCJqdGkiOiJmYTFkNGY3YjFlYWU0NjJjYWE1MTliMTdlZjE3NzYwNyIsInVzZXJfaWQiOjF9.fLHf3iNEbNwSbjyQnljNY4aacOLNbRhgtv8Q3tOZfV0	2022-04-12 21:02:42.438855+00	2022-04-13 21:02:42+00	1	fa1d4f7b1eae462caa519b17ef177607
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTA4OCwiaWF0IjoxNjQ5Nzk4Njg4LCJqdGkiOiJiMWQ0M2QzMDI1MmU0M2M2YjA1MzM3NjBlM2ZlMjMyOCIsInVzZXJfaWQiOjF9.0Lsyg72YmNhn3RK6ApZ_wIFJy0WIjFsUs2otiDfOtjQ	2022-04-12 21:24:48.279983+00	2022-04-13 21:24:48+00	1	b1d43d30252e43c6b0533760e3fe2328
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTE2NywiaWF0IjoxNjQ5Nzk4NzY3LCJqdGkiOiJlNzJkYmUwYmUxYWI0NTJjYWY3NTVhZTg2ZDYyNzI2YSIsInVzZXJfaWQiOjF9.PWAMPW2jomwdZitlCfrHrl66dc58Vdx6BSLP32PveAg	2022-04-12 21:26:07.028952+00	2022-04-13 21:26:07+00	1	e72dbe0be1ab452caf755ae86d62726a
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTIzMiwiaWF0IjoxNjQ5Nzk4ODMyLCJqdGkiOiJjZTdmNDBjNjNiZDE0MTY0OWI0ZThkYTY4YzlmMjM5ZiIsInVzZXJfaWQiOjF9.UP-xLiKxeeixjtQ9IytdcAvnNp2Vv-dhP5gRKaTiPRE	2022-04-12 21:27:12.209013+00	2022-04-13 21:27:12+00	1	ce7f40c63bd141649b4e8da68c9f239f
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTI2OCwiaWF0IjoxNjQ5Nzk4ODY4LCJqdGkiOiIxNzExZjA5ZDFkZjA0YzBlYjg5ZTcwMjIxZmM3MzljOSIsInVzZXJfaWQiOjF9.lyT3Si2UaI2HzY_M8-HNRqo1GWJSjzvIYMhl9BJdpYA	2022-04-12 21:27:48.269793+00	2022-04-13 21:27:48+00	1	1711f09d1df04c0eb89e70221fc739c9
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTMwNywiaWF0IjoxNjQ5Nzk4OTA3LCJqdGkiOiI5NDcwZWI3NGFjZjQ0OGUyYWE2YzljYmFhNGUyMWRhYiIsInVzZXJfaWQiOjF9.wA50isDOxHEa1hgV3edhN2Ssklxl_suNbzSsuKrxrYE	2022-04-12 21:28:27.410632+00	2022-04-13 21:28:27+00	1	9470eb74acf448e2aa6c9cbaa4e21dab
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTMyNiwiaWF0IjoxNjQ5Nzk4OTI2LCJqdGkiOiIxMjU0YjRmMmFiNDc0NTgxYjdlNjc3N2E4YzdiMDdjZSIsInVzZXJfaWQiOjF9.xDVeofMjF76RZadARKYHsSPr9zGThU8504FVqtiK7zU	2022-04-12 21:28:46.046618+00	2022-04-13 21:28:46+00	1	1254b4f2ab474581b7e6777a8c7b07ce
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTQzNywiaWF0IjoxNjQ5Nzk5MDM3LCJqdGkiOiJlNGQyNjJjOGFjZTg0NTRlOTJkMWEwZTQ3OTRhMWJlZSIsInVzZXJfaWQiOjF9.w85d2PxpdfLlNAALZI65UYMCcPSia2jmsVatyaiq2Gk	2022-04-12 21:30:37.503088+00	2022-04-13 21:30:37+00	1	e4d262c8ace8454e92d1a0e4794a1bee
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTU1NCwiaWF0IjoxNjQ5Nzk5MTU0LCJqdGkiOiJiZDAxZDRjNGQzM2E0MzgxODU4ODZmN2JjMGU4NmYwMSIsInVzZXJfaWQiOjF9.LnDqrMEBN9_cybVm0RQf2GBPHPtsYJba-2LOKFFUuCo	2022-04-12 21:32:34.20361+00	2022-04-13 21:32:34+00	1	bd01d4c4d33a438185886f7bc0e86f01
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTcwMCwiaWF0IjoxNjQ5Nzk5MzAwLCJqdGkiOiI3OGUzMmYxNTQ3Mjc0YzRlOGE4YTY0MmEzNTU5ZmEwZiIsInVzZXJfaWQiOjF9.1cOKsK2NKWytxivnHptzGm8HJKiaoXFSmTK8bptD9vA	2022-04-12 21:35:00.986997+00	2022-04-13 21:35:00+00	1	78e32f1547274c4e8a8a642a3559fa0f
11	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTczMCwiaWF0IjoxNjQ5Nzk5MzMwLCJqdGkiOiJkODJhZmM1ZDIyY2E0NzE4OTkxMzhlY2IyNmI5MzI5ZCIsInVzZXJfaWQiOjF9.zgfu5eU873VzlHm2bN13DCXHE5I8NpHLV2oxJjKOyhw	2022-04-12 21:35:30.517581+00	2022-04-13 21:35:30+00	1	d82afc5d22ca471899138ecb26b9329d
12	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjEyOSwiaWF0IjoxNjQ5Nzk5NzI5LCJqdGkiOiJkY2MyYjNmOWFlZWQ0OThiOWFhNDU4OWE5MGM5OGFjYSIsInVzZXJfaWQiOjJ9.d9CqZskQ--YNs_yx28O3j_4ODNCuAndhNvlaC8eIvuY	2022-04-12 21:42:09.220511+00	2022-04-13 21:42:09+00	2	dcc2b3f9aeed498b9aa4589a90c98aca
13	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjMzMCwiaWF0IjoxNjQ5Nzk5OTMwLCJqdGkiOiJhMzcxOWZjMzczOTU0MDU3OGMyNDgzYTJmZjY4ZTJiNSIsInVzZXJfaWQiOjF9.lsUmoxm0vqfzEbS7-n-xF_zSRBpEtjdXKgUIZsznZjg	2022-04-12 21:45:30.403517+00	2022-04-13 21:45:30+00	1	a3719fc3739540578c2483a2ff68e2b5
14	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjM1OCwiaWF0IjoxNjQ5Nzk5OTU4LCJqdGkiOiJiMDcyYjZmNTI3YzQ0MzQ4OGE0ODY0MjhjODVkNzU5MyIsInVzZXJfaWQiOjF9.nN_sOLuQThN4m8osNSiKrtV6wuID0dZJr7T48Bszpk4	2022-04-12 21:45:58.454294+00	2022-04-13 21:45:58+00	1	b072b6f527c443488a486428c85d7593
15	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjM3MSwiaWF0IjoxNjQ5Nzk5OTcxLCJqdGkiOiJiNDlhNmI3Yzk5MDE0ZjIwOTQ5YzZkMTg3ZTk5YjIzYSIsInVzZXJfaWQiOjF9.keOewR-_Nqh6WER3Q2Xh5Hd7GShlMVuILJBBrEyfGpI	2022-04-12 21:46:11.67194+00	2022-04-13 21:46:11+00	1	b49a6b7c99014f20949c6d187e99b23a
16	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjQ2MywiaWF0IjoxNjQ5ODAwMDYzLCJqdGkiOiI1YTE4NzdjNjdjYWI0NTAzYWMzOWZjZjViMzY5NWY1NSIsInVzZXJfaWQiOjF9.HkuHLv2kT3MmIpfmdiSgOFpecaWUSJ8w1hYuUhurKCs	2022-04-12 21:47:43.267227+00	2022-04-13 21:47:43+00	1	5a1877c67cab4503ac39fcf5b3695f55
17	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjY0NCwiaWF0IjoxNjQ5ODAwMjQ0LCJqdGkiOiJmYmI4MjlkMTg1ZDg0MTMwYTMyNDM4ZjAxM2QyZWI0YiIsInVzZXJfaWQiOjF9.yDpJJtVWc2S00XtpR44Y-8cOSMEz3A_bPm5LKcmCPXw	2022-04-12 21:50:44.683456+00	2022-04-13 21:50:44+00	1	fbb829d185d84130a32438f013d2eb4b
18	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjY3MSwiaWF0IjoxNjQ5ODAwMjcxLCJqdGkiOiI5Y2UxNmUwMjQ0MDk0ZmYyOGM1Y2QxNjYyNTYzYmM3NyIsInVzZXJfaWQiOjF9.jxFF3sjLOQuk_37aSvf_q1m2uIZThJns9yh4Te8Wl8I	2022-04-12 21:51:11.554333+00	2022-04-13 21:51:11+00	1	9ce16e0244094ff28c5cd1662563bc77
19	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjczNiwiaWF0IjoxNjQ5ODAwMzM2LCJqdGkiOiIwMDlmNmNmNjE0NGI0OTQyYjIyMjNlNTAxODJlN2FhMCIsInVzZXJfaWQiOjF9.wBOYwwm1zeai4I9sC68yNljR2ow0ZFQYCXnOabrpNn0	2022-04-12 21:52:16.937169+00	2022-04-13 21:52:16+00	1	009f6cf6144b4942b2223e50182e7aa0
20	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njg4OSwiaWF0IjoxNjQ5ODAwNDg5LCJqdGkiOiJlOTcxNTIzOTg4Mjk0OGFhOTVjNGJiZTU3OGE2OGQ4OCIsInVzZXJfaWQiOjF9.Z9bB60JTNWbf4hHxXhYE0B73gXf7SVImPfp3O2NDaWg	2022-04-12 21:54:49.482727+00	2022-04-13 21:54:49+00	1	e9715239882948aa95c4bbe578a68d88
21	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njk4MCwiaWF0IjoxNjQ5ODAwNTgwLCJqdGkiOiI5YWQzMjgwZTNhYTc0M2RlODdhZjhkNzYyODM3NzVjYiIsInVzZXJfaWQiOjF9.dj28-UpDpgrVTZGx2unZL_n0M304JuM-NbuIO-_lYLo	2022-04-12 21:56:20.803229+00	2022-04-13 21:56:20+00	1	9ad3280e3aa743de87af8d76283775cb
22	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzAwMiwiaWF0IjoxNjQ5ODAwNjAyLCJqdGkiOiI2MDc0YmU1NTZkMTU0YWRhODEzMmM2NTU5NWYyOGI3MSIsInVzZXJfaWQiOjF9.E7rZYgwMh5QNvRPwAsoZj_K1l6nJp-uVVWmIC5AuwS4	2022-04-12 21:56:42.719421+00	2022-04-13 21:56:42+00	1	6074be556d154ada8132c65595f28b71
23	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzAyOSwiaWF0IjoxNjQ5ODAwNjI5LCJqdGkiOiI0NDU0ZGI0YThhMGE0YmY1OTllZDZmNWUyNjE2OTU2YiIsInVzZXJfaWQiOjF9.QMJczORsaw1SXDB9LtYF6j1E655f649XH7SR0CMSVDU	2022-04-12 21:57:09.785172+00	2022-04-13 21:57:09+00	1	4454db4a8a0a4bf599ed6f5e2616956b
24	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzIxNSwiaWF0IjoxNjQ5ODAwODE1LCJqdGkiOiJlMjI4MmFjMzFhNDI0MjZiYmJlNGM0NmM2ODM4ZjhiNiIsInVzZXJfaWQiOjF9.79Gw2FJRyLOWWdrp5PCEzBNYAJQGI0M8Dtjsq5YESuA	2022-04-12 22:00:15.622305+00	2022-04-13 22:00:15+00	1	e2282ac31a42426bbbe4c46c6838f8b6
25	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzI2NiwiaWF0IjoxNjQ5ODAwODY2LCJqdGkiOiIzNmZiMzc1ZDYxZmM0MzUxODFmZWMzMDAyMmE3ZjAxYyIsInVzZXJfaWQiOjF9.TkuyoANE2VqrU0D9FdxHE8TMRS6Qww1QAr9leF19too	2022-04-12 22:01:06.946975+00	2022-04-13 22:01:06+00	1	36fb375d61fc435181fec30022a7f01c
26	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTk0OTU3NywiaWF0IjoxNjQ5ODYzMTc3LCJqdGkiOiI0ZmQwMzQzMjI1NTc0ZTJmODJiNWFhMTlkNDNlZWQxOSIsInVzZXJfaWQiOjF9.SnXeVYbio3YkIXly6an9ng4KdFtJ99b-_IqZ_QGQwD8	2022-04-13 15:19:37.771385+00	2022-04-14 15:19:37+00	1	4fd0343225574e2f82b5aa19d43eed19
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.books_booksgenres_id_seq', 1, false);


--
-- Name: books_bookslanguages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.books_bookslanguages_id_seq', 1, false);


--
-- Name: books_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.books_genre_id_seq', 1, false);


--
-- Name: books_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.books_language_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 14, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abraham_zaragoza
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 26, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_booksgenres books_booksgenres_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_pkey PRIMARY KEY (id);


--
-- Name: books_bookslanguages books_bookslanguages_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_bookslanguages
    ADD CONSTRAINT books_bookslanguages_pkey PRIMARY KEY (id);


--
-- Name: books_genre books_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_genre
    ADD CONSTRAINT books_genre_pkey PRIMARY KEY (id);


--
-- Name: books_language books_language_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_language
    ADD CONSTRAINT books_language_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: books_booksgenres_book_id_b33184f2; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX books_booksgenres_book_id_b33184f2 ON public.books_booksgenres USING btree (book_id);


--
-- Name: books_booksgenres_genre_id_607041db; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX books_booksgenres_genre_id_607041db ON public.books_booksgenres USING btree (genre_id);


--
-- Name: books_bookslanguages_book_id_0fc33559; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX books_bookslanguages_book_id_0fc33559 ON public.books_bookslanguages USING btree (book_id);


--
-- Name: books_bookslanguages_language_id_8b577bc4; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX books_bookslanguages_language_id_8b577bc4 ON public.books_bookslanguages USING btree (language_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: abraham_zaragoza
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksgenres books_booksgenres_book_id_b33184f2_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_book_id_b33184f2_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksgenres books_booksgenres_genre_id_607041db_fk_books_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_genre_id_607041db_fk_books_genre_id FOREIGN KEY (genre_id) REFERENCES public.books_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookslanguages books_bookslanguages_book_id_0fc33559_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_bookslanguages
    ADD CONSTRAINT books_bookslanguages_book_id_0fc33559_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookslanguages books_bookslanguages_language_id_8b577bc4_fk_books_language_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.books_bookslanguages
    ADD CONSTRAINT books_bookslanguages_language_id_8b577bc4_fk_books_language_id FOREIGN KEY (language_id) REFERENCES public.books_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: abraham_zaragoza
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

