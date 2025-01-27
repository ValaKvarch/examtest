USE [master]
GO
/****** Object:  Database [Master_pol]    Script Date: 07.11.2024 11:20:47 ******/
CREATE DATABASE [Master_pol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Master_pol', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Master_pol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Master_pol_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Master_pol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Master_pol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Master_pol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Master_pol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Master_pol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Master_pol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Master_pol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Master_pol] SET ARITHABORT OFF 
GO
ALTER DATABASE [Master_pol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Master_pol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Master_pol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Master_pol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Master_pol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Master_pol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Master_pol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Master_pol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Master_pol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Master_pol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Master_pol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Master_pol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Master_pol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Master_pol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Master_pol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Master_pol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Master_pol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Master_pol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Master_pol] SET  MULTI_USER 
GO
ALTER DATABASE [Master_pol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Master_pol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Master_pol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Master_pol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Master_pol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Master_pol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Master_pol] SET QUERY_STORE = OFF
GO
USE [Master_pol]
GO
/****** Object:  Table [dbo].[DefectRate]    Script Date: 07.11.2024 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefectRate](
	[DefectRateID] [int] IDENTITY(1,1) NOT NULL,
	[ProductType] [varchar](50) NULL,
	[ProductionID] [int] NULL,
	[DefectPercentage] [decimal](5, 2) NULL,
	[Reason] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[DefectRateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 07.11.2024 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[Position] [varchar](255) NULL,
	[Department] [varchar](255) NULL,
	[HireDate] [date] NULL,
	[Salary] [decimal](10, 2) NULL,
	[ManagerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 07.11.2024 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[MaterialID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialName] [varchar](255) NOT NULL,
	[Unit] [varchar](255) NULL,
	[Price] [decimal](10, 2) NULL,
	[QuantityInStock] [int] NULL,
	[Defects] [int] NULL,
	[WarehouseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 07.11.2024 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[PartnerID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](255) NOT NULL,
	[ContactPerson] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Phone] [varchar](20) NULL,
	[RegisteredOffice] [varchar](200) NULL,
	[INN] [int] NULL,
	[Rating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production]    Script Date: 07.11.2024 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production](
	[ProductionID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[MaterialID] [int] NULL,
	[ProductType] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[Article] [int] NULL,
	[PricePartner] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 07.11.2024 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](255) NOT NULL,
	[Partner] [varchar](55) NULL,
	[NumberProducts] [int] NULL,
	[DateSale] [date] NULL,
	[SupplierID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityQuestion]    Script Date: 07.11.2024 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityQuestion](
	[SecurityQuestionCode] [int] NULL,
	[SecurityQuestion1] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07.11.2024 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Family] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CodeWords] [nvarchar](50) NULL,
	[AnswerSecretWord] [nvarchar](50) NULL,
	[UserCode] [int] NULL,
	[SecurityQuestionCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 07.11.2024 11:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[WarehouseID] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseName] [varchar](255) NOT NULL,
	[Location] [varchar](255) NULL,
	[Capacity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WarehouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DefectRate] ON 

INSERT [dbo].[DefectRate] ([DefectRateID], [ProductType], [ProductionID], [DefectPercentage], [Reason]) VALUES (3, N'Ламинат', 6, CAST(0.05 AS Decimal(5, 2)), N'Дефект материала')
INSERT [dbo].[DefectRate] ([DefectRateID], [ProductType], [ProductionID], [DefectPercentage], [Reason]) VALUES (4, N'Паркетная доска', 7, CAST(5.15 AS Decimal(5, 2)), N'Ошибка сборки')
SET IDENTITY_INSERT [dbo].[DefectRate] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Position], [Department], [HireDate], [Salary], [ManagerID]) VALUES (1, N'Иван', N'Иванов', N'Менеджер по продажам', N'Отдел продаж', CAST(N'2023-01-15' AS Date), CAST(50000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Position], [Department], [HireDate], [Salary], [ManagerID]) VALUES (2, N'Петр', N'Петров', N'Инженер', N'Отдел производства', CAST(N'2022-08-20' AS Date), CAST(60000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Position], [Department], [HireDate], [Salary], [ManagerID]) VALUES (3, N'Анна', N'Сидорова', N'Бухгалтер', N'Финансовый отдел', CAST(N'2021-12-01' AS Date), CAST(45000.00 AS Decimal(10, 2)), NULL)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Materials] ON 

INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [Unit], [Price], [QuantityInStock], [Defects], [WarehouseID]) VALUES (1, N'Материал X', N'кг', CAST(10.00 AS Decimal(10, 2)), 200, 0, 1)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [Unit], [Price], [QuantityInStock], [Defects], [WarehouseID]) VALUES (2, N'Материал Y', N'шт', CAST(5.00 AS Decimal(10, 2)), 150, 0, 2)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [Unit], [Price], [QuantityInStock], [Defects], [WarehouseID]) VALUES (3, N'Материал X', N'кг', CAST(10.00 AS Decimal(10, 2)), 200, 0, 1)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [Unit], [Price], [QuantityInStock], [Defects], [WarehouseID]) VALUES (4, N'Материал Y', N'шт', CAST(5.00 AS Decimal(10, 2)), 150, 0, 2)
SET IDENTITY_INSERT [dbo].[Materials] OFF
GO
SET IDENTITY_INSERT [dbo].[Partners] ON 

INSERT [dbo].[Partners] ([PartnerID], [CompanyName], [ContactPerson], [Email], [Phone], [RegisteredOffice], [INN], [Rating]) VALUES (4, N'ООО Поставщик материалов', N'Сергей Петров', N'supplier@example.com', N'+7 (495) 123-45-67', N'188910, Ленинградская область, город Приморск, ул. Парковая, 21', 217245517, 5)
INSERT [dbo].[Partners] ([PartnerID], [CompanyName], [ContactPerson], [Email], [Phone], [RegisteredOffice], [INN], [Rating]) VALUES (5, N'ООО Поставщик материалов', N'Сергей Петров', N'supplier@example.com', N'+7 (495) 123-45-67', N'188910, Ленинградская область, город Приморск, ул. Парковая, 21', 217245517, 5)
INSERT [dbo].[Partners] ([PartnerID], [CompanyName], [ContactPerson], [Email], [Phone], [RegisteredOffice], [INN], [Rating]) VALUES (6, N'ООО ТрансЛогистик', N'Мария Иванова', N'logistics@example.com', N'+7 (800) 555-33-22', N'188910, Ленинградская область, город Приморск, ул. Парковая, 21', 892585517, 6)
SET IDENTITY_INSERT [dbo].[Partners] OFF
GO
SET IDENTITY_INSERT [dbo].[Production] ON 

INSERT [dbo].[Production] ([ProductionID], [ProductID], [MaterialID], [ProductType], [ProductName], [Article], [PricePartner]) VALUES (4, NULL, 1, N'Паркетная доска', N'Паркетная доска Ясень темный однополосная 14 мм', 8758385, 4.0000)
INSERT [dbo].[Production] ([ProductionID], [ProductID], [MaterialID], [ProductType], [ProductName], [Article], [PricePartner]) VALUES (5, NULL, 2, N'Инженерная доска', N'Дуб Французская елка однополосная 12 мм', 8858958, 9.0000)
INSERT [dbo].[Production] ([ProductionID], [ProductID], [MaterialID], [ProductType], [ProductName], [Article], [PricePartner]) VALUES (6, 2, 1, N'Паркетная доска', N'Паркетная доска Ясень темный однополосная 14 мм', 8758385, 4456.9000)
INSERT [dbo].[Production] ([ProductionID], [ProductID], [MaterialID], [ProductType], [ProductName], [Article], [PricePartner]) VALUES (7, 3, 2, N'Инженерная доска', N'Дуб Французская елка однополосная 12 мм', 8858958, 7330.9900)
SET IDENTITY_INSERT [dbo].[Production] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Partner], [NumberProducts], [DateSale], [SupplierID]) VALUES (2, N'Паркетная доска Ясень темный однополосная 14 мм', N'База Строитель', 15500, CAST(N'2023-03-23' AS Date), NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Partner], [NumberProducts], [DateSale], [SupplierID]) VALUES (3, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'База Строитель', 12350, CAST(N'2023-12-18' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[SecurityQuestion] ([SecurityQuestionCode], [SecurityQuestion1]) VALUES (228, N'Эльфева башня')
GO
INSERT [dbo].[Users] ([Family], [Name], [Email], [Password], [CodeWords], [AnswerSecretWord], [UserCode], [SecurityQuestionCode]) VALUES (N'Иванов', N'Иван', N'ivano@gmail.com', N'12345', N'париж', N'фунтик', 228, 228)
GO
SET IDENTITY_INSERT [dbo].[Warehouse] ON 

INSERT [dbo].[Warehouse] ([WarehouseID], [WarehouseName], [Location], [Capacity]) VALUES (1, N'Склад №1', N'Москва', 1000)
INSERT [dbo].[Warehouse] ([WarehouseID], [WarehouseName], [Location], [Capacity]) VALUES (2, N'Склад №2', N'Санкт-Петербург', 500)
INSERT [dbo].[Warehouse] ([WarehouseID], [WarehouseName], [Location], [Capacity]) VALUES (3, N'Склад №1', N'Москва', 1000)
INSERT [dbo].[Warehouse] ([WarehouseID], [WarehouseName], [Location], [Capacity]) VALUES (4, N'Склад №2', N'Санкт-Петербург', 500)
SET IDENTITY_INSERT [dbo].[Warehouse] OFF
GO
ALTER TABLE [dbo].[DefectRate]  WITH CHECK ADD FOREIGN KEY([ProductionID])
REFERENCES [dbo].[Production] ([ProductionID])
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD FOREIGN KEY([WarehouseID])
REFERENCES [dbo].[Warehouse] ([WarehouseID])
GO
ALTER TABLE [dbo].[Production]  WITH CHECK ADD FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Materials] ([MaterialID])
GO
ALTER TABLE [dbo].[Production]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Partners] ([PartnerID])
GO
USE [master]
GO
ALTER DATABASE [Master_pol] SET  READ_WRITE 
GO
