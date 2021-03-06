USE [master]
GO
/****** Object:  Database [EmployeeDB]    Script Date: 17-12-2018 20:13:56 ******/
CREATE DATABASE [EmployeeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeDB', FILENAME = N'C:\Users\Shailendra Pardeshi\EmployeeDB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeDB_log', FILENAME = N'C:\Users\Shailendra Pardeshi\EmployeeDB_log.ldf' , SIZE = 560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeDB] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EmployeeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EmployeeDB]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 17-12-2018 20:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Salary] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (1, N'Mark', N'Hastings', N'Male', 60000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (2, N'Steve', N'Pound', N'Male', 45000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (3, N'Ben', N'Hoskins', N'Male', 70000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (4, N'Philip', N'Hastings', N'Male', 45000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (5, N'Mary', N'Lambeth', N'Female', 30000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (6, N'Valarie', N'Vikings', N'Female', 35000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (7, N'John', N'Stanmore', N'Male', 80000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (8, N'Mark', N'Hastings', N'Male', 60000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (9, N'Steve', N'Pound', N'Male', 45000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (10, N'Sam 10', N'Wicht  10', N'Male', 5000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (11, N'Philip', N'Hastings', N'Male', 45000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (12, N'Mary', N'Lambeth', N'Female', 30000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (13, N'Valarie', N'Vikings', N'Female', 35000)
SET IDENTITY_INSERT [dbo].[Employees] OFF
USE [master]
GO
ALTER DATABASE [EmployeeDB] SET  READ_WRITE 
GO
