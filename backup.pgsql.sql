PGDMP     4    -                 y            gcsfileuploader    12.4    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16428    gcsfileuploader    DATABASE     c   CREATE DATABASE gcsfileuploader WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF8';
    DROP DATABASE gcsfileuploader;
                cloudsqlsuperuser    false            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM cloudsqladmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO cloudsqlsuperuser;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   cloudsqlsuperuser    false    3            �            1259    16514    configuration    TABLE       CREATE TABLE public.configuration (
    id integer NOT NULL,
    key character varying(255),
    value text,
    name character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public.configuration;
       public         heap    nodeuser    false            �            1259    16520    configuration_id_seq    SEQUENCE     �   CREATE SEQUENCE public.configuration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.configuration_id_seq;
       public          nodeuser    false    202            �           0    0    configuration_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.configuration_id_seq OWNED BY public.configuration.id;
          public          nodeuser    false    203            ^           2604    16522    configuration id    DEFAULT     t   ALTER TABLE ONLY public.configuration ALTER COLUMN id SET DEFAULT nextval('public.configuration_id_seq'::regclass);
 ?   ALTER TABLE public.configuration ALTER COLUMN id DROP DEFAULT;
       public          nodeuser    false    203    202            �          0    16514    configuration 
   TABLE DATA           d   COPY public.configuration (id, key, value, name, description, "createdAt", "updatedAt") FROM stdin;
    public          nodeuser    false    202   �       �           0    0    configuration_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.configuration_id_seq', 16, true);
          public          nodeuser    false    203            `           2606    16524     configuration configuration_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.configuration
    ADD CONSTRAINT configuration_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.configuration DROP CONSTRAINT configuration_pkey;
       public            nodeuser    false    202            �   $  x��SMo�0=ï�z]�!m�e)�f7M�@��B�8�Y��6i���}B��F��yo<cw���F�{o��d�Ӊ'=�M|�],H:G�7�Gy��(��,J�Q�$�޸��%F@0��`�W)1��8����,J+O�D�����6�*>��4�-�EJ^��H��&u�����x-:(�,��o���h�,0S��Ae\%�`��R��y]�0�<���VoA�V��^�O�Ì����r���}�؄��2��5F�a\R��}�j�5re{���5&%k��k#z��g>�e�K���d��BS5M`؎e:�f��o��$CX=��d��siVf�Z�3gQ�T�b��qb�Kb�+��
�T�`ˁ����ݩ����ܾ���~�=_Z�R䉒���*P"�p� /kt�[��]��-�;�a�w�A4F~ -9/]�Z4��jB±6�/ݡ��h������a�:�;��7�݁�/I��h��3N#q5u����48J��� ��S&.��"m�ļ�t.Z�ĩۚa^vt��Ϛ,�<]v     