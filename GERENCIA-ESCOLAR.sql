PGDMP  	                    }            gerencia_escolar    17.2    17.2 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16511    gerencia_escolar    DATABASE     �   CREATE DATABASE gerencia_escolar WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
     DROP DATABASE gerencia_escolar;
                     postgres    false            �            1259    16532    alunos    TABLE     �   CREATE TABLE public.alunos (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento date NOT NULL
);
    DROP TABLE public.alunos;
       public         heap r       postgres    false            �            1259    16531    alunos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alunos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.alunos_id_seq;
       public               postgres    false    222                       0    0    alunos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.alunos_id_seq OWNED BY public.alunos.id;
          public               postgres    false    221            �            1259    16520    disciplinas    TABLE     �   CREATE TABLE public.disciplinas (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    carga_horaria integer NOT NULL,
    professor_id integer
);
    DROP TABLE public.disciplinas;
       public         heap r       postgres    false            �            1259    16519    disciplinas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.disciplinas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.disciplinas_id_seq;
       public               postgres    false    220                       0    0    disciplinas_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.disciplinas_id_seq OWNED BY public.disciplinas.id;
          public               postgres    false    219            �            1259    16539 
   matriculas    TABLE     �   CREATE TABLE public.matriculas (
    id integer NOT NULL,
    aluno_id integer,
    disciplina_id integer,
    data_matricula date NOT NULL
);
    DROP TABLE public.matriculas;
       public         heap r       postgres    false            �            1259    16538    matriculas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.matriculas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.matriculas_id_seq;
       public               postgres    false    224                       0    0    matriculas_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.matriculas_id_seq OWNED BY public.matriculas.id;
          public               postgres    false    223            �            1259    16513    professores    TABLE     �   CREATE TABLE public.professores (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    departamento character varying(100) NOT NULL
);
    DROP TABLE public.professores;
       public         heap r       postgres    false            �            1259    16512    professores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.professores_id_seq;
       public               postgres    false    218                       0    0    professores_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.professores_id_seq OWNED BY public.professores.id;
          public               postgres    false    217            h           2604    16535 	   alunos id    DEFAULT     f   ALTER TABLE ONLY public.alunos ALTER COLUMN id SET DEFAULT nextval('public.alunos_id_seq'::regclass);
 8   ALTER TABLE public.alunos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222            g           2604    16523    disciplinas id    DEFAULT     p   ALTER TABLE ONLY public.disciplinas ALTER COLUMN id SET DEFAULT nextval('public.disciplinas_id_seq'::regclass);
 =   ALTER TABLE public.disciplinas ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            i           2604    16542    matriculas id    DEFAULT     n   ALTER TABLE ONLY public.matriculas ALTER COLUMN id SET DEFAULT nextval('public.matriculas_id_seq'::regclass);
 <   ALTER TABLE public.matriculas ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            f           2604    16516    professores id    DEFAULT     p   ALTER TABLE ONLY public.professores ALTER COLUMN id SET DEFAULT nextval('public.professores_id_seq'::regclass);
 =   ALTER TABLE public.professores ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218                      0    16532    alunos 
   TABLE DATA           ;   COPY public.alunos (id, nome, data_nascimento) FROM stdin;
    public               postgres    false    222   2'       	          0    16520    disciplinas 
   TABLE DATA           L   COPY public.disciplinas (id, nome, carga_horaria, professor_id) FROM stdin;
    public               postgres    false    220   �'                 0    16539 
   matriculas 
   TABLE DATA           Q   COPY public.matriculas (id, aluno_id, disciplina_id, data_matricula) FROM stdin;
    public               postgres    false    224   �'                 0    16513    professores 
   TABLE DATA           =   COPY public.professores (id, nome, departamento) FROM stdin;
    public               postgres    false    218   	(                  0    0    alunos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.alunos_id_seq', 2, true);
          public               postgres    false    221                       0    0    disciplinas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.disciplinas_id_seq', 2, true);
          public               postgres    false    219                       0    0    matriculas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.matriculas_id_seq', 3, true);
          public               postgres    false    223                       0    0    professores_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.professores_id_seq', 2, true);
          public               postgres    false    217            o           2606    16537    alunos alunos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.alunos DROP CONSTRAINT alunos_pkey;
       public                 postgres    false    222            m           2606    16525    disciplinas disciplinas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.disciplinas DROP CONSTRAINT disciplinas_pkey;
       public                 postgres    false    220            q           2606    16544    matriculas matriculas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.matriculas DROP CONSTRAINT matriculas_pkey;
       public                 postgres    false    224            k           2606    16518    professores professores_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.professores
    ADD CONSTRAINT professores_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.professores DROP CONSTRAINT professores_pkey;
       public                 postgres    false    218            r           2606    16526 )   disciplinas disciplinas_professor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_professor_id_fkey FOREIGN KEY (professor_id) REFERENCES public.professores(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.disciplinas DROP CONSTRAINT disciplinas_professor_id_fkey;
       public               postgres    false    220    4715    218            s           2606    16545 #   matriculas matriculas_aluno_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.matriculas DROP CONSTRAINT matriculas_aluno_id_fkey;
       public               postgres    false    224    4719    222            t           2606    16550 (   matriculas matriculas_disciplina_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_disciplina_id_fkey FOREIGN KEY (disciplina_id) REFERENCES public.disciplinas(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.matriculas DROP CONSTRAINT matriculas_disciplina_id_fkey;
       public               postgres    false    4717    224    220               M   x�3���vUpqT��	sTp�t�4200�50�54�2��u�tTpu	u�r�q�4����54�54����� ,��      	   /   x�3��uqbOgGN3N#.#NwW� G7OGNC#NC�=... �7         +   x�3�4B##S]#]Cs.#Y�ą
�p��qqq ���         :   x�3�tu	ur�Wp�q���u�s�2��
���R��	s�t�p���qqq Io+     