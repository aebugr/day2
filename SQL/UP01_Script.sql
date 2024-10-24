USE [master]
GO
/****** Object:  Database [UP01]    Script Date: 23.10.2024 3:19:23 ******/
CREATE DATABASE [UP01]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UP01', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\UP01.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UP01_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\UP01_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [UP01] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UP01].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UP01] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UP01] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UP01] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UP01] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UP01] SET ARITHABORT OFF 
GO
ALTER DATABASE [UP01] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UP01] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UP01] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UP01] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UP01] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UP01] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UP01] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UP01] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UP01] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UP01] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UP01] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UP01] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UP01] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UP01] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UP01] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UP01] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UP01] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UP01] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UP01] SET  MULTI_USER 
GO
ALTER DATABASE [UP01] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UP01] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UP01] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UP01] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UP01] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UP01] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [UP01] SET QUERY_STORE = OFF
GO
USE [UP01]
GO
/****** Object:  Table [dbo].[material_type]    Script Date: 23.10.2024 3:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material_type](
	[idmaterial_type] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[defect_rate] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idmaterial_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials]    Script Date: 23.10.2024 3:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials](
	[idmaterials] [int] IDENTITY(1,1) NOT NULL,
	[type] [int] NOT NULL,
	[name] [varchar](45) NOT NULL,
	[idsupplier] [int] NOT NULL,
	[quantity_package] [int] NOT NULL,
	[description] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idmaterials] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partner_product]    Script Date: 23.10.2024 3:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partner_product](
	[idpartner_product] [int] IDENTITY(1,1) NOT NULL,
	[product] [int] NOT NULL,
	[partner_name] [int] NOT NULL,
	[quantity_production] [int] NOT NULL,
	[sale_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idpartner_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partners]    Script Date: 23.10.2024 3:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partners](
	[idpartners] [int] IDENTITY(1,1) NOT NULL,
	[type_partn] [int] NOT NULL,
	[company_name] [varchar](45) NOT NULL,
	[fio_director] [varchar](45) NOT NULL,
	[number_phone] [varchar](11) NOT NULL,
	[rayting] [int] NOT NULL,
	[skidka] [int] NOT NULL,
	[salesVolume] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idpartners] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partners_type]    Script Date: 23.10.2024 3:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partners_type](
	[idpartners_type] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](45) NOT NULL,
	[name] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idpartners_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_type]    Script Date: 23.10.2024 3:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_type](
	[idproduct_type] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](45) NOT NULL,
	[coefficient] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idproduct_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 23.10.2024 3:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[idproducts] [int] IDENTITY(1,1) NOT NULL,
	[type_prod] [int] NOT NULL,
	[article] [varchar](8) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[description] [varchar](45) NOT NULL,
	[min_price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idproducts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 23.10.2024 3:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suppliers](
	[idsuppliers] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](45) NOT NULL,
	[name] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idsuppliers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[materials]  WITH CHECK ADD  CONSTRAINT [FK_materials_material_type] FOREIGN KEY([type])
REFERENCES [dbo].[material_type] ([idmaterial_type])
GO
ALTER TABLE [dbo].[materials] CHECK CONSTRAINT [FK_materials_material_type]
GO
ALTER TABLE [dbo].[materials]  WITH CHECK ADD  CONSTRAINT [FK_materials_suppliers] FOREIGN KEY([idsupplier])
REFERENCES [dbo].[suppliers] ([idsuppliers])
GO
ALTER TABLE [dbo].[materials] CHECK CONSTRAINT [FK_materials_suppliers]
GO
ALTER TABLE [dbo].[partner_product]  WITH CHECK ADD  CONSTRAINT [FK_partner_product_partners] FOREIGN KEY([partner_name])
REFERENCES [dbo].[partners] ([idpartners])
GO
ALTER TABLE [dbo].[partner_product] CHECK CONSTRAINT [FK_partner_product_partners]
GO
ALTER TABLE [dbo].[partner_product]  WITH CHECK ADD  CONSTRAINT [FK_partner_product_products] FOREIGN KEY([product])
REFERENCES [dbo].[products] ([idproducts])
GO
ALTER TABLE [dbo].[partner_product] CHECK CONSTRAINT [FK_partner_product_products]
GO
ALTER TABLE [dbo].[partners]  WITH CHECK ADD  CONSTRAINT [FK_partners_partners_type] FOREIGN KEY([type_partn])
REFERENCES [dbo].[partners_type] ([idpartners_type])
GO
ALTER TABLE [dbo].[partners] CHECK CONSTRAINT [FK_partners_partners_type]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_product_type] FOREIGN KEY([type_prod])
REFERENCES [dbo].[product_type] ([idproduct_type])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_product_type]
GO
/****** Object:  StoredProcedure [dbo].[GetPartnerProductHistory]    Script Date: 23.10.2024 3:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Процедура `GetPartnerProductHistory`
CREATE PROCEDURE [dbo].[GetPartnerProductHistory] (@partnerId INT)
AS
BEGIN
  SELECT 
    pp.idpartner_product,
    p.name AS product_name,
    pp.quantity_production,
    pp.sale_date
  FROM 
    partner_product pp
  JOIN 
    products p ON pp.product = p.idproducts
  WHERE 
    pp.partner_name = @partnerId
  ORDER BY 
    pp.sale_date DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetPartners]    Script Date: 23.10.2024 3:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Процедура `GetPartners`
CREATE PROCEDURE [dbo].[GetPartners]
AS
BEGIN
  SELECT 
    p.idpartners,
    p.company_name,
    p.fio_director,
    p.number_phone,
    p.rayting,
    p.skidka
  FROM 
    partners p;
END;
GO
USE [master]
GO
ALTER DATABASE [UP01] SET  READ_WRITE 
GO
