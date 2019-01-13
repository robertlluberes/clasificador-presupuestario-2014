CREATE TABLE [dbo].[Regiones]
(
	[RegionID]				tinyint			PRIMARY KEY	IDENTITY(1, 1),
	[Codigo]				varchar(3)		NOT NULL,
	[Denominacion]			varchar(64)		NOT NULL

	CONSTRAINT UQ_Regiones_Codigo			UNIQUE ([Codigo]),
	CONSTRAINT UQ_Regiones_Denominacion		UNIQUE ([Denominacion])
);
GO

INSERT INTO [dbo].[Regiones]
VALUES
	('01','CIBAO NORTE'),
	('02','CIBAO SUR'),
	('03','CIBAO NORDESTE'),
	('04','CIBAO NOROESTE'),
	('05','VALDESIA'),
	('06','ENRIQUILLO'),
	('07','EL VALLE'),
	('08','YUMA'),
	('09','HIGUAMO'),
	('10','OZAMA O METROPOLITANA'),
	('11','Multiregional'),
	('12','Nacional'),
	('13','Binacional');
GO