CREATE TABLE [dbo].[Monedas]
(
	[MonedaID]				tinyint			PRIMARY KEY	IDENTITY(1, 1),
	[CodigoMoneda]			tinyint			NOT NULL,
	[SiglaMoneda]			varchar(3)		NOT NULL,
	[CodigoAlfabetico]		varchar(3)		NOT NULL,
	[Descripcion]			varchar(64)		NOT NULL

	CONSTRAINT UQ_Monedas_CodigoMoneda		UNIQUE ([CodigoMoneda]),
	CONSTRAINT UQ_Monedas_SiglaMoneda		UNIQUE ([SiglaMoneda]),
	CONSTRAINT UQ_Monedas_CodigoAlfabetico	UNIQUE ([CodigoAlfabetico]),
);
GO

INSERT INTO [dbo].[Monedas]
VALUES
	(15,'VEB','VEB','BOLÍVARES'),
	(21,'BV$','BV$','BOLÍVARES VENEZUELA EQUIV. US$'),
	(17,'BRC','BRC','BRASIL, REAL'),
	(20,'ATS','ATS','CHELINES AUSTRIACOS'),
	(14,'SEK','SEK','CORONAS SUECAS'),
	(22,'CB$','CB$','CRUZEIRO BRAZIL EQUIV. US$'),
	(13,'SDR','SDR','DERECHOS ESPECIALES DE GIRO'),
	(33,'DEG','DEU','DEU (Derechos especiales de giro equivalente a Dólares)'),
	(18,'DKK','DKK','DINAMARCA, CORONA DANESA'),
	(28,'YUD','YUD','DINARES YUGOSLAVOS'),
	(5,'CAD','CAD','DÓLARES CANADIENSES'),
	(2,'USD','USD','DÓLARES ESTADOUNIDENSES'),
	(23,'GRD','GRD','DRACMAS GRIEGAS'),
	(3,'EUR','EUR','EUROS'),
	(25,'NLG','NLG','FLORINES NEERLANDESES'),
	(4,'BEF','BEF','FRANCOS BELGAS'),
	(9,'FRF','FRF','FRANCOS FRANCESES'),
	(6,'CHF','CHF','FRANCOS SUIZOS'),
	(34,'KRW','KRW','KRW WON KOREANO'),
	(16,'GBP','GBP','LIBRA ESTERLINA, REINO UNIDO'),
	(10,'ITL','ITL','LIRAS ITALIANAS'),
	(7,'DEM','DEM','MARCOS ALEMANES'),
	(19,'NOK','NOK','NORUEGA, CORONA NORUEGA'),
	(8,'ESP','ESP','PESETAS ESPAÑOLAS'),
	(27,'PA$','PA$','PESOS ARGENTINOS EQUIV. USD$'),
	(1,'RD$','DOP','PESOS DOMINICANOS'),
	(12,'PD$','PD$','PESOS DOMINICANOS EQUIV. US'),
	(29,'MXP','MXP','PESOS MEXICANOS'),
	(26,'PM$','PM$','PESOS MEXICANOS EQUIV. USD$'),
	(30,'UAE','UAE','UAC (Equivalente a euros)'),
	(31,'UAF','UAF','UAC (Equivalente a francos suizos)'),
	(32,'UAJ','UAJ','UAC (Equivalente a yenes)'),
	(35,'UAD','UAD','UAC (equivalente a dólares)'),
	(24,'IDB','IDB','UNIDAD DE CUENTA BID'),
	(11,'JPY','JPY','YENES');
GO