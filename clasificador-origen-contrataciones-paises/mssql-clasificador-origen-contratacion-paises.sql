CREATE TABLE [dbo].[Paises]
(
	[PaisID]				tinyint			PRIMARY KEY	IDENTITY(1, 1),
	[Codigo]				varchar(3)		NOT NULL,
	[CodigoSIGADE]				varchar(3)		NOT NULL,
	[Nombre]				varchar(64)		NOT NULL

	CONSTRAINT UQ_Paises_Codigo		UNIQUE ([Codigo]),
	CONSTRAINT UQ_Paises_CodigoSIGADE	UNIQUE ([CodigoSIGADE]),
	CONSTRAINT UQ_Paises_Nombre		UNIQUE ([Nombre]),
);
GO

INSERT INTO [dbo].[Paises]
VALUES
	('01','DO','REPÚBLICA DOMINICANA'),
	('02','AR','ARGENTINA'),
	('03','BE','BÉLGICA'),
	('04','BO','BOLIVIA'),
	('05','BR','BRASIL'),
	('06','BS','BAHAMAS'),
	('07','CA','CANADÁ'),
	('08','CH','SUIZA'),
	('09','CL','CHILE'),
	('10','CN','REP. POPULAR DE CHINA'),
	('11','CO','COLOMBIA'),
	('12','CR','COSTA RICA'),
	('13','DE','REP. FED. DE ALEMANIA'),
	('14','DK','DINAMARCA'),
	('15','EC','ECUADOR'),
	('16','ES','ESPAÑA'),
	('17','FR','FRANCIA'),
	('18','GB','GRAN BRETAÑA'),
	('19','IE','IRLANDA'),
	('20','IL','ISRAEL'),
	('21','IT','ITALIA'),
	('22','JP','JAPON'),
	('23','KR','REPUBLICA DE COREA'),
	('24','LU','LUXEMBURGO'),
	('25','MS','MONTSERRAT'),
	('26','MX','MÉXICO'),
	('27','NI','NICARAGUA'),
	('28','NL','HOLANDA'),
	('29','NO','NORUEGA'),
	('30','PA','PANAMÁ'),
	('31','PE','PERÚ'),
	('32','PR','PUERTO RICO'),
	('33','PY','PARAGUAY'),
	('34','SE','SUECIA'),
	('35','SV','EL SALVADOR');
GO
