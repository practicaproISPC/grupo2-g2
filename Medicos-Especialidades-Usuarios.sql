USE [master]
GO
/****** Object:  Database [Medicos-HospitaErnestoRomagosa]    Script Date: 8/9/2021 17:36:27 ******/
CREATE DATABASE [Medicos-HospitaErnestoRomagosa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Medicos-HospitaErnerstoRomagosa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Medicos-HospitaErnerstoRomagosa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Medicos-HospitaErnerstoRomagosa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Medicos-HospitaErnerstoRomagosa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Medicos-HospitaErnestoRomagosa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET ARITHABORT OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET RECOVERY FULL 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET  MULTI_USER 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Medicos-HospitaErnestoRomagosa', N'ON'
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET QUERY_STORE = OFF
GO
USE [Medicos-HospitaErnestoRomagosa]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 8/9/2021 17:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[Id_Especialidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Especialidad] [varchar](50) NULL,
 CONSTRAINT [PK_Especialidades] PRIMARY KEY CLUSTERED 
(
	[Id_Especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 8/9/2021 17:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[Id_Medicos] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Matricula] [int] NULL,
	[Id_Especialidad] [int] NOT NULL,
 CONSTRAINT [PK_Medicos] PRIMARY KEY CLUSTERED 
(
	[Id_Medicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 8/9/2021 17:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id_Usuarios] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_Nombre] [varchar](50) NOT NULL,
	[Usuario_Contraseña] [varchar](50) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id_Usuarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Especialidades]  WITH CHECK ADD  CONSTRAINT [FK_Especialidades_Especialidades] FOREIGN KEY([Id_Especialidad])
REFERENCES [dbo].[Especialidades] ([Id_Especialidad])
GO
ALTER TABLE [dbo].[Especialidades] CHECK CONSTRAINT [FK_Especialidades_Especialidades]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Especialidades] FOREIGN KEY([Id_Especialidad])
REFERENCES [dbo].[Especialidades] ([Id_Especialidad])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Especialidades]
GO
/****** Object:  StoredProcedure [dbo].[AgregarEspecialidad]    Script Date: 8/9/2021 17:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarEspecialidad]
@NombreEsp varchar(50)
AS
INSERT into Especialidades
(Nombre_Especialidad)
Values
(@NombreEsp)
GO
/****** Object:  StoredProcedure [dbo].[AgregarMedicos]    Script Date: 8/9/2021 17:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarMedicos]
@NomMed varchar(50),
@ApellidoMed varchar(50),
@Matric int,
@especialid int
AS
INSERT into Medicos
(Nombre, Apellido,Matricula, Id_Especialidad)
VALUES
(@NomMed,@ApellidoMed,@Matric,@especialid)

GO
/****** Object:  StoredProcedure [dbo].[AgregarUsuario]    Script Date: 8/9/2021 17:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarUsuario]
@U_Nombre varchar(50),
@U_Contr varchar (50)
AS
INSERT INTO Usuarios
(Usuario_Nombre)
VALUES
(@U_Nombre)
GO
/****** Object:  StoredProcedure [dbo].[EliminarMedico]    Script Date: 8/9/2021 17:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarMedico]
@id_med int
AS
DELETE FROM Medicos
WHERE @id_med=Id_Medicos
GO
USE [master]
GO
ALTER DATABASE [Medicos-HospitaErnestoRomagosa] SET  READ_WRITE 
GO
