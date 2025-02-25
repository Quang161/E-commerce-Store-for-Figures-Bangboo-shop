USE [master]
GO
/****** Object:  Database [BangbooShop]    Script Date: 12/18/2024 10:55:38 PM ******/
CREATE DATABASE [BangbooShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BangbooShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BangbooShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BangbooShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BangbooShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BangbooShop] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BangbooShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BangbooShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BangbooShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BangbooShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BangbooShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BangbooShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [BangbooShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BangbooShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BangbooShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BangbooShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BangbooShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BangbooShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BangbooShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BangbooShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BangbooShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BangbooShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BangbooShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BangbooShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BangbooShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BangbooShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BangbooShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BangbooShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BangbooShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BangbooShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BangbooShop] SET  MULTI_USER 
GO
ALTER DATABASE [BangbooShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BangbooShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BangbooShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BangbooShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BangbooShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BangbooShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BangbooShop', N'ON'
GO
ALTER DATABASE [BangbooShop] SET QUERY_STORE = ON
GO
ALTER DATABASE [BangbooShop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BangbooShop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/18/2024 10:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bangboo_DB]    Script Date: 12/18/2024 10:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bangboo_DB](
	[IDBangboo] [nvarchar](50) NOT NULL,
	[NameBangboo] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Rank] [nvarchar](50) NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 0) NULL,
	[Faction] [nvarchar](50) NULL,
	[Attribute] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product_DB] PRIMARY KEY CLUSTERED 
(
	[IDBangboo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangbooImage_DB]    Script Date: 12/18/2024 10:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangbooImage_DB](
	[IDImage] [nvarchar](50) NOT NULL,
	[IDImage_Bangboo] [nvarchar](50) NULL,
	[URL] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductImage_DB] PRIMARY KEY CLUSTERED 
(
	[IDImage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BooderDetail]    Script Date: 12/18/2024 10:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BooderDetail](
	[IDOrderDetail] [int] IDENTITY(1,1) NOT NULL,
	[IDOrder_DB] [int] NOT NULL,
	[IDBangboo] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Unit_Price] [decimal](18, 0) NOT NULL,
	[Total_Price] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_BooderDetail] PRIMARY KEY CLUSTERED 
(
	[IDOrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boorder]    Script Date: 12/18/2024 10:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boorder](
	[IDOrder] [int] IDENTITY(1,1) NOT NULL,
	[ID_Phaethon] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Total_Amount] [decimal](18, 0) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Boorder] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartBoo]    Script Date: 12/18/2024 10:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartBoo](
	[ID_CartBoo] [int] IDENTITY(1,1) NOT NULL,
	[ID_Phatheon] [nvarchar](50) NOT NULL,
	[IDBangboo_DB] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ID_Order] [int] NULL,
 CONSTRAINT [PK_CartBoo] PRIMARY KEY CLUSTERED 
(
	[ID_CartBoo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phaethon_User]    Script Date: 12/18/2024 10:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phaethon_User](
	[ID_Phaethon] [nvarchar](50) NOT NULL,
	[FullNamePhatheon] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Create_at] [datetime] NOT NULL,
 CONSTRAINT [PK_Phaethon_User] PRIMARY KEY CLUSTERED 
