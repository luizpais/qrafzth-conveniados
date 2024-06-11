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
	 ('f69c15f3-a887-49ae-bfaa-d28d7394615d','Boa Vida Convenio S/A','02372888000178',true);
