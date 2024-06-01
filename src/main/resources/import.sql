--create database dbBoaVida;
---- DROP ROLE postgres;
--
--\c dbBoaVida
--
--CREATE ROLE postgres WITH
--	SUPERUSER
--	CREATEDB
--	CREATEROLE
--	INHERIT
--	LOGIN
--	REPLICATION
--	BYPASSRLS
--	CONNECTION LIMIT -1;
--ALTER USER postgres WITH PASSWORD 'changeme';
-- public.medico definition

-- Drop table

-- DROP TABLE public.medico;

CREATE TABLE public.medico (
	id_medico uuid NOT NULL,
	nome_medico varchar(255) NULL,
	cpf_medico varchar(255) NULL,
	endereco_medico varchar(255) NULL,
	telefone_medico varchar(255) NULL,
	especialidade varchar(255) NULL,
	crm varchar(255) NULL,
	ativo bool NULL,
	CONSTRAINT medico_pkey PRIMARY KEY (id_medico)
);
-- public.conveniado definition

-- Drop table

-- DROP TABLE public.conveniado;

CREATE TABLE public.conveniado (
	id_conveniado uuid NOT NULL,
	nome_conveniado varchar(255) NULL,
	cpf_conveniado varchar(255) NULL,
	endereco_conveniado varchar(255) NULL,
	telefone_conveniado varchar(255) NULL,
	status bool NULL,
	CONSTRAINT conveniado_pkey PRIMARY KEY (id_conveniado)
);
-- public.convenio definition

-- Drop table

-- DROP TABLE public.convenio;

CREATE TABLE public.convenio (
	id_convenio uuid NOT NULL,
	nome_convenio varchar(255) NULL,
	cnpj_convenio varchar(255) NULL,
	ativo bool NULL,
	CONSTRAINT convenio_pkey PRIMARY KEY (id_convenio)
);