(
	[ID_Phaethon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Amilion', N'Amilion', N'Amillion is Nicole''s ever-faithful sidekick and member of the Cunning Hares, where it ranks just below Billy Kid. Its name represents Nicole''s dreams and ambitions of getting rich.', N'S', 20, CAST(1000 AS Decimal(18, 0)), N'Cunning Hares', N'Physical')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Avocaboo', N'Avocaboo', N'Avocaboo is a cheerful Bangboo shaped like an avocado, symbolizing freshness and creativity. Its quick wit and positive energy make it an invaluable companion for every adventure.', N'A', 20, CAST(500 AS Decimal(18, 0)), N'The Fresh Creators', N'None')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Bagboo', N'Bagboo', N'Bagboo is a stylish and versatile Bangboo, always ready to carry the essentials. With its practical design and trendy flair, it’s the perfect companion for any journey, big or small.', N'A', 20, CAST(700 AS Decimal(18, 0)), N'The Carriers', N'Physical')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Boollseye', N'Boolleyes', N'Boollseye is a focused and determined Bangboo, with an exceptional knack for accuracy. Whether it''s aiming for goals or solving problems, this little sharpshooter never misses the mark.', N'A', 20, CAST(400 AS Decimal(18, 0)), N'Sharpshooters', N'Physical')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Booressure', N'Booressure', N'Booressure is a calm and composed Bangboo, known for its ability to handle pressure with grace. Always steady in the face of challenges, it helps its owner stay grounded and focused under stress.', N'A', 20, CAST(450 AS Decimal(18, 0)), N'Calm Guardians', N'Ether')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Butler', N'Butler', N'Butler is a refined and attentive Bangboo, always at your service. With its impeccable manners and a keen eye for detail, it ensures everything runs smoothly, offering help whenever needed.', N'S', 20, CAST(2500 AS Decimal(18, 0)), N'
