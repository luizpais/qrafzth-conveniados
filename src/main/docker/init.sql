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

INSERT INTO public.convenio (id_convenio,nome_convenio,cnpj_convenio,ativo) VALUES
	 ('f69c15f3-a887-49ae-bfaa-d28d7394615d','Boa Vida Convenio S/A','02372888000178',true);


INSERT INTO public.medico (id_medico,nome_medico,cpf_medico,endereco_medico,telefone_medico,especialidade,crm,ativo) VALUES
	 ('133a9c6f-dbbf-42ee-a1fa-3ef123f3b983','Angela Patroni','11167674545','Rua Cinco, 99','1123233333','Otorrinolaringologista','4758',true),
	 ('ed95a4be-1ed5-49e2-85c4-fa11a4356b25','Alceu Coringa','33322291911',NULL,'11992928827','Ortopedista','18373',false);
INSERT INTO public.conveniado (id_conveniado,nome_conveniado,cpf_conveniado,endereco_conveniado,telefone_conveniado,status) VALUES
	 ('2431e03d-d66d-4925-937a-6ef1f70d4cfe','Joao da Silva','89933388833',NULL,'11992838392',true),
	 ('a98219fc-0f6f-405c-847d-e4ff4ea88db9','Maria de Angeles','44433355523',NULL,'11992844492',false),
	 ('8db7fe05-f80c-43ad-ae54-9594f38d98be','Marcia Arruda','77755555523',NULL,'11992847792',true);

	
-- DROP ROLE postgres;

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


INSERT INTO public.conveniado (id_conveniado,nome_conveniado,cpf_conveniado,endereco_conveniado,telefone_conveniado,status) VALUES
	 ('8e2384fb-8fb6-4b28-96b9-c297f232f092','Pedro Malasartes','23444466677',NULL,'11777222222',true),
	 ('4b389385-2078-441a-9de9-31f627a6cea1','Abilio Souza','12333466677',NULL,'11777244422',true),
	 ('444e1d2c-af0b-46b3-87d2-4cf45335616c','Cristina Ricci','343334333388',NULL,'11778844422',true),
	 ('8bf22903-68af-4251-b97b-acf7f53fc334','Paulo Silva','11902099911',NULL,'1199234324',true);

INSERT INTO public.medico (id_medico,nome_medico,cpf_medico,endereco_medico,telefone_medico,especialidade,crm,ativo) VALUES
	 ('2cf718a6-0ea8-4891-adad-0281269813a1','Alceu Coringa','33322291911',NULL,'11992928827','Ortopedista','18373',true),
	 ('24c2dbdc-0ecf-46bc-8018-275a2d0590ca','Angela Patroni','11167674545',NULL,'1123233333','Otorrinolaringologista','4758',true);


-- DROP ROLE postgres;

-- public.cliente definition

-- Drop table

-- DROP TABLE public.cliente;

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

INSERT INTO public.agendamento (id,idcliente,nomemedico,horaconsulta,nomeconvenio) VALUES
	 ('7c266ddc-06cf-48ef-b74b-978499e2ee9e','84844743-3f89-4d6c-ba82-dfcdd26dd934','dr Fulano','2022-03-10 12:30:00','Unimed'),
	 ('4fb0a2f7-d762-45b2-bdb9-d28d393c17e1','47a43550-5a73-42db-9601-d1d98d927c6c','dr Fulano','2024-04-10 12:30:00','Unimed'),
	 ('b0cf869f-c3a2-4787-85d2-bc991da67b0e','984c8cf1-cd26-4f33-8e05-4fcaaa8e128c','dr Fulano','2024-04-12 13:30:00','Boa Vida'),
	 ('2dadd2bb-5b5e-44ba-98d7-97f123ebc152','16197f8c-b60f-40c6-aefe-0701aa3512e1','dr Fulano','2024-04-11 15:30:00','Vida longa'),
	 ('03e9f71d-a772-4453-81e3-1bcf1b59027e','41a3c994-8eb2-479c-adf4-e6d80dd42a34','Alceu Coringa','2024-05-10 12:15:00','Boa Vida');
	
INSERT INTO public.cliente (id,nome,cpf,email,telefone,endereco,cidade,estado,nomeplano,indicacao,id_convenio,id_conveniado,status_conveniado) VALUES
	 ('806cd2d1-ed31-48bf-9c66-215ae4e4b476','Luiz Pais','12345678900','luizpais@outlook.com','1199229933','Rua 1, 99','São Paulo','SP','Boa Saude','José Maria',NULL,NULL,NULL),
	 ('ca7fe6bf-8be5-4b8c-9ddb-ffadaec5b3b1','Gabriel MArques',NULL,'GabrielMarques@outlook.com','1199234324','Rua 2, 99','São Paulo','SP','Boa Saude','Paulo',NULL,NULL,NULL),
	 ('f487fd5c-527a-41d9-9903-8bd975a351f2','Gabriel MArques','10788288281','GabrielMarques@outlook.com','1199234324','Rua 2, 99','São Paulo','SP','Boa Saude','Paulo',NULL,NULL,NULL),
	 ('e7a43062-0b93-4890-a716-5f4d7764ca82','Gabriel MArques','10788288281','GabrielMarques@outlook.com','1199234324','Rua 2, 99','São Paulo','SP','Boa Saude','Paulo',NULL,NULL,NULL),
	 ('6ab4cc49-8cee-4a26-85f2-75ddcb76e0aa','Gabriel MArques','10788288281','GabrielMarques@outlook.com','1199234324','Rua 2, 99','São Paulo','SP','Boa Saude','Paulo',NULL,NULL,NULL),
	 ('95581490-5b5c-4ef8-b5c7-6e0dd21aaf40','Gabriel MArques','10788877711','GabrielMarques@outlook.com','1199234324','Rua 2, 99','São Paulo','SP','Boa Saude','Paulo',NULL,NULL,NULL),
	 ('59d230df-50d9-4215-aa73-b068776ba4f7','Gabriel MArques',NULL,'GabrielMarques@outlook.com','1199234324','Rua 2, 99','São Paulo','SP','Boa Vida','Paulo','88ac07b0-194a-4036-91b0-1a95d41d540a','3fa85f64-5717-4562-b3fc-2c963f66afa6',NULL),
	 ('08defcea-1912-41be-b4a1-d636c310cba4','Joao da Silva','11122244677','JoaodaSilva@outlook.com','1199234324','Rua 2, 99','São Paulo','SP','boa vida','Paulo','f69c15f3-a887-49ae-bfaa-d28d7394615d','2431e03d-d66d-4925-937a-6ef1f70d4cfe',NULL),
	 ('dea52531-1f45-4f5e-9be7-9cd572fb561f','Joao da Silva','11122244677','JoaodaSilva@outlook.com','1199234324','Rua 2, 99','São Paulo','SP','boa vida','Paulo','f69c15f3-a887-49ae-bfaa-d28d7394615d','2431e03d-d66d-4925-937a-6ef1f70d4cfe',true),
	 ('a983dea7-7909-4cdd-9e81-ebf3d838a744','Paulo Silva','11902099911','paulosilva@gmail.com','1199234324','Rua 3, 699','Osasco','SP','vida longa','Maria','166c8022-0db6-4f08-a226-be5b7422f82c','8bf22903-68af-4251-b97b-acf7f53fc334',true);
