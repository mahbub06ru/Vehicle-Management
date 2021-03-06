USE [master]
GO
/****** Object:  Database [VehicleManagment]    Script Date: 6/11/2015 5:05:48 PM ******/
CREATE DATABASE [VehicleManagment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VehicleManagment', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\VehicleManagment.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VehicleManagment_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\VehicleManagment_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VehicleManagment] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VehicleManagment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VehicleManagment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VehicleManagment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VehicleManagment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VehicleManagment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VehicleManagment] SET ARITHABORT OFF 
GO
ALTER DATABASE [VehicleManagment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VehicleManagment] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [VehicleManagment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VehicleManagment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VehicleManagment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VehicleManagment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VehicleManagment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VehicleManagment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VehicleManagment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VehicleManagment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VehicleManagment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VehicleManagment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VehicleManagment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VehicleManagment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VehicleManagment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VehicleManagment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VehicleManagment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VehicleManagment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VehicleManagment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VehicleManagment] SET  MULTI_USER 
GO
ALTER DATABASE [VehicleManagment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VehicleManagment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VehicleManagment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VehicleManagment] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [VehicleManagment]
GO
/****** Object:  Table [dbo].[shedule]    Script Date: 6/11/2015 5:05:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shedule](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[shift] [varchar](10) NOT NULL,
	[bookedBy] [varchar](50) NOT NULL,
	[address] [varchar](500) NOT NULL,
	[vid] [int] NOT NULL,
 CONSTRAINT [PK_shedule] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vehicle]    Script Date: 6/11/2015 5:05:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vehicle](
	[vid] [int] IDENTITY(1,1) NOT NULL,
	[reg] [varchar](50) NOT NULL,
	[engin] [varchar](50) NOT NULL,
 CONSTRAINT [PK_vehicle] PRIMARY KEY CLUSTERED 
(
	[vid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[shedule] ON 

INSERT [dbo].[shedule] ([sid], [date], [shift], [bookedBy], [address], [vid]) VALUES (1, CAST(0x103A0B00 AS Date), N'Morning', N'Yeasin', N'Dhaka', 1)
INSERT [dbo].[shedule] ([sid], [date], [shift], [bookedBy], [address], [vid]) VALUES (2, CAST(0x113A0B00 AS Date), N'Evening', N'Arafat', N'Dhaka', 2)
INSERT [dbo].[shedule] ([sid], [date], [shift], [bookedBy], [address], [vid]) VALUES (3, CAST(0x113A0B00 AS Date), N'Morning', N'Trik Rahman', N'Khilkhet', 1)
INSERT [dbo].[shedule] ([sid], [date], [shift], [bookedBy], [address], [vid]) VALUES (4, CAST(0x123A0B00 AS Date), N'Morning', N'Arafat', N'Noakhli', 1)
INSERT [dbo].[shedule] ([sid], [date], [shift], [bookedBy], [address], [vid]) VALUES (5, CAST(0x143A0B00 AS Date), N'Morning', N'Arafat', N'Dhaka', 1)
SET IDENTITY_INSERT [dbo].[shedule] OFF
SET IDENTITY_INSERT [dbo].[vehicle] ON 

INSERT [dbo].[vehicle] ([vid], [reg], [engin]) VALUES (1, N'1', N'Ax-001')
INSERT [dbo].[vehicle] ([vid], [reg], [engin]) VALUES (2, N'2', N'Ax-002')
INSERT [dbo].[vehicle] ([vid], [reg], [engin]) VALUES (5, N'3', N'Ax-003')
INSERT [dbo].[vehicle] ([vid], [reg], [engin]) VALUES (6, N'4', N'Ax-004')
SET IDENTITY_INSERT [dbo].[vehicle] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_vehicle]    Script Date: 6/11/2015 5:05:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_vehicle] ON [dbo].[vehicle]
(
	[engin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_vehicle_1]    Script Date: 6/11/2015 5:05:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_vehicle_1] ON [dbo].[vehicle]
(
	[reg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[shedule]  WITH CHECK ADD  CONSTRAINT [FK_shedule_vehicle] FOREIGN KEY([vid])
REFERENCES [dbo].[vehicle] ([vid])
GO
ALTER TABLE [dbo].[shedule] CHECK CONSTRAINT [FK_shedule_vehicle]
GO
USE [master]
GO
ALTER DATABASE [VehicleManagment] SET  READ_WRITE 
GO
