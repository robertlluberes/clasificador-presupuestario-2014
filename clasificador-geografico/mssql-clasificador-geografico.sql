CREATE TABLE [dbo].[Regiones]
(
	[RegionID]			tinyint			PRIMARY KEY	IDENTITY(1, 1),
	[Codigo]			varchar(3)		NOT NULL,
	[Denominacion]			varchar(64)		NOT NULL

	CONSTRAINT UQ_Regiones_Codigo			UNIQUE ([Codigo]),
	CONSTRAINT UQ_Regiones_Denominacion		UNIQUE ([Denominacion])
);
GO

INSERT INTO [dbo].[Regiones]
VALUES
	('01', 'CIBAO NORTE'),
	('02', 'CIBAO SUR'),
	('03', 'CIBAO NORDESTE'),
	('04', 'CIBAO NOROESTE'),
	('05', 'VALDESIA'),
	('06', 'ENRIQUILLO'),
	('07', 'EL VALLE'),
	('08', 'YUMA'),
	('09', 'HIGUAMO'),
	('10', 'OZAMA O METROPOLITANA'),
	('11', 'Multiregional'),
	('12', 'Nacional'),
	('13', 'Binacional');
GO

CREATE TABLE [dbo].[Provincias]
(
	[ProvinciaID]			tinyint			PRIMARY KEY	IDENTITY(1, 1),
	[Codigo]			varchar(3)		NOT NULL,
	[Denominacion]			varchar(64)		NOT NULL,
	[RegionID]			tinyint			NOT NULL

	CONSTRAINT FK_Provincias_Regiones_RegionID FOREIGN KEY ([RegionID]) REFERENCES [Regiones] ([RegionID])
);
GO

INSERT INTO [dbo].[Provincias]
VALUES
	-- Provincias de la Región Cibao Norte
	('01', 'Santiago', 1),
	('02', 'Puerto Plata', 1),
	('03', 'Espaillat', 1),
	('08', 'Multiprovincial', 1),
	('08', 'Multimunicipal', 1),
	-- Provincias de la Región Cibao Sur
	('01', 'Concepción de La Vega', 2),
	('02', 'Monseñor Nouel', 2),
	('03', 'Sánchez Ramírez', 2),
	('08', 'Multiprovincial', 2),
	('08', 'Multimunicipal', 2),
	-- Provincias de la Región Cibao Nordeste
	('01', 'Duarte', 3),
	('02', 'Hermanas Mirabal', 3),
	('03', 'María Trinidad Sánchez', 3),
	('04', 'Samaná', 3),
	('09', 'Multiprovincial', 3),
	('09', 'Multimunicipal', 3),
	-- Provincias de la Región Cibao Noroeste
	('01', 'Valverde', 4),
	('02', 'Santiago Rodriguez', 4),
	('03', 'Montecristi', 4),
	('04', 'Dajabón', 4),
	('08', 'Multiprovincial', 4),
	('08', 'Multimunicipal', 4),
	-- Provincias de la Región Valdesia
	('01', 'San Cristóbal', 5),
	('02', 'Peravia', 5),
	('03', 'San José de Ocoa', 5),
	('04', 'Azua', 5),
	('08', 'Multiprovincial', 5),
	('08', 'Multimunicipal', 5),
	-- Provincias de la Región Enriquillo
	('01', 'Barahona', 6),
	('02', 'Bahoruco', 6),
	('03', 'Pedernales', 6),
	('04', 'Independencia', 6),
	('08', 'Multiprovincial', 6),
	('08', 'Multimunicipal', 6),
	-- Provincias de la Región El Valle
	('01', 'San Juan', 7),
	('02', 'Elías Piña', 7),
	('08', 'Multiprovincial', 7),
	('08', 'Multimunicipal', 7),
	-- Provincias de la Región Yuma
	('01', 'La Romana', 8),
	('02', 'La Altagracia', 8),
	('03', 'El Seibo', 8),
	('08', 'Multiprovincial', 8),
	('08', 'Multimunicipal', 8),
	-- Provincias de la Región Higuamo
	('01', 'San Pedro de Macorís', 9),
	('02', 'Hato Mayor', 9),
	('03', 'Monte Plata', 9),
	('08', 'Multiprovincial', 9),
	('08', 'Multimunicipal', 9),
	-- Provincias de la Región Ozama o Metropolitana
	('01', 'Distrito Nacional', 10),
	('02', 'Santo Domingo', 10),
	('08', 'Multiprovincial', 10),
	('08', 'Multimunicipal', 10),
	-- Especiales
	('01', 'Multiregional', 11),
	('01', 'Nacional', 12),
	('01', 'Binacional', 13);
GO

CREATE TABLE [dbo].[Municipios]
(
	[MunicipioID]			tinyint			PRIMARY KEY	IDENTITY(1, 1),
	[Codigo]			varchar(3)		NOT NULL,
	[Denominacion]			varchar(64)		NOT NULL,
	[ProvinciaID]			tinyint			NOT NULL

	CONSTRAINT FK_Municipios_Provincias_ProvinciaID FOREIGN KEY ([ProvinciaID]) REFERENCES [Provincias] ([ProvinciaID])
);
GO

INSERT INTO [dbo].[Municipios]
VALUES
	-- Región Cibao Norte
	-- Municipios de la provincia Santiago 
	('01', 'Santiago de los Caballeros', 1),
	('02', 'Sabana Iglesia', 1),
	('03', 'Villa Bisonó (Navarrete)', 1),
	('04', 'Jánico', 1),
	('05', 'Licey al Medio', 1),
	('06', 'San José de las Matas', 1),
	('07', 'Tamboril', 1),
	('08', 'Villa González', 1),
	('09', 'Puñal', 1),
	('99', 'Multimunicipal', 1),
	-- Municipios de la provincia Puerto Plata
	('01', 'San Felipe de Puerto Plata', 2),
	('02', 'Altamira', 2),
	('03', 'Guananico', 2),
	('04', 'Imbert', 2),
	('05', 'Los Hidalgos', 2),
	('06', 'Luperón', 2),
	('07', 'Sosúa', 2),
	('08', 'Villa Isabela', 2),
	('09', 'Villa Montellano', 2),
	('99', 'Multimunicipal', 2),
	-- Municipios de la provincia Espaillat
	('01', 'Moca', 3),
	('02', 'Cayetano Germosén', 3),
	('03', 'Gaspar Hernández', 3),
	('04', 'Jamao al Norte', 3),
	('99', 'Multimunicipal', 3),
	('99', 'Multimunicipal', 5),
	-- Región Cibao Sur
	-- Municipios de la provincia Concepción de La Vega
	('01', 'La Vega', 6),
	('02', 'Constanza', 6),
	('03', 'Jarabacoa', 6),
	('04', 'Jima Abajo', 6),
	('99', 'Multimunicipal', 6),
	-- Municipios de la provincia Monseñor Nouel
	('01', 'Bonao', 7),
	('02', 'Maimón', 7),
	('03', 'Piedra Blanca', 7),
	('99', 'Multimunicipal', 7),
	-- Municipios de la provincia Sánchez Ramírez
	('01', 'Cotuí', 8),
	('02', 'Cevicos', 8),
	('03', 'La Mata', 8),
	('99', 'Multimunicipal', 8),
	('99', 'Multimunicipal', 10),
	-- Región Cibao Nordeste
	-- Municipios de la provincia Duarte
	('01', 'San Fco. de Macorís', 11),
	('02', 'Arenoso', 11),
	('03', 'Castillo', 11),
	('04', 'Hostos', 11),
	('05', 'Pimentel', 11),
	('06', 'Villa Riva', 11),
	('07', 'Las Guáranas', 11),
	('99', 'Multimunicipal', 11),
	-- Municipios de la provincia Hermanas Mirabal
	('01', 'Salcedo', 12),
	('02', 'Tenares', 12),
	('03', 'Villa Tapia', 12),
	('99', 'Multimunicipal', 12),
	-- Municipios de la provincia María Trinidad Sánchez
	('01', 'Nagua', 13),
	('02', 'Cabrera', 13),
	('03', 'El Factor', 13),
	('03', 'Río San Juan', 13),
	('99', 'Multimunicipal', 13),
	-- Municipios de la provincia Samaná
	('01', 'Santa Bárbara de Samaná', 14),
	('02', 'Sánchez', 14),
	('03', 'Las Terrenas', 14),
	('99', 'Multimunicipal', 14),
	('99', 'Multimunicipal', 16),
	-- Región Cibao Noroeste
	-- Municipios de la provincia Valverde
	('01', 'Santa Cruz de Mao', 17),
	('02', 'Esperanza', 17),
	('03', 'Laguna Salada', 17),
	('99', 'Multimunicipal', 17),
	-- Municipios de la provincia Santiago Rodriguez
	('01', 'San Ignacio de Sabaneta', 18),
	('02', 'Villa los Almácigos', 18),
	('03', 'Monción', 18),
	('99', 'Multimunicipal', 18),
	-- Municipios de la provincia Montecristi
	('01', 'San Fernando de Montecristi', 19),
	('02', 'Castañuelas', 19),
	('03', 'Guayubín', 19),
	('04', 'Las Matas de Santa Cruz', 19),
	('05', 'Pepillo Salcedo', 19),
	('06', 'Villa Vásquez', 19),
	('99', 'Multimunicipal', 19),
	-- Municipios de la provincia Dajabón
	('01', 'Dajabón', 20),
	('02', 'Loma de Cabrera', 20),
	('03', 'Restauración', 20),
	('04', 'Partido', 20),
	('05', 'El Pino', 20),
	('99', 'Multimunicipal', 20),
	('99', 'Multimunicipal', 22),
	-- Región Valdesia
	-- Municipios de la provincia San Cristóbal
	('01', 'San Cristóbal', 23),
	('02', 'Bajos de Haina', 23),
	('03', 'Los Cacaos', 23),
	('04', 'Cambita Garabitos', 23),
	('05', 'San Gregorio de Nigua', 23),
	('06', 'Sabana Grande de Palenque', 23),
	('07', 'Yaguate', 23),
	('08', 'Villa Altagracia', 23),
	('99', 'Multimunicipal', 23),
	-- Municipios de la provincia Peravia
	('01', 'Baní', 24),
	('02', 'Nizao', 24),
	('99', 'Multimunicipal', 24),       
	-- Municipios de la provincia San José de Ocoa
	('01', 'San José de Ocoa', 25),
	('02', 'Sabana Larga', 25),
	('03', 'Rancho Arriba', 25),
	('99', 'Multimunicipal', 25),     
	-- Municipios de la provincia Azua
	('01', 'Azua de Compostela', 26),
	('02', 'Guayabal', 26),
	('03', 'Las Charcas', 26),
	('04', 'Las Yayas de Viajama', 26),
	('05', 'Padre Las Casas', 26),
	('06', 'Peralta', 26),
	('07', 'Sabana Yegua', 26),
	('08', 'Tábara Arriba', 26),
	('09', 'Estebanía', 26),
	('10', 'Pueblo Viejo', 26),
	('99', 'Multimunicipal', 26),
	('99', 'Multimunicipal', 28),
	-- Región Enriquillo
	-- Municipios de la provincia Barahona
	('01', 'Santa Cruz de Barahona', 29),
	('02', 'Cabral', 29),
	('03', 'Enriquillo', 29),
	('04', 'Las Salinas', 29),
	('05', 'Paraíso', 29),
	('06', 'Polo', 29),
	('07', 'Vicente Noble', 29),
	('08', 'El Peñón', 29),
	('09', 'Fundación', 29),
	('10', 'La Ciénaga', 29),
	('11', 'Jaquimeyes', 29),
	('99', 'Multimunicipal', 29),
	-- Municipios de la provincia Bahoruco
	('01', 'Neyba', 30),
	('02', 'Galván', 30),
	('03', 'Los Ríos', 30),
	('04', 'Tamayo', 30),
	('05', 'Villa Jaragua', 30),
	('99', 'Multimunicipal', 30),
	-- Municipios de la provincia Pedernales
	('01', 'Pedernales', 31),
	('02', 'Oviedo', 31),
	('99', 'Multimunicipal', 31),
	-- Municipios de la provincia Independencia
	('01', 'Jimaní', 32),
	('02', 'Duvergé', 32),
	('03', 'La Descubierta', 32),
	('04', 'Mella', 32),
	('05', 'Postrer Río', 32),
	('06', 'Cristóbal', 32),
	('99', 'Multimunicipal', 32),
	('99', 'Multimunicipal', 34),
	-- Región El Valle
	-- Municipios de la provincia San Juan
	('01', 'San Juan de la Maguana', 35),
	('02', 'Bohechio', 35),
	('03', 'El Cercado', 35),
	('04', 'Juan de Herrera', 35),
	('05', 'Las Matas de Farfán', 35),
	('06', 'Vallejuelo', 35),
	('99', 'Multimunicipal', 35),
	-- Municipios de la provincia Elías Piña
	('01', 'Comendador', 36),
	('02', 'Bánica', 36),
	('03', 'El Llano', 36),
	('04', 'Hondo Valle', 36),
	('05', 'Pedro Santana', 36),
	('06', 'Juan Santiago', 36),
	('99', 'Multimunicipal', 36),
	('99', 'Multimunicipal', 38),
	-- Región Yuma
	-- Municipios de la provincia La Romana
	('01', 'La Romana', 39),
	('02', 'Guaymate', 39),
	('03', 'Villa Hermosa', 39),
	('99', 'Multimunicipal', 39),
	-- Municipios de la provincia La Altagracia
	('01', 'Salvaléon de Higüey', 40),
	('02', 'San Rafael del Yuma', 40),
	('99', 'Multimunicipal', 40),
	-- Municipios de la provincia El Seibo
	('01', 'Santa Cruz del Seibo', 41),
	('02', 'Miches', 41),
	('99', 'Multimunicipal', 41),
	('99', 'Multimunicipal', 43),
	-- Región Higuamo
	-- Municipios de la provincia San Pedro de Macorís
	('01', 'San Pedro de Macorís', 44),
	('02', 'San José de los Llanos', 44),
	('03', 'Ramón Santana', 44),
	('04', 'Consuelo', 44),
	('05', 'Quisqueya', 44),
	('06', 'Guayacanes', 44),
	('99', 'Multimunicipal', 44),
	-- Municipios de la provincia Hato Mayor
	('01', 'Hato Mayor del Rey', 45),
	('02', 'Sabana de la Mar', 45),
	('03', 'El Valle', 45),
	('99', 'Multimunicipal', 45),
	-- Municipios de la provincia Monte Plata
	('01', 'Monte Plata', 46),
	('02', 'Bayaguana', 46),
	('03', 'Sabana Grande de Boyá', 46),
	('04', 'Yamasá', 46),
	('05', 'Peralvillo', 46),
	('99', 'Multimunicipal', 46),
	('99', 'Multimunicipal', 48),
	-- Región Ozama o Metropolitana
	-- Municipios de la provincia Distrito Nacional
	('01', 'Distrito Nacional', 49),
	-- Municipios de la provincia Santo Domingo
	('01', 'Santo Domingo Este', 50),
	('02', 'Santo Domingo Oeste', 50),
	('03', 'Santo Domingo Norte', 50),
	('04', 'Boca Chica', 50),
	('05', 'Guerra', 50),
	('06', 'Los Alcarrizos', 50),
	('07', 'Pedro Brand', 50),
	('99', 'Multimunicipal', 50),
	-- Especiales
	('99', 'Multimunicipal', 52),
	('99', 'Multiregional', 53),
	('99', 'Nacional', 54),
	('99', 'Binacional', 55);	
GO

CREATE TABLE [dbo].[DistritosMunicipales]
(
	[DistritoMunicipalID]	tinyint			PRIMARY KEY	IDENTITY(1, 1),
	[Codigo]		varchar(3)		NOT NULL,
	[Denominacion]		varchar(64)		NOT NULL,
	[MunicipioID]		tinyint			NOT NULL

	CONSTRAINT FK_DistritosMunicipales_Municipios_DistritoMunicipalID FOREIGN KEY ([MunicipioID]) REFERENCES [Municipios] ([MunicipioID])
);
GO

INSERT INTO [dbo].[DistritosMunicipales]
VALUES

	-- Distritos del Municipio Santiago de los Caballeros
	('01', 'Pedro García', 1),
	('02', 'Baitoa', 1),
	('03', 'La Canela', 1),
	('04', 'San Francisco de Jacagua', 1),
	('05', 'Hato del Yaque', 1),
	-- Distritos del Municipio Jánico
	('01', 'Juncalito', 4),
	('02', 'El Caimito', 4),
	-- Distritos del Municipio Licey al Medio
	('01', 'Las Palomas', 5),
	-- Distritos del Municipio San José de las Matas
	('01', 'El Rubio', 6),
	('02', 'La Cuesta', 6),
	('03', 'Las Placetas', 6),
	-- Distritos del Municipio Tamboril
	('01', 'Canca la Piedra', 7),
	-- Distritos del Municipio Villa González
	('01', 'El Limón', 8),
	('02', 'Palmar Arriba', 8),
	-- Distritos del Municipio Puñal
	('01', 'Guayabal', 9),
	('02', 'Canabacoa', 9),
	-- Distritos del Municipio San Felipe de Puerto Plata
	('01', 'Yásica Arriba', 11),
	('02', 'Maimón', 11),
	-- Distritos del Municipio Altamira
	('01', 'Río Grande', 12),
	-- Distritos del Los Hidalgos
	('01', 'Navas', 15),
	-- Distritos del Municipio Luperón
	('01', 'La Isabela', 16),
	('02', 'Belloso', 16),
	('03', 'El Estrecho de Luperón Omar Bross', 16),
	-- Distritos del Municipio Sosúa
	('01', 'Cabarete', 17),
	('02', 'Sabaneta de Yásica', 17),
	-- Distritos del Municipio Villa Isabela
	('01', 'Estero Hondo', 18),
	('02', 'La Jaiba', 18),
	('03', 'Gualete', 18),
	-- Distritos del Municipio Moca
	('01', 'José Contreras', 21),
	('02', 'San Víctor', 21),
	('03', 'Juan López', 21),
	('04', 'Las Lagunas Abajo', 21),
	('05', 'Canca la Reina', 21),
	('06', 'El Higuerito', 21),
	('07', 'La Ortega', 21),
	('08', 'Monte de la Jagua', 21),
	-- Distritos del Municipio Gaspar Hernández
	('01', 'Veragua', 23),
	('02', 'Joba Arriba', 23),
	('03', 'Villa Magante', 23),
	-- Distritos del Municipio La Vega
	('01', 'Río Verde Arriba', 27),
	('02', 'El Ranchito', 27),
	-- Distritos del Municipio Constanza
	('01', 'Tireo Arriba', 28),
	('02', 'La Sabina', 28),
	-- Distritos del Municipio Jarabacoa
	('01', 'Buena Vista', 29),
	('02', 'Manabao', 29),
	-- Distritos del Municipio Jima Abajo
	('01', 'Rincón', 30),
	-- Distritos del Municipio Bonao
	('01', 'Sabana del Puerto', 32),
	('02', 'Juma Bejucal', 32),
	('03', 'Jayaco', 32),
	('04', 'Arroyo Toro Masipedro', 32),
	('05', 'La Salvia- Los Quemados', 32),
	-- Distritos del Municipio Piedra Blanca
	('01', 'Villa de Sonador', 34),
	('02', 'Juan Adrián', 34),
	-- Distritos del Municipio Cotuí
	('01', 'Platanal', 36),
	('02', 'Quita Sueño', 36),
	('03', 'Comedero Arriba', 36),
	('04', 'Caballero', 36),
	-- Distritos del Municipio Cevicos
	('01', 'La Cueva', 37),
	-- Distritos del Municipio La Mata
	('01', 'La Bija', 38),
	('02', 'Angelina', 38),
	('03', 'Hernando Alonso', 38),
	-- Distritos del Municipio San Fco. de Macorís
	('01', 'La Peña', 41),
	('02', 'Cenoví', 41),
	('03', 'Jaya', 41),
	('04', 'Don Antonio Guzmán Fernández', 41),
	-- Distritos del Municipio Arenoso
	('01', 'Las Coles', 42),
	('02', 'El Aguacate', 42),
	-- Distritos del Municipio Hostos
	('01', 'Sabana Grande de Hostos', 44),
	-- Distritos del Municipio Villa Riva
	('01', 'Agua Santa del Yuna', 46),
	('02', 'Cristo Rey de Guaraguao', 46),
	('03', 'Las Táranas', 46),
	('04', 'Barraquito', 46),
	-- Distritos del Municipio Salcedo
	('01', 'Jamao Afuera', 49),
	-- Distritos del Municipio Tenares
	('01', 'Blanco', 50),
	-- Distritos del Municipio Nagua
	('01', 'San José de Matanzas', 53),
	('02', 'Las Gordas', 53),
	('03', 'Arroyo al Medio', 53),
	-- Distritos del Municipio Cabrera
	('01', 'Arroyo Salado', 54),
	('02', 'La Entrada', 54),
	-- Distritos del Municipio El Factor
	('01', 'El Pozo', 55),
	-- Distritos del Municipio Santa Bárbara de Samaná
	('01', 'El Limón', 58),
	('02', 'Arroyo Barril', 58),
	('03', 'Las Galeras', 58),
	-- Distritos del Municipio Santa Cruz de Mao
	('01', 'Ámina', 63),
	('02', 'Guatapanal', 63),
	('03', 'Jaibón (Pueblo Nuevo)', 63),
	-- Distritos del Municipio Esperanza
	('01', 'Maizal', 64),
	('02', 'Jicomé', 64),
	('03', 'Boca de Mao', 64),
	('04', 'Paradero', 64),
	-- Distritos del Municipio Laguna Salada
	('01', 'Jaibón (Laguna Salada)', 65),
	('02', 'La Caya', 65),
	('03', 'Cruce de Guayacanes', 65),
	-- Distritos del Municipio Castañuelas
	('01', 'Palo Verde', 72),
	-- Distritos del Municipio Guayubín
	('01', 'Hatillo Palma', 73),
	('02', 'Villa Elisa', 73),
	('03', 'Cana Chapetón', 73),
	-- Distritos del Municipio Dajabón
	('01', 'Cañongo', 78),
	-- Distritos del Municipio Loma de Cabrera
	('01', 'Capotillo', 79),
	('02', 'Santiago de la Cruz', 79),
	-- Distritos del Municipio El Pino
	('01', 'Manuel Bueno', 82),
	-- Distritos del Municipio San Cristóbal
	('01', 'Hato Damas', 85),
	-- Distritos del Municipio Bajos de Haina
	('01', 'El Carril', 86),
	-- Distritos del Municipio Cambita Garabitos
	('01', 'Cambita el Pueblecito', 88),
	-- Distritos del Municipio Villa Altagracia
	('01', 'Medina', 92),
	('02', 'La Cuchilla', 92),
	('03', 'San José del Puerto', 92),
	-- Distritos del Municipio Baní
	('01', 'Matanzas', 94),
	('02', 'Villa Fundación', 94),
	('03', 'Sabana Buey', 94),
	('04', 'Paya', 94),
	('05', 'Villa Sombrero', 94),
	('06', 'El Carretón', 94),
	('07', 'Catalina', 94),
	('08', 'Las Barías', 94),
	('09', 'El Limonal', 94),
	-- Distritos del Municipio Nizao
	('01', 'Pizarrete', 95),
	('02', 'Santana', 95),
	-- Distritos del Municipio San José de Ocoa
	('01', 'La Ciénaga', 97),
	('02', 'El Pinar', 97),
	('03', 'Nizao Las Auyamas', 97),
	('04', 'Naranjal', 97),
	-- Distritos del Municipio Azua de Compostela
	('01', 'Barro Arriba', 101),
	('02', 'Las Barías - La Estancia', 101),
	('03', 'Los Jovillos', 101),
	('04', 'Barreras', 101),
	('05', 'Doña Emma Balaguer viuda Vallejo', 101),
	('06', 'Las Lomas', 101),
	('07', 'Clavellina', 101),
	('08', 'Puerto Viejo', 101),
	-- Distritos del Municipio Las Charcas
	('01', 'Palmar de Ocoa', 103),
	-- Distritos del Municipio Las Yayas de Viajama
	('01', 'Villarpando', 104),
	('02', 'Hato Nuevo Cortés', 104),
	-- Distritos del Municipio Padre Las Casas
	('01', 'La Siembra', 105),
	('02', 'Las Lagunas', 105),
	('03', 'Monte Bonito', 105),
	('04', 'Los Fríos', 105),
	-- Distritos del Municipio Sabana Yegua
	('01', 'Proyecto 04', 107),
	('02', 'Ganadero', 107),
	('03', 'Proyecto 02-C', 107),
	-- Distritos del Municipio Tábara Arriba
	('01', 'Amiama Gómez', 108),
	('02', 'Los Toros', 108),
	('03', 'Tábara Abajo', 108),
	-- Distritos del Municipio Pueblo Viejo
	('01', 'El Rosario', 110),
	-- Distritos del Municipio Santa Cruz de Barahona
	('01', 'El Cachón', 113),
	('02', 'La Guázara', 113),
	('03', 'Villa Central', 113),
	-- Distritos del Municipio Enriquillo
	('01', 'Arroyo Dulce', 115),
	-- Distritos del Municipio Paraíso
	('01', 'Los Patos', 117),
	-- Distritos del Municipio Vicente Noble
	('01', 'Fondo Negro', 119),
	('02', 'Canoa', 119),
	('03', 'Quita Coraza', 119),
	-- Distritos del Municipio Fundación
	('01', 'Pescadería', 121),
	-- Distritos del Municipio La Ciénaga
	('01', 'Bahoruco', 122),
	-- Distritos del Municipio Jaquimeyes
	('01', 'Palo Alto', 123),
	-- Distritos del Municipio Neyba
	('01', 'El Palmar', 125),
	-- Distritos del Municipio Galván
	('01', 'El Salado', 126),
	-- Distritos del Municipio Los Ríos
	('01', 'Las Clavellinas', 127),
	-- Distritos del Municipio Tamayo
	('01', 'Uvilla', 128),
	('02', 'Santana', 128),
	('03', 'Monserrat', 128),
	('04', 'Cabeza de Toro', 128),
	('05', 'Mena', 128),
	('06', 'Santa Bárbara El 06', 128),
	-- Distritos del Municipio Pedernales
	('01', 'José Fco. Peña Gómez', 131),
	-- Distritos del Municipio Oviedo
	('01', 'Juancho', 132),
	-- Distritos del Municipio Jimaní
	('01', 'El Limón', 134),
	('02', 'Boca de Cachón', 134),
	-- Distritos del Municipio Duvergé
	('01', 'Vengan a ver', 135),
	-- Distritos del Municipio Postrer Río
	('01', 'Guayabal', 138),
	-- Distritos del Municipio Cristóbal
	('01', 'La Colonia', 139),
	('02', 'Batey 08', 139),
	-- Distritos del Municipio San Juan de la Maguana
	('01', 'Pedro Corto', 142),
	('02', 'Sabaneta', 142),
	('03', 'Sabana Alta', 142),
	('04', 'El Rosario', 142),
	('05', 'Hato del Padre', 142),
	('06', 'La Jagua', 142),
	('07', 'Guanito', 142),
	('08', 'Las Charcas de María Nova', 142),
	('09', 'Las Maguanas, Hato Nuevo', 142),
	('10', 'Las Zanjas', 142),
	-- Distritos del Municipio Bohechio
	('01', 'Arroyo Cano', 143),
	('02', 'El Yaque', 143),
	-- Distritos del Municipio El Cercado
	('01', 'Nuevo Brasil', 144),
	('02', 'Batista', 144),
	-- Distritos del Municipio Juan de Herrera
	('01', 'Jínova', 145),
	-- Distritos del Municipio Las Matas de Farfán
	('01', 'Matayaya', 146),
	('02', 'Carrera de Yeguas', 146),
	-- Distritos del Municipio Vallejuelo
	('01', 'Jorgillo', 147),
	-- Distritos del Municipio Comendador
	('01', 'Sabana Larga', 149),
	('02', 'Guayabo', 149),
	-- Distritos del Municipio Bánica
	('01', 'Sabana Cruz', 150),
	('02', 'Sabana Higüero', 150),
	-- Distritos del Municipio El Llano
	('01', 'Guanito', 151),
	-- Distritos del Municipio Hondo Valle
	('01', 'Rancho de la Guardia', 152),
	-- Distritos del Municipio Pedro Santana
	('01', 'Río Limpio', 153),
	-- Distritos del Municipio La Romana
	('01', 'Caleta', 157),
	-- Distritos del Municipio Villa Hermosa
	('01', 'Cumayasa', 159),
	-- Distritos del Municipio Salvaléon de Higüey
	('01', 'Laguna Nisibón', 161),
	('02', 'La Otra Banda', 161),
	('03', 'Verón Punta Cana', 161),
	-- Distritos del Municipio San Rafael del Yuma
	('01', 'Boca de Yuma', 162),
	('02', 'Bayahíbe', 162),
	-- Distritos del Municipio Santa Cruz del Seibo
	('01', 'Villa de Pedro Sánchez', 164),
	('02', 'San Francisco Vicentillo', 164),
	('03', 'Santa Lucía', 164),
	-- Distritos del Municipio Miches
	('01', 'El Cedro (Jobero)', 165),
	('02', 'Gina', 165),
	-- Distritos del Municipio San José de los Llanos
	('01', 'El Puerto', 169),
	('02', 'Gautier', 169),
	-- Distritos del Municipio Hato Mayor del Rey
	('01', 'Yerba Buena', 175),
	('02', 'Mata Palacio', 175),
	('03', 'Guayabo Dulce', 175),
	-- Distritos del Municipio Sabana de la Mar
	('01', 'Las Cañitas, Elupina Cordero', 176),
	-- Distritos del Municipio Monte Plata
	('01', 'Don Juan', 179),
	('02', 'Chirino', 179),
	('03', 'Boyá', 179),
	-- Distritos del Municipio Sabana Grande de Boyá
	('01', 'Gonzalo', 181),
	('02', 'Majagual', 181),
	-- Distritos del Municipio Yamasá
	('01', 'Los Botados', 182),
	('02', 'Mamá Tingó', 182),
	-- Distritos del Municipio Santo Domingo Este
	('01', 'San Luis', 187),
	-- Distritos del Municipio Santo Domingo Norte
	('01', 'La Victoria', 189),
	-- Distritos del Municipio Boca Chica
	('01', 'La Caleta', 190),
	-- Distritos del Municipio Guerra
	('01', 'Hato Viejo', 191),
	-- Distritos del Municipio Los Alcarrizos
	('01', 'Pantoja', 192),
	('02', 'Palmarejo - Villa Linda', 192),
	-- Distritos del Municipio Pedro Brand
	('01', 'La Guáyiga', 193),
	('02', 'La Cuaba', 193);
GO
