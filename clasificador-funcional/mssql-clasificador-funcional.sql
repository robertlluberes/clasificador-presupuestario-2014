CREATE TABLE [dbo].[Finalidades]
(
	[FinalidadID]			tinyint			PRIMARY KEY	IDENTITY(1, 1),
	[Codigo]		        tinyint			NOT NULL,
	[Descripcion]			varchar(128)	NOT NULL

	CONSTRAINT UQ_Finalidades_Codigo        UNIQUE ([Codigo]),
	CONSTRAINT UQ_Finalidades_Descripcion   UNIQUE ([Descripcion])
);
GO

INSERT INTO [dbo].[Finalidades]
VALUES
    (1, 'SERVICIOS GENERALES'),
    (2, 'SERVICIOS ECONÓMICOS'),
    (3, 'PROTECCIÓN DEL MEDIO AMBIENTE'),
    (4, 'SERVICIOS SOCIALES'),
    (5, 'INTERESES DE LA DEUDA PÚBLICA');
GO

CREATE TABLE [dbo].[Funciones]
(
	[FuncionID]			    tinyint			PRIMARY KEY	IDENTITY(1, 1),
	[Codigo]		        tinyint			NOT NULL,
	[Descripcion]			varchar(128)	NOT NULL,
    [FinalidadID]           tinyint         NOT NULL

	CONSTRAINT UQ_Funciones_Descripcion		UNIQUE ([Descripcion]),
    CONSTRAINT FK_Funciones_Finalidades_FinalidadID FOREIGN KEY ([FinalidadID]) REFERENCES [Finalidades] ([FinalidadID])
);
GO

INSERT INTO [dbo].[Funciones]
VALUES
    -- Servicios Generales
    (1, 'Administración general', 1),
    (2, 'Relaciones internacionales', 1),
    (3, 'Defensa nacional', 1),
    (4, 'Justicia, orden público y seguridad', 1),
    -- Servicios Económicos
    (1, 'Asuntos económicos y laborales', 2),
    (2, 'Agropecuaria, caza, pesca y silvicultura', 2),
    (3, 'Riego', 2),
    (4, 'Energía y combustible', 2),
    (5, 'Minería, manufactura y construcción', 2),
    (6, 'Transporte', 2),
    (7, 'Comunicaciones', 2),
    (8, 'Banca y seguros', 2),
    (9, 'Otros servicios económicos', 2),
    -- Protección del Medio Ambiente
    (1, 'Protección del aire, agua y suelo', 3),
    (2, 'Protección de la biodiversidad y ordenación de desechos', 3),
    -- Servicios Sociales
    (1, 'Vivienda y servicios comunitarios', 4),
    (2, 'Salud', 4),
    (3, 'Actividades deportivas, recreativas, culturales y religiosas', 4),
    (4, 'Educación', 4),
    (5, 'Protección social', 4),
    -- Intereses de la deuda Pública
    (1, 'Intereses y comisiones de deuda pública', 5);
GO

CREATE TABLE [dbo].[SubFunciones]
(
	[SubFuncionID]          tinyint			PRIMARY KEY	IDENTITY(1, 1),
    [Codigo]                varchar(2)		NOT NULL,
	[Descripcion]			varchar(128)	NOT NULL,
    [FuncionID]             tinyint         NOT NULL

    CONSTRAINT UQ_SubFunciones_Descripcion		UNIQUE ([Descripcion]),
    CONSTRAINT FK_SubFunciones_Funciones_FuncionID FOREIGN KEY ([FuncionID]) REFERENCES [Funciones] ([FuncionID])
);
GO

