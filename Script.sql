USE [master]
GO
/****** Object:  Database [C:\USERS\KASHC\SOURCE\REPOS\DETSADNET\DETSADNET\BIN\DEBUG\SADNET.MDF]    Script Date: 18.05.2023 21:45:13 ******/
CREATE DATABASE [C:\USERS\KASHC\SOURCE\REPOS\DETSADNET\DETSADNET\BIN\DEBUG\SADNET.MDF]
GO
USE [C:\USERS\KASHC\SOURCE\REPOS\DETSADNET\DETSADNET\BIN\DEBUG\SADNET.MDF]
GO
/****** Object:  Table [dbo].[DetSad]    Script Date: 18.05.2023 21:45:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetSad](
	[SadID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Adress] [nvarchar](50) NOT NULL,
	[People] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DetSad] PRIMARY KEY CLUSTERED 
(
	[SadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 18.05.2023 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[DirectorID] [int] IDENTITY(1,1) NOT NULL,
	[DirName] [nvarchar](50) NOT NULL,
	[DirAge] [int] NOT NULL,
	[DirStage] [nvarchar](50) NOT NULL,
	[DirEducation] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Directors] PRIMARY KEY CLUSTERED 
(
	[DirectorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SadNet]    Script Date: 18.05.2023 21:45:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SadNet](
	[SadID] [int] IDENTITY(1,1) NOT NULL,
	[SadDirectorID] [int] NOT NULL,
	[PlataForMonth] [decimal](18, 0) NOT NULL,
	[DateOpen] [date] NOT NULL,
	[IdSad] [int] NOT NULL,
 CONSTRAINT [PK_SadNet_1] PRIMARY KEY CLUSTERED 
(
	[SadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DetSad] ON 

INSERT [dbo].[DetSad] ([SadID], [Name], [City], [Adress], [People]) VALUES (1, N'Кузнечик', N'г.Казань', N'ул. Чистопольская', N'230')
INSERT [dbo].[DetSad] ([SadID], [Name], [City], [Adress], [People]) VALUES (3, N'Светлячок', N'г.Волжск', N'ул.Кузьмина', N'350')
INSERT [dbo].[DetSad] ([SadID], [Name], [City], [Adress], [People]) VALUES (4, N'Сказка', N'г.Зеленодольск', N'ул. Ленина', N'540')
INSERT [dbo].[DetSad] ([SadID], [Name], [City], [Adress], [People]) VALUES (5, N'Дровосек', N'г.Свияжск', N'ул. Либкехта', N'380')
INSERT [dbo].[DetSad] ([SadID], [Name], [City], [Adress], [People]) VALUES (6, N'Чебурашка', N'г. Волжский', N'ул. Кремлевская', N'450')
SET IDENTITY_INSERT [dbo].[DetSad] OFF
GO
SET IDENTITY_INSERT [dbo].[Directors] ON 

INSERT [dbo].[Directors] ([DirectorID], [DirName], [DirAge], [DirStage], [DirEducation]) VALUES (1, N'Князева Марина Андреевна', 48, N'8 лет', N'Высшее')
INSERT [dbo].[Directors] ([DirectorID], [DirName], [DirAge], [DirStage], [DirEducation]) VALUES (2, N'Никонорова Лариса Федоровна', 57, N'10 лет', N'Высшее')
INSERT [dbo].[Directors] ([DirectorID], [DirName], [DirAge], [DirStage], [DirEducation]) VALUES (3, N'Пучеева Ольга Викторовна', 35, N'5 лет', N'Среднее специальное')
INSERT [dbo].[Directors] ([DirectorID], [DirName], [DirAge], [DirStage], [DirEducation]) VALUES (5, N'Лукошкина Валерия Михайловна', 46, N'9 лет', N'Высшее')
INSERT [dbo].[Directors] ([DirectorID], [DirName], [DirAge], [DirStage], [DirEducation]) VALUES (6, N'Перечнёва Светлана Владимировна', 40, N'10 лет', N'Высшее')
SET IDENTITY_INSERT [dbo].[Directors] OFF
GO
SET IDENTITY_INSERT [dbo].[SadNet] ON 

INSERT [dbo].[SadNet] ([SadID], [SadDirectorID], [PlataForMonth], [DateOpen], [IdSad]) VALUES (1, 1, CAST(1500 AS Decimal(18, 0)), CAST(N'2000-12-31' AS Date), 1)
INSERT [dbo].[SadNet] ([SadID], [SadDirectorID], [PlataForMonth], [DateOpen], [IdSad]) VALUES (9, 3, CAST(2540 AS Decimal(18, 0)), CAST(N'1987-07-20' AS Date), 4)
INSERT [dbo].[SadNet] ([SadID], [SadDirectorID], [PlataForMonth], [DateOpen], [IdSad]) VALUES (10, 5, CAST(3500 AS Decimal(18, 0)), CAST(N'1950-05-15' AS Date), 5)
INSERT [dbo].[SadNet] ([SadID], [SadDirectorID], [PlataForMonth], [DateOpen], [IdSad]) VALUES (11, 6, CAST(2800 AS Decimal(18, 0)), CAST(N'2010-04-03' AS Date), 6)
INSERT [dbo].[SadNet] ([SadID], [SadDirectorID], [PlataForMonth], [DateOpen], [IdSad]) VALUES (1022, 5, CAST(5000 AS Decimal(18, 0)), CAST(N'5200-01-19' AS Date), 3)
SET IDENTITY_INSERT [dbo].[SadNet] OFF
GO
ALTER TABLE [dbo].[SadNet]  WITH CHECK ADD  CONSTRAINT [FK_SadNet_DetSad1] FOREIGN KEY([IdSad])
REFERENCES [dbo].[DetSad] ([SadID])
GO
ALTER TABLE [dbo].[SadNet] CHECK CONSTRAINT [FK_SadNet_DetSad1]
GO
ALTER TABLE [dbo].[SadNet]  WITH CHECK ADD  CONSTRAINT [FK_SadNet_Directors] FOREIGN KEY([SadDirectorID])
REFERENCES [dbo].[Directors] ([DirectorID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SadNet] CHECK CONSTRAINT [FK_SadNet_Directors]
GO
USE [master]
GO
ALTER DATABASE [C:\USERS\KASHC\SOURCE\REPOS\DETSADNET\DETSADNET\BIN\DEBUG\SADNET.MDF] SET  READ_WRITE 
GO
