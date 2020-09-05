PGDMP         (                x           happiness_db    12.3    12.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    33791    happiness_db    DATABASE     �   CREATE DATABASE happiness_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE happiness_db;
                postgres    false            �            1259    33803    alcohol    TABLE     �   CREATE TABLE public.alcohol (
    inalcoholid integer NOT NULL,
    excountryid integer,
    alcoholperyear double precision,
    alcoholperday double precision,
    beer double precision,
    wine double precision,
    spirits double precision
);
    DROP TABLE public.alcohol;
       public         heap    postgres    false            �            1259    33794 	   countries    TABLE     �  CREATE TABLE public.countries (
    countryname character varying,
    region character varying,
    happinessrating double precision,
    gdppercapita double precision,
    socialsupport double precision,
    healthylifeexpectancy double precision,
    freedomlifechoice double precision,
    generosity double precision,
    perceptionofcorruption double precision,
    dystopiaresidual double precision,
    year integer,
    incountryid integer NOT NULL
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    33792    countries_incountryid_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_incountryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.countries_incountryid_seq;
       public          postgres    false    203                       0    0    countries_incountryid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.countries_incountryid_seq OWNED BY public.countries.incountryid;
          public          postgres    false    202            �            1259    33813 	   marijuana    TABLE     �   CREATE TABLE public.marijuana (
    inmarijuanaid integer NOT NULL,
    excountryid integer,
    recreational character varying,
    medical character varying
);
    DROP TABLE public.marijuana;
       public         heap    postgres    false            �
           2604    33797    countries incountryid    DEFAULT     ~   ALTER TABLE ONLY public.countries ALTER COLUMN incountryid SET DEFAULT nextval('public.countries_incountryid_seq'::regclass);
 D   ALTER TABLE public.countries ALTER COLUMN incountryid DROP DEFAULT;
       public          postgres    false    202    203    203                      0    33803    alcohol 
   TABLE DATA           o   COPY public.alcohol (inalcoholid, excountryid, alcoholperyear, alcoholperday, beer, wine, spirits) FROM stdin;
    public          postgres    false    204   �                 0    33794 	   countries 
   TABLE DATA           �   COPY public.countries (countryname, region, happinessrating, gdppercapita, socialsupport, healthylifeexpectancy, freedomlifechoice, generosity, perceptionofcorruption, dystopiaresidual, year, incountryid) FROM stdin;
    public          postgres    false    203   �                 0    33813 	   marijuana 
   TABLE DATA           V   COPY public.marijuana (inmarijuanaid, excountryid, recreational, medical) FROM stdin;
    public          postgres    false    205   T;                  0    0    countries_incountryid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.countries_incountryid_seq', 1, false);
          public          postgres    false    202            �
           2606    33807    alcohol alcohol_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.alcohol
    ADD CONSTRAINT alcohol_pkey PRIMARY KEY (inalcoholid);
 >   ALTER TABLE ONLY public.alcohol DROP CONSTRAINT alcohol_pkey;
       public            postgres    false    204            �
           2606    33802    countries countries_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (incountryid);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    203            �
           2606    33820    marijuana marijuana_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.marijuana
    ADD CONSTRAINT marijuana_pkey PRIMARY KEY (inmarijuanaid);
 B   ALTER TABLE ONLY public.marijuana DROP CONSTRAINT marijuana_pkey;
       public            postgres    false    205            �
           2606    33808     alcohol alcohol_excountryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alcohol
    ADD CONSTRAINT alcohol_excountryid_fkey FOREIGN KEY (excountryid) REFERENCES public.countries(incountryid);
 J   ALTER TABLE ONLY public.alcohol DROP CONSTRAINT alcohol_excountryid_fkey;
       public          postgres    false    2699    203    204            �
           2606    33821 $   marijuana marijuana_excountryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.marijuana
    ADD CONSTRAINT marijuana_excountryid_fkey FOREIGN KEY (excountryid) REFERENCES public.countries(incountryid);
 N   ALTER TABLE ONLY public.marijuana DROP CONSTRAINT marijuana_excountryid_fkey;
       public          postgres    false    2699    203    205                  x������ � �            x��\�rב|Fwq�G��%��B!R�Xž4�60&0C ���of��� ��K#��S]�*+���l�����/�w�~{��~�{��Գ�Zuε|��B˾��:>��s���w֋�'}.%D_j�G�{�.��ϩ֖k(�$��Z�.����;��_��ͼ���r���Y���C���bJ���k�1�Rt8���^�9��?��y�����pz��&WZ�����������q~��R��jM��H5$Ƞ;<x��������/PN����_�	��8_O^�������剣��޻��/���S�����q3	r��{
�>G�Bt!�O)C�Jէ�'�>��i�q��8zx8�����*]�Q��}Eg�4�C��_�Z���jˮI�1y�r��}i��ǵ�������~�� �u�'�1��J��߰�ewTD�)P�g.��D�?�RDÇ*��9x_?S���_.��ó#��޺4r�v�1��ZI0��y6�����jh�����[)���C£wܼ^��O]f�=n�����Ͳ߼�O��g?�
A��9/��%੺���|��n���R���I	A��)�P~-���<.V,9�����n��j!��a���d8։)�D��f�,;��Aۭ�s�0Q�ك�{��ypf�`�vz�^��{�9���/ ֌��4�K��%]I�8kHx89�w>�N����s�A&���Tx����q��y;_�O�@0`�{�������;~���!���0��[��!�� �q@] �����n`��|A
�_��5] �$s�
؅�7��Z䂸��?�Ɛz�п<pZ�9�"�8������n�8}��^^�n���[�5��o}N��Vq����>"<��K�.b��8%/� (����� +[�px����6�����Nz��CQB�c�^��~NQCPz�Sv/tD�r5`�T�$Ⓝ��$3���v�o����ۻ��g��j��l�p1�����|�����{2H���� c�|���`4QH=zI���^yI����8��z���}���?(��x��	.X�R�O�,e@%t@ed��)R܀ps�����YO���z|��]�7���P�p��	=�O�L�a���&�����6���|���f�V��u5��w��r���j9+nI�@��"����1��C�	FA&w�)Bcb.�IA��V���M�?/o�N^�ߟ_oޞ<_�t_IA{��r �wc^q4x�	��Il �Q �(pC7�2���LF��>�W����^e����r}������x8���ňM$�&��K|�I8���J��:8`��RG���.�[o��~>?}q��낾��D��р��˙��*0�a��[�m����#d��x��>�U����݃���+�����p"x�m��J�^0C�|�/
����%Ux��v�ÁZ�0�u?o�.O' �+� ���QA-�:R�Ay�E�L^����{B|uQ���p�	��4N��˿7ow_��Z�ڲ1:<̜b�B�#JAoq������y<t�@w� �HȦ��4��7���O�݇4r������v>�m<�����#�V����\8W}~3$A���D+����g��dS��w�BU����<������=��O�!�T8�X08�g��,������h�:> B�E@"� 
Q`r,m��9�_l�2x�#�vO�,Ƅ�� �k�'
�*� ����Q� &;J�h���v@]2��$������������ t�$/����F\sp! g�d����3~C�A�ʼ`��⪍6}{̸>r5L�p����W��L�xJ���ԃ"A�A�
����BD�U衁�!K������BΙ�+RCA,w�H��R\Dp|d��X&=�aYI��t��nW?�nz�5��헓׻{$F��F�5�e�G�[P�E��E?��,��<|]�ND�Q��̰�":��F2���~���>vU	���XdzUv������@�=�q�9���^ļ�u< ����D|�Q��_�>,[<�C+�$f4�"T!cP��4���� JGv�+�=��'�f��2M�4�i��������|�a����&1�W��������f�Dm���#a����%(�#$?uM�b�^�nwvG�BNŬ�8�#�
�R䋽 7J��~�PQ-��w9;���u"?8@ͱ�3$��OH�n��+N����C�N��ꀯ�LX]�2J@DC�Ka�����00��o�~Sd,�c�B� Q�4�a�Ȕ�@y	�Bu1�Z�1�4hC�K��U5-�m�>�2Y���pAR?�/�6��'�w77��G$��rļ�����ޭ$R�Jw� �b�"�bb=E����������0�)1�(�A(�vVj�ې
|�js��*�ݵ�4YR�[�"�L��@�L]%`GFQ<��J�K�~QT�E`��^��|�g�9��9��*����"��H��&,�'�* �H��̫`E
�5ӓ��ϒ�^m��� |�^D��3*+��ʡ*s(ؐ�?��S&�`�<?Yf2��J<�pC/�Oo����b��ov���1ꆧi,�(@oe�*��6'�4��ly.h�������CS+L?�o~Q?����A~ś����Ow�|%����F��a0<.d|��b�+@���)"��ݐ)Q
�����:��Lȷ��\p�� O�&t�H�!
��4�&^�[-�ׇ$iz�����A�G�� ,�KMѠp��[! ea뗈3�^Vv`բ� R =F(hA?D:6��ӏx��{L���p �H�-`]�׎�p������P�2p��p��$�o�L^��J�{������q�A���K����~J����90�Ԍ���o��
2[T�c(S^F9 ?���s����㼹;(@Iz�>2%$�*��YA ��R�A�X�Iڼ��Ne<��i�*�5>��!KC�y���m`������|����^D����K�J�� �Q��?d���<�!�f�'�9��^��ԇ�8��}z9��]}} r���s�Q��M�C)�%��|U�;���XK��u�-N58	RrƢ8�7�������H�� �$�3D!/Y �dYy|��A�HA��>������Tr����~�	�p���f�����8����X���[\���6+��apGi#08Q;���n1���~�v=���=����m@���#��$�4�Ȓ����X���(0��"���}`��FU|Y�c:d����ռ��I�L�́�MOg�J�}��R�� �)<�AZD\�M5E��~�Ӝ�g�K(�ŀ/A�A�3��.P9�V��΄;�6o�����sմ8�02�ēX� _7i���n{q��o�	�j��qzi��f՞�0H/���7ч1�N�����`��F@���X|B�9�)d��e��$�B�]��+��x��Yq 8��7H� Us��lMIE?DA���=c ��!H�^��?��@x e)ƣ#l��Z�A�m��AC�������R�����ڶv(r#���_����uV_�*�1�C�.*�S̖�*�����A��Ȭ%T��"������ܧ�!�9����D�j0�]Ò�;�
d M}[��-� /I�hDi��9u�J(Ҥ��Mr�ӗ����RN�!�k�c��
AD����ԨB�fjQ?�r�V�3��|Q̀¶N�(�x�G�㱪�Z��^H��ӬF�4�FՑ�7�B��a��{�>c3�2�[!]��Gt�긳B82,�$"�|�Jb���f�jK9A9 �0�Y�8=K�y���8�^���\�T/bG�l�����ZW_��v�́���4���"��Ve�,
3$�xU����z��+�$�&�u�yd ��"�uYE�R��Uy!a�*|���I��sZ�U�Z4+���׌r��U&��ȕ���1��Yg�sz�FD�z�b<HG��VC    /	���p��=���'�rU����+��p<ؕ��)��S9�Z�X��Wdg'����Q�+�1c	�}��/��qoA���#B��8 �`�I-^֖���< ��*�^����w�S>�A�����Y���KG��?/�,�1��\rs�ح�8[Sr�L*�Y55w���*��-�#�TGn<��ҧv�����T�8	��B�X�R�d5R"Ϟ֖ԝ ��$+5�a�V�I #U	���C%6��7�?7__�Ɍa���!q '���c����@#܎�2���F�K
�~1��Xo1���S����n�.��/�� g�E����2A1��Zq	di��U;�Yq�@���b��nѬ%L?��ҳ�N9I\�%edoE�d0�J9�Ֆ�������wo]P�8d��::5N/?�/?}��ٟ�d��ܭD �8`RM��f�`ZEfh�p��!�ep��jH�c�n�؎�Y$�:���D��&d�|�h�6:⨌�PAI�c_&F�=�"/�q���P�d���u������ �I����j�kF	i��\H��Fw�= ������<l�f66E��B#M_�[��@��:D���Yv��Nx�l(�NS��/A����g��~>{��H	X�j"�Y`�Yd!E��EꙨ�5�'�d�O`m�S�L���Ui \��|�C8��	
ɓ�ŉ�����M�JZ�6n_<�%D@~����[͑#d�L~kaڶbn�ӫ���#���Ք���7�Ѐ'MV;�g2	����Sk�(���n��J�M�V�a�rǑ��_��)��rȭV+ :k��h���0^v�Ĳ�Mh�q�N��%�j�~�F�X���>Hz���N�̐�?}C���@E$��; %����5p�W�Aa������o���|��釩C�ƚ�����A������ꉦ5 ��0 �a���4Ė�/�8�v������P�Z���'gcL�-4g�l2���2�¦#?��y"�9Y�M�!ǴN۶4}�a��t�|��+�AP~�iUc�F�������U�Ģ�BG%EVz��6��3sp'��nczC���n�O��l���x�'eze����rH�xk#��m얉,��'dz�h�������Z�Zo�T�&��E��lZ�����)3��ե�ŀ��7� �
��I�h�a������w�l�~�?l����|\�]BKS0E�[E$$�F����M1i����	�*�h-����J�A��8mz��Լ���qϪ���%�>�eZ���R����n0��V���D�=�TYVkꪃ[FN���O��ű�e�;�2[ρ�ޭ��xK��d��k�
-�!V�)�,R�N�3�n��jF�z��k�ՊQ��/� ���8�`[�U�a����r[�6&@��nxӠMX�/�O?.���?Y���F�M#Wc3���q�����m�0��:�N,`��\ ���Y䜅���z�����-��,�8�-\��.�<p
ȥ�6�1[���F.� <�Iqh�D�2L��$�8=dS,��a�8��2�m@4f=-��W�mD�I�pd�
��1�Ҟ��@��s\�A�;F`�Z��IuT�H�p%6.�s�p�`-r ͚0P��j#�FdZu������?��CF��9�M��4�P��b+ȈX5Q�	ܬEk{���?��ew �n�{�vw�8�-2l5�FU�O*W�`wв]8gVR+8Ml]@�c�=h�:#���'8���i���1��n�Jy�P��z�Q;�jgc���p�L4��;m�]{������rd�*ۨ �(R='����*9p�Ä�;U�1K����&�Ô�[�OϮ/����6�¹F���@)�Pa*rD�Y���*�Ώ]�Q ���b]]]�F���|��^3{&|=��t�;��Mrr?ʓI���M��uP ĉj$2�h��p�[u�]��9�!�����l�G<�����m�t[�
XeG�*�Q�ʠ!<��fKNHwY�
B�q��֑X�k� A�~��J��qdz�����W�	��f��*�>aB��ƃ�y尜M��O#|����ռ{�qKJz����ܪa��Q�bG�˅f�30�+|��1�2X����
������X���X�B�q��A%�9��u08�݋2�T��a�1�m�Q'�� Ń������%+�w�7�)	&��S�b=g���U�8 1�i���&�L�����Xfgݖ��9�pe�f�^^�����#zbw�His�Y�౩�b�Z���X���g{w���m�ٽV7W]w]\����JH�&c��!ا�)r
�fg�dZ��zآ���8� �L�͑��j�&����F�d����O�1NkNO���	����C�d�_XT4nkck`t��MfY������__F�֒~#���p}��8�_��XQ��YZεJV�Fw�I���@�9C���A��f�wӫ�;2�i��6�:
��3��}`wO@���[�y�1�mz�����a�`�)�u��^��u���v���������'!F`7Z�pv0���X��ff���=ASl�Aep��YF�q���ܮ��']���%�΢8"�2�,Đ�,'c:��6���1���i�頉�q� xR7|���h�Mn�J���g�+U+��b�T�p���@���x��d�Inu�8Y�^�i������أe Y��Q�ܐ�l�rnʦ=�jZ;������Ʀ�����j�V�D��j���������4�A�4��r6��RU��9�(�V}#�ˊ^KP���׋YU7�$�^095%��w��赚b`�u4e�&vDK�U��Q�-�s�A�%���x fl�J���YqWd�iH��63��g�u;eZ%i��v����%jh�xf�^�"}�S�}�,�\*!��v\��P�l-��`=U�Av�>Ӆ�u�<n�)k<���,�×]�V�%9���n�hM�ĩ��R�\�j��̳��r�~z`UꖋQq~�jQ�a���h���T�as�٘4Ҁ���t�	0�4�ʹ.��(���7�'��]w�;e�^����c#�Z\Oɢ�N�Ġ(v+�K���r�� ��V	���;��._�1P39�H �&�x�B�>FAXβ�AW��n1�����\;w�S��-��*��Жq�<0W'��ڀ�m<�+�?`��I�M�H��Me���5r��ƾʐ�����y�g�Y����n�9�6G�Jݨ .,h�z�VC���϶O��Yt�TZ���Afb�0��e�U�<�r������7����0z����Wc�PL=��ϊ�ld@�f@p+�{��"!F�8�� 4Oϯ�'�b骰�\����6c�^[O��\���k��&n\c'�"h>����^�7������5�ؽ��3��f��j˦�"�������g� G�k�.��JN��<�� "�X��G5�+�ʫ�ȁXmP�s��j[,��4��[�滞��nWg�몉���!E�^�7�������I��$�rh���0��V9ь/�:v^���Xĝ��l�J��R�~)���J�[�/7�۫�v~�Z�8s� W�ܨ��%r��T�M��e�
�x3!,Y��5qk���C	~����%���Gep16߃�ѫlQl�+YlPd[�`���Pο��!�Ͷ[U8��U�0��i�S�QCXf�"ם�1�V�����<��L�'ή׹@h��gn!�>���ok��ǿ��w��9'vFi�ŶD��3R�6!���n��w��-G���^�q�,r�?��!Mov�O$l�1��!<A�Rj��0R������6;lox��JbZ�w6$�Hr8�D�Ӌ�����SN�5�f��rU�
���j��Ht�(����|T�dl��ۦZB`O/��D�7��b��o��O�v|Ѷ��%��^�~j�6��������R��%>�8�1
;�p�߲�X������O$lh �  X��aL��e�M[�-8�ޅ �Y-��A�g�G#1�Pc��u\�� �� �Χ����Q���p�K텅f1`m���Y��V�=r��٬d�[_l+��pj�����8�Gg&{��x4��LD���2$@� ���"�W�
s)z�����0X�����i�'��������k䞰����vQq$��z>Z,��JL	4��+��3��Vaa;OI�;x�aJ�`�n��m�X�� ��q�^�=[��̾�5�`��/9B�`V KL�A�lŘKYE�����I��j���]=
�� X�q��r�:8�x���Gܴ<w]G�W�HVnb}Ц	�c^u�!���?���I5��,�2�Գ��k��
�og�`8A�˖�tBQm��C�$�����>>a9jV׍z]f{T1����YS�x�D�T��n��T��1��Sn�#��*� O�� �2.@����ֈu�Q���
{��<�Ԗ�ݰ5��{:7vl����w�k�<���ċ�5}�����D5�1��+�\���v��O��dj�z!�IN���}�?c1F�fҎV9o??��(���9����"�q0I%.���������{V=7��ҊS|7�VtLmZ�v���T��I[m��`e�#��S\�J ��mp�A������A	}���S�Ed>A:$2���im���Ѫ�`�o@8Q�i3ɸ5�^�R������6�`Gӯ������с��n�'&.�ig�/�a��B��e�)��V��rR�Fb9�)e:\y7=��ُ��{L�C��w�	9���xr�l��,�1�	�����|�a�@���"59���g�����F��`�n̯3v�B@m�F�q+��5�$(�>G�c�u�a5�����Ϧi�?�?G            x������ � �     