INSERT INTO [dbo].[SubFunciones]
VALUES
    -- SERVICIOS GENERALES
    -- Administración general
    ('01', 'Órganos ejecutivos y legislativos', 1),
    ('02', 'Gestión administrativa, financiera, fiscal, económica y planificación', 1),
    ('03', 'Transferencias a instituciones públicas incluidos los gobiernos locales', 1),
    ('04', 'Órganos electorales y promoción de la participación ciudadana', 1),
    ('98', 'Investigación y desarrollo relacionado con la administración general', 1),
    -- Relaciones internacionales
    ('01', 'Relaciones internacionales desde oficinas en el país', 2),
    ('02', 'Relaciones internacionales desde oficinas en el exterior', 2),
    ('03', 'Cooperación al exterior', 2),
    ('98', 'Investigación y desarrollo vinculada a las relaciones internacionales', 2),
    -- Defensa nacional
    ('01', 'Defensa militar', 3),
    ('02', 'Defensa civil y gestión de riesgo de desastre', 3),
    ('98', 'Investigación y desarrollo para la defensa militar y civil y gestión de riesgo de desastre', 3),
    -- Justicia, orden público y seguridad
    ('01', 'Servicios de seguridad interior', 4),
    ('02', 'Servicios de protección contra Incendios', 4),
    ('03', 'Administración y servicios de justicia', 4),
    ('04', 'Prisiones', 4),
    ('05', 'Servicios de migraciones', 4),
    ('98', 'Investigación y desarrollo relacionado con la justicia, orden público y seguridad', 4),
    -- SERVICIOS ECONÓMICOS
    -- Asuntos económicos y laborales
    ('01', 'Asuntos económicos y regulación del comercio', 5),
    ('02', 'Asuntos laborales generales', 5),
    -- Agropecuaria, caza, pesca y silvicultura
    ('01', 'Agropecuaria', 6),
    ('02', 'Caza y pesca', 6),
    ('03', 'Silvicultura', 6),
    ('99', 'Planificación, gestión y supervisión agropecuaria, caza, pesca y silvicultura', 6),
    -- Riego
    ('01', 'Riego', 7),
    -- Energía y combustible
    ('01', 'Energía eléctrica', 8),
    ('02', 'Energía no convencional', 8),
    ('03', 'Combustible', 8),
    -- Minería, manufactura y construcción
    ('01', 'Extracción de recursos minerales', 9),
    ('02', 'Manufacturas', 9),
    ('03', 'Supervisión y regulación de la construcción', 9),
    -- Transporte
    ('01', 'Transporte por carretera', 10),
    ('02', 'Transporte por agua', 10),
    ('03', 'Transporte por ferrocarril', 10),
    ('04', 'Transporte aéreo', 10),
    ('99', 'Planificación, gestión y supervisión del transporte', 10),
    -- Comunicaciones
    ('01', 'Comunicaciones', 11),
    -- Banca y seguros
    ('01', 'Regulación, control y diseño de políticas', 12),
    ('02', 'Operación de la banca y del sector seguros', 12),
    -- Otros servicios económicos
    ('01', 'Comercio de distribución almacenamiento y depósito', 13),
    ('02', 'Hoteles y restaurantes', 13),
    ('03', 'Turismo', 13),
    ('04', 'Proyectos de desarrollo de servicios integrados', 13),
    ('98', 'Investigación y desarrollo relacionado con los servicios economía', 13),
    -- PROTECCIÓN DEL MEDIO AMBIENTE
    -- Protección del aire, agua y suelo
    ('01', 'Reducción de la contaminación', 14),
    ('02', 'Administración del agua', 14),
    ('03', 'Ordenación de aguas residuales, drenaje y alcantarillado', 14),
    -- Protección de la biodiversidad y ordenación de desechos
    ('01', 'Protección de la biodiversidad y el paisaje', 15),
    ('02', 'Ordenación de desechos', 15),
    ('03', 'Investigación y desarrollo relacionado con el medio ambiente', 15),
    ('04', 'Planificación, gestión y supervisión de la protección del medio ambiente', 15),    
    -- SERVICIOS SOCIALES
    -- Vivienda y servicios comunitarios
    ('01', 'Urbanización y servicios comunitarios', 16),
    ('02', 'Desarrollo comunitario', 16),
    ('03', 'Abastecimiento de agua potable', 16),
    ('04', 'Alumbrado público', 16),
    ('98', 'Investigación y desarrollo relacionados con la vivienda y los servicios comunitarios', 16),
    ('99', 'Planificación, gestión y supervisión de vivienda y servicios comunitarios', 16),
    -- Salud
    ('01', 'Servicios para pacientes externos', 17),
    ('02', 'Servicios hospitalarios', 17),
    ('03', 'Servicios de la salud pública y prevención de la salud', 17),
    ('98', 'Investigación y desarrollo relacionada con la salud', 17),
    ('99', 'Planificación, gestión y supervisión de la salud', 17),
    -- Actividades deportivas, recreativas, culturales y religiosas
    ('01', 'Deportes de alto rendimiento', 18),
    ('02', 'Servicios recreativos y deportivos', 18),
    ('03', 'Servicios culturales', 18),
    ('04', 'Servicios de radio, televisión y servicios editoriales', 18),
    ('05', 'Servicios religiosos y otros servicios comunitarios religiosos', 18),
    ('98', 'Investigación y desarrollo relacionado con el esparcimiento, el deporte, la cultura y la religión', 18),
    ('99', 'Planificación, gestión y supervisión de las actividades deportivas, recreativas, culturales y religiosas', 18),
    -- Educación
    ('01', 'Educación inicial', 19),
    ('02', 'Educación básica', 19),
    ('03', 'Educación media', 19),
    ('04', 'Educación superior', 19),
    ('05', 'Educación adultos', 19),
    ('06', 'Educación técnica', 19),
    ('07', 'Educación vocacional', 19),
    ('08', 'Enseñanza y capacitación para defensa y seguridad', 19),
    ('09', 'Enseñanza no atribuible a ningún nivel', 19),
    ('98', 'Investigación y desarrollo relacionada con la educación', 19),
    ('99', 'Planificación, gestión y supervisión de la educación', 19),
    -- Protección social
    ('01', 'Edad avanzada, pensiones (por edad o incapacidad)', 20),
    ('02', 'Enfermedad', 20),
    ('03', 'Invalidez', 20),
    ('04', 'Supérstites', 20),
    ('05', 'Familia e hijos', 20),
    ('06', 'Desempleo', 20),
    ('07', 'Vivienda social', 20),
    ('08', 'Equidad de género', 20),
    ('09', 'Juventud', 20),
    ('10', 'Asistencia social', 20),
    ('98', 'Investigación y desarrollo relacionado con la protección social', 20),
    ('99', 'Planificación, gestión y supervisión de la protección social', 20),
    -- INTERESES DE LA DEUDA PÚBLICA
    -- Intereses y comisiones de deuda pública
    ('01', 'Intereses y comisiones de deuda pública', 21);
GO