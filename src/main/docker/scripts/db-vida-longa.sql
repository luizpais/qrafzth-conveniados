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

INSERT INTO public.convenio (id_convenio,nome_convenio,cnpj_convenio,ativo) VALUES
	 ('166c8022-0db6-4f08-a226-be5b7422f82c','Vida Longa Planos de Saude Ltda','87888222000187',true);