Victoria Housekeeping', N'Physical')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Cryboo', N'Cryboo', N'Cryboo is an empathetic and gentle Bangboo, known for its soothing presence. Always ready to offer comfort, it provides a shoulder to lean on, turning tears into smiles with its caring nature.', N'A', 20, CAST(450 AS Decimal(18, 0)), N'Compassionate Healers', N'Fire')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Devilboo', N'Devilboo', N'Devilboo is a mischievous and fiery Bangboo, full of spunk and playful chaos. With its devilish grin and bold attitude, it loves stirring things up while keeping things exciting and unpredictable.', N'A', 20, CAST(350 AS Decimal(18, 0)), N'Rebels of Chaos', N'Ether')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Electroboo', N'Electroboo', N'Electroboo is a high-energy Bangboo, charged with electricity and always ready to spark creativity. Its zippy movements and electrifying presence bring a burst of energy, lighting up any situation.', N'A', 20, CAST(650 AS Decimal(18, 0)), N'The Electric Sparks', N'Electric')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Exploreboo', N'Exploreboo', N'Exploreboo is an adventurous and curious Bangboo, always ready to discover new places. With an insatiable wanderlust and a keen sense of direction, it’s the perfect companion for any journey or quest.', N'A', 20, CAST(250 AS Decimal(18, 0)), N'The Explorers', N'None')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Knightboo', N'Knightboo', N'Knightboo is a noble Bangboo, always ready to protect and defend. With a strong sense of honor and bravery, it stands tall as a loyal guardian, ready to face any challenge head-on.', N'A', 20, CAST(750 AS Decimal(18, 0)), N'The Guardians', N'None')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Luckyboo', N'Luckyboo', N'Luckyboo is a fortunate Bangboo, known for bringing good luck wherever it goes. With a positive attitude and an aura of luck, it turns every moment into an opportunity for success.', N'A', 20, CAST(800 AS Decimal(18, 0)), N'Fortunate Souls', N'Physical')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Officer', N'Officerboo', N'Officerboo is a disciplined Bangboo, always keeping things in order. With a sharp eye for detail and a strong sense of justice, it ensures that rules are followed and everyone stays on track.', N'S', 20, CAST(1200 AS Decimal(18, 0)), N'Special Response Team', N'Physical')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Paperboo', N'Paperboo', N'Paperboo is a versatile Bangboo, known for its ability to adapt to any situation. It can transform into whatever is needed, making it a true problem-solver.', N'A', 20, CAST(800 AS Decimal(18, 0)), N'Shape-Shifters', N'Physical')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Peguinboo', N'Peguinboo', N'Penguinboo is a charming and playful Bangboo, with a cool, laid-back attitude. Always waddling through life with a smile, it brings warmth and joy to everyone it meets.', N'A', 20, CAST(900 AS Decimal(18, 0)), N'The Chill', N'Ice')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Red_Moccus', N'Red Moccus', N'Red Moccus is a bold Bangboo, radiating confidence and power. With its vibrant red hue and daring nature, it’s always ready to take on challenges, leaving a trail of excitement behind.', N'S', 20, CAST(1700 AS Decimal(18, 0)), N'Sons of Calydon', N'Physical')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Resonaboo', N'Resonaboo', N'Resonaboo is a harmonious Bangboo, known for its ability to create balance. With a deep sense of empathy, it helps resolve conflicts and stay calm in even the most chaotic situations.', N'S', 20, CAST(1600 AS Decimal(18, 0)), N'The Harmonizers', N'Ether')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Rocketboo', N'Rocketboo', N'Rocketboo is a ambitious Bangboo, always reaching for the stars. With its explosive never-ending drive, it’s ready to launch into any adventure and blast through obstacles with determination.', N'A', 20, CAST(2600 AS Decimal(18, 0)), N'The Rocket Pioneers', N'Fire')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Safety', N'Safety', N'Safetyboo is a vigilant Bangboo, always ensuring everyone stays protected. With its watchful nature and quick response, it creates a secure environment, ready to act whenever safety is at risk.', N'S', 20, CAST(3600 AS Decimal(18, 0)), N'Belobog Industries', N'Physical')
INSERT [dbo].[Bangboo_DB] ([IDBangboo], [NameBangboo], [Description], [Rank], [Quantity], [Price], [Faction], [Attribute]) VALUES (N'Sumoboo', N'Sumoboo', N'Sumoboo is a resilience and sturdy Bangboo. With its hefty frame and unshakable focus, it stands its ground in any situation, ready to push through obstacles with unwavering strength.', N'A', 20, CAST(200 AS Decimal(18, 0)), N'None', N'Physical')
GO
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Amilion', N'Amilion', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395850/Amillion_Portrait_physical_tkfqwn.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Avocaboo', N'Avocaboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395851/Avocaboo_Portrait_null_xn7xum.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Bagboo', N'Bagboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395852/Bagboo_Portrait_physical_xonoyc.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Boollseye', N'Boollseye', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395853/Boollseye_Portrait_physical_yti2mg.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Booressure', N'Booressure', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395854/Booressure_Portrait_ether_ffu5zt.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Butler', N'Butler', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395854/Butler_Portrait_physical_h6vser.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Cryboo', N'Cryboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395854/Cryboo_Portrait_fire_ul5okq.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Devilboo', N'Devilboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395855/Devilboo_Portrait_ether_qistka.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Electroboo', N'Electroboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395855/Electroboo_Portrait_electric_suzvvr.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Exploreboo', N'Exploreboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395855/Exploreboo_Portrait_null_etv1f3.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Knightboo', N'Knightboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395856/Knightboo_Portrait_null_brbttx.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Luckyboo', N'Luckyboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395856/Luckyboo_Portrait_physical_qjotxo.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Officerboo', N'Officer', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395857/Officer_Cui_Portrait_physical_dfepey.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Paperboo', N'Paperboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395858/Paperboo_Portrait_physical_aqpach.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Peguinboo', N'Peguinboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395858/Penguinboo_Portrait_ice_xijmzq.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Red_Moccus', N'Red_Moccus', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395860/Red_Moccus_Portrait_physical_jyjnkq.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Resonaboo', N'Resonaboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395860/Resonaboo_Portrait_ether_i87lx0.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Rocket', N'Rocketboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395860/Rocketboo_Portrait_fire_ugj9ie.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Safetyboo', N'Safety', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395861/Safety_Portrait_physical_ctqkxz.webp')
INSERT [dbo].[BangbooImage_DB] ([IDImage], [IDImage_Bangboo], [URL]) VALUES (N'Sumoboo', N'Sumoboo', N'https://res.cloudinary.com/dclzefovi/image/upload/v1731395862/Sumoboo_Portrait_physical_b4a7qv.webp')
GO
SET IDENTITY_INSERT [dbo].[BooderDetail] ON 

