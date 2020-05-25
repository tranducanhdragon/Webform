USE [master]
GO
/****** Object:  Database [Blog]    Script Date: 5/25/2020 10:28:56 AM ******/
CREATE DATABASE [Blog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Blog', FILENAME = N'D:\SQLData\Blog.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Blog_log', FILENAME = N'D:\SQLLog\Blog_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Blog] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Blog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Blog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Blog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Blog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Blog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Blog] SET ARITHABORT OFF 
GO
ALTER DATABASE [Blog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Blog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Blog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Blog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Blog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Blog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Blog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Blog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Blog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Blog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Blog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Blog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Blog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Blog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Blog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Blog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Blog] SET  MULTI_USER 
GO
ALTER DATABASE [Blog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Blog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Blog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Blog] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Blog] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Blog]
GO
/****** Object:  Table [dbo].[BanTin]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanTin](
	[IDBanTin] [int] NOT NULL,
	[tenBanTin] [nvarchar](50) NULL,
 CONSTRAINT [PK_BanTin] PRIMARY KEY CLUSTERED 
(
	[IDBanTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTiet]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tieuDe] [nvarchar](200) NULL,
	[noiDung] [nvarchar](max) NULL,
	[lanXem] [int] NULL,
	[ngayDang] [datetime] NULL,
	[IDBanTin] [int] NULL,
 CONSTRAINT [PK_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[IDName] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[passWord] [nvarchar](50) NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[IDName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_BanTin] FOREIGN KEY([IDBanTin])
REFERENCES [dbo].[BanTin] ([IDBanTin])
GO
ALTER TABLE [dbo].[ChiTiet] CHECK CONSTRAINT [FK_ChiTiet_BanTin]
GO
/****** Object:  StoredProcedure [dbo].[BanTin_Delete]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_Delete](
	@IDBanTin int
)
as
begin
    delete from BanTin where IDBanTin = @IDBanTin
end
GO
/****** Object:  StoredProcedure [dbo].[BanTin_Insert]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_Insert](
    @noiDung nvarchar(50)
)
as
begin
    insert into BanTin(noiDung) values(@noiDung)
end
GO
/****** Object:  StoredProcedure [dbo].[BanTin_SelectAll]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_SelectAll]
as
begin
    select * from BanTin
end
GO
/****** Object:  StoredProcedure [dbo].[BanTin_SelectID]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_SelectID](
    @IDBanTin int
)
as
begin
    select * from BanTin where IDBanTin = @IDBanTin
end
GO
/****** Object:  StoredProcedure [dbo].[BanTin_Update]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BanTin_Update](
    @noiDung nvarchar(50),
	@IDBanTin int
)
as
begin
    update BanTin set noiDung = @noiDung where IDBanTin = @IDBanTin
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Delete]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_Delete](
    @ID int
)
as
begin
    delete from ChiTiet where ID = @ID
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Insert]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_Insert](
    @tieuDe nvarchar(200),
	@noiDung nvarchar(max),
	@ngayDang datetime,
	@IDBanTin int
)
as
begin
    insert into ChiTiet(tieuDe, noiDung, ngayDang, IDBanTin)
	values(@tieuDe, @noiDung, @ngayDang, @IDBanTin)
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectAll]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_SelectAll]
as
begin
    select * from ChiTiet
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectBanTin]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_SelectBanTin](
    @IDBanTin int
)
as
begin
    select * from ChiTiet where IDBanTin = @IDBanTin
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectHome]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChiTiet_SelectHome]
as
begin
    select top 5 * from ChiTiet order by ID desc
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectID]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChiTiet_SelectID](
    @ID int
)
as
begin
    select * from ChiTiet where ID = @ID
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Update]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_Update](
    @tieuDe nvarchar(200),
	@noiDung nvarchar(max),
	@ngayDang datetime,
	@ID int
)
as
begin
    update ChiTiet set tieuDe=@tieuDe, noiDung=@noiDung
	where ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_UpdateSLX]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTiet_UpdateSLX](
    @lanXem int,
	@ID int
)
as
begin
    update ChiTiet set lanXem=@lanXem
	where ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Insert]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangNhap_Insert](
    @userName nvarchar(50),
	@passWord nvarchar(50)
)
as
begin
    insert into DangNhap(userName, passWord) values(@userName, @passWord)
end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Search]    Script Date: 5/25/2020 10:28:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangNhap_Search](
    @userName nvarchar(50),
	@passWord nvarchar(50)
)
as
begin
    select * from DangNhap where userName=@userName and passWord=@passWord
end
GO
USE [master]
GO
ALTER DATABASE [Blog] SET  READ_WRITE 
GO
