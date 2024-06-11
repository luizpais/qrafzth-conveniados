CREATE TABLE public.cliente (
	id uuid NOT NULL,
	nome varchar(255) NULL,
	cpf varchar(11) NULL,
	email varchar(255) NULL,
	telefone varchar(255) NULL,
	endereco varchar(255) NULL,
	cidade varchar(255) NULL,
	estado varchar(255) NULL,
	nomeplano varchar(255) NULL,
	indicacao varchar(255) NULL,
	id_convenio uuid NULL,
	id_conveniado uuid NULL,
	status_conveniado bool NULL,
	CONSTRAINT pk_clienteentity PRIMARY KEY (id)
);

-- public.agendamento definition

-- Drop table

-- DROP TABLE public.agendamento;

CREATE TABLE public.agendamento (
	id uuid NULL,
	idcliente uuid NULL,
	nomemedico varchar(255) NULL,
	horaconsulta timestamp NULL,
	nomeconvenio varchar(255) NULL
);
