PGDMP     '    "                x         
   livecoding     13.1 (Ubuntu 13.1-1.pgdg20.04+1)     13.1 (Ubuntu 13.1-1.pgdg20.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384 
   livecoding    DATABASE     _   CREATE DATABASE livecoding WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE livecoding;
                postgres    false            �            1259    16396 	   pilot_seq    SEQUENCE     r   CREATE SEQUENCE public.pilot_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.pilot_seq;
       public          postgres    false            �            1259    16404    pilot_vehicles_seq    SEQUENCE     {   CREATE SEQUENCE public.pilot_vehicles_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.pilot_vehicles_seq;
       public          postgres    false            �            1259    16406    pilot_vehicles    TABLE     
  CREATE TABLE public.pilot_vehicles (
    id integer DEFAULT nextval('public.pilot_vehicles_seq'::regclass) NOT NULL,
    "vehicleId" integer,
    "pilotId" integer NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
 "   DROP TABLE public.pilot_vehicles;
       public         heap    postgres    false    204            �            1259    16398    pilots    TABLE     "  CREATE TABLE public.pilots (
    id integer DEFAULT nextval('public.pilot_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    mass integer NOT NULL,
    height integer NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public.pilots;
       public         heap    postgres    false    202            �            1259    16385    vehicle_seq    SEQUENCE     t   CREATE SEQUENCE public.vehicle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.vehicle_seq;
       public          postgres    false            �            1259    16387    vehicles    TABLE     8  CREATE TABLE public.vehicles (
    id integer DEFAULT nextval('public.vehicle_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    manufacturer character varying(255) NOT NULL,
    passengers integer,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public.vehicles;
       public         heap    postgres    false    200            �          0    16406    pilot_vehicles 
   TABLE DATA           ^   COPY public.pilot_vehicles (id, "vehicleId", "pilotId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    205   P       �          0    16398    pilots 
   TABLE DATA           R   COPY public.pilots (id, name, mass, height, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    203   �       �          0    16387    vehicles 
   TABLE DATA           `   COPY public.vehicles (id, name, manufacturer, passengers, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    201   �       �           0    0 	   pilot_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.pilot_seq', 11, true);
          public          postgres    false    202            �           0    0    pilot_vehicles_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.pilot_vehicles_seq', 19, true);
          public          postgres    false    204            �           0    0    vehicle_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.vehicle_seq', 10, true);
          public          postgres    false    200            A           2606    16411 "   pilot_vehicles pilot_vehicles_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pilot_vehicles
    ADD CONSTRAINT pilot_vehicles_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.pilot_vehicles DROP CONSTRAINT pilot_vehicles_pkey;
       public            postgres    false    205            ?           2606    16403    pilots pilots_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pilots
    ADD CONSTRAINT pilots_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.pilots DROP CONSTRAINT pilots_pkey;
       public            postgres    false    203            =           2606    16395    vehicles vehicles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vehicles DROP CONSTRAINT vehicles_pkey;
       public            postgres    false    201            C           2606    16417 +   pilot_vehicles pilot_vehicles_id_pilot_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pilot_vehicles
    ADD CONSTRAINT pilot_vehicles_id_pilot_fkey FOREIGN KEY ("pilotId") REFERENCES public.pilots(id);
 U   ALTER TABLE ONLY public.pilot_vehicles DROP CONSTRAINT pilot_vehicles_id_pilot_fkey;
       public          postgres    false    203    2879    205            B           2606    16412 -   pilot_vehicles pilot_vehicles_id_vehicle_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pilot_vehicles
    ADD CONSTRAINT pilot_vehicles_id_vehicle_fkey FOREIGN KEY ("vehicleId") REFERENCES public.vehicles(id);
 W   ALTER TABLE ONLY public.pilot_vehicles DROP CONSTRAINT pilot_vehicles_id_vehicle_fkey;
       public          postgres    false    205    201    2877            �   h   x�E���0C�0L�%:A����S%�g�����3i.�r�Z�z���z'�Ã͙֘�x��A�&�bId�����Tbt�.��kE�a"����R���/��+D      �   �   x�u��j�0E�W_�PЌ���25���%�f��B�-l��п�\b�MaVg��ʩ���~���=�-��p}K#�ʼW`��ά
%�D���F~���㯜���ɪ�]t0K����GY�~�!�|���'yi��)��W�#���8g��)CzI?��P׃Li�.��87J�fH��uqQ�|����b�K��ԹxG�A��Y+b�$Y�9�m�����u#���O�      �   7  x���oK�0�__?�} �������B��u(�M���ciR.�ƾ�ZT|!���sO~wI S���&��Қ.ذ�b��V�gk`8��2���8���k۶�*5�m~��':��x8B�p-Q�̊ͺ���A��]<.�y%���T�d��&����Af���^����f��Ɍ�m���W0��i��8��)���M薕�9�J|Cƣ݄Yiq��L���5�z��ɕ��իn �VLW���O��R�.�J��\�60_�$�𽬱P�%x)�w;VSSu���Y8�����R�y��4�񠗬ϣ(z)<�N     