INSERT [dbo].[BooderDetail] ([IDOrderDetail], [IDOrder_DB], [IDBangboo], [Quantity], [Unit_Price], [Total_Price]) VALUES (1, 24, N'Butler', 3, CAST(2500 AS Decimal(18, 0)), CAST(7500 AS Decimal(18, 0)))
INSERT [dbo].[BooderDetail] ([IDOrderDetail], [IDOrder_DB], [IDBangboo], [Quantity], [Unit_Price], [Total_Price]) VALUES (2, 24, N'Officer', 2, CAST(1200 AS Decimal(18, 0)), CAST(2400 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[BooderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Boorder] ON 

INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (1, N'q', N'Pending', CAST(1000 AS Decimal(18, 0)), CAST(N'2024-12-15T16:56:21.743' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (2, N'q', N'Pending', CAST(2000 AS Decimal(18, 0)), CAST(N'2024-12-15T16:57:21.743' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (3, N'q', N'Pending', CAST(3000 AS Decimal(18, 0)), CAST(N'2024-12-15T16:58:21.743' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (4, N'q', N'Pending', CAST(4000 AS Decimal(18, 0)), CAST(N'2024-12-15T16:59:21.743' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (5, N'q', N'Pending', CAST(5000 AS Decimal(18, 0)), CAST(N'2024-12-15T17:00:21.743' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (6, N'q', N'Pending', CAST(6000 AS Decimal(18, 0)), CAST(N'2024-12-15T17:01:21.743' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (7, N'q', N'Pending', CAST(7000 AS Decimal(18, 0)), CAST(N'2024-12-15T17:02:21.743' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (8, N'q', N'Pending', CAST(8000 AS Decimal(18, 0)), CAST(N'2024-12-15T17:03:21.743' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (9, N'q', N'Pending', CAST(9000 AS Decimal(18, 0)), CAST(N'2024-12-15T17:04:21.743' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (10, N'q', N'Pending', CAST(10000 AS Decimal(18, 0)), CAST(N'2024-12-15T16:56:21.743' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (13, N'quang', N'Pending', CAST(1000 AS Decimal(18, 0)), CAST(N'2024-12-15T22:52:20.187' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (14, N'quang', N'Pending', CAST(4350 AS Decimal(18, 0)), CAST(N'2024-12-15T23:06:59.247' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (15, N'quang', N'Pending', CAST(5400 AS Decimal(18, 0)), CAST(N'2024-12-15T23:13:59.367' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (16, N'quang', N'Pending', CAST(1000 AS Decimal(18, 0)), CAST(N'2024-12-16T19:02:01.653' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (17, N'quang', N'Pending', CAST(10000 AS Decimal(18, 0)), CAST(N'2024-12-16T19:21:55.003' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (18, N'quang', N'Pending', CAST(20000 AS Decimal(18, 0)), CAST(N'2024-12-16T19:30:46.983' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (19, N'quang', N'Pending', CAST(7000 AS Decimal(18, 0)), CAST(N'2024-12-16T19:31:07.667' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (20, N'quang', N'Pending', CAST(21600 AS Decimal(18, 0)), CAST(N'2024-12-16T19:31:30.933' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (21, N'quang', N'Pending', CAST(12800 AS Decimal(18, 0)), CAST(N'2024-12-16T19:31:54.053' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (22, N'quang', N'Pending', CAST(12600 AS Decimal(18, 0)), CAST(N'2024-12-16T19:32:56.720' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (23, N'quang', N'Pending', CAST(9900 AS Decimal(18, 0)), CAST(N'2024-12-18T22:30:11.163' AS DateTime))
INSERT [dbo].[Boorder] ([IDOrder], [ID_Phaethon], [Status], [Total_Amount], [CreatedDate]) VALUES (24, N'quang', N'Pending', CAST(9900 AS Decimal(18, 0)), CAST(N'2024-12-18T22:39:15.650' AS DateTime))
SET IDENTITY_INSERT [dbo].[Boorder] OFF
GO
INSERT [dbo].[Phaethon_User] ([ID_Phaethon], [FullNamePhatheon], [Password], [Email], [Address], [Create_at]) VALUES (N'q', N'q', N'AQAAAAIAAYagAAAAECSirhSJ39IsrCsYf4H31SQWd7nV7cV2En31+p72ZSUfABTz5aPKo48YqmjhrDmTZg==', N'q@gmail.com', N'123', CAST(N'2024-12-13T16:00:19.593' AS DateTime))
INSERT [dbo].[Phaethon_User] ([ID_Phaethon], [FullNamePhatheon], [Password], [Email], [Address], [Create_at]) VALUES (N'quang', N'quang', N'AQAAAAIAAYagAAAAEGs5jfUqmu2NIEaJTaoJcqU9NmQJyftBiv6fJGUyC51/1QVeRiRDr2tAuK6kd96TjA==', N'quang@gmail.com', N'abc', CAST(N'2024-12-15T10:57:52.890' AS DateTime))
GO
ALTER TABLE [dbo].[Boorder] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Phaethon_User] ADD  CONSTRAINT [DF_Phaethon_User_Create_at]  DEFAULT (getdate()) FOR [Create_at]
GO
ALTER TABLE [dbo].[BangbooImage_DB]  WITH CHECK ADD  CONSTRAINT [FK_BangbooImage_DB_Bangboo_DB1] FOREIGN KEY([IDImage_Bangboo])
REFERENCES [dbo].[Bangboo_DB] ([IDBangboo])
GO
ALTER TABLE [dbo].[BangbooImage_DB] CHECK CONSTRAINT [FK_BangbooImage_DB_Bangboo_DB1]
GO
ALTER TABLE [dbo].[BooderDetail]  WITH CHECK ADD  CONSTRAINT [FK_BooderDetail_Bangboo_DB] FOREIGN KEY([IDBangboo])
REFERENCES [dbo].[Bangboo_DB] ([IDBangboo])
GO
ALTER TABLE [dbo].[BooderDetail] CHECK CONSTRAINT [FK_BooderDetail_Bangboo_DB]
GO
ALTER TABLE [dbo].[BooderDetail]  WITH CHECK ADD  CONSTRAINT [FK_BooderDetail_Boorder] FOREIGN KEY([IDOrder_DB])
REFERENCES [dbo].[Boorder] ([IDOrder])
GO
ALTER TABLE [dbo].[BooderDetail] CHECK CONSTRAINT [FK_BooderDetail_Boorder]
GO
ALTER TABLE [dbo].[Boorder]  WITH CHECK ADD  CONSTRAINT [FK_Boorder_Phaethon_User] FOREIGN KEY([ID_Phaethon])
REFERENCES [dbo].[Phaethon_User] ([ID_Phaethon])
GO
ALTER TABLE [dbo].[Boorder] CHECK CONSTRAINT [FK_Boorder_Phaethon_User]
GO
ALTER TABLE [dbo].[CartBoo]  WITH CHECK ADD  CONSTRAINT [FK_CartBoo_Bangboo_DB] FOREIGN KEY([IDBangboo_DB])
REFERENCES [dbo].[Bangboo_DB] ([IDBangboo])
GO
ALTER TABLE [dbo].[CartBoo] CHECK CONSTRAINT [FK_CartBoo_Bangboo_DB]
GO
ALTER TABLE [dbo].[CartBoo]  WITH CHECK ADD  CONSTRAINT [FK_CartBoo_Boorder] FOREIGN KEY([ID_Order])
REFERENCES [dbo].[Boorder] ([IDOrder])
GO
ALTER TABLE [dbo].[CartBoo] CHECK CONSTRAINT [FK_CartBoo_Boorder]
GO
ALTER TABLE [dbo].[CartBoo]  WITH CHECK ADD  CONSTRAINT [FK_CartBoo_Phaethon_User] FOREIGN KEY([ID_Phatheon])
REFERENCES [dbo].[Phaethon_User] ([ID_Phaethon])
GO
ALTER TABLE [dbo].[CartBoo] CHECK CONSTRAINT [FK_CartBoo_Phaethon_User]
GO
USE [master]
GO
ALTER DATABASE [BangbooShop] SET  READ_WRITE 
GO
