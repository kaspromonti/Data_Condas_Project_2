PGDMP                         x           happiness_db    12.3    12.3 R    s           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            t           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            u           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            v           1262    25473    happiness_db    DATABASE     �   CREATE DATABASE happiness_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE happiness_db;
                postgres    false            �            1259    25474    alcohol    TABLE     �   CREATE TABLE public.alcohol (
    inalcoholid integer NOT NULL,
    excountryid integer,
    alcoholperyear double precision,
    alcoholperday double precision,
    beer double precision,
    wine double precision,
    spirits double precision
);
    DROP TABLE public.alcohol;
       public         heap    postgres    false            �            1259    25477    alcohol_inalcoholid_seq    SEQUENCE     �   CREATE SEQUENCE public.alcohol_inalcoholid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.alcohol_inalcoholid_seq;
       public          postgres    false    202            w           0    0    alcohol_inalcoholid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.alcohol_inalcoholid_seq OWNED BY public.alcohol.inalcoholid;
          public          postgres    false    203            �            1259    25595    coordinates    TABLE     �   CREATE TABLE public.coordinates (
    id integer NOT NULL,
    excountryid integer,
    latitude double precision,
    longitude double precision
);
    DROP TABLE public.coordinates;
       public         heap    postgres    false            �            1259    25593    coordinates_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coordinates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.coordinates_id_seq;
       public          postgres    false    221            x           0    0    coordinates_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.coordinates_id_seq OWNED BY public.coordinates.id;
          public          postgres    false    220            �            1259    25479    countryreference    TABLE     �   CREATE TABLE public.countryreference (
    incountryid integer NOT NULL,
    countryname character varying,
    region character varying
);
 $   DROP TABLE public.countryreference;
       public         heap    postgres    false            �            1259    25485     countryreference_incountryid_seq    SEQUENCE     �   CREATE SEQUENCE public.countryreference_incountryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.countryreference_incountryid_seq;
       public          postgres    false    204            y           0    0     countryreference_incountryid_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.countryreference_incountryid_seq OWNED BY public.countryreference.incountryid;
          public          postgres    false    205            �            1259    25487    fitness    TABLE     �   CREATE TABLE public.fitness (
    infitnessid integer NOT NULL,
    excountryid integer,
    healthgrade double precision,
    pop2020 double precision
);
    DROP TABLE public.fitness;
       public         heap    postgres    false            �            1259    25490    fitness_infitnessid_seq    SEQUENCE     �   CREATE SEQUENCE public.fitness_infitnessid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.fitness_infitnessid_seq;
       public          postgres    false    206            z           0    0    fitness_infitnessid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.fitness_infitnessid_seq OWNED BY public.fitness.infitnessid;
          public          postgres    false    207            �            1259    25492 	   happiness    TABLE     �  CREATE TABLE public.happiness (
    inhappinessid integer NOT NULL,
    excountryid integer,
    happinessrating double precision,
    gdppercapita double precision,
    socialsupport double precision,
    healthylifeexpectancy double precision,
    freedomlifechoice double precision,
    generosity double precision,
    perceptionofcorruption double precision,
    dystopiaresidual double precision,
    year integer
);
    DROP TABLE public.happiness;
       public         heap    postgres    false            �            1259    25495    happiness_inhappinessid_seq    SEQUENCE     �   CREATE SEQUENCE public.happiness_inhappinessid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.happiness_inhappinessid_seq;
       public          postgres    false    208            {           0    0    happiness_inhappinessid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.happiness_inhappinessid_seq OWNED BY public.happiness.inhappinessid;
          public          postgres    false    209            �            1259    25497 
   healthcare    TABLE     |   CREATE TABLE public.healthcare (
    inhealthcareid integer NOT NULL,
    excountryid integer,
    hashealthcare boolean
);
    DROP TABLE public.healthcare;
       public         heap    postgres    false            �            1259    25500    healthcare_inhealthcareid_seq    SEQUENCE     �   CREATE SEQUENCE public.healthcare_inhealthcareid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.healthcare_inhealthcareid_seq;
       public          postgres    false    210            |           0    0    healthcare_inhealthcareid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.healthcare_inhealthcareid_seq OWNED BY public.healthcare.inhealthcareid;
          public          postgres    false    211            �            1259    25502 	   marijuana    TABLE     �   CREATE TABLE public.marijuana (
    inmarijuanaid integer NOT NULL,
    excountryid integer,
    recreational character varying,
    medical character varying
);
    DROP TABLE public.marijuana;
       public         heap    postgres    false            �            1259    25508    marijuana_inmarijuanaid_seq    SEQUENCE     �   CREATE SEQUENCE public.marijuana_inmarijuanaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.marijuana_inmarijuanaid_seq;
       public          postgres    false    212            }           0    0    marijuana_inmarijuanaid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.marijuana_inmarijuanaid_seq OWNED BY public.marijuana.inmarijuanaid;
          public          postgres    false    213            �            1259    25510    sports    TABLE     v   CREATE TABLE public.sports (
    insportsid integer NOT NULL,
    excountryid integer,
    sport character varying
);
    DROP TABLE public.sports;
       public         heap    postgres    false            �            1259    25516    sports_insportsid_seq    SEQUENCE     �   CREATE SEQUENCE public.sports_insportsid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.sports_insportsid_seq;
       public          postgres    false    214            ~           0    0    sports_insportsid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.sports_insportsid_seq OWNED BY public.sports.insportsid;
          public          postgres    false    215            �            1259    25518    userdata    TABLE     �  CREATE TABLE public.userdata (
    id integer NOT NULL,
    firstname character varying,
    lastname character varying,
    zipcode character varying,
    email character varying,
    gender character varying,
    age integer,
    income character varying,
    favregion character varying,
    favsport character varying,
    favalcohol character varying,
    fitness character varying,
    marijuanamedical character varying,
    marijuanarec character varying,
    unihealthcare boolean,
    hoursworked character varying,
    gdppercap character varying,
    socialenv character varying,
    lifechoices character varying,
    generosity character varying,
    govtrust character varying
);
    DROP TABLE public.userdata;
       public         heap    postgres    false            �            1259    25524    userdata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.userdata_id_seq;
       public          postgres    false    216                       0    0    userdata_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.userdata_id_seq OWNED BY public.userdata.id;
          public          postgres    false    217            �            1259    25526 	   workhours    TABLE     y   CREATE TABLE public.workhours (
    inworkid integer NOT NULL,
    excountryid integer,
    avghours double precision
);
    DROP TABLE public.workhours;
       public         heap    postgres    false            �            1259    25529    workhours_inworkid_seq    SEQUENCE     �   CREATE SEQUENCE public.workhours_inworkid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.workhours_inworkid_seq;
       public          postgres    false    218            �           0    0    workhours_inworkid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.workhours_inworkid_seq OWNED BY public.workhours.inworkid;
          public          postgres    false    219            �
           2604    25531    alcohol inalcoholid    DEFAULT     z   ALTER TABLE ONLY public.alcohol ALTER COLUMN inalcoholid SET DEFAULT nextval('public.alcohol_inalcoholid_seq'::regclass);
 B   ALTER TABLE public.alcohol ALTER COLUMN inalcoholid DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    25598    coordinates id    DEFAULT     p   ALTER TABLE ONLY public.coordinates ALTER COLUMN id SET DEFAULT nextval('public.coordinates_id_seq'::regclass);
 =   ALTER TABLE public.coordinates ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    25532    countryreference incountryid    DEFAULT     �   ALTER TABLE ONLY public.countryreference ALTER COLUMN incountryid SET DEFAULT nextval('public.countryreference_incountryid_seq'::regclass);
 K   ALTER TABLE public.countryreference ALTER COLUMN incountryid DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    25533    fitness infitnessid    DEFAULT     z   ALTER TABLE ONLY public.fitness ALTER COLUMN infitnessid SET DEFAULT nextval('public.fitness_infitnessid_seq'::regclass);
 B   ALTER TABLE public.fitness ALTER COLUMN infitnessid DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    25534    happiness inhappinessid    DEFAULT     �   ALTER TABLE ONLY public.happiness ALTER COLUMN inhappinessid SET DEFAULT nextval('public.happiness_inhappinessid_seq'::regclass);
 F   ALTER TABLE public.happiness ALTER COLUMN inhappinessid DROP DEFAULT;
       public          postgres    false    209    208            �
           2604    25535    healthcare inhealthcareid    DEFAULT     �   ALTER TABLE ONLY public.healthcare ALTER COLUMN inhealthcareid SET DEFAULT nextval('public.healthcare_inhealthcareid_seq'::regclass);
 H   ALTER TABLE public.healthcare ALTER COLUMN inhealthcareid DROP DEFAULT;
       public          postgres    false    211    210            �
           2604    25536    marijuana inmarijuanaid    DEFAULT     �   ALTER TABLE ONLY public.marijuana ALTER COLUMN inmarijuanaid SET DEFAULT nextval('public.marijuana_inmarijuanaid_seq'::regclass);
 F   ALTER TABLE public.marijuana ALTER COLUMN inmarijuanaid DROP DEFAULT;
       public          postgres    false    213    212            �
           2604    25537    sports insportsid    DEFAULT     v   ALTER TABLE ONLY public.sports ALTER COLUMN insportsid SET DEFAULT nextval('public.sports_insportsid_seq'::regclass);
 @   ALTER TABLE public.sports ALTER COLUMN insportsid DROP DEFAULT;
       public          postgres    false    215    214            �
           2604    25538    userdata id    DEFAULT     j   ALTER TABLE ONLY public.userdata ALTER COLUMN id SET DEFAULT nextval('public.userdata_id_seq'::regclass);
 :   ALTER TABLE public.userdata ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �
           2604    25539    workhours inworkid    DEFAULT     x   ALTER TABLE ONLY public.workhours ALTER COLUMN inworkid SET DEFAULT nextval('public.workhours_inworkid_seq'::regclass);
 A   ALTER TABLE public.workhours ALTER COLUMN inworkid DROP DEFAULT;
       public          postgres    false    219    218            ]          0    25474    alcohol 
   TABLE DATA           o   COPY public.alcohol (inalcoholid, excountryid, alcoholperyear, alcoholperday, beer, wine, spirits) FROM stdin;
    public          postgres    false    202   �c       p          0    25595    coordinates 
   TABLE DATA           K   COPY public.coordinates (id, excountryid, latitude, longitude) FROM stdin;
    public          postgres    false    221   m       _          0    25479    countryreference 
   TABLE DATA           L   COPY public.countryreference (incountryid, countryname, region) FROM stdin;
    public          postgres    false    204   �x       a          0    25487    fitness 
   TABLE DATA           Q   COPY public.fitness (infitnessid, excountryid, healthgrade, pop2020) FROM stdin;
    public          postgres    false    206   F�       c          0    25492 	   happiness 
   TABLE DATA           �   COPY public.happiness (inhappinessid, excountryid, happinessrating, gdppercapita, socialsupport, healthylifeexpectancy, freedomlifechoice, generosity, perceptionofcorruption, dystopiaresidual, year) FROM stdin;
    public          postgres    false    208   ƃ       e          0    25497 
   healthcare 
   TABLE DATA           P   COPY public.healthcare (inhealthcareid, excountryid, hashealthcare) FROM stdin;
    public          postgres    false    210   ��       g          0    25502 	   marijuana 
   TABLE DATA           V   COPY public.marijuana (inmarijuanaid, excountryid, recreational, medical) FROM stdin;
    public          postgres    false    212   ��       i          0    25510    sports 
   TABLE DATA           @   COPY public.sports (insportsid, excountryid, sport) FROM stdin;
    public          postgres    false    214   ��       k          0    25518    userdata 
   TABLE DATA           �   COPY public.userdata (id, firstname, lastname, zipcode, email, gender, age, income, favregion, favsport, favalcohol, fitness, marijuanamedical, marijuanarec, unihealthcare, hoursworked, gdppercap, socialenv, lifechoices, generosity, govtrust) FROM stdin;
    public          postgres    false    216   ��       m          0    25526 	   workhours 
   TABLE DATA           D   COPY public.workhours (inworkid, excountryid, avghours) FROM stdin;
    public          postgres    false    218   ��       �           0    0    alcohol_inalcoholid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.alcohol_inalcoholid_seq', 1, false);
          public          postgres    false    203            �           0    0    coordinates_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.coordinates_id_seq', 1, false);
          public          postgres    false    220            �           0    0     countryreference_incountryid_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.countryreference_incountryid_seq', 1, false);
          public          postgres    false    205            �           0    0    fitness_infitnessid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.fitness_infitnessid_seq', 1, false);
          public          postgres    false    207            �           0    0    happiness_inhappinessid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.happiness_inhappinessid_seq', 1, false);
          public          postgres    false    209            �           0    0    healthcare_inhealthcareid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.healthcare_inhealthcareid_seq', 1, false);
          public          postgres    false    211            �           0    0    marijuana_inmarijuanaid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.marijuana_inmarijuanaid_seq', 1, false);
          public          postgres    false    213            �           0    0    sports_insportsid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sports_insportsid_seq', 1, false);
          public          postgres    false    215            �           0    0    userdata_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.userdata_id_seq', 1, false);
          public          postgres    false    217            �           0    0    workhours_inworkid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.workhours_inworkid_seq', 1, false);
          public          postgres    false    219            �
           2606    25541    alcohol alcohol_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.alcohol
    ADD CONSTRAINT alcohol_pkey PRIMARY KEY (inalcoholid);
 >   ALTER TABLE ONLY public.alcohol DROP CONSTRAINT alcohol_pkey;
       public            postgres    false    202            �
           2606    25600    coordinates coordinates_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.coordinates
    ADD CONSTRAINT coordinates_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.coordinates DROP CONSTRAINT coordinates_pkey;
       public            postgres    false    221            �
           2606    25543 &   countryreference countryreference_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.countryreference
    ADD CONSTRAINT countryreference_pkey PRIMARY KEY (incountryid);
 P   ALTER TABLE ONLY public.countryreference DROP CONSTRAINT countryreference_pkey;
       public            postgres    false    204            �
           2606    25545    fitness fitness_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.fitness
    ADD CONSTRAINT fitness_pkey PRIMARY KEY (infitnessid);
 >   ALTER TABLE ONLY public.fitness DROP CONSTRAINT fitness_pkey;
       public            postgres    false    206            �
           2606    25547    happiness happiness_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.happiness
    ADD CONSTRAINT happiness_pkey PRIMARY KEY (inhappinessid);
 B   ALTER TABLE ONLY public.happiness DROP CONSTRAINT happiness_pkey;
       public            postgres    false    208            �
           2606    25549    healthcare healthcare_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.healthcare
    ADD CONSTRAINT healthcare_pkey PRIMARY KEY (inhealthcareid);
 D   ALTER TABLE ONLY public.healthcare DROP CONSTRAINT healthcare_pkey;
       public            postgres    false    210            �
           2606    25551    marijuana marijuana_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.marijuana
    ADD CONSTRAINT marijuana_pkey PRIMARY KEY (inmarijuanaid);
 B   ALTER TABLE ONLY public.marijuana DROP CONSTRAINT marijuana_pkey;
       public            postgres    false    212            �
           2606    25553    sports sports_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sports
    ADD CONSTRAINT sports_pkey PRIMARY KEY (insportsid);
 <   ALTER TABLE ONLY public.sports DROP CONSTRAINT sports_pkey;
       public            postgres    false    214            �
           2606    25555    userdata userdata_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.userdata
    ADD CONSTRAINT userdata_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.userdata DROP CONSTRAINT userdata_pkey;
       public            postgres    false    216            �
           2606    25557    workhours workhours_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.workhours
    ADD CONSTRAINT workhours_pkey PRIMARY KEY (inworkid);
 B   ALTER TABLE ONLY public.workhours DROP CONSTRAINT workhours_pkey;
       public            postgres    false    218            �
           2606    25558     alcohol alcohol_excountryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alcohol
    ADD CONSTRAINT alcohol_excountryid_fkey FOREIGN KEY (excountryid) REFERENCES public.countryreference(incountryid);
 J   ALTER TABLE ONLY public.alcohol DROP CONSTRAINT alcohol_excountryid_fkey;
       public          postgres    false    202    204    2758            �
           2606    25601 (   coordinates coordinates_excountryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.coordinates
    ADD CONSTRAINT coordinates_excountryid_fkey FOREIGN KEY (excountryid) REFERENCES public.countryreference(incountryid);
 R   ALTER TABLE ONLY public.coordinates DROP CONSTRAINT coordinates_excountryid_fkey;
       public          postgres    false    2758    221    204            �
           2606    25563     fitness fitness_excountryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fitness
    ADD CONSTRAINT fitness_excountryid_fkey FOREIGN KEY (excountryid) REFERENCES public.countryreference(incountryid);
 J   ALTER TABLE ONLY public.fitness DROP CONSTRAINT fitness_excountryid_fkey;
       public          postgres    false    2758    204    206            �
           2606    25568 $   happiness happiness_excountryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.happiness
    ADD CONSTRAINT happiness_excountryid_fkey FOREIGN KEY (excountryid) REFERENCES public.countryreference(incountryid);
 N   ALTER TABLE ONLY public.happiness DROP CONSTRAINT happiness_excountryid_fkey;
       public          postgres    false    208    204    2758            �
           2606    25573 &   healthcare healthcare_excountryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.healthcare
    ADD CONSTRAINT healthcare_excountryid_fkey FOREIGN KEY (excountryid) REFERENCES public.countryreference(incountryid);
 P   ALTER TABLE ONLY public.healthcare DROP CONSTRAINT healthcare_excountryid_fkey;
       public          postgres    false    2758    210    204            �
           2606    25578 $   marijuana marijuana_excountryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.marijuana
    ADD CONSTRAINT marijuana_excountryid_fkey FOREIGN KEY (excountryid) REFERENCES public.countryreference(incountryid);
 N   ALTER TABLE ONLY public.marijuana DROP CONSTRAINT marijuana_excountryid_fkey;
       public          postgres    false    204    212    2758            �
           2606    25583    sports sports_excountryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sports
    ADD CONSTRAINT sports_excountryid_fkey FOREIGN KEY (excountryid) REFERENCES public.countryreference(incountryid);
 H   ALTER TABLE ONLY public.sports DROP CONSTRAINT sports_excountryid_fkey;
       public          postgres    false    214    204    2758            �
           2606    25588 $   workhours workhours_excountryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.workhours
    ADD CONSTRAINT workhours_excountryid_fkey FOREIGN KEY (excountryid) REFERENCES public.countryreference(incountryid);
 N   ALTER TABLE ONLY public.workhours DROP CONSTRAINT workhours_excountryid_fkey;
       public          postgres    false    2758    218    204            ]   	  x�e�Yn$9D���$�/w���c���46�Z�3�����g�}��v{Zj���?'�T�����SZW�֕�S-3��l6��������<R��#��jݩ�a��Vע?�n�:z�Ԯ._\4��脺%��iSOs�,��#�fj,]U�^�解�M���$��������2d���
7��%�i����S���*i�d�\e�}�Z�G�X��jamY{������!�ߴ�#�6�j�bi�;p�l.�?5ˆU�i��N��sJj�m���qe�zuP:i·��B�g�Vd��@�qh�i�έj���B6acacKW
��x�j]�~�ٲ���2mX��2	��uň�S����~1���6,3+gJȄ�gq����m�鶋~r�j2S��HA���������t� l7�Jo�#�G8btt/�
������Z�+�� �4����1w	��(�X�8]N��4_7vLC�a"Ib(𪬕�D"�*��X.E�B�#��αa6�u�0^l�ɇ��,��L)���)��y,��*�7;�&WI;,(���;ʃ���P�>1�ӫb�t\!pP�hyI�n��TV�5,����q�̒����8}>yLj��R��&�U� �����u�����RᎸmxˌ�P�Ť
�dFۅ'��"�k��tr1ǟ��<�|�c�ŏQb��v��W�#O�1$�Rh���PS�LСN��A!��y"���)%��yJ���S�7���J��<����Ŕ�.��jYu���c��Vs��JQ<�O�*Ru�P՜�g��ǩ���Z.����Ɨ�'+P*	�.��O'�ĸSl�C�����Q�l����DV��{���*M�yѴ,���l��Ų����'�%�|��n�ǅ�s2�`�p'�|à
��b��딗NZnjv��s9��׼)Ɖ>��m����u;�M�8[�<�W�<��-b��O0�؇�&�8%�Ϊ�u_Hz���pd;���'8��I5���Ӓ��h�γ��S���ݜ�2$��]l+�u�,҇ʦ��ف��$%�E�N�d�:�;�{�BC�l��`��D���/`c5:v({�����\<�R���T� ���12����T��i*�� ��Pb�e�n�),�w
�pVCo�Нݡ��^��87_J��b}��KS簒�d���fvW��[�Z��Ơ[p��cs8��'���2��J�epW<\])���F� ���HZ�|LY�x=S��O��J��H�k���t�؅�V�;_LNs�F��+%�5<ױ��,Pf*��n��+��\��?�:&�G!�h?�mZ �\p�0{��[��W���͊9�#���N��۵Z��3^K��E����ɛ��'.J7���ל���g�/���A�]�ج����M�E^ET�PS%Iv6E��͝nz�qDL��A3�zq)��͢ej#���Eӭa�`�w�>BMz�ju��m_a83��9��T,Y}�p��&��>���I��}����?fh�L%����Ȅ�^)x<M�0�p�Yl�rS�H���ܟ_�)��w�ɧ=-����-xE;�/#���VӇ���!L�3f���o�N��'X��VA�]�/��NL������o+��� �3#�~縔���L�K7QG�5�N�G��螙ޙ0�f�k�*"s�ZQn�4$�����.8/���ww����s�y��_1�����9N܄x���D�sߊ#�Md�j�W8�U��q3*u#*� t7�n��c�oc�d�]�䵘;M�kq�v���*j��2
S��X��Qh�i�#��8�$O��4>�m��kF���8�N�z�{O&l�q���az�� ��b<���H�M���}�������I�)�MK���~Os$Űg��1��&�%�ٖ�Ɠ�Ư�(;��ڣ's;���l�8�+�u��~MX��Kʰ���A,�@�g'�xƠ�v��
Y�0�I�ϋ��D���yr��M�>�vq�WD^����B(�lXov�z��;hDH��`.��58S���55��b`c3����	������	�g�o$���U��X��1A�y���w��}�U|1��M}~�9�Nf��Lw7��[�J�L.B$�a��_}1�+e fNd�5�13S3�pF����5���(�"��8��_�T���}3"����+V���S>߱�?�����+���4�Ep=r/�0)O�;ք�c,�8zQQ���,_�C��k�<���?0�Dq�1�L]I�4|<ݽ��o�}��Ĭ��=\�L -��r����5��yΟIDʡ�Ѻ�O�"�w}>����b�j      p   �  x�u�K��D�f.���\���Q{��{��IP(
�=���c�1������?mݧ�;��{=3�3�i��Ӟ���m�Y����e<�i�������j�k�S�ӟ��6#�?��m��V�s�Qy��3�[��o��|~����u�{���r���⼣�z�sŻ�Z�������ζz���w�ZY�����|�q�Ӹ�޳�*\��\��hu��wi�2�A�m��Q�}�4b�x��F�o^��vOi�c�k�q�xn}c.��	b����xǺ���s��� � �w�6o~߷Y��#��8�`~�Q�늽��dj���Nv�\�p�����}���D$���'��[����s�.��ל1�ޠ�B�k�,,��z��&#s F���������>a ߋ���o�7�r�{rGR���X����;�"{�A��*R/�� �_ht���@���,a��\o�z���k�V L@^��?	
���'H���K�|��;��d׃��v�!T ���71��q�MfG� ��<�_w%ɏ9���D�g�����͸���1��%z |!F�2�ǹ�p�d
q	�;��7���S�m�2����^����0K�����A|a��3o�0�� ��E	!7��N{Hu[s]j��6�*]!!�=��;)2�`�j㘍��ͨ����{�Zs�F�� �T�O6?T� �VG�����8�+�Z�5��\HbQ�h@~�@�uNY��Å��GM4���!)�u�x���>(�ٟ���}�� �ӃJ��BUJƂ\��+J�P!|�H���s!K����eu	7M`#N�5�k�,��(� �$6�c���>{�"w`�D�4����\�����?C�u2(��^��Qs��͕GLhU�0ה�E�R�P� ��H4���F��s{Nt�JDE��ė�(]~���0�Ǚcr��F�H��	X2��I�h��n���R�G�[��D���9�����֘��0.�_OM&���e&d��p޺8�}{IL��ˡ@���[Z�f^dL��R�b�3�J(2�q�c�]�S���T9[6�7�}��h�β�ǰ�:עԲ��f��lj���ge����>Ӭ�����&f����`0��&�G��S�?�l(���A�ƒAD�P�9
��)p���UV!p��#ge���"���M}��M,�*�5��H�&� %��Ǵ���!�K1�|�9����z8f?<8�:��چ ���Fokv�2lo��
�g??�A�a�N�W�`����uQ~�nހ��"{�4�·Q�q��j}�1�g�Z��Fl�XΪ֨P���47��ք���%Bʊ�����s=UB$01Ӷaˬ�;R%* ��n��5�5��!�@4{
�AgX+���I�����L�)dՙ�?���;�Ůpߛ�=���5�/Y�N�ƥ�p{��>G3S��_�.�a�~�����e@E:(��Ï؂/PnZ�4"z+�@���D��w=���u5a���@n/H)Zv0��ir7-4��t��a�?�4j�D����"�>�umi����D���^�%���L/�tO%��a|
 ��~�>��c��Y����VR�V��i�6'k#�4[��pb��6}2�J�:k�/��Ta���W���Կ��Ah��1����`t�i�5�5٘���[�=\�>]�M��[V��Y�M�S��\u�E쉀�4U���>�����+'�#�V攘��PgYm�|��8	C�g�<N �zr:NU\`3�n��䦨h�H�'А) �Iញ���������2�kСxP��ˬ&8E!G���SaLCn�X�5k|���!Ѱb=�J&fv�C`z��^�F6&����#2wT�Ϫ��������D�Ѕ��,��s�n�D�Y�4t�.-������sQ3Y��
%���BD�ҧX�T���A*Y��0���ҿ���~zs���EN�]��֏���PYTCD 3$�M�r�FbHAdQx�� �1�д4M��h�2�R)Zz�1�	�f�B.���rz��K����/@7TTaӅ��	�`��`��(u�9��M��ħ�ups���If��焫B3���	�p4��˞���k ��rLՑj�u��������;����l0�&��G>'.G�F�R&�������i�$	��$$��QS�)y@�ǰ���?�)'
+�K}MN�3E�Y�l1��������+ewFK��'�*���.N���O���CÑo.�ތ�>�bX֌"˼3�S<E� �,"�����p�>�S�iw	̹0qnCpV���Is�����W�l�$��t9�R�Y�H�#�Ld֣פ����;�α����Өa��[GI����{th^��T���q���j�Vj��F)N�q��I"�T�1��
�|���Z�J�3�+vZL��qde���3��|������f��P@$}��L"-�֫(ds�qti�j��ǹzk���ׁ.�y�m��A%G�[I("�ROJK7�SL�(x�5��v��+pS�/ t� *���#_��P'�4Q(ڈ��M"Ԟ�z���b�ۿɷ�뤦ǬҎ�a����d��i���f
�Z�$��y|��Q�(�d�!3=Ǳ_����/A󝈊�4�t�3�i�����%�+T�����[vyt#�#g�3����P�׮�k"�f%��M;��`h�˖�e�S�zt��/\��Ť'�:3�������B�I��l��KW����d�W`�G6�ηB��f���5�6�"���X��K7��?��b�R� /9�����ޢ�����n-��)��	�|i���p?iQ�&4f��{��k��="�<
��
��{�����g}o��]���~/�����?�ڝ�/9�_�|O���DI2�Ob2}��.���z�!]&�U�=�j�qO���eh9�Rhd���-��j6n      _   j  x����v�8���Sp5�g��u��vǑ��-�}&�7E���RKO??(�7f�c�
@��P����q��B�l�L�
�JI���e1��E�)�H�K*+����h����BC�V�i&jy�8U����eB�>;+R�5��ě��*#67��sZ���נ!d�\��;'���U*��:�䂴�cAEg����ʢ]o�\�[Sy����ƪ��H�Z�GQ�*Qv"vfJ��K��H�wecC�����1�p�	��c�9��&�U�$�vO�>�eF�(W���̺�R�Yh��EFڔ'Y?��Ki�#�V"��}�Z6�؅L羠�������WU&7�3^U%"Z�"�^,�ƦOK·p���-δ�hM{���7kS��jx�dK��.�k�~���g*�ӈȪ�"�.i��.(�U�u��ͥڄ�"��rƤB\Br̺��:���E� t*���;:|)�;�6q&���]�(u��ɬ=�z#�� ]��l���T{r���W�ız�S(YN?Ȃ�l�i#�L�۩�ҜȢ\QIn5xU�.w����>ܫZ����3ܻ[����@��ҽHV/qk[i�>�"'�Ԙ&b�~�Y'�+٠�>�\����ޫ�j�b!���o�c��A������J���m6`Wu1��c�].w����̂9e�Ic�,�H��}!	��0�˟0^��d�Ǔ9����hυ5��������e�<�Űo�Z�xu����(�����1�4,��o���r��!]��ZK��cv�;�}��å����u�g�C>�
#nuT!�f���-\3�z�&�'Ȩ�>C�������3zȮ(v�����T����v�c�+����j�eץ&���9�T�T��/7�uEY�{�]�>���}v�Qz\(�������|ug<��!zI��}U:��m<f��Ӫn�OqT�&��9�u�D�j���B���lQ��B6���n�aQ.��۴���s���؍ `(���!�JU��wn4b72�	�%[��C'Q�je|�û]vc�蜌^6�.g����W�x7�bJK*�.�y������w��t�((�;��TnD�������YY�d���*^{�94:jH�l�8H�V�#Վ��[��jsR����[�?Y&{9~��ϕ(�R��L�E����v�6ݪ�-�?���� ���^��єr�A�@��XS�&P ���,���F�ES���=��>)(h�I5���]4�J0��$ Q-��b�O�k��K���l�Q�9�gFO�w�Qe��Xk!4�	m2�=6��|��p��1;bw�Lh�Q�l���5:�F�� ���CӖ~���b��{7��fF�Jٮ�sl�IR��kw��N���h�3ey����Sw`�ԝ)��9�Tg�b��U����g�1�j.t�1P5�H
n�-�L=�u\+-�D�3��'�B�ZO��	�����������F��u&�vЯj�� ��h����k�R�>��Js-�*�ޚ"j�>C��A�0��m�T��V ����W[Y�u�)��v�gFZ�ܾi�8�gA?���`��o=0�bE�m�K"p�B��8�gGʔ�����i�9�`��)d��;�ha����􆵞}�<�!#v��𬃏��Ӥ8m����i]��\j+��:��� �����:jVz�D�[�������>�G���P��Fx�����p����@T|~����}�yL��]�,�i!����c֯{���@V��~.˒��bPڕّ�M��&A�X�f��G�@tl;���v#E�Bχ�8J�����\Q��塧zn��k�2�G6�<�m$��m�9���}�}4�g���g�a3Z
l�w|�y��U8UU��y��Fݘ�� �Af�Y$6ϭ����{�'@1�\�6�i�PȢ�V`�\쒕�2�ƈ��z��IlD1�- ����Pf^}
��*s�wZ8::﹝�ZjU��x!�F�� V/9�ȥm�j���vi�9�<|! �J��r�n
��>�b�|�4�"߈��#��8	!Hl��ʹ8��/ۂ7hH��E���ȵ����>W��f�@[SP�p ���z�0|����b�{
���D�9�;��������t�x�t      a   p  x�-��m1E�q1���^�9L"E�����y�����w�\��;�ԉ�}��K�#�C����[����M�Jz����,�U�9���9�m�\-O��vo,z�jO����r�6�u���ݚ3(wz.��/�����~R��e�������.Ӣ����ߣ2����2(��E{����h��w��J[�;�5bi��4TU���V�����5��h�ۮT_V9�Ea�A��yﾵL1H.����o���:����
��y���p���k\��j|�|� ء�y@,�F'��N��A��7���x4J*}-� ^9�����<L�[�Rb/4��Փ�����r��h| R�y�U�r�X��>Ղ �r|���&8�ia��(��/�x����]���5�>��8e���H�˹��+��8(b"w1]�K! 5A��Q+�����շ`_
��֯��B�~�B���8 �g$]�u��	��X`!�+>W~�%�{%e)�����B���w��Tv�
:�� W>��p��'`��A��=(?8��$��&ƃ3|y���"\��&��������N���ǭ5�����{P�C��ڟ�������      c      x�]}Y�%�j��:��O}3�;�q�h@�o��.׮\ʔ@�����N9��r��kg�sg���w�y���wն�П�j��=��:��e��?����m�_��W;}��~�����1�����m�qf��,}��Ʌ���͵���=w��m4��˿x�Uz;Xi��GY�x���sa),t�T�\ꖽG����_|M���>z-���sO~��؁���9{T�3~�_4����_4K]���ƞ��G�`k��U�v�����^Z���m��X��Z�W�k���?���R����(�wҬ�aa�����]���p9������h�����Ž��4�S�/�˕ƹ/Ɵ��ܱ���'x���7ql\��S����^񟮾��[��g�u��+a[&���pJ�j���l�[6z�'�Y"�*W�\�=��v;m���Q؎���9��/�8*/��hK��V)U���[�*�8��ӏ���Ӽ}c�o�G5�u�x��]ۋ��NŎ�t�>���s\��BM���{PʧE�<u�d����s�Wo/�[{�}�4�ӽ��r��'>���g_k�2��g�����,1��vl&�\Ｓߦ���ձ�T���K�_oZ�aIIY������G�'�-�3$bx��X���?/� �7N��K|���P�Q� sh�n���);^h��$�8���$)�m�ݱeDh���9�΍��B��-�>��=�H�^�;��ۍ���K7�Ѕ�0k���x�1������Q[�p��{�w�R;>n_�?���J���).�l�>�3Dh[aQH+/o�e�(Lj؊O<��Xi�F�J�������:��	:"��U�[�B�T� ��v�6�o�Jx�V�!� &�/4Ц��%o�j��c�m�>�P�~��A�l;_�A������Kڍ����;�ڿS�N�wJ_RG��An��G�a.X�xӝj8V8��;����+@^F���W��Xܝ)E�]�ͣ���>��́��XIKu^̦c����������C�����X��`i�R-гU�U�0�?/����̕ �Kھ2�sK A����ϐn>K����eBO@�U.tp�\���φ�ˆ�g6ϑ��su\�W�$��2���oj 
�o�o:��+������
�c�7�7n0���~� \]��38j��3�V�,n��
��6Sx�T��)(�,�KJź�y, D �2�붐��ۤ?/H�@ץ�(T}����R !-0)�U���G��$�%�ҥh6
p[-]�&�7	���W�Ju�K�gA�t����` 6���C�/��IM;�Sy! :\�-�E�'J`��,�������){~.�,=�<�E�ai���Zx��.��ys��~n�>������0od��8Nk�F�T��O!݀5X
��V�6�	�YXȤR;c-�9z��������
�Bf��	j,	X0ٱ~�S��(�� �O��=&����^�5pS��R|xu�I�[J��-�$���k�ħNz�FFw�Ӫ�p�o=���	�pUpo7���O<!���u�4���u K���H�z����Â��F	�R��&�����5�8����t���L�N�\~�'�ӣ ��E��"#TC$�d�j'\�^�p���=t���.e%�w��u6�5���6iu����8h����͂(I���~-i`\Ӓi�=Æ��j�aH���-� �H� �߲tH��Hl��*_�J�B?�H���?��R���� 4��C���\�2�섔�B��c���ݖ�/ i@ �)�p^	�R�ʤ�n\�o̎�)�?С������x\^Ȥ�����j��q� &w"Z �KﴡDǼ��\�	���IƫX���>/����ٱ��Ǆ7ո} j��N���H�Z�yJ� �0���A�9��PI��S'�[s�մcT��Z������{��?\�A�Ns���>�(������e�F����Յ}��H*�{���n2���&'������({C�J����bo�@o�&���ӂ����[|hU�HXx�4 � ms�u�,ܑN`��҅(�$$�������8p_N�݂[�-�[0���.��B;8�+�Q�-a	��n� ڤ��BƳ���͐W�t�Ӑ� �����I�i������o�����v�0�&�ıY��r�`�d��ʝ@��x�HU���Mx�ŏ����,>�a
�  �6��P��e;��m
�?09L��F��C�!0у��it*Z(�F�%���%�߃7���uX��kuKx��S���Zc�l�T@��Jd�b�:o>�*�.l����_��,0�õ��Ѯ��B R���G�;��Z��:p?({@��͈���J�%W@��iL�c��$�� 4����ȼ�� �%�h,D=A���7�\��,�N,���*Z�	�%|�� ����˹��8�i��H�/�' s)h~��m�P�BU����ƈA-�[� �%/��S������������7��������; ��|�Is[��C�ps���ʸĸr�ߖ 9�b��j-�����k�[-��������)��~��*uL�����_Up�1���P��P$�w�Յ��M�90��Ə*�r[�Bd,�|m���f�'�ԁ=��������i��\/���� V�ʹC�$Z�A�hˁ9\��S�@K�T�>�gtV����)�K���
��\Hc4��s}V��m��@O�QS�)z��mO� �5�d�Y!Gn�Hgɷ��.9�Fg;�" � �A�^fw�D�Cz)X[���O���H��pi�cP1O%^Z(�z��p]H4]��=��,VSU0�Ǖ � }��@�4�!0��]�-��b ��n��
w?�:И\Dz9D^	�WEGK� %�@���/�d����[0N��C,}�0�m �1����t2��c���$c)F��WZ�
�� x)�2S�̀@r݀2��)���p��.�o�J���nB�t~���R� ���φ��H(������Vހe���z\��j�d�{
�k�	Tԅ���L�-(]6�q{��9Tc���-8N�[ۆ,2���p����RP�����	*a'X�f鬎���g�_aN���� ��@�W%$�Y�5 .��X�?ׂ�9��Bt/���^8jK_�.��ƾ�����g9(;F���b�p�W��+)(�  m���v�����q���GV��]��ѥ�M>�z�m���MG���Z �����hF�F�:c&L>C`�8)�O��ʘ�L�j���*ln���@#�iF�/�6��N�B��!~��)�����P���%�m\hl�*I1L8�V�
�q��� ۥx^`9�Yފ�z5�L(��~/���	��Ui6�=D�pO���O9�ٖU膞��(3�S�Q���^�{�5��XJ�tٛ�_��u��v�H��
��.�Yz��2h�[���"��,A`�݃�����õ�<�g9N���@o/	9��1��ѫ��5#���3��`�CK�PI,�D,�,y�:Dۘ�[�cvӣ:q�����_M`�z���U� ��~^G�'f=�01��Ny� ��,�Ry�CA1�ܡao�;a�m�Fm�LX�湼���9Am��k0�7V�k�Y��nv��y.�i�i����Zf�Z���N��Vn ��2�J��)}���5aWqs���
�G��-B��>��*�M=��JT�+�a2��%DA�=d��Q�Qr�$��-�h��Qh�M��g4j����mZ��a\
]Tr�x`櫶WZ����a r���U����V_y8�N�t��=�ݝ��[>@�db��T�.�f��i���0?
p2~׻BIp-�����L��|_,3�A��880иg��qp�$���9ju��p��.BlT� �#�@b�!�.����B1,�`�z5f�b�����D�tp�+��)n �^�N�u r�    HLY�ѕ @�c �T���`��H �e�$O2}���JCK���I܊��¢���q�bgp"�st̡k����'�	�q�^��N�]�t|�\ �>��3�0D�:���mJ�.�D�W�#��4��X���k�8!�C�Xk����gyo�Ъ��7�	0��08)�	CD���aS�/~��H�m��w�*�E�޷�=�Yi�HQ�`�e�G�M��<96e�!I�kS �z2zt�%�r�Ԣ���c� H0Œ�Ýe�⧜��I�;Γ	u_+(�1�E��B���$l*r�`�E�>�;'++���)c�����
`��a��Z�d��D1�}��on �7��,�=��q?@�n�Ƙ�@�M3.�Q�V���;����h�sޱ�&��i���pI�'�~tG͡]��4�8�]R��x3B�6q�\h �2���Ht�Q)𨔿����	De���
`b[a��i.�M�k��
������Oh��#���N[N�B�+c��Z.�;��'�U&Q�Q�a��A�R�-E��8��h!ˎ6�Ru�6#nqoVgn�*�w����M_�(� �Й��	Zk�ݘ��1�p�]�N�*�FM}#�<x�âP��R��
_N(d��RFb��;��"T<	�/�&Z��3V8؇b&�b|ىt܆���2s-c}<�J%X��  ��2�J�[ȗ�y'�Ĺ��0xD-Qॗ1�"§S	*1�F���%	�I/�֢m1�B�W ����^ ���	�T!|d�ɖN??�*�i�,г�#��
h�a]ѡĊ�h�xΰ�_�bM�v
���a�S��rL8�	�����PoD-A˸0��;|Yy��p|ž����; ��.]�x��x�s�	�U�y��:231d)n�T���,���'�u��?����P�HXD��R��+��e=`+5P��1l�NF�d���G�pǨ�G�$�}��u�%����>y{3\��7;d��@��nP����� Bd�W4�ʄ�ITN@��Q�����a��^1��tM�Ԑ� ��=�~�ڒ゛��Ns����^�[[��g�R7��|�N�Ա�����_�W�r�:��x/��RL�P
o.�xD��g���E�Ʌ'��0�>�[�0(J>�DZ��?t��tJ�L5�Z .�K1��'\¬��u��+�����}& i��L�"��
����W,�ˌC�Z����#�Ap\�!����9sH �`�t�2N��P�%���
����o�A���X�X�^CJ�.��=���籾[��v�.��9a���p�&�L`�]��] LZɎ����G`�d-�����7�t�<�_s�M8a��P
2
-�t��㚗��p�:�8��7�p�1��S䛬���Mu���2V��"g�9w�"ԛ��<o��Z]�s������Q��A��K�"=Hf]1_�ҏ��?w����6$�	]��^�W�aP�Sh���[zg���i�",��tC�2�j� r)���/2�s�Z��	�`i�
��;��� �$�$@
ƴty�!�+�ηj���)=�d��ػ�a
hk\Ńɮ��& �(�GȔ���T�� 9�4GK�}d5��Z��ٕ9�N�b�?n\3�j�_���|]Eju2�H=Hw�d (�A��0V:;���Ĩ.Vc6@i������L@�L���,���I|*���f\�QS(pc6j�+b�Fc��Lm���J�,бҡ	���r�]'>`� #.��v��
�W(��X���>%���l��Fn��'[��a�+��;�GE
�2$������Z��k'��H��7��P��p���T: �G�tZC��$����dd������V��FN�;5�M��+�;���b��p�绻�<d��R������;N���*w�j�4�>��&\Z@��������X�/Ұ�(� �E����+�S-�v����F\^ȵ� 0<v���0��-���a���L����U�#s��;�@���MU�U�!}r(�,��`Q̜�w�[� QH����x
(�\��Lrv�E��E��C֪m
��4��o&K~/��3b����W����a�����{�
��$��,��L�C���$�C��]d���fHv�>���Ed�[H�˛Erf�&2k���Έ8�*Gi3�#=�m-ưf����`弝 �pY�0�B�m.E'��-�)vjj}���4���X�j��W�#����ɸ��:@�6�$%�?�8���^2[2�S$�W�����4�\?W��`g��t'-'�ZG
�3G1˵�0�X�oumݱ�M)i���#����w�l���%��Q:�u2�8�C�Y���]\��L��z\�]4*2 !�wa��w�tdJ�3�����AF��D� ��b{�B~S���&� ��_H]�� �8U,LY 2��Sc��t��#� ӇJ�V�Bx�E(ӹaה��tL��ئrc[a���R�	��"�`����WF�(��DA���"��B�-#m�XБΐ���,��\����aN�R^ӿ�ZܠƘ�B� "7E�t�r0����16zXJeɸL��DI�����	�m�E�d3ʮﺼw˂ė 5��:���,����j�v�>��mc?��F�5�^��~9�>*\/P+a������Ԝ9���[���X���pӼ5B���j�$�3�&��4�s1M��_.���ˋ)H���f0��d��M��s�l�n����4�%o�Q:��'����6��l�N����e��ƶ�0hM�@�Mg��`S���3�ʍx)�/�2���g���#<.�iLt.x!*{0W-�}�H)��I�7��erv���
u�����")jk-ſ�!��>:b���_�H�������j��O-�?U�WPc��eLZ	���Z"�9�Zo�+�Ⱦ=fHA��.�Z5P���:�Vh�,hVCR? ����J�>k�
�q���h)	&�/��Kept����Y����3�Dv�h3E�*�X�nI�#{�Y�vI��\,ue�k��3���jBH�8�#l�ƙ���;I�A�<�Q~PS��O`w)G4�,�M���h�w�hXE,d�CRL�n�~��R�ƞ4j�
��ɪW�ƕ1��)�(���P����Q�Lե��s�7�C��B��������]��\#��b����C1x�h&$���l�;<�z�zS�I']��.��ی�����D��¸��c�)k�5�L,hv;$8���6�k�Med�i~�pU�!��ů�̠]@l8���U������rXi�D5_/B�?��4_�l&�,�~,�������8)%�����	;�8z�����PQ�*����H�u�I��7)O
��Z,��N�� m֜)f̲�]�s��	FƵk��\2�`,`%�jD+��nOʡ�,!��Z ���v� *,.����,J�\\p��QT�����eK����ikW�RҀ����Ԛ��P�L��Af�%yH.Ẫя�s��T�oh{�,�%�24X�W�Y� =(��{��K���E����$��*�(nF~�$������4��l,���o�Rw��갊�xO[Ӏ��B}] 8B����I~�T�6#o��h?�"*-k��4[�2_�B����!��f��6:K2R�B9d��`�R��5wG�@�t	���	�.�����L�d�w���X�E��B	.=���A:��1����ΐ��k^���`���q��[%E�8�dޟ��$��@�����]s/�����f�� ��w�0~�(8w���T�*$�˖_I�K�k>�]?�;�_�O/��́�aI�ѓ��Z����˕�j��%�����Kߨ�VF�̐`B��+$���U�]nfW)W��k��,\���<�Q_��j@��s��-
�!���mQZ�b�ePyx��gѵT���޹G���`8Ҩv�l}̨j*�銕���֦~h���C��f��X�r��d�Sᬕ�4K�^R�]EyB@/.�v��o,~{��l b�������.7�؎���1yG��;ߺ'    ��K��t@�QӨ�u�|k�k�$n�+�] "��RH��������<�&ֽ�rFƌT�L�|��j��_K��ʃMT��,����FvX�,��<K�0�����i��F�"����g�{��䣻5��5�:f�&JTJ?:���4˰�%\�,ks�}����>vf1�K�to�^�<L �p}���������	ڒ� =ɟR�+wAe��q�Y7����pX��]�{�d�l��k��ZH��L��x��P�h9J�Z�j�&w*�8�^�ң�<����8#:
��f	H�O�[˔��b���+S���N]�0���泬wp�p�OG눊SD�OK"�?X��4:*�uU�9_C�`"k_�/S��ثzxd=�kmFvk���3UQ�x����U���:[}��Q��~���f�*7�l��$�Gk�^-�m�V�1�;���#����i������zΦ��7z����X�P��g����]wki�3�6"�Tv"t���+ߨ�s`�4�%���ԒDWA�ü{d���ҁq[!�('e��׫q�?Ӻ�p�rɜU���{�����e���v9�����s���J�ܽn�2 ��Hn��1��/*�p9�׫G?]`����t!�Ѯ���9�g��_�����"�f��+B~®��@vU&�:.**��bhZ
�d�
2,�P���ᓥr��dHf�����H7�{<z]�봢O��������<�c��4k�\�f�=�Ț��N'!\#B�Q���o�`_{=��l/o����bʹ�4�F�`� �p̌~�v�Ӭ����I���`cW�y�JwrT�W��tӊ�O:���9��ON\���qv)f=kv�A�tݖr��(�Qk�}2ZV�A�-���u�����Wu�bHY�?��;"�a�>,���^��]���d?���۩�=ѼB7�ğ����U(9�T���� ��$QR��~�Ӫ?����r�����,叵��Z+��t9RG�6O�c�����Oq�BB!s�[�1T����Y	��	��"���<Y*JU�8��B��������w�D�����������Z���s�_�+ϕ�Y5).;s�3�,��uXZr�_?���Y(�;j�$�}7�d�^lbn^=>���ǘ�c�> F����?HJ2�ڴei4B�0t̰�6�.o��.��u�9�2�i��<^��ĳ5�(�S.�[�j}�{+�䳮�ah��LjbE-�yƋסI���=
�V�����'`}��C^�-o��36w&vI��}���X��][�vN���e�jV�k���aN���Ϸ����b�.pn�Q��4���uw����Dv��OE=|m�X]�w�IX�L��]D�������4���ћ���D���H�Y;f?�M� s��g��S��;b�&9<-O����.�#�K�O�M�/z��v\�g[Pq�cZ�����w��K'�{��v����5|�l��%��ݸAIY����	��7A+���\����5�:���D��乲G�*/q��E�4u���!ڳ^4WG���p��U&ˇ�̷�|���	�e(%�U��⌶>+��؟������?g}�ՅA�d+9���z�}6DHn�f���m�C�&����xN��W�r�rD�c���2X�}z��%�p��,�N&8�W�N�'䧦#$w�g� 1= 7�Q��tb�����a1|Ǎ���%J�٠�5i�A�����8��B��R�͊�-C�3ηS߲+(�.�Uk򥛧����xrGь�v�,��M_tc��Zw}�; �yӺ��r��"�Q�~Im�]�[��Z�,�#�v`L�uA4���rϋ�B �/����g���w�JF����|�[��D�Q��3�;��%��`?:r��@��CC|�7n;�-�Z$�g����t���g���熷����I��n/���3����h��s��R>L����53#����J��^�ä�1�\�X��ҙ�53S�{~�,ۧ� �"A��d��\z�q ��}��dq&M��¤�|SG��p���*~t�M�qm����
b�ݠ��},��M�p�7��r������GA�|��-Դǳ�˅��>�*ˡ��TBT�\Ｆ��]��N4��;c�M��\wٝu���s<CZ��%����U_��Hi:;|FaN�(����`�-�(3@u��(�dАa�����`��s1�������J.�;�c�3N]�L_���5L��ӹ����5��.]�dz�UW�O2TOvF�A�A�P���5Gyө��f��'N��t>Z^�c˷e�M�H;����=[j�[����9�;XˎG��X�U��v݂ݫHr����Lg��-�ﺥ+�&8���i���2q���2�R]2�Z�/�ԋ��c9��zd��+gU�[v����/�;W���#���k���M���C�k}���5�~��ڱ��{��𨣖��X�=�4�@,�4'g�;�k�s�i�5H��P�V2W���]w�u�	���"u(q_b�ExQ}iZ\&6�����gq�������i��Hz�����0�t:&j5�.���牞i�Wh����Uv]eb>ǔ��p{D�t��Yf��Ft)�'��d���34+è`D2�g��[�i0ܤ�I��K�DE�ԃ��«���n���.2���`\h��rK����c����0�]u��\F���\�c���]�*��K�h"����_&�-Q�3F7�;���?-�sL�vݑZF�,�t�#�平��/�(�F��r�%^4������mk;�a���b�1���׿��n�2�{^ןX���m���<�u��y]5�'̨��w��	��/�`c�K`⮌�;�ܖer�;6(��d�����SM4�K1���"��\�ttB��9����֠;9��gn�7�������x��[�#��O׷W�%�k;q�ߝ���1�\'��^�'�~�x���*X��	G(�Msl^�sȥ�m�IV�q��M W�<8g!]J}�w>����By��Ur/e�(�ck}���H|��ԊC��Ě�Ⱦ�l�I[�4�Ҷ��2c����M�)=�J"��.渤����B6ɊN�v�w���Y6%�u0����>_P~�?4��n��.�*�d{�0����n���}�s�A�O:f��G{���bN�mW�U�1:	�E��6ώG�q/��PI	�[������ǣ�͹Ȁ�s�j,�g��X��c��e�N�h�2ڨ�&�9�eD�0�U��N���P�8��áƜ��b�L�R����'IJ�T�������L/�ŏ�����񣤴C[��O�nA�qI#Ty�v\��\���Rџ�Bu"�𞭦(�����"����l�Z�R��t���}�Y���2�vtU��8w�ۙl��!�1BGɽ�&i(��2�n��gG�v�̍�`���K�:ő
���P��7��D]i7!�(�{ߺDn�8 �io�D�[�GV@����;�>Np]O_0 �[`���I=����!k�,����p���v�Ya"�~'{���vf_`ӻ����J<G�]T��fv�3�Ӂ,����.�O���Oh5���.� P���E�gPG�//,�
F&w�(ܖ��y�՝�z�yN����H�2rg"�u5)�<]A ��{	G�Dg~t{z&A�?w>*+϶����<O��E�9� 5�u�w���L��W�L�����ʹ�? ��B�rx̻֣���6)r/��Q�{��t�G���(�ż?�-�#�\C?:��Qҧ��"?6w�Ar�v�/��!��Y�@=E�x������9����#�����o��xU6����Jj������d�ߵ���$�?J.J�q2Nz�z����������i������3iY1������ ��2e�);�i�E���:;@�Fze2Y����V��%��
�}�k����@B}��I�̶�b��P���^��[��<ō}H�#��w!>��0��͠N2y*�D�1��Dc�g���)�K����)w��WV�9���,����&���G�}���^z���8�HN��e�M%^�;:�F	��;7z&��d��Ɲ�� o�������x�Gi	����*�uh�+�    v-*�-�Dcӵ�q��I�C��q��yG7�mP�+�%���L��v��bS��;W*��X�K����G�^�����ߵ12����3��.o�H6S�����Avo��V��p�R32�98H�h����1�W~�z׬�y���Q���k�C�糧�4nO$C��	�Ԅ��A�԰<M�w�\���\�Y�gDJ�Q������H(��\T:�� ��������@g�/�rQ�,��6'��(vԤ��5�*�D'7�����O�C"�m�������S7ARl�C�Aم��}Z>���|g���ڦ�9�y�����	�V�,U�XG�5��~�t�2y�Y��hg~./��6��yC�}�b&�Y��ϔP���Ǌt�1����Ro���!*&3�$���1+S���	s���j2�O���6B ��1��[9G�f�O=*�e�.&w,ۑ�_�p�r"D��$)qv���i�����`U���(�<�--U���c]s~�;�4yxO�zJ0��W��z�E��`�C��sk���-]�궟ޙ
eE�1����{��/����j��LG��<
�;�<A<ّΏ���)��r�i�ɦUTIu.������Cʺ6���A�?i�5E��>��N)}l��7��Ex)D`�I:����s��I���2!�9��ko�Og%��&��>�Zǔ�{�c�,�v�FH��j�(MNN��&g��X����+���0��;f�!�\L�n"K�g�u��k��k�Ws��@6�2g-�î�-��mS���?a��5J��L��3R��9�����q:Mމ�xt$}�#�����L������ �o~|em	�v�<7ST�.y���&ޘ�2�6�`��u�v��ro���5�s�#jw�:f����SF�KӬ�i���1�G�֊�䑅3U�U˝/z�k��,̫Zd��2�GG)�ɪ���䬖۪G��u����Ws�$���s�^G"~Ɲ�]��K��Ԣͤ�ٵv`;TEq��c=�kQ�[b�o�N��ob����H��=S	2׮�`j��q�M�͇����&<6���u��M�\��g�_����w[W�;\h�n(�c�X��N9u����n���ἯU;��'�q�m��g�A���j#�^�c\��HË�^���%�� �\4#6ݴ�$HWc��k�x�~4i,��qcܛn@��5�����&�&��,�Ԕ�C�^!52��M*����Sw��S��� X��|v<Ə`�����W^%qlYONS4��h����d�hk[A��vy�f����Վ�Yk��{�?�F�$�Y0��"���L�,<��=I�1�6>6�rpc\W�ڊ<�d���S�Tέ�Wؔ��izF���$��bK�m�1<\��k.{i�Z�,jb�8�,�0f��^>�%q��+Z2��d�V=b�?w�h���so�nҚ���dZ��}s@Q,����ų��_X�ji6]5���$���`:X�yTI�܏�S�~Lβ�+H!�*�����y�W��ѹ�=���	^��L;�/�fG��?�g�Gl����F�A����Z�:;��,ss�)E�P��Y�t��ʗƃbc$�1Q��c�s��E]������Apr���	�� ��<[*���I�+^̙'�*Ȕ��p7�)�ڸ ��+3����|(�}��Dw�rM��@���=i���r�n?#��d���ߨT��f���\7�����1ʶ?5��1��ң)D}_{D�3���<��y��ˤ�Yb�;��5��{[��cob:`h���,4�)?N����/}�z�{�T�c
��L{%T5���4��3O�ZxP��\	ȻA��F�����ߣ�S8�bN�8��i�I�m�KP4�ώ��k:t<Q�n ��Np?ˌ�;l��iy�j頨��f���=$+O����o�J�Ϩ��t�'�t�ī
��YzS�L�p�~w����i��t� Sî�<�fr���/�����8������?��%���Β$�����8NG���� ,���98nV�l��2�+"�vL��P}�2�wf�3��BA��뀎%j�T(\.�Ϋ��Q�Ҭ�͘S�D� ���������H�}�n�`�)/������qk�D���y�,?���S�!���̽�l��v	���;�F�=�����<���;�cBX �h��x�f�&͙���V�Y�0�̽��=�+e�'��@��NEì�?lky�[z�dy���	n�Wd;Lwr����=ۂ4�d��ޯ��mE�7>�y�I0g�F枅b履-�B~7�����/uhX�}�&9�}��`	���S�ikhs�ݜ%x��z��JnO�X����jh�di�޲�0��:������:9����f�e��ߛ-�Μ��%�K���9�:��4�dz��������&��֌��qQ�v�kӋ��gF����\7@�e�)�҂�?cќ��1��������cs��[��jR�:�586nF�������l�-���.ʣ&qx�j�L�݂͹�F=���b[��r�aO�^�_��mrDan�O�"�%�_���X6��f�`��,y\7�*�9�`A�w(�lx�"��e����ä*ο97x`�zD<��\���p�h�D��Z��\���T"�#���I�ہZ�<���Na�6���#W���t���=�Xj��?ss�����F�<����Zun���� [��j�\��{.5���N��ȃ�$v�����k�*����8%v�-D?l�h�	'Aݳ�3Ӟ61r�i�ן����K�:�s%��Y���I)��xpB��`�k��*=�ιN�rjU���lT:Z�jolhŕd�2֌�a���J69�,4�s��$b'LC�]tYx�D�n�������[P��Z[�t�z�}_rD�όѢ�K�վ��r9ti���nW���d96,��G�C�]����5�m�R7X[W�����{��p�]�̊`CֳV�R_9b�w���L%eK>%B#��.S�����G�l���f�[��)���Z�[<sd�]�19�]Δ�7ω0��Z5�s����=��q�f+��7����)�c���I��K\�Tf�o�f�ݹ�N�#!�>�A���%g�U�F�r`�Lg��z�2��(�	Ǝ ���k���iX;;����@�i��9u{jp��M�*le�]B`���a�R1��f"��ņ����%p�:l�#9�DY.��k�&/gqn�&�� ����(b+�B<[*|���4GX\��>�l"��q2����9�'��Į6b��E^u��Ed��*P"$J�7�m9Ƶ/�ps���d��e�E��4]��Ꜽt�¸�����o���T<�:����CD����o�ls�J[;��e���a�_ƻ�g�9M�DG.��x���Ιǲ�&'_9�ʖ�F� ��f��*��[�LHl=�^Q��#�^S[�_;���]�X�(M�R���F�)��t'���qM6��(��R�թ��V�l����=-��`�{{���Զ{̽�</M��z�<�_֡E�<�\�n�m��C9�j�x� SS�ۜ�!���gl��/cc��g�n���ÕgEc(��T��$�C����
�.Y��a,;��fɡ���`��{3'��GK.�Ճ�ȑ4i� �M����5�+t�m�o�+,5����\QA�YP��V�13O��h��R@��Pz�az��V�)B(��^�m�#? ��m��쇓�����*�-��+n��<�m(;!�bq��j��t�D�����|���r�I}<�'+8�C�)(�F9�E�h(Z���q�nf
�g&�A״`��h��$��Ad�S̵����CW9lf���-^��,�["�V��m��?��9�����Awi����	��h���r���	�t4��i����hoʈO�c�Ԓ����vGs-v��9����@��� [n�l��&ݲ l�[chm��>gh6����m���H,4����,����⧆>���i��蹯�Q�
:Gg9�͡pğ:8)�av2�=�,~��Ă��J    r`'|m9�i{�5gYr�J8���i��n��?�)�M��֣�r�e�X��P�fd/����o�/6 "�9��̩���S�4�8�;k��"�''��;�X�)�+�V��<e�Wq�[�tN�X�)��堤1�&����V�:6�,p�O��p��hxX�	ҥ�_�4�}g߭�!?/�����pi�hĦ���ߧ���AO��ץy�X���V2�[��]��ˎm/o�r�e�,�ˑR��f5�2j��O%:�3�kf���kܞ3�q��r�㪖���u9r]�p�p� j�L6*�}�FX�F����t8Rp�(Ѧ�|�We�S�r��I�ZP:N�q�����
2lQ���:B}F�P�2�͵n��SW���tҊ�JG����!�l.��1o����#��1X[DO��<;�k]��]���t���AK��t��p�$N-3H����P'g��T�I������-~p� Ί�S�&�)25�r�NL��ȡV�ډ�7I��p'���T�y�&�5���Y��z�����F���pؠ�i�"2ß�hs>/����G}���s���9	�3K����9
�9\���	��v�M�d9_��#b�=�%�Ah��s��ݛCS���rZɉ�#�&��ڞd[��k7T�HD5`$/P�-6��=2�u3�!��sd��YJ?Sw�7ao�Hɰ�r16��nı N =�[k�Y�ӳ�7z��/�m:�D���ـ���B�5�����sH��7�(­l��XT���0^���S�������0����aV���[��E�\���m̡o���xkc&�wW��D�r�b)+-���p�U���{�u$K��s�kB���[<͘x������'�.��;�����^T�% ����x)����	!�PQg8O�ы\�'(�jdQq?8đ��X��FJd���t�btK�UJ�7d�jwN�k��� �2�t��5��I�����r��~(�+5f_aq���z8����@'��pJ��:�#yVpᬪ�R���:N
<e�i)�1��Ӫ�i~<��[FC��"ph�]�%D�[�q~n����p�k=���5[���$ 5u�W38 ���ᆴ.���.�%��$�����f=�-�u��M߁v�u�u񕫛!���D���NFR���rk��g#���'�"���������#��NR���sq8�+r� �-�'���P����v� g?�̙�%�Ma=!�oq�����i���1nt��
�I�@�G�bىs{�4���W[dp!ϥ{1�r'á(K�9p�s���D���Pwz@�tSE�j��e*����S�SN�0Ž܆��Ntw����k����P1�7'E�GY'qܱ;�"d��JU��A}��1�A��(33ձ�P
�S	��wz{ON��
��,����gf��7S������}8�${�7ʞ<]�f�@�\'8�s}_�(����A�u#[��4�aE�r�!"�'��^����HvO�]�4��S��p*�e�m�Af�ˎ$�Tw��NF��et��S��F��F��� ��pAf��UgMe^����81O/�,�,�i����P�x_2��d��;9 �[u���r�����l�n=�٘7���.S	�����|VT�k &ӚKa�H�J�k�dՠ��d3#N��������}�f��d�i�tgv�b�͵Z�a&U�K�3t#.FK8'�]}82��soz�����iI\���|ѣ�O\�������m�0	�3ק�����%����>�]� �3���lc�5�\q'ܕs"��q��M~�{4�%u+����ݺl3�f�Vq-\a���v眗T}s��vGZ���	�V�>�Z1Hp������^�����?ciapҮ�[����
�7�E��w�2[�qX�
8�ӥԝ�2����沉�p�.ps/��1�Z�)V-[;��X�8ɚQ4�V�%��Ic��}8(����2��u ��|42��kb���� ^4f�T��F��&��:�W�s�r���T�&o�L0s{$ѱ�sFQ'^n;��U�y;���8�N��f����/�5�w2)��]giآ{Ti�C��Q6�j{�������D#��
>��T,����t茆�u��hr��at�8���5��v�u�	��F�^��;�-�:�S���̎0����e�3�#�P{�Kѩ����]�?�(����9��|p�]��ii���{�����{�3%ʺ�N��*��ݬ�Q��ä�%|D�d���X��3OnV#J��4��k�\B')�,
�Q���>� M���遚F�e�T��Sħ��pL�3��
+��pʺNJ�p^��h\'�
�y��&���0!i���h����Nf�� ���aa^�J��ۗ'�#���_��<��#��`��M�U��t�\y����ǚ��0��v��+�Ü;]��n&B�Ǒr8�S�-��`��T�y��<������3��3c&5��B���3�`2�t����9R�������[	x�SFt��y�a�s�'�#s�Z�D�VN{��Noc+eL�
�- �,Sr(,Ƶ�E�y�$'�ӾMMfR�=q�&����1f�:AnZ\2]ǵ�k�׆��۶�������ǥ��:��3%J��� ;���g��H!�A��yY�X�0B���Po���h;G���1�?�������uN�%w�D�3��Q>�����a����P�F�B�s��LVyfS��O��ʡ���i����J��b����`�������gB���]�V ` ��w1��ԱtqV��o�e{R\�uJx���to\��1��¿�/�b���n��M�A�k��~{�)fR��F�A�&jd&���gp;��ᣑ��%��-���1���_���Jm��ڼ�x{
3�`�(ǷԊ�n���g?�q-5����N �M�`�5�����9�Sv0��68c�����I7����Fj��E[��1��[H����X2�vi��A˃�掻6����c�6���;�́��
iͦ������":*�b�&���}fw�T8hݣ��㰷�����u�6XL���N�#SWy��=aO�0w l4]�s�w�:g�;Fvx���㕦tK�����Y��bs׻�tH�r��ָ�yrਜ਼1��nP���S�*C�=���,�q�)g+�b�E3��`���p;G��n)'�v�,|�R.Je�O�w���FNZl���]\�����@�ƅ��A��ڎ��������R���4����/�ҍ�t�tc���!`��X7�1���AEF� �ڐ.w�~В�����=7���ΪV�i���7��R�����I%vhY�Ǒ��y��t[6&sXK<-��0N󼵺���K� �@���IJ��J�(����_�p���6� ?<#�+/�ȃ�R��_�}���M�'�g&���wG+�ʩ��@�b3g�96�i�\/	�s���k�s�eq���Y�(�.}벂vq�֊yN���n1��^p������j|�1^�2{�^�~�����UL������",?�� 5�SVޯ��~��z*v�Z��9��Z�+�L�·1%{�v�}�.]Ž��TH�tFNyi_h��հ��z�E���S��Ns�^� ���0ݗ�Șrqܐ)
E��YS�Q�!:C��@/��N��xyӘ� �Ŝ�>�O���*��3�`Hz�d����
�Fh���	�����%o�Y�!���`e�:")����Rvp��:��c2W|���A���QPYy�9t�!�t�ؠDM����Y��	R�B�\�y�Kc	�׈��³6-R��@$���p!��04f ��ܡ�R�ۻ_ b����o� �G�aRZq���]�<f�Ù`�cG]E�=�I��������!�q�6�&���9�>�zgJ�����1WfEok*�P#�x�,`�l��JEy��7��>q+&�_�	6.�f���>���Z[�������F�\U/n��<H�$+�����X0F��    ���Z�RXDB�Uc��Ñ�	���᪱�3>K�"��xwa����n�v�Q�Np�w���D�|���Nޔ]�[�Di�I�ޣr-� �J/Q��;�ʚ�Hy�Z�n>�a�It�z~]}���x<f��lp-M�$��aK���HL�G�"K!��q]!L�(��Y��L�,.��ue�=fb��~�ft��V���cD�5�L���DJ;&�r���L᫻���ݶ��\�K�G&l1ia��ǌ��Q曺d���(���~�r�K�J{��p���#NDxi�4V�����^ZLm1/��u�1�����1���`J9p�
��{{C2Z�;�E�$̈��\h�d�#��`c���"��v���t�v�3�w\,� ")g�Aذy�h���Z^����(V=���?�V���S�Q�Ee�j��ǈ��{d���s$��Ļxu�r��j9q(e�	K�;{$��*	��),�#`7��4(����M��\*�hy-����}�d���;���ѣ=�l��#��Q
���6��p���R���R�&���\ܵ�OuW��A��1!ɀ]�>� �V	��}��ı-�Dߗ]w�
U�Q�N���0WB��4� #vF�/4:B��x��7��R�� h;���D���p3H���{����{v���!�����9ʇ\�ޓ���.p��/���H�l3�`މV\���'N)��l�ÍH�h,�$L�0߇5��s܀���� �xP����Ѣd��fǬ�s�Y��p�t����\��S2Y���*5>��#��2��~d���>r$��"��Z�9�p2�Yo�f�;�T,3^�R	&�1�jUF�x����¥�k�߃ǵ�yDU��p��	���?�H��[@��\P�D芾�Q�W�3�ܧ�AQ�cV�Ηw�K%��u�ƭP��C���I�!3�ݵHe߾����r�\0��(>��@�}�v�5o���2 #:���0J��$�ǔ����f��v6����� ��A���tv�y�ɴ3G�tr�	o�;ٸ-4,�8٬���GLr1Is˵n���M��Rc���`�u��b���xQ�웒��@��1�0Gy�m�j]5�W,�8o03��NH��k��^3g��" �����}���5UoA~U�R�y�T$rH�p��J���)�Y�_�����7f��7��Պ��Ǯ\�O�Pl�!�M����ⰼ,HtA������l�R!�n+-���AJ��Z�E��^�5��z�8��b|��N�V=f�vfj��R��01��I�&Æu���a�;uu ��A?5�rk22�-��2��H�v��F^y0sY�	�~j�{wS��}b�*`)��8�C%9�cޮ	��&Y^��sS.C!�<N��Z+�lѲf�!@��Z�=m��:�c��/�b�沥�d��F���'��u2�����r�j%�^�ׯ�o�$��a[/
�#ɤx��b2`~�x�	�Ȳ/�>ܢy	g9��V�`X�-���mW��][�y��2x���gr���vo*z�� ����٪vրC`���Qf�P=���NŸ��T��h�A��d�g�9`�M!��� ͔K�qb\wz�(���T�@��]�L(y�i����ͤ,���PN7��N����S��g1���6�-=���Q_�nN��'>�S=�(�Κɟf:6�Ʒ�SkE��2�b%�*�"Y�_ѨAUDD����\Iv���uwhU[/�������-��]?(��O	^'W��],�rق���;�K�K1EM
lpG���S�n�3���IҶ�9�3;���Tɑ�ܲ�M"�d�~].��IΟ:Y�o��r����?�����Y?�P&�TM�Vˇwt��ҽK#��%F����n��L�����m8p��z��'K��FnW7O���.̄藶���S5*�]q�{�v�ӉF���� �ʦ�2��&"�gq��t_*����Ddt�>ɉzz:庹#w�7i�W��t�LG�v۟Þ"�_�Q��J�Q���jU$5�m'�b�RsU	B[]^B��80j�<|f��K�P(l�Ŗ���  pۖh��_ZQ�������|S��f�<�^�=ؙ��������n�F��jv���PS�T쎁T�+�h��6��9~J�9���({,Bs�8��ܷ�'�7��F�J3�K�aj�?`�Aca��!~�C8\$����O��M�0�bFy�6{�^�����މ����m�]݄|��w��Km�����U�]�J˱T\���"9���W�]�4�h�!��a�w�Y�����O}ܥ�������ȏ�-�?u��k7b&�.Q�,�Z\�I�1��-��*�!q�3�(�qw1�ܽ�H��m)�.9�܏	�,'������T[���s�R,�W$��S#��X�d�w����Ėh�[�d����Y�N7*�����UQ󲫲p��t��l��c��6Ӎ��2���Ù%m&�����g&��Hx���W��m��'ܶ*���>L@�j�=�L ��3�0,�ֻz�<KW����.����e5��Q��[a�ݮm�pO;�~�/�L<�/�l#��ޘST|kX�����5&��E�n�aa��5�.�=Ѭ�#����5�܌��"���~�@����Q��������~�W;M3Ɯ��R7�gf�@��:�ݣo�(�+e������XK�I�����S���J�IZ��hlai`�"�O��d����s����1��Tb����sqS�����<dHoL���f�'�qŭ%�9��D��p@�-�r|��iwwM^�h���:Q�u�::�0�H_R����.��133+�e�u���������Rc��D'�KY�2��X[�r�7�OK����S�����k�)��=��E����v�4f��Oi�?���ϹT:�/ːΈ��7:b7O��A�O�hU,쬹!��-�C�#+f��>ꕻ�+�J��}���G���5�Jw���
BK��C���Re�w�N3��H0�.�c���-Bk����j�m��[�Cn�[�����稤٨k��)�0�' �(;�2I�s��-	�-D�ߩ��-�S7+le,����yJ� 'H;X�P�5V�_�-w��v��,#fD��)[pr(��$�O}��~���!��c�ύ��n�:'�%�G�=�@i��$E��8"��8;�$`?��昍��-�<3�sXO��nӽ���eٝ6|�؎���q�5ؿwv�O�w������9c�[?��tɌI��׍A��bI���(��Q"W�rno�7��]��4��!~j�|�)��_ԞQ�i(����|%)v�����V;��c�Ϙn��u��$:�Ӹ<�	��9�8u���{��u�DMO��BL�2wWH��J��h�����o�P�:�d�h!�p�a:ٰ�CpUp쒷������%��k��E�q6�}'G|�G�q�h�l w�6�PM.�eP���g��������f������6�r�cwRca�&D+�?ճ4RZ��r_2�۶����w�����X&
�[� !��u�|���3�c��{z�lf,�Dr�{��S~�ɟ��dN�~m��vПq5��4���ՓW�է.����s�4c��Fv� +
�V�>5��Om��-���N,w:qÛ�PÊ���=eKW�s8�;�T�w��w��MB$M�4�t����#3�}�uM�9�L{���5x�o��3��ͭ{�u�b�*��y�Ź�-��9������)�.]�"�*7Q���j�4R��n���]�3,ZL�,��
��.��5sčRhe�qb��,�t��U�j����;E��j"�?.��,
�1�Lui-:q3�/�����_�̮{��)n�S���4��%$_�QH��R;r��6��]�҉F������'�^�.�������W�V�Q�VQb��Q�C�"|�]s���N{r9Р�ڭKv�2ZS���zpe�U���G�����1�����f���84߻ P���� ��(�t�t/i�e�ܣ�Ž�S�K���J�u7�tm��f���`��� ��z�}�_�Q�d����/^"���G{�8U�?����(4u�? �  ���7�d>���$_�5�K,U��7���1��c<<纭2V�6ōC��Y�gC�4��⇆K�m>�̀���eBcs�Ť��g󐘗�3c���/�Yw��D�_���~���t�Ę+�Ҋ
Y��)dmk��8���2U���'OJr�q2��|;GeWt�`{-�T�h�$�*:����<χ�w�:���QrZ_B�l�I����ٟ@^���:��x��#]��S0����Tc��j�R�3\�#uo�E��}��sK<%k��!8�7��J��)��:� nX}*m�)L������l���gZTy��ɑ��ױ�ÁX���*rk�C��r޷E�[u���GT4E�	�Օ��	y�~]��㯯�M궝P�y��L@~Md�ut �1�AJю\֥�T�>��asi/Wt��"��27a�j�Qy��(�{��_6�����b�Z��H�����c�3�I=
����^#��N��4���m���/՞�ʼ`O3�����P�Q��h�8U��'���+ �}m8g���ŝ`!�)h.Q�0����7ئf�Zi4�����O���p�s&�m�wyՄF�B>�sܓ#i��H{2��#�3�/	�O,�_t<����u�&�ݵwB���Z9S V�#�<� 0��21\�����a�;X(E�{���`U�q�@(�\u��D���E��e)�Ol8��[̢��CscmbP�:)wn���d��t:��������vE#h��0{k�c�%�-����%e�{�����m���/aOj����l����ʝbN�_,xr�Ӊ)����bN����7�����1� nDLv4`��M���"ܥlr��a&S�(#J�}�Ft�hN�ɲU�Uju�75���Y��j����vK������o֨�OD���8�GJ���� ѩ@��\��8��)���e�Ru/2��D6��M��j�q<6�A\*��x��ē�Ԫ��|��`o�8zR�K���Z���w�K�o�Eb����oL�Sr�W���|P��px�Hs��n��Y��qI*Ԭ!��Xj?����Z�v�
P�������\t����K��C	Ҕ8�o�,��5K�,-����R)���\�H\i��<?�wQ�"�OOg?������χ~�p�GMeOF�|!�@�R�;����bzs�T��"5�'�ɦ��ԭY�w�K�b�U�l�?X���*3kݛ��x��a?ԃ�ݜƮ'D��K��v'�����v���S��mS;V�qĀ1J}���1�K�a�<7�(W�Z;�#e���_�3���*"Ű��ۣ�Q'aVR�Q�7\Q��ꤛ�u܅��0./�J0�3��n���lq�U1��~D���{�A�?r�%�AZa���)�f�1i�	��S1�2J�j$yC���[�Z4	Y*���:/���*f����lB��X��M�B19��fc�e�H����Ri�Ϊ��V�3&�ڦ,[ 
��-~�CM4��Ɖ�~�x�����l8���(q��3c����T��4{�?3�#��~l��?2\f�\���vi�D��4O'<<�o��2hFJ���:��aF�1"���8H�����ŶMZ��̺���헢$�eߵ{9��^}�g�g�������W�zvT���D�sP`A�p]{�@2g�tt`�&b��xk] G�"�r�$"�}����1ݒ�jَ=�ِIV��3*�▮��Tc��$C�$Ie�'p2p4o�<�\�͢���
����c'9l��X�u1��pM��zD�Deds�H��ӡ�<\	��Tok��-�5K��E����$�ʼ~�ܵt}o�5(e�#y���S�e�~ck������NI@�Gp�(�=)(J�s�k��M��ȯ^"�ӂ�l��Y����Y��^i�V��R�q��1��q��,,�tσ�&�Q�S;���룯1����N��@�4�'�`�nO0�`���ض/;�G���
5�o͵��J�L�\����]w�cو���1�=L�˃�+X4����?~g3�Wpأ�O	{�sn��G^V���X�����IM�sd�����c~�P�&W;JtԹtgE�k�V�
n�0Ӵ&uPR�=Qt�;	޷uF�.Yw�Qr5_T�77�!�Q{S��T&ۃ�<��DӪZ�Ӄ81B!�%�<�&i��67�׶�(�`���������o�`��
�k��Q�u#������˓����u['r�þ���,�>G��SR�;#�������������      e     x�%�ˑ!C��`�0�@�2al�5��$���l��gc%�/��Ci\��^�A��."U�"^i,D�UĆ�	F��ni#}����FqQj/Ju��4e@�t��lN��p�D_w܃������U��b/OF�%���Hlyf1O6��f ^�����g-x�
��ƱUO��|�ʆC�ϴ[.<�ű�R��p�@�Xj٤g�K��)R�MJ����Yj�)����z5�ʹ�(5����Ap��cN3���z�Oh����=���:a�      g   �  x�u��j-G���Ä���}6���.�Kb���@6���)9v|=U4sF]*������߿>��>Ԩk�$֣KlĐ،?>���ӟO/_���=�����z���[�s���Q�����*D�F���D�N�����=�^��
�H�^7��	^�L�z#�"���^ֻ�EU��GU�uD�p�-匪��
^�Q��z���V��DM������UUU��TUѴ_ی&���MŵM�|�É�
{��
;l�Fow�N�>3�]�1���G�M�2�����H:1t�5���ۏ�!B�K���N=��1FL�!�rżK�c��'��d��)'b�K���կ�K3��d�Χv�"7�o\��5�cHf��VR��YtM��n��Q��xj�VO�Zf^A�t#/�e�F�tm�65W�4�t���K�m:v�+{ľ؛��h~�E�T��8n�pbk�[[� �9[kl-�IU�I{�����_����>��2-Ό��tV���q�;�}s,�ǜ�q�J�c����h�Pz�
�m��
�d�_lw��p;�%�xs��H�)� �6�,3馘"$ߔ;DI�1����bj��S����C_>	�\ӟ ᤸ;0"��40�9pPGā�:B�sR��)�a'ek<%�uR6>�pwR��a�ӡ%�:|�Rth�]�C	>��f����z�z`�1�<0���GO���)��m���n�@��J]VL��:ݼ����������6&	ea$>R�-ɁP7ЈE87s#��ƣߍ���S�ٝ�#��(��x��Ry7����&�Sr7�IIi��<S�1�;͔b橴.�j)ؽ���eL� 0���D'ðHvF*���@|��{�IQ�p�e�+?J������_��H#���r�b-�-(EܦrClɁ�2H0ܝ�Q�iE�0D����Cy�`��	�R ����S�p
bN�Zd
q�➦���*��gn}�o���X��Oj���/?<<<�=�9      i   �  x�mV�n�0<���_Ph��1P��\�����B`ı
Y���Щm1K ��P���٥7����ͷiZ����3ȸy;.�߭y��u8�'���<c�+���_F�
'|>�Pa���$SL���"�p+�$m�Q��T1����L��fL�BLw�����/�@Ȝ�E�-�旝q��y�|E�̬����
���۸y�3�˱3>��}�/��N���%���y���q�Aʚ���Y&�I�I��k��7�RX�Y��zP�
��bL#���*8ۈ��g���E���߈K���h���a���׳������H�F`��̉��SQ�i����u�'��8$�NK�4��֓KCf�(�4�,#�+gG�62�;�v=GT�Y���Q~i�+�J��f[�꼹*�5�d�NK�Jk�.D��rk��*�,AKE�J�F����j	�>-	��T�ƕ�����*�o����E��q�k"�꬈�#V'����fͰ_�͜7��a^v�~sS6p.]��#�O�4�7u..������q�/ox��i��e_s�҉:�2U������?�l�!y8�]�?}}A����IW�,�V\`Q�_a ���d.�
�{��K�B�3�L�ak�#.Y�\mz(�R|����-!�._��Q���k�겣k�Xb�ѯ/]��I��      k      x������ � �      m   �   x�%�ɕ1�"?��\&�8F��Qf��
Ջ�c%��K��R�Id��ē�׆�)���ә2���a�іޤPF[��*�~*)����!�(��6���t)1�tw^q�/)u��L��Ghޥ���_.h�B�}&���̈�F����H��e�� ��Y��p6�㾥�6�;�Ś+n�*F}x؇���N����J���p������,�%��>��u���oe��e-��QX�x[D<ߜ���#"���P�     