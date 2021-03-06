/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.5026)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students]') AND type in (N'U'))
ALTER TABLE [dbo].[Students] DROP CONSTRAINT IF EXISTS [FK_Students_StudentStatuses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]') AND type in (N'U'))
ALTER TABLE [dbo].[ScheduledClasses] DROP CONSTRAINT IF EXISTS [FK_ScheduledClasses_ScheduledClassStatuses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]') AND type in (N'U'))
ALTER TABLE [dbo].[ScheduledClasses] DROP CONSTRAINT IF EXISTS [FK_ScheduledClasses_Courses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollments]') AND type in (N'U'))
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT IF EXISTS [FK_Enrollments_Students]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollments]') AND type in (N'U'))
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT IF EXISTS [FK_Enrollments_ScheduledClasses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP INDEX IF EXISTS [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_UserId]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP INDEX IF EXISTS [IX_UserId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP INDEX IF EXISTS [IX_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_UserId]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP INDEX IF EXISTS [IX_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_UserId]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP INDEX IF EXISTS [IX_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP INDEX IF EXISTS [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[StudentStatuses]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[StudentStatuses]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[Students]
GO
/****** Object:  Table [dbo].[ScheduledClassStatuses]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[ScheduledClassStatuses]
GO
/****** Object:  Table [dbo].[ScheduledClasses]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[ScheduledClasses]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[Enrollments]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[Courses]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Database [SAT]    Script Date: 11/12/2020 7:39:14 PM ******/
DROP DATABASE IF EXISTS [SAT]
GO
/****** Object:  Database [SAT]    Script Date: 11/12/2020 7:39:14 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'SAT')
BEGIN
CREATE DATABASE [SAT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SAT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\SAT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SAT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\SAT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
ALTER DATABASE [SAT] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SAT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SAT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SAT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SAT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SAT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SAT] SET ARITHABORT OFF 
GO
ALTER DATABASE [SAT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SAT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SAT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SAT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SAT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SAT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SAT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SAT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SAT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SAT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SAT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SAT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SAT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SAT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SAT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SAT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SAT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SAT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SAT] SET  MULTI_USER 
GO
ALTER DATABASE [SAT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SAT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SAT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SAT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SAT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SAT] SET QUERY_STORE = OFF
GO
USE [SAT]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[CourseDescription] [nvarchar](max) NOT NULL,
	[CreditHours] [tinyint] NOT NULL,
	[Curriculum] [nvarchar](250) NULL,
	[Notes] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Enrollments](
	[EnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[ScheduledClassId] [int] NOT NULL,
	[EnrollmentDate] [date] NOT NULL,
 CONSTRAINT [PK_Enrollments] PRIMARY KEY CLUSTERED 
(
	[EnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ScheduledClasses]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ScheduledClasses](
	[ScheduledClassId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[InstructorName] [nvarchar](40) NOT NULL,
	[Location] [nvarchar](20) NOT NULL,
	[SCSID] [int] NOT NULL,
 CONSTRAINT [PK_ScheduledClasses] PRIMARY KEY CLUSTERED 
(
	[ScheduledClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ScheduledClassStatuses]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClassStatuses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ScheduledClassStatuses](
	[SCSID] [int] IDENTITY(1,1) NOT NULL,
	[SCSName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ScheduledClassStatuses] PRIMARY KEY CLUSTERED 
(
	[SCSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Students]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Students](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Major] [nvarchar](15) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](25) NULL,
	[State] [char](2) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](13) NULL,
	[Email] [nvarchar](60) NOT NULL,
	[PhotoUrl] [nvarchar](100) NULL,
	[SSID] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[StudentStatuses]    Script Date: 11/12/2020 7:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudentStatuses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StudentStatuses](
	[SSID] [int] IDENTITY(1,1) NOT NULL,
	[SSName] [nvarchar](30) NOT NULL,
	[SSDescription] [nvarchar](250) NULL,
 CONSTRAINT [PK_StudentStatuses] PRIMARY KEY CLUSTERED 
(
	[SSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202011121456593_InitialCreate', N'EAT.MVC.UI.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD14CEDA6E8DC61764EDA06F0157E2AE8548942251AE8DA25FD6877E527FA14389BAF1A2CBAEBCBB2E02042B727866381C92C3E1D0FFFEFDCFF8E747DF331E7014BB01999807A37DD3C0C40E1C972C27664217AFDE9A3FBFFBF69BF199E33F1A9F72BA2346072D493C31EF290D8F2D2BB6EFB18FE291EFDA5110070B3AB203DF424E601DEEEFFF641D1C5818204CC0328CF1C78450D7C7E9077C4E0362E39026C8BB0C1CECC5BC1C6A6629AA71857C1C87C8C613F3ECE47674F9693ABABB1865C4A671E2B9080499616F611A889080220A621EDFC57846A3802C67211420EFF629C440B7405E8CB9F8C72579D79EEC1FB29E5865C31CCA4E621AF83D010F8EB86A2CB1F94A0A360BD581F2CE40C9F489F53A55E0C4BC70705AF431F0400122C3E3A91731E2897959B03889C32B4C4779C35106791E01DC1F41F4655445DC333AB7DB2B4CE970B4CFFEED19D3C4A349842704273442DE9E7193CC3DD7FE0D3FDD065F30991C1DCC17476F5FBF41CED19B1FF1D1EB6A4FA1AF40572B80A29B28087104B2E145D17FD3B0EAED2CB161D1ACD226D30AD812CC0AD3B8448F1F3059D27B982F876F4DE3DC7DC44E5EC28DEB8EB83089A0118D12F8BC4A3C0FCD3D5CD45B8D3CD9FF0D5C0F5FBF1984EB157A7097E9D00BFC61E24430AF3E622FAD8DEFDD309B5EB5F1FECCC9CEA3C067DF75FBCA6A3FCF8224B25967022DC92D8A9698D6A51B5BA5F17632690635BC59E7A8BB6FDA4C52D9BC95A4AC43ABCC849CC5A667432EEFF3F2ED6C7127610883979A16D34893C1497BD54868BC679424A5E11C74351C021DFA3FAF83673E72BD0116C20E5CC00559B8918F8B5EBE0FC0EC10E92DF30D8A6358079C5F517CDF203AFC1C40F419B69308CC7346911F3E3BB79BFB80E0ABC49F33ABDF1CAFC186E6F68FE01CD93488CE086BB536DE87C0FE1224F48C38A788E23B6AE780ECF3D6F5BB030C22CE896DE3383E0763C6CE34000F3B07BC20F4E8B0371C5B9FB6ED884C3DE4FA6A4F4458493FE7A4A537A2A6903C120D99CA2B6912F543B0744937517352BDA81945ABA89CACAFA80CAC9BA49C522F684AD02A674635989F978ED0F08E5E0ABBFB9EDE7A9BB76E2DA8A871062B24FE05131CC132E6DC204A7144CA11E8B26E6CC35948878F317DF6BD29E5F40979C9D0AC569A0DE92230FC6C4861777F36A46242F183EB30AFA4C3F1272706F84EF4EA9355FB9C1324DBF474A87573D3CC37B306E8A6CB491C07B69BCE0245E08B872DEAF2830F67B4C730B2DE887110E81818BACBB63C2881BE99A2515D9353EC618A8D133B0B0C4E516C2347562374C8E92158BEA32A042BE32175E17E907882A5E3883542EC1014C34C750995A7854B6C37445EAB9684961DB730D6F7828758738A434C18C3564D7461AE0E7F30010A3EC2A0B469686C552CAED910355EAB6ECCDB5CD872DCA5A8C4466CB2C577D6D825F7DF9EC5309B35B601E36C56491701B4A1BC6D18283FAB743500F1E0B26B062A9C983406CA5DAA8D18685D635B30D0BA4A5E9C816647D4AEE32F9C5777CD3CEB07E5CD6FEB8DEADA826DD6F4B163A699F99ED086420B1CC9E6793A6795F8912A0E6720273F9FC5DCD5154D8481CF30AD876C4A7F57E9875ACD20A21135019686D602CA2F0125206942F5102E8FE5354AC7BD881EB079DCAD1196AFFD026CC50664ECEA656885507F652A1A67A7D347D1B3C21A2423EF7458A8E0280C425CBCEA1DEFA0145D5C56564C175FB88F375CE9181F8C0605B578AE1A25E59D195C4BB969B66B49E590F571C9D6D292E03E69B4947766702D711B6D5792C229E8E116ACA5A2FA163ED064CB231DC56E53D48DAD2C458A178C2D4D2ED5F81285A14B9695DC2A5E62CCB2C4AAE9AB59FF94233FC3B0EC58917954485B70A241849658A805D620E9B91BC5F4145134472CCE33757C894CB9B76A96FF9C6575FB940731DF07726AF69B5F0A4B57F7B5AD56F64538C43974D0670E4D1A45570CBFBAB9C152DD90872245E07E1A78894FF4FE95BE75767D576D9F95C808634B905FF29F2465495E6E5DF39DC6459E13C38C51E1BDAC3E4E7A089DB673DFB3AA6F9D3FAA47C9C35355145DC86A6BE3A67363FA8C95E820F61FAA5684E799553C2BA50AC08B7A6254121B24B04A5D77D47AEE4915B35ED31D514830A9420A553DA4ACA691D484AC56AC84A7D1A89AA23B073971A48A2ED7764756A49054A115D52B602B6416EBBAA32AB24CAAC08AEAEED865CA89B886EEF0BEA53DB6ACBA716507DBF5762E0DC6F32C88C36C7C95FBFB2A50A5B82716BFA197C078F94E1A93F674B7AA3165E18CF58C4983A15F776A17DFF565A7F1B65E8F59BBCDAE2DED4DB7F97ABC7E26FBAC86219DED4492827B71C613CE72637EAE6A7F3C231DB43212D3C8D508DBFA534CB13F6204A3D9576FEAB9982DE239C12522EE02C734CBE0300FF70F0E850738BBF318C68A63C7539C4B752F62EA63B681642CF28022FB1E45726AC41A0F464A5029EA7C411CFC3831FF4C5B1DA7010CF62B2DDE332EE23BE27E4DA0E2364AB0F1979CEA394C027D87271B85A07FBD88B710DD557EF1FBE7ACE99E711DC1743A36F60545AF32FCF51712BDA4C99AAE21CDCAEF265EEE6CAB3D4B50A20AB365F5570873970EF2022197F23B1F3D7EDF5734E52B83B510152F0986C21B4485BA9702AB60695F0938F049D35702FD3AAB7E35B08A68DA17032EE90F26BE17E8BE0CE52DB7B80F29CE4B9B5892523DB7E65BAF957CB9EDBD494ACB5E6BA2CBA9D73DE0064DAF5ECF45796169CB836D9D8AACE4C1B0B769F7CF9E8ABC2BD9C7A5D3BEDDA4E34DE61937DC26FDAFD28B7720214E91E0B3FD24E24DDB9A2E00BCE39998FD528577CCD8F836BFFD84E04D1B9B2E40BCE3C6D62BED77C76C6D5BFBE7962DADF316BAF5245E391F497391A38A22B725E966217738FECF033082CCA3CCDE56AAB3C29A325A5B1896247AA6FA743491B1347124BE124533DB7E7DE51B7E6367394D335B4D1267136FBEFE37F2E634CDBC35A991DB482F562627AA52BE5BD6B1A6DCA997944E5CEB494BF67A9BCFDA782BFF92B28707514A6DF6686E975F4EB2F0202A1972EAF4480E962F8A61EFACFC2D46D8BF63775942B0BFCC48B05DDB350B9A0BB208F2CD5B90282711223497982207B6D49388BA0B6453A86601E8F471781AD463D72073EC5C90EB848609852E637FEED5025ECC0968E29F6640D7651E5F87EC2B1EA20B20A6CB02F7D7E47DE27A4E21F7B92226A48160DE050FF7B2B1A42CECBB7C2A90AE02D21188ABAF708A6EB11F7A00165F93197AC0ABC806E6F7012F91FD5446007520ED035157FBF8D445CB08F931C728DBC327D8B0E33FBEFB0FC30C567B92540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'eca2bf81-484f-4f87-aaff-7ed5764752d9', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'95272805-8161-4ecc-9050-00012573dfdb', N'Scheduling')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0cab972e-4630-46d5-8780-d2957896fc20', N'95272805-8161-4ecc-9050-00012573dfdb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd98f04e9-f24d-4b33-96a0-bc93f9a15c96', N'eca2bf81-484f-4f87-aaff-7ed5764752d9')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0cab972e-4630-46d5-8780-d2957896fc20', N'scheduling@clownSchool.com', 1, N'AA8xfX8kpbcD88acNJCa9kBphipxRVyV4mzWxvi7vIv2OkR2MJ2u9a5QpPNnjvq9rA==', N'fb2f29e7-d7b9-4fda-8838-67c0caa68bca', NULL, 0, 0, NULL, 1, 0, N'scheduling@clownSchool.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd98f04e9-f24d-4b33-96a0-bc93f9a15c96', N'admin@example.com', 0, N'AHEQyAloa2sLy/rU80vqu4yxZ6drRt5pHGEwijzjc/Db7sGsbT84ZVhE8/JJfwcAaw==', N'7d58dd2a-0c35-41f3-84c4-dfa8c0070b3e', NULL, 0, 0, NULL, 0, 0, N'admin@example.com')
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (1, N'Balloon Animals', N'twist balloons into creatures', 3, N'in person, bring your own balloons and test subjects', N'no harm will come to family member', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (2, N'Face Painting', N'Learn to paint on faces', 12, N'Online, please collect course requirement supplies ', N'children love this', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (3, N'Trapeze Arts', N'learn to fly around the tent', 1, N'balance on ropes way high up. Backflips in mid air.. that kind of thing', N'don''t fall', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (4, N'Lion Taming', N'Tame a lion with a chair and whip', 5, N'must provide your own cat and chair, whip is provided. Will learn skills such as avoiding serious mauling by large felines. ', N'can substitute tiger if no lion available', 0)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (5, N'Nunchuck Safety', N'Trains safe practice in the use of Nunchucks', 8, N'Effective swinging so you don''t hit yourself and also look pretty cool', N'bring your own nun chuck, class may not be legal in your state', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (6, N'Clown Hacking', N'Specialized Hacking Field utilizing', 2, N'By using the latest clown technology, hack your way into any child''s birthday party', N'No responsibilty is taken by the college for your actions', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (8, N'Clown Computing', N'Utilizing current technology push the limit of Clown Computing', 4, N'Build on existing knowledge of electronic clowns', N'Please follow the first law of clownbotics', 0)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (1002, N'fwe', N'fwe', 3, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[Enrollments] ON 

INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (2, 5, 2, CAST(N'2020-11-10' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (3, 6, 4, CAST(N'2015-11-10' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (4, 7, 3, CAST(N'2018-10-11' AS Date))
SET IDENTITY_INSERT [dbo].[Enrollments] OFF
SET IDENTITY_INSERT [dbo].[ScheduledClasses] ON 

INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (1, 1, CAST(N'2021-01-07' AS Date), CAST(N'2021-05-30' AS Date), N'Pennywise', N'Derry, Maine', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (2, 2, CAST(N'2020-11-11' AS Date), CAST(N'2020-11-20' AS Date), N'VanGogh', N'France', 4)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (3, 3, CAST(N'2020-08-17' AS Date), CAST(N'2020-11-09' AS Date), N'Van Amburgh', N'Kansas City', 4)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (4, 4, CAST(N'2021-06-01' AS Date), CAST(N'2021-09-30' AS Date), N'Macarte', N'England', 1)
SET IDENTITY_INSERT [dbo].[ScheduledClasses] OFF
SET IDENTITY_INSERT [dbo].[ScheduledClassStatuses] ON 

INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (1, N'Active')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (2, N'Pending')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (3, N'Completed')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (4, N'Cancelled')
SET IDENTITY_INSERT [dbo].[ScheduledClassStatuses] OFF
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (5, N'Logan', N'Rothrock', N'CS', N'123 Holmes', N'Kansas City', N'MO', N'64110', N'1234564444', N'abc@me.com', N'9bd29581-aeb2-4b2e-bd2c-774d78b04bfd.jpg', 1)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (6, N'Elizabeth', N'Needham', N'nunchuck', N'456 River', N'Riva', N'IT', N'56482', N'111555444', N'Lizardbreath', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (7, N'Damian', N'Lentz', N'hacking', N'555 Treetop', N'Sesame Street', N'NY', N'45876', N'5559997777', N'DJlentz@blah.com', N'3dcfc41e-9087-4380-b125-57f428bc1e9e.jpg', 4)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (8, N'Mr ', N'Crabs', N'Extortion', N'212 Krusty Krab St', N'Bikini Bottom', N'HI', N'11209', N'0987654321', N'Krabss', NULL, 5)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (9, N'SpongeBob', N'Squarepants', N'Being Extorted', N'Pineapple', N'Bikini Bottom', N'HI', N'11210', N'5588449921', N'Sponge', NULL, 6)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (10, N'Indiana', N'Jones', N'Archaeology', N'Museum', N'London', N'OH', N'23078', N'1092489001', N'Jones@jones', NULL, 5)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (11, N'James', N'Bond', N'Espionage', N'MI5', N'London', N'OH', N'23088', N'2347893214', N'james@james.com', NULL, 1)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (12, N'Dee', N'Reed', N'Facepainting', N'1340 N oak', N'KC', N'MO', N'23098', N'2507891331', N'dee@facepaint.com', NULL, 1)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (13, N'Tom', N'Tompson', N'Clowning', N'123 N Cln St', N'ClownTown', N'CL', N'156784', N'123456789', N'tom@clownTown.com', N'b4b0b308-5d7d-4336-951d-13a323b9e846.jpg', 1)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (14, N'Bob', N'Bobby', N'Bobbin', N'asdfadf', N'BOBS', N'BO', N'757', N'757', N'bob@bob.com', N'd80d94bf-d41b-45ae-b63b-9e51c4b8f2d9.jpg', 3)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Major], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (15, N'Justin', N'Kennedy', N'Clowning', N'555 E River', N'Lionsville', N'Il', N'456789', N'7778889999', N'tame@lion.com', NULL, 1)
SET IDENTITY_INSERT [dbo].[Students] OFF
SET IDENTITY_INSERT [dbo].[StudentStatuses] ON 

INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (1, N'Prospect', N'	A student who has inquired about taking classes at the institution.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (2, N'Current Student', N'A student who is actively participating in classes.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (3, N'Former Student- Withdrawn', N'A student who has left the institution on their own accord. ')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (4, N'Former Student- Dismissed', N'A student who has left the institution at our request.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (5, N'Alumni', N'A student who has finished their coursework and left the institution.')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (6, N'Booted', N'This is what happens when you don''t go to class. ')
SET IDENTITY_INSERT [dbo].[StudentStatuses] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/12/2020 7:39:14 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND name = N'RoleNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 11/12/2020 7:39:14 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 11/12/2020 7:39:14 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 11/12/2020 7:39:14 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_RoleId')
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 11/12/2020 7:39:14 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/12/2020 7:39:14 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'UserNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Enrollments_ScheduledClasses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollments]'))
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_ScheduledClasses] FOREIGN KEY([ScheduledClassId])
REFERENCES [dbo].[ScheduledClasses] ([ScheduledClassId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Enrollments_ScheduledClasses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollments]'))
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_ScheduledClasses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Enrollments_Students]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollments]'))
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Enrollments_Students]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollments]'))
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_Students]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScheduledClasses_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]'))
ALTER TABLE [dbo].[ScheduledClasses]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledClasses_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScheduledClasses_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]'))
ALTER TABLE [dbo].[ScheduledClasses] CHECK CONSTRAINT [FK_ScheduledClasses_Courses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScheduledClasses_ScheduledClassStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]'))
ALTER TABLE [dbo].[ScheduledClasses]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledClasses_ScheduledClassStatuses] FOREIGN KEY([SCSID])
REFERENCES [dbo].[ScheduledClassStatuses] ([SCSID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ScheduledClasses_ScheduledClassStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]'))
ALTER TABLE [dbo].[ScheduledClasses] CHECK CONSTRAINT [FK_ScheduledClasses_ScheduledClassStatuses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Students_StudentStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Students]'))
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_StudentStatuses] FOREIGN KEY([SSID])
REFERENCES [dbo].[StudentStatuses] ([SSID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Students_StudentStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Students]'))
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_StudentStatuses]
GO
ALTER DATABASE [SAT] SET  READ_WRITE 
GO
