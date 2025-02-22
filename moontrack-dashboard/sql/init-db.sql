PGDMP     -                     w         	   moontrack    9.5.9    10.5 <    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    24577 	   moontrack    DATABASE     �   CREATE DATABASE moontrack WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE moontrack;
          	   moontrack    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12355    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    41046    ab_tests    TABLE     �  CREATE TABLE public.ab_tests (
    id integer NOT NULL,
    buy_gems_from integer,
    buy_gems_to integer,
    day_of_user_reg_is character varying(255),
    end_date timestamp without time zone,
    last_user_activity_from timestamp without time zone,
    last_user_activity_to timestamp without time zone,
    name character varying(32),
    player_level_from integer,
    player_level_to integer,
    start_date timestamp without time zone,
    test_owner character varying(255),
    company_id integer
);
    DROP TABLE public.ab_tests;
       public      	   moontrack    false    6            �            1259    41054 	   companies    TABLE     [   CREATE TABLE public.companies (
    id integer NOT NULL,
    name character varying(32)
);
    DROP TABLE public.companies;
       public      	   moontrack    false    6            �            1259    41059    events    TABLE     �   CREATE TABLE public.events (
    id integer NOT NULL,
    data jsonb,
    date timestamp without time zone,
    name character varying(127),
    realm_user character varying(32),
    type character varying(127),
    game_id integer
);
    DROP TABLE public.events;
       public      	   moontrack    false    6            �            1259    90824    filters    TABLE     N   CREATE TABLE public.filters (
    id integer NOT NULL,
    game_id integer
);
    DROP TABLE public.filters;
       public      	   moontrack    false    6            �            1259    41067    games    TABLE     �   CREATE TABLE public.games (
    id integer NOT NULL,
    ab_test_id integer,
    name character varying(127),
    short_name character varying(32),
    user_group_id integer,
    company_id integer
);
    DROP TABLE public.games;
       public      	   moontrack    false    6            �            1259    65622    metric_types    TABLE     _   CREATE TABLE public.metric_types (
    id smallint NOT NULL,
    name character varying(32)
);
     DROP TABLE public.metric_types;
       public      	   moontrack    false    6            �            1259    41072 	   platforms    TABLE     �   CREATE TABLE public.platforms (
    id integer NOT NULL,
    ab_test_id integer,
    name character varying(32),
    user_group_id integer,
    game_id integer
);
    DROP TABLE public.platforms;
       public      	   moontrack    false    6            �            1259    41077    realms    TABLE     �   CREATE TABLE public.realms (
    id integer NOT NULL,
    ab_test_id integer,
    name character varying(32),
    user_group_id integer,
    game_id integer
);
    DROP TABLE public.realms;
       public      	   moontrack    false    6            �            1259    41082    user_groups    TABLE     �  CREATE TABLE public.user_groups (
    id integer NOT NULL,
    buy_gems_from integer,
    buy_gems_to integer,
    day_of_user_reg_is character varying(255),
    last_user_activity_from timestamp without time zone,
    last_user_activity_to timestamp without time zone,
    name character varying(32),
    player_level_from integer,
    player_level_to integer,
    company_id integer
);
    DROP TABLE public.user_groups;
       public      	   moontrack    false    6            �            1259    32816    users    TABLE     5  CREATE TABLE public.users (
    id integer NOT NULL,
    ab_test_id integer,
    create_time timestamp without time zone,
    email character varying(255),
    is_admin boolean,
    password character varying(32),
    username character varying(32),
    company_id integer,
    login character varying(32)
);
    DROP TABLE public.users;
       public      	   moontrack    false    6            �            1259    91030    widgets    TABLE        CREATE TABLE public.widgets (
    id integer NOT NULL,
    filter_id integer,
    metric_type smallint,
    user_id integer
);
    DROP TABLE public.widgets;
       public      	   moontrack    false    6            �          0    41046    ab_tests 
   TABLE DATA               �   COPY public.ab_tests (id, buy_gems_from, buy_gems_to, day_of_user_reg_is, end_date, last_user_activity_from, last_user_activity_to, name, player_level_from, player_level_to, start_date, test_owner, company_id) FROM stdin;
    public    	   moontrack    false    182   .J       �          0    41054 	   companies 
   TABLE DATA               -   COPY public.companies (id, name) FROM stdin;
    public    	   moontrack    false    183   KJ       �          0    41059    events 
   TABLE DATA               Q   COPY public.events (id, data, date, name, realm_user, type, game_id) FROM stdin;
    public    	   moontrack    false    184   sJ       �          0    90824    filters 
   TABLE DATA               .   COPY public.filters (id, game_id) FROM stdin;
    public    	   moontrack    false    190   �J       �          0    41067    games 
   TABLE DATA               \   COPY public.games (id, ab_test_id, name, short_name, user_group_id, company_id) FROM stdin;
    public    	   moontrack    false    185   �J       �          0    65622    metric_types 
   TABLE DATA               0   COPY public.metric_types (id, name) FROM stdin;
    public    	   moontrack    false    189   �J       �          0    41072 	   platforms 
   TABLE DATA               Q   COPY public.platforms (id, ab_test_id, name, user_group_id, game_id) FROM stdin;
    public    	   moontrack    false    186   �K       �          0    41077    realms 
   TABLE DATA               N   COPY public.realms (id, ab_test_id, name, user_group_id, game_id) FROM stdin;
    public    	   moontrack    false    187   �K       �          0    41082    user_groups 
   TABLE DATA               �   COPY public.user_groups (id, buy_gems_from, buy_gems_to, day_of_user_reg_is, last_user_activity_from, last_user_activity_to, name, player_level_from, player_level_to, company_id) FROM stdin;
    public    	   moontrack    false    188   �K       �          0    32816    users 
   TABLE DATA               t   COPY public.users (id, ab_test_id, create_time, email, is_admin, password, username, company_id, login) FROM stdin;
    public    	   moontrack    false    181   L       �          0    91030    widgets 
   TABLE DATA               F   COPY public.widgets (id, filter_id, metric_type, user_id) FROM stdin;
    public    	   moontrack    false    191   QL       �           2606    41053    ab_tests ab_tests_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ab_tests
    ADD CONSTRAINT ab_tests_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ab_tests DROP CONSTRAINT ab_tests_pkey;
       public      	   moontrack    false    182            �           2606    41058    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public      	   moontrack    false    183            �           2606    41066    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public      	   moontrack    false    184            �           2606    90828    filters filters_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_pkey;
       public      	   moontrack    false    190            �           2606    41071    games games_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
       public      	   moontrack    false    185            �           2606    41076    platforms platforms_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.platforms DROP CONSTRAINT platforms_pkey;
       public      	   moontrack    false    186            �           2606    41081    realms realms_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.realms
    ADD CONSTRAINT realms_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.realms DROP CONSTRAINT realms_pkey;
       public      	   moontrack    false    187            �           2606    41086    user_groups user_groups_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_groups DROP CONSTRAINT user_groups_pkey;
       public      	   moontrack    false    188            �           2606    32820    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public      	   moontrack    false    181            �           2606    65626    metric_types widget_types_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.metric_types
    ADD CONSTRAINT widget_types_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.metric_types DROP CONSTRAINT widget_types_pkey;
       public      	   moontrack    false    189            �           2606    91034    widgets widgets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.widgets
    ADD CONSTRAINT widgets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.widgets DROP CONSTRAINT widgets_pkey;
       public      	   moontrack    false    191                       2606    91040 #   widgets fk1evypawqr0b5trjkxqodn8v8a    FK CONSTRAINT     �   ALTER TABLE ONLY public.widgets
    ADD CONSTRAINT fk1evypawqr0b5trjkxqodn8v8a FOREIGN KEY (metric_type) REFERENCES public.metric_types(id);
 M   ALTER TABLE ONLY public.widgets DROP CONSTRAINT fk1evypawqr0b5trjkxqodn8v8a;
       public    	   moontrack    false    189    191    2039                       2606    91045 #   widgets fk2u7ak3kbgkuq4h5lclu6yyxnl    FK CONSTRAINT     �   ALTER TABLE ONLY public.widgets
    ADD CONSTRAINT fk2u7ak3kbgkuq4h5lclu6yyxnl FOREIGN KEY (user_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.widgets DROP CONSTRAINT fk2u7ak3kbgkuq4h5lclu6yyxnl;
       public    	   moontrack    false    191    181    2023            
           2606    90829 #   filters fk372dkvp9uv1ws3o81pkagsyv2    FK CONSTRAINT     �   ALTER TABLE ONLY public.filters
    ADD CONSTRAINT fk372dkvp9uv1ws3o81pkagsyv2 FOREIGN KEY (game_id) REFERENCES public.games(id);
 M   ALTER TABLE ONLY public.filters DROP CONSTRAINT fk372dkvp9uv1ws3o81pkagsyv2;
       public    	   moontrack    false    2031    185    190                       2606    91035 #   widgets fk5vbvkh8rm02f2m9dls27law7m    FK CONSTRAINT     �   ALTER TABLE ONLY public.widgets
    ADD CONSTRAINT fk5vbvkh8rm02f2m9dls27law7m FOREIGN KEY (filter_id) REFERENCES public.filters(id);
 M   ALTER TABLE ONLY public.widgets DROP CONSTRAINT fk5vbvkh8rm02f2m9dls27law7m;
       public    	   moontrack    false    190    2041    191                       2606    41137 "   realms fk6r2utrsbmriewcot2rocspf1b    FK CONSTRAINT     �   ALTER TABLE ONLY public.realms
    ADD CONSTRAINT fk6r2utrsbmriewcot2rocspf1b FOREIGN KEY (user_group_id) REFERENCES public.user_groups(id);
 L   ALTER TABLE ONLY public.realms DROP CONSTRAINT fk6r2utrsbmriewcot2rocspf1b;
       public    	   moontrack    false    188    187    2037                       2606    41122 %   platforms fk7kwl4cu9tjdpk20ubhklkargv    FK CONSTRAINT     �   ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT fk7kwl4cu9tjdpk20ubhklkargv FOREIGN KEY (user_group_id) REFERENCES public.user_groups(id);
 O   ALTER TABLE ONLY public.platforms DROP CONSTRAINT fk7kwl4cu9tjdpk20ubhklkargv;
       public    	   moontrack    false    188    186    2037                       2606    41112 %   platforms fk7sm4rdjgvb3iccgtqlm1iaf0r    FK CONSTRAINT     �   ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT fk7sm4rdjgvb3iccgtqlm1iaf0r FOREIGN KEY (game_id) REFERENCES public.games(id);
 O   ALTER TABLE ONLY public.platforms DROP CONSTRAINT fk7sm4rdjgvb3iccgtqlm1iaf0r;
       public    	   moontrack    false    186    185    2031                        2606    41097 !   games fk9k1rbhv65vxu0hoppl4nh1rpg    FK CONSTRAINT     �   ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk9k1rbhv65vxu0hoppl4nh1rpg FOREIGN KEY (company_id) REFERENCES public.companies(id);
 K   ALTER TABLE ONLY public.games DROP CONSTRAINT fk9k1rbhv65vxu0hoppl4nh1rpg;
       public    	   moontrack    false    183    185    2027            	           2606    41142 '   user_groups fk9we22cqirn146bk0ajpcwfney    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT fk9we22cqirn146bk0ajpcwfney FOREIGN KEY (company_id) REFERENCES public.companies(id);
 Q   ALTER TABLE ONLY public.user_groups DROP CONSTRAINT fk9we22cqirn146bk0ajpcwfney;
       public    	   moontrack    false    183    188    2027            �           2606    41152 !   users fkc8f3snbbyw49ifqb0pq6ay12k    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkc8f3snbbyw49ifqb0pq6ay12k FOREIGN KEY (ab_test_id) REFERENCES public.ab_tests(id);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT fkc8f3snbbyw49ifqb0pq6ay12k;
       public    	   moontrack    false    182    181    2025            �           2606    41087 $   ab_tests fkcajn33eqp5o5cvc01nm7pvimg    FK CONSTRAINT     �   ALTER TABLE ONLY public.ab_tests
    ADD CONSTRAINT fkcajn33eqp5o5cvc01nm7pvimg FOREIGN KEY (company_id) REFERENCES public.companies(id);
 N   ALTER TABLE ONLY public.ab_tests DROP CONSTRAINT fkcajn33eqp5o5cvc01nm7pvimg;
       public    	   moontrack    false    183    182    2027                       2606    41127 "   realms fkceykwk5dtwd29rrk0q03ibiav    FK CONSTRAINT     �   ALTER TABLE ONLY public.realms
    ADD CONSTRAINT fkceykwk5dtwd29rrk0q03ibiav FOREIGN KEY (game_id) REFERENCES public.games(id);
 L   ALTER TABLE ONLY public.realms DROP CONSTRAINT fkceykwk5dtwd29rrk0q03ibiav;
       public    	   moontrack    false    185    187    2031            �           2606    41092 "   events fkgllk7v39w1w7cdxa9c819lnjn    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT fkgllk7v39w1w7cdxa9c819lnjn FOREIGN KEY (game_id) REFERENCES public.games(id);
 L   ALTER TABLE ONLY public.events DROP CONSTRAINT fkgllk7v39w1w7cdxa9c819lnjn;
       public    	   moontrack    false    184    185    2031                       2606    41132 "   realms fki5pau73ewv5xi3d6akif4am2o    FK CONSTRAINT     �   ALTER TABLE ONLY public.realms
    ADD CONSTRAINT fki5pau73ewv5xi3d6akif4am2o FOREIGN KEY (ab_test_id) REFERENCES public.ab_tests(id);
 L   ALTER TABLE ONLY public.realms DROP CONSTRAINT fki5pau73ewv5xi3d6akif4am2o;
       public    	   moontrack    false    182    187    2025            �           2606    41147 !   users fkin8gn4o1hpiwe6qe4ey7ykwq7    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkin8gn4o1hpiwe6qe4ey7ykwq7 FOREIGN KEY (company_id) REFERENCES public.companies(id);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT fkin8gn4o1hpiwe6qe4ey7ykwq7;
       public    	   moontrack    false    183    181    2027                       2606    41107 !   games fkkc6i0w67a7xs3of58et0de1mk    FK CONSTRAINT     �   ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkkc6i0w67a7xs3of58et0de1mk FOREIGN KEY (user_group_id) REFERENCES public.user_groups(id);
 K   ALTER TABLE ONLY public.games DROP CONSTRAINT fkkc6i0w67a7xs3of58et0de1mk;
       public    	   moontrack    false    2037    188    185                       2606    41102 !   games fkryn1l1y75vw8j3v4hosgcwawl    FK CONSTRAINT     �   ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkryn1l1y75vw8j3v4hosgcwawl FOREIGN KEY (ab_test_id) REFERENCES public.ab_tests(id);
 K   ALTER TABLE ONLY public.games DROP CONSTRAINT fkryn1l1y75vw8j3v4hosgcwawl;
       public    	   moontrack    false    2025    185    182                       2606    41117 %   platforms fksqxg3i9udfng7vhxuwxux9tg9    FK CONSTRAINT     �   ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT fksqxg3i9udfng7vhxuwxux9tg9 FOREIGN KEY (ab_test_id) REFERENCES public.ab_tests(id);
 O   ALTER TABLE ONLY public.platforms DROP CONSTRAINT fksqxg3i9udfng7vhxuwxux9tg9;
       public    	   moontrack    false    2025    186    182            �      x������ � �      �      x�3������M�K����� (,#      �      x������ � �      �      x������ � �      �   >   x�3����,J,I-V�OSp-K-*NM,	�!�1��IMO�KI,�Tp)O,JC���qqq �&      �   �   x�M��
�@���S�������JE�֋��.�]X�B߾Y*���|2j��'�xc�f<��L�M���?m�0�F���u�
�ҏ*S���bgmV�3t<�ջ�k	\{OA��!f�.�X��aX�E=��-d��	�MH����I<�턈_\DR      �      x������ � �      �      x������ � �      �      x������ � �      �   >   x�3���4sScô�d##�$���$3c#�d�4�*C�Ĕ��<�=... �      �      x�3����4����� �     