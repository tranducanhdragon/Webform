/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [emdepvn]    Script Date: 5/4/2018 4:27:20 PM ******/
CREATE DATABASE [emdepvn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'emdepvn', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\emdepvn.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'emdepvn_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\emdepvn_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [emdepvn] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [emdepvn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [emdepvn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [emdepvn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [emdepvn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [emdepvn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [emdepvn] SET ARITHABORT OFF 
GO
ALTER DATABASE [emdepvn] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [emdepvn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [emdepvn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [emdepvn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [emdepvn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [emdepvn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [emdepvn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [emdepvn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [emdepvn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [emdepvn] SET  DISABLE_BROKER 
GO
ALTER DATABASE [emdepvn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [emdepvn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [emdepvn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [emdepvn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [emdepvn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [emdepvn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [emdepvn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [emdepvn] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [emdepvn] SET  MULTI_USER 
GO
ALTER DATABASE [emdepvn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [emdepvn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [emdepvn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [emdepvn] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [emdepvn] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'emdepvn', N'ON'
GO
ALTER DATABASE [emdepvn] SET QUERY_STORE = OFF
GO
USE [emdepvn]
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
USE [emdepvn]
GO
/****** Object:  Table [dbo].[db_ChatLieu]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChatLieu](
	[ChatLieuID] [int] IDENTITY(1,1) NOT NULL,
	[TenChatLieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[ChatLieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_ChiTietDonDatHang]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChiTietDonDatHang](
	[MaSP] [int] NOT NULL,
	[MaDonDatHang] [int] NOT NULL,
	[SoLuongDat] [int] NULL,
	[DonGiaDat] [float] NULL,
 CONSTRAINT [PK_db_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_ChiTietDonHang]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChiTietDonHang](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_db_ChiTietDonHang_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DangKy]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DangKy](
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NULL,
	[EmailDK] [varchar](50) NULL,
	[DiaChiDK] [nvarchar](100) NULL,
	[TenDayDu] [nvarchar](50) NULL,
	[CauHoiBaoMat] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinhDK] [nchar](10) NULL,
	[MaQuyen] [int] NULL,
 CONSTRAINT [PK_db_DangKy] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DanhMuc]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DanhMuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[MaDMCha] [int] NULL,
 CONSTRAINT [PK_db_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DanhMucTin]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DanhMucTin](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](100) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[MaDMCha] [int] NOT NULL,
 CONSTRAINT [PK_DanhMucTin] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DonDatHang]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DonDatHang](
	[MaDonDatHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[ThanhTienDH] [float] NULL,
	[TinhTrangDonHang] [nvarchar](300) NULL,
	[MaKH] [int] NULL,
	[TenKH] [nvarchar](50) NULL,
	[sdtKH] [varchar](15) NULL,
	[EmailKH] [varchar](50) NULL,
 CONSTRAINT [PK_db_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_HoaDon]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NULL,
	[ThanhTien] [float] NULL,
	[MaNV] [int] NULL,
	[TenNV] [nvarchar](70) NULL,
	[MaKH] [int] NULL,
	[TenKH] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_KhachHang]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKh] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](100) NULL,
	[sdtKH] [varchar](15) NULL,
	[EmailKH] [varchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_LuotDauGia]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_LuotDauGia](
	[MaLuotDG] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGianDG] [datetime] NULL,
	[GiaDuaRa] [float] NULL,
	[MaXacNhan] [nvarchar](100) NULL,
	[MaKH] [int] NULL,
	[MaPhienDG] [int] NULL,
 CONSTRAINT [PK_LuotDauGia] PRIMARY KEY CLUSTERED 
(
	[MaLuotDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Mau]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Mau](
	[MauID] [int] IDENTITY(1,1) NOT NULL,
	[TenMau] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_Mau] PRIMARY KEY CLUSTERED 
(
	[MauID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Menu]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Menu](
	[MaMenu] [int] IDENTITY(1,1) NOT NULL,
	[TenMenu] [nvarchar](50) NULL,
	[LienKet] [varchar](200) NULL,
	[MaMenuCha] [int] NULL,
	[ThuTuMenu] [int] NULL,
 CONSTRAINT [PK_db_Menu] PRIMARY KEY CLUSTERED 
(
	[MaMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_NhanVien]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](70) NULL,
	[GioiTinhNV] [nvarchar](10) NULL,
	[DiaChiNV] [nvarchar](100) NULL,
	[sdtNV] [varchar](15) NULL,
	[NgayVaoLam] [datetime] NULL,
 CONSTRAINT [PK_db_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_NhomQuangCao]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_NhomQuangCao](
	[NhomQuangCaoID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomQuangCao] [nvarchar](50) NULL,
	[ViTriQC] [nvarchar](30) NULL,
	[ThuTuNhomQC] [int] NULL,
	[AnhDaiDienQC] [nvarchar](100) NULL,
 CONSTRAINT [PK_db_NhomQuangCao] PRIMARY KEY CLUSTERED 
(
	[NhomQuangCaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_NhomSanPham]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_NhomSanPham](
	[NhomID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](100) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[SoSPHienThi] [int] NULL,
 CONSTRAINT [PK_db_NhomSanPham] PRIMARY KEY CLUSTERED 
(
	[NhomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_PhienDauGia]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_PhienDauGia](
	[MaPhienDG] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[MaSP] [int] NULL,
	[GiaDeXuat] [float] NULL,
 CONSTRAINT [PK_PhienDauGia] PRIMARY KEY CLUSTERED 
(
	[MaPhienDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_QuangCao]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_QuangCao](
	[QuangCaoID] [int] IDENTITY(1,1) NOT NULL,
	[TenQC] [nvarchar](50) NULL,
	[LoaiQC] [nvarchar](20) NULL,
	[AnhQC] [nvarchar](100) NULL,
	[LienKet] [nchar](100) NULL,
	[ThuTuQC] [int] NULL,
	[NhomQuangCaoID] [int] NULL,
 CONSTRAINT [PK_db_QuangCao] PRIMARY KEY CLUSTERED 
(
	[QuangCaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_QuyenDangNhap]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_QuyenDangNhap](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [varchar](10) NULL,
 CONSTRAINT [PK_db_QuyenDangNhap] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_SanPham]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[MauID] [int] NULL,
	[SizeID] [int] NULL,
	[ChatLieuID] [int] NULL,
	[AnhSP] [nvarchar](100) NULL,
	[SoLuongSP] [int] NULL,
	[GiaSP] [float] NULL,
	[MotaSP] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[NgayHuy] [datetime] NULL,
	[MaDM] [int] NULL,
	[NhomID] [int] NULL,
 CONSTRAINT [PK_db_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Size]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Size](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [varchar](10) NULL,
 CONSTRAINT [PK_db_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_TinTuc]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_TinTuc](
	[TinTucID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](200) NULL,
	[AnhDaiDien] [nvarchar](200) NULL,
	[MoTa] [nvarchar](200) NULL,
	[NgayDang] [datetime] NULL,
	[LuotXem] [int] NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[ThuTu] [int] NULL,
	[MaDM] [int] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[TinTucID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[db_ChatLieu] ON 

INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (1, N'Vải lon bóng')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (2, N'Thô')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (3, N'Da cá sấu chúa')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (4, N'Cotton')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (6, N'Thun')
SET IDENTITY_INSERT [dbo].[db_ChatLieu] OFF
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (10, 3, 1, 195000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (10, 4, 1, 195000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (10, 5, 1, 195000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (10, 8, 1, 195000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (11, 3, 1, 120000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (11, 5, 1, 120000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (12, 4, 1, 184000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (12, 7, 1, 184000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (12, 8, 2, 184000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (16, 6, 1, 65000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (17, 2, 1, 108000)
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'admin@gmail.com', N'Hà Nam', N'Quản Trị Viên', N'', CAST(N'2000-09-08' AS Date), N'Nam       ', 1)
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'HoaHam', N'e35cf7b66449df565f93c607d5a81d09', N'hoaxinh@gmail.com', N'Hà Nội', N'Nguyễn Văn Hòa', N'', CAST(N'1994-03-03' AS Date), N'Nữ        ', 1)
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'MaiDien', N'e10adc3949ba59abbe56e057f20f883e', N'maidien@gmail.com', N'Hà Nội', N'Nguyễn Thị Mai', N'', CAST(N'1994-07-14' AS Date), N'Nam       ', 1)
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'SimLe', N'e35cf7b66449df565f93c607d5a81d09', N'simxinh@gmail.com', N'Hà Nội', N'Lê Thị Sim', N'', CAST(N'1994-09-06' AS Date), N'Nam       ', 1)
SET IDENTITY_INSERT [dbo].[db_DanhMuc] ON 

INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (3, N'Đầm, Váy', N'damvay.jpg', 1, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (4, N'Áo nữ', N'aonu.jpg', 2, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (29, N'Quần nữ', N'quannu.png', 3, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (30, N'Quần áo thể thao nữ', N'quaaothethao.jpg', 4, 0)
SET IDENTITY_INSERT [dbo].[db_DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[db_DanhMucTin] ON 

INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (1, N'Tin thời trang', N'dmtin1.jpg', 1, 0)
INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (2, N'Làm đẹp', N'dmtin3.jpg', 2, 0)
INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (3, N'Tin về công ty', N'aonu.jpg', 3, 0)
SET IDENTITY_INSERT [dbo].[db_DanhMucTin] OFF
SET IDENTITY_INSERT [dbo].[db_DonDatHang] ON 

INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienDH], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (2, CAST(N'2017-01-05T10:17:44.000' AS DateTime), 108000, N'          ', 5, N'Hòa', N'0987654321', N'hoa@gmail.com')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienDH], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (3, CAST(N'2017-01-05T11:21:54.000' AS DateTime), 315000, N'Onepay    ', 4, N'Nguyễn Văn Hòa - test', N'0987654321', N'kythuat@tatthanh.com.vn')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienDH], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (4, CAST(N'2017-01-05T11:23:44.000' AS DateTime), 379000, N'Onepay    ', 4, N'Nguyễn Văn Hòa', N'0987654321', N'kythuat@tatthanh.com.vn')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienDH], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (5, CAST(N'2017-01-05T11:44:42.000' AS DateTime), 315000, N'1', 4, N'Nguyễn Văn Hòa', N'0987654321', N'kythuat@tatthanh.com.vn')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienDH], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (6, CAST(N'2017-01-05T11:50:37.000' AS DateTime), 65000, N'0', 4, N'Nguyễn Văn Hòa', N'0987654321', N'kythuat@tatthanh.com.vn')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienDH], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (7, CAST(N'2017-01-05T11:58:36.000' AS DateTime), 184000, N'1', 6, N'Hòa', N'123456', N'hoa@tatthanh.com.vn')
INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienDH], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (8, CAST(N'2017-01-14T22:57:15.000' AS DateTime), 563000, N'0', 4, N'Nguyễn Văn Hòa', N'0987654321', N'kythuat@tatthanh.com.vn')
SET IDENTITY_INSERT [dbo].[db_DonDatHang] OFF
SET IDENTITY_INSERT [dbo].[db_KhachHang] ON 

INSERT [dbo].[db_KhachHang] ([MaKH], [TenKh], [DiaChiKH], [sdtKH], [EmailKH], [MatKhau]) VALUES (1, N'Lê  Thị Sim', N'Hà Nam', N'0963290731', N'simxinh@gmail.com', NULL)
INSERT [dbo].[db_KhachHang] ([MaKH], [TenKh], [DiaChiKH], [sdtKH], [EmailKH], [MatKhau]) VALUES (2, N'Nguyễn Thị Mai', N'Nghệ An', N'0968541093', N'maidien@gmail.com', NULL)
INSERT [dbo].[db_KhachHang] ([MaKH], [TenKh], [DiaChiKH], [sdtKH], [EmailKH], [MatKhau]) VALUES (4, N'Nguyễn Văn Hòa', N'Hà Nội', N'0987654321', N'kythuat@tatthanh.com.vn', N'48e429981d690a1ccd9e041d6caafa25')
INSERT [dbo].[db_KhachHang] ([MaKH], [TenKh], [DiaChiKH], [sdtKH], [EmailKH], [MatKhau]) VALUES (5, N'Hòa', N'Hà Nội', N'0987654321', N'hoa@gmail.com', N'32ea2d163f02df14f7e01caca3fb9be5')
INSERT [dbo].[db_KhachHang] ([MaKH], [TenKh], [DiaChiKH], [sdtKH], [EmailKH], [MatKhau]) VALUES (6, N'Hòa', N'Hà Nội', N'123456', N'hoa@tatthanh.com.vn', N'8f143fd348f3665bf9c9478775bac3ab')
SET IDENTITY_INSERT [dbo].[db_KhachHang] OFF
SET IDENTITY_INSERT [dbo].[db_LuotDauGia] ON 

INSERT [dbo].[db_LuotDauGia] ([MaLuotDG], [ThoiGianDG], [GiaDuaRa], [MaXacNhan], [MaKH], [MaPhienDG]) VALUES (1, CAST(N'2017-01-09T06:16:00.000' AS DateTime), 20000, N'e8ee81257335ab459ef4421137aac2e3', 4, 1)
INSERT [dbo].[db_LuotDauGia] ([MaLuotDG], [ThoiGianDG], [GiaDuaRa], [MaXacNhan], [MaKH], [MaPhienDG]) VALUES (3, CAST(N'2017-01-12T21:46:25.000' AS DateTime), 13000, N'bb42b3e49a79622a8cca35570ce2d6bc', 4, 1)
SET IDENTITY_INSERT [dbo].[db_LuotDauGia] OFF
SET IDENTITY_INSERT [dbo].[db_Mau] ON 

INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (3, N'Xanh')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (4, N'Tím')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (5, N'Hồng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (6, N'Đỏ')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (7, N'Trắng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (8, N'Đen')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (9, N'Vàng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (10, N'Ghi')
SET IDENTITY_INSERT [dbo].[db_Mau] OFF
SET IDENTITY_INSERT [dbo].[db_Menu] ON 

INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (1, N'Trang chủ', N'/', 0, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (2, N'Sản phẩm', N'/Default.aspx?modul=SanPham', 0, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (3, N'Tin tức', N'/Default.aspx?modul=TinTuc', 0, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (4, N'Liên hệ', N'Default.aspx?modul=TinTuc&modulphu=ChiTietTinTuc&id=20', 0, 4)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (5, N'Tin công ty', N'', 3, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (6, N'Tin thế giới', N'', 3, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (7, N'Tin khuyến mại', N'', 3, 3)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (8, N'Áo', N'', 2, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (9, N'Quần', N'', 2, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (10, N'Chân váy', N'', 2, 0)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (11, N'Váy', N'', 2, 3)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (12, N'Liên hệ 1', N'', 4, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (13, N'Liên hệ 2', N'', 4, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (14, N'Kinh tế', N'', 6, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (15, N'Tài chính', N'', 6, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (16, N'Giới thiệu', N'Default.aspx?modul=TinTuc&modulphu=ChiTietTinTuc&id=18', 0, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (17, N'Thanh toán', N'Default.aspx?modul=TinTuc&modulphu=ChiTietTinTuc&id=19', 0, 6)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (18, N'Đấu giá ngược', N'/Default.aspx?modul=SanPham&modulphu=DauGia', 0, 3)
SET IDENTITY_INSERT [dbo].[db_Menu] OFF
SET IDENTITY_INSERT [dbo].[db_NhomQuangCao] ON 

INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (1, N'Logo ', N'logo', 1, N'logoweb.png')
INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (2, N'Banner', N'banner', 2, N'bannerweb.png')
INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (5, N'Slide trang chủ', N'slide', 3, N'')
SET IDENTITY_INSERT [dbo].[db_NhomQuangCao] OFF
SET IDENTITY_INSERT [dbo].[db_NhomSanPham] ON 

INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (1, N'Hàng mới về', N'sp8.jpg', 1, 3)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (3, N'Sản phẩm mua nhiều nhất', N'3.jpg', 3, 3)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (4, N'Hàng giảm giá', N'aonu.jpg', 4, 3)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (5, N'Hàng Hot tháng 10', N'quaaothethao.jpg', 5, 3)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (6, N'Siêu phẩm hot nhất cho phái đẹp', N'2.jpg', 2, 3)
SET IDENTITY_INSERT [dbo].[db_NhomSanPham] OFF
SET IDENTITY_INSERT [dbo].[db_PhienDauGia] ON 

INSERT [dbo].[db_PhienDauGia] ([MaPhienDG], [ThoiGianBatDau], [ThoiGianKetThuc], [MaSP], [GiaDeXuat]) VALUES (1, CAST(N'2017-01-09T05:09:52.000' AS DateTime), CAST(N'2017-01-14T05:09:52.000' AS DateTime), 12, 184000)
SET IDENTITY_INSERT [dbo].[db_PhienDauGia] OFF
SET IDENTITY_INSERT [dbo].[db_QuangCao] ON 

INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (7, N'Logo web', N'', N'logoweb.png', N'/                                                                                                   ', 1, 1)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (8, N'Banner web', N'', N'bannerweb.png', N'                                                                                                    ', 1, 2)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (9, N'Slide 1', N'', N'slide1.jpg', N'                                                                                                    ', 1, 5)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (10, N'Slide 2', N'', N'slide2.jpg', N'                                                                                                    ', 2, 5)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (11, N'Slide 3', N'', N'slide3.jpg', N'                                                                                                    ', 3, 5)
SET IDENTITY_INSERT [dbo].[db_QuangCao] OFF
SET IDENTITY_INSERT [dbo].[db_QuyenDangNhap] ON 

INSERT [dbo].[db_QuyenDangNhap] ([MaQuyen], [TenQuyen]) VALUES (1, N'QuanTri')
SET IDENTITY_INSERT [dbo].[db_QuyenDangNhap] OFF
SET IDENTITY_INSERT [dbo].[db_SanPham] ON 

INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (10, N'ĐẦM JEAN CỔ TRỤ - MH137', 3, 1, 2, N'sp1.jpg', 10, 195000, N'<div>
	ĐẦM JEAN MỔ TRỤ 2 T&Uacute;I</div>
<div>
	&nbsp;</div>
<div>
	Kiểu d&aacute;ng: đầm su&ocirc;ng, tay ngắn, mổ trụ cổ, 2 t&uacute;i, phối cầu vai&nbsp;</div>
<div>
	M&agrave;u sắc: xanh&nbsp;</div>
<div>
	Chất liệu: jean wax mềm&nbsp;</div>
<div>
	K&iacute;ch thước: S,M<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="ĐẦM JEAN CỔ TRỤ 2" src="https://media3.scdn.vn/img1/2016/5_26/dam-jean-co-tru-1m4G3-04d212_simg_d0daf0_800x1200_max.jpg" /></div>
<div style="text-align: center;">
	<img alt="ĐẦM JEAN CỔ TRỤ 3" src="https://media3.scdn.vn/img1/2016/6_19/dam-jean-co-tru-1m4G3-LOBs2B_simg_d0daf0_800x1200_max.jpg" /><br />
	<br />
	<img alt="ĐẦM JEAN CỔ TRỤ 4" src="https://media3.scdn.vn/img1/2016/6_19/dam-jean-co-tru-1m4G3-7s3fMy_simg_d0daf0_800x1200_max.jpg" /><br />
	<br />
	<img alt="ĐẦM JEAN CỔ TRỤ 5" src="https://media3.scdn.vn/img1/2016/6_19/dam-jean-co-tru-1m4G3-laDeaI_simg_d0daf0_800x1200_max.jpg" /></div>
', CAST(N'2016-10-09T10:11:42.000' AS DateTime), CAST(N'2016-10-09T10:11:42.000' AS DateTime), 3, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (11, N'ĐẦM SUÔNG ĐUÔI CÁ - MH101', 9, 2, 1, N'sp2.jpg', 15, 120000, N'<p>
	ĐẦM SU&Ocirc;NG ĐU&Ocirc;I C&Aacute;</p>
<p>
	Chất liệu : C&aacute;t H&agrave;n Mịn M&aacute;t,Vải C&oacute; Độ Co Gi&atilde;n<br />
	- M&agrave;u sắc : Đen<br />
	- K&iacute;ch thước : Size S,M</p>
<p>
	&nbsp;</p>
<p>
	&quot;SHOP TẠM HẾT M&Agrave;U CAM&nbsp;ĐẤT C&Ograve;N M&Agrave;U&nbsp;ĐEN MONG KH&Aacute;CH TH&Ocirc;NG CẢM&quot;</p>
<p>
	&nbsp;</p>
<ul>
	<li>
		Đặt H&agrave;ng Sẽ C&oacute; Nh&acirc;n Vi&ecirc;n gọi điện tư vấn &quot; &nbsp;0984324691</li>
</ul>
<p style="text-align: center;">
	<img alt="ĐẦM SUÔNG ĐUÔI CÁ 3" src="https://media3.scdn.vn/img1/2016/7_23/dam-suong-duoi-ca-1m4G3-Voevct_simg_d0daf0_800x1200_max.jpg" /></p>
<p>
	&nbsp;</p>
<p style="text-align: center;">
	<img alt="ĐẦM SUÔNG ĐUÔI CÁ 4" src="https://media3.scdn.vn/img1/2016/8_8/dam-suong-duoi-ca-1m4G3-ILRTiq_simg_d0daf0_800x1200_max.jpg" /></p>
', CAST(N'2016-10-09T10:13:55.000' AS DateTime), CAST(N'2016-10-09T10:13:55.000' AS DateTime), 3, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (12, N'ĐẦM PASTEL HAI LỚP THỜI TRANG TH08557-GS140 - TH08557', 5, 3, 2, N'sp3.jpg', 10, 184000, N'<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; font-family: &quot;courier new&quot;, courier; background: transparent;">- Chất liệu : VOAN</span></p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	&nbsp;</p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; font-family: &quot;courier new&quot;, courier; background: transparent;">- Năm sản xuất : 2016</span></p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	&nbsp;</p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; font-family: &quot;courier new&quot;, courier; background: transparent;">- Xuất xứ : Việt nam&nbsp;</span></p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	&nbsp;</p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; font-family: &quot;courier new&quot;, courier; background: transparent;">- M&agrave;u sắc : đỏ , đen , hồng như h&igrave;nh</span></p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	&nbsp;</p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; font-family: &quot;courier new&quot;, courier; background: transparent;">- K&iacute;ch thước : freesize từ 43-55kg , vai đầm 36 ngực 88 , d&agrave;i 120cm</span><br />
	&nbsp;</p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	&nbsp;</p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; font-family: &quot;courier new&quot;, courier; color: rgb(0, 0, 255); background: transparent;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; background: transparent;">CAM KẾT VỀ SẢN PHẨM :</strong></span></p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	&nbsp;</p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; font-family: &quot;courier new&quot;, courier; background: transparent;">- Đ&uacute;ng kiểu mẫu - Đ&uacute;ng m&agrave;u sắc - Đ&uacute;ng k&iacute;ch thước 95-100%</span></p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	&nbsp;</p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; font-family: &quot;courier new&quot;, courier; background: transparent;">- Chất liệu voan cao cấp , ph&ugrave; hợp với b&eacute; theo mọi m&ugrave;a</span></p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	&nbsp;</p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; font-family: &quot;courier new&quot;, courier; background: transparent;">- Mẫu &aacute;o mới nhất 2016 ,kiểu d&aacute;ng nhẹ nh&agrave;ng bắt mắt , sang trọng tinh tế .&nbsp;</span></p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<br />
	&nbsp;</p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; box-sizing: border-box; vertical-align: baseline; font-family: &quot;courier new&quot;, courier; background: transparent;">- H&agrave;ng may uy t&iacute;n theo mẫu chuẩn 100%&nbsp;</span></p>
<p style="font-size: medium; margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; box-sizing: border-box; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
	&nbsp;</p>
<p>
	<br style="font-size: medium; color: rgb(51, 51, 51); font-family: Arial, MyriadPro, Tahoma; line-height: 18px;" />
	<img alt="ĐẦM PASTEL HAI LỚP THỜI TRANG TH08557-GS140 2" src="https://media3.scdn.vn/img2/2016/9_9/dam-pastel-hai-lop-thoi-trang-th08557-gs140-1m4G3-PwNV9O.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; border-collapse: collapse; max-width: 720px; color: rgb(51, 51, 51); line-height: 18px; text-align: center; font-family: arial, sans-serif; width: 551px; height: 550px; background-color: transparent;" /></p>
', CAST(N'2016-10-09T15:05:20.000' AS DateTime), CAST(N'2016-10-09T15:05:20.000' AS DateTime), 3, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (13, N'ĐẦM XÔ SUÔNG KHOÉT VAI CAO CẤP - DSS7391', 9, 2, 4, N'sp4.jpg', 20, 355000, N'<div class="tab-product-detail cont-tab-detail-prod_ cont-tab-detail_ active">
	<div class="tab-product-detail" id="tab-product-detail">
		<p>
			C&aacute;c bạn mua h&agrave;ng call hoặc nt v&agrave;o sdt cho shop sẽ nhanh hơn comment hoặc ib ở fb<br />
			⚠⚠⚠c&aacute;c bạn check kỹ h&agrave;ng trước khi order nha<br />
			⚠⚠⚠h&agrave;ng mua rồi miễn đổi trả lại ( chỉ đổi h&agrave;ng lỗi )<br />
			⚠⚠⚠chỉ nhận ship khi chắc chắn lấy, ko ship để xem h&agrave;ng, ko ship để thử h&agrave;ng, kh&aacute;ch muốn xem trực tiếp gh&eacute; shop xem h&agrave;ng, h&agrave;ng đ&atilde; ship đi ko nhận đổi trả với l&yacute; do ko th&iacute;ch, ko vừa,...<br />
			❤❤❤thank kh&aacute;ch iu đ&atilde; ủng hộ shop</p>
		<p>
			<img alt="ĐẦM XÔ SUÔNG KHOÉT VAI CAO CẤP 1" src="https://media3.scdn.vn/img2/2016/10_4/dam-xo-suong-khoet-vai-cao-cap-1m4G3-c1QVG1_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /><br />
			&nbsp;</p>
		<p>
			<img alt="ĐẦM XÔ SUÔNG KHOÉT VAI CAO CẤP 2" src="https://media3.scdn.vn/img2/2016/10_4/dam-xo-suong-khoet-vai-cao-cap-1m4G3-Fhkbx1_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /><br />
			&nbsp;</p>
	</div>
</div>
<br />
', CAST(N'2016-10-09T15:14:17.000' AS DateTime), CAST(N'2016-10-09T15:14:17.000' AS DateTime), 3, 3)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (14, N'ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 - 08356', 5, 3, 4, N'sp5.jpg', 30, 104000, N'<p>
	<span style="color: rgb(51, 51, 51); font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;">T&ecirc;n sp:&nbsp;</span><a href="https://www.sendo.vn/san-pham/dam-body-phoi-day-keo-ruby-th08356-3563548/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(0, 114, 188); text-decoration: none; font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;">Đ</a><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; widows: 1; font-family: arial, sans-serif;"><a href="https://www.sendo.vn/san-pham/dam-body-phoi-day-keo-ruby-th08356-3563548/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(0, 114, 188); text-decoration: none;">&Acirc;M BODY PHỐI D&Acirc;Y K&Eacute;O RUBY</a>-TH08356</span></p>
<p>
	<br />
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; widows: 1; font-family: arial, sans-serif;">Chất liệu:&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; widows: 1; font-family: arial, sans-serif;">thun g&acirc;n co giản tốt tạo cảm gi&aacute;c tho&aacute;i m&aacute;i khi mặc<br />
	<br />
	M&agrave;u sắc: Đ</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; widows: 1; font-family: arial, sans-serif;">en , Hồng Sen , Xanh b&iacute;ch , Xanh đen<br />
	<br />
	K&iacute;ch thước: Free Size&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; widows: 1; font-family: arial, sans-serif;">&nbsp;D&agrave;i: 82 cm<br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 1" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-Hbd1be.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; max-width: 720px; width: 551px; height: 550px;" /></span><br style="color: rgb(51, 51, 51); font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;" />
	<br style="color: rgb(51, 51, 51); font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;" />
	<a href="https://www.sendo.vn/san-pham/dam-body-phoi-day-keo-ruby-th08356-3563548/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(0, 114, 188); text-decoration: none; font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;">Đ<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; font-family: arial, sans-serif;">&Acirc;M BODY PHỐI D&Acirc;Y K&Eacute;O RUBY</span></a><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);">&nbsp;l&agrave; đặc quyền ri&ecirc;ng m&agrave; thời trang d&agrave;nh ri&ecirc;ng cho phụ nữ. Đ&acirc;y cũng được xem l&agrave; ch&igrave;a kho&aacute; quan trọng để c&aacute;c c&ocirc; g&aacute;i l&agrave;m đẹp. Nếu c&aacute;c n&agrave;ng cảm thấy qu&aacute; kh&ocirc; khan với &aacute;o thun v&agrave; quần jeans hằng ng&agrave;y, th&igrave; h&atilde;y t&igrave;m đến những chiếc&nbsp;</span><a href="https://www.sendo.vn/san-pham/dam-body-phoi-day-keo-ruby-th08356-3563548/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(0, 114, 188); text-decoration: none; font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;">Đ<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; font-family: arial, sans-serif;">&Acirc;M BODY PHỐI D&Acirc;Y K&Eacute;O RUBY</span></a><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);">. Khi bạn g&aacute;i kho&aacute;c l&ecirc;n m&igrave;nh chiếc&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse;">đầm</strong></strong><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);">&nbsp;th&igrave; h&atilde;y tự nhi&ecirc;n cảm thấy m&igrave;nh s&agrave;nh điệu v&agrave; dịu d&agrave;ng hẳn l&ecirc;n. Kh&ocirc;ng biết đ&oacute; c&oacute; phải l&agrave; do ảo gi&aacute;c hay kh&ocirc;ng nhưng ai cũng c&ocirc;ng nhận một điều rằng chiếc&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse;">đầm</strong></strong><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);">&nbsp;c&oacute; uy lực v&ocirc; c&ugrave;ng. Ch&uacute;ng biến một c&ocirc; n&agrave;ng c&aacute; t&iacute;nh mạnh mẽ cũng phải trở n&ecirc;n nhẹ nh&agrave;ng, quyến rũ hơn hẳn ng&agrave;y thường.<br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 2" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-giENwc.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 807px; height: 1062px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 3" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-I53ABQ.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 795px; height: 1062px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 4" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-TRvv1k.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 795px; height: 1062px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 5" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-U2Iyuh.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 795px; height: 1062px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 6" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-FWtSj6.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 801px; height: 1144px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 7" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-Deqk2n.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 900px; height: 734px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 8" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-Iyx42A.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 789px; height: 1060px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 9" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-EWNyoH.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 819px; height: 1156px;" /></span></p>
', CAST(N'2016-10-09T15:16:36.000' AS DateTime), CAST(N'2016-10-09T15:16:36.000' AS DateTime), 3, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (15, N'Đầm bi trễ vai - DS133 - DS133', 3, 5, 4, N'sp6.jpg', 20, 229000, N'<p>
	Cam kết sản phẩm đ&uacute;ng h&igrave;nh 100%.</p>
<p>
	Đổi trả khi kh&ocirc;ng h&agrave;i l&ograve;ng về sản phẩm.</p>
<p style="text-align: center;">
	<img alt="Đầm bi trễ vai - DS133 1" src="https://media3.scdn.vn/img2/2016/9_8/dam-bi-tre-vai-ds133-1m4G3-UqPh9K_simg_d0daf0_800x1200_max.jpg" /></p>
', CAST(N'2016-10-09T15:18:35.000' AS DateTime), CAST(N'2016-10-09T15:18:35.000' AS DateTime), 3, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (16, N'Áo thun nữ - AT424 - AT424', 10, 6, 4, N'sp7.jpg', 30, 65000, N'Cam kết sản phẩm đ&uacute;ng h&igrave;nh 100%.<br />
Đổi trả khi kh&ocirc;ng h&agrave;i l&ograve;ng về sản phẩm.<br />
<br />
<img alt="Áo thun nữ - AT424 1" src="https://media3.scdn.vn/img2/2016/8_31/ao-thun-nu-at424-1m4G3-4v0Mhn_simg_d0daf0_800x1200_max.jpg" /><br />
', CAST(N'2016-10-09T15:20:02.000' AS DateTime), CAST(N'2016-10-09T15:20:02.000' AS DateTime), 4, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (17, N'Áo Sơ Mi Tay Chấm Bi NAZA NA10001 - NA10001', 7, 3, 4, N'sp8.jpg', 5, 108000, N'<p style="color: rgb(51, 51, 51);">
	<span style="font-size: medium;"><strong style="color: rgb(0, 0, 0);">M&ocirc; tả về sản phẩm:</strong></span></p>
<p style="color: rgb(51, 51, 51);">
	<span style="font-size: medium;">Vải cao cấp ,chất mềm mại, hợp thời trang,</span><span style="font-size: medium;">Đường may chắc chắn ,đẹp ,bền ,sắc xảo.</span><span style="font-size: medium;">Kiểu d&aacute;ng mới lạ, sang trọng,<span style="color: rgb(0, 0, 0);">dễ phối đồ c&ocirc;ng sở ch&acirc;n v&aacute;y hay quần &acirc;u</span></span></p>
<p style="color: rgb(51, 51, 51);">
	<span style="font-size: medium;">Th&iacute;ch hợp đi chơi ,sự kiện , dạo phố...</span></p>
<p>
	<span style="font-size: medium;"><strong>Th&ocirc;ng tin chi tiết</strong></span></p>
<p>
	<span style="font-size: medium;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T&ecirc;n sản phẩm:<strong>&nbsp;&Aacute;o Sơ Mi Tay Chấm Bi h&agrave;ng thiết kế</strong></span></p>
<p>
	<span style="font-size: medium;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M&atilde; sản phẩm:&nbsp;<strong>NA10001</strong></span></p>
<p>
	<span style="font-size: medium;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chất liệu ch&iacute;nh: Lụa tơ tằm</span></p>
<p>
	<span style="font-size: medium;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M&agrave;u sắc thực sản phẩm: <b>Trắng chấm bi đen</b></span></p>
<p>
	<span style="font-size: medium;"><strong>Chi tiết k&iacute;ch thước sản phầm</strong></span></p>
<p>
	<span style="font-size: 12pt;">&nbsp;- Size S: Từ 40-45kg</span></p>
<p>
	<span style="font-size: 12pt;">&nbsp;- Size M: 46-54k</span></p>
<p>
	<span style="font-size: 12pt;">&nbsp;- SizeL: 55-58kg</span></p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="font-size: 12pt;"><img alt="Áo Sơ Mi Tay Chấm Bi NAZA NA10001 1" src="https://media3.scdn.vn/img2/2016/9_16/ao-so-mi-tay-cham-bi-naza-na10001-1m4G3-BwChkf_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /><br />
	<br />
	<img alt="Áo Sơ Mi Tay Chấm Bi NAZA NA10001 2" src="https://media3.scdn.vn/img2/2016/9_16/ao-so-mi-tay-cham-bi-naza-na10001-1m4G3-yEzaCr_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /></span></p>
', CAST(N'2016-10-09T15:21:22.000' AS DateTime), CAST(N'2016-10-09T15:21:22.000' AS DateTime), 4, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (18, N'ÁO DÂY LEN CAO CẤP - AL792', 3, 4, 4, N'sp9.jpg', 9, 255000, N'<p>
	LUU Y : AO LEN CO MAU SỌC XANH BIỂN , MAU HỒNG PHẤN , SOC X&Aacute;M , KHACH CHON MAU NAO GHI CHU DE SHOP BIET</p>
<p>
	<img alt="ÁO DÂY LEN CAO CẤP 1" src="https://media3.scdn.vn/img2/2016/10_4/ao-day-len-cao-cap-1m4G3-yLhhMf_simg_d0daf0_800x1200_max.jpg" /></p>
', CAST(N'2016-10-09T15:22:15.000' AS DateTime), CAST(N'2016-10-09T15:22:15.000' AS DateTime), 4, 3)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (19, N'Áo thun nữ in mèo túi giả - A-439', 8, 4, 1, N'sp10.jpg', 9, 72000, N'<p>
	<span style="font-size: large;"><strong>Chất liệu: thun co&nbsp;gi&atilde;n&nbsp;4c, kh&ocirc;ng x&ugrave; l&ocirc;ng, co gi&atilde;n tốt..</strong></span></p>
<p>
	<span style="font-size: large;"><strong>Size: S M</strong></span></p>
<p>
	<span style="font-size: large;"><strong>Zalo, Viber:&nbsp;<span style="color: #ff0000;">0963.74.24.64</span>&nbsp;( zalo page&nbsp;</strong><strong style="font-family: arial, helvetica, sans-serif;">&nbsp;<a href="https://ban.sendo.vn/product">http://page.zaloapp.com/manage/feed</a></strong><strong>&nbsp;)</strong></span></p>
<p>
	<span style="font-size: large;"><strong>Web:</strong></span><a href="https://ban.sendo.vn/product" style="font-family: arial, helvetica, sans-serif; font-size: large;">http://www.bosiaothunteen.com/</a></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: large; color: #ff0000;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size: xx-large;">HỖ TRỢ ĐẶT H&Agrave;NG</span></strong></span></p>
<p>
	<span style="font-size: large; color: #ff0000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #000080;">&nbsp;Khi gặp kh&oacute; khăn về vấn đề đặt h&agrave;ng vui l&ograve;ng gọi hoặc nhắn tin số Hotline:&nbsp;<strong><span style="color: #ff0000;">0907692334</span></strong></span></span></p>
<p>
	<img alt="Áo thun nữ in mèo túi giả 1" src="https://media3.scdn.vn/img1/2016/8_10/ao-thun-nu-in-meo-tui-gia-1m4G3-8xF6T9_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /><br />
	<br />
	<img alt="Áo thun nữ in mèo túi giả 2" src="https://media3.scdn.vn/img1/2016/8_10/ao-thun-nu-in-meo-tui-gia-1m4G3-z4tCjE_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /></p>
', CAST(N'2016-10-09T15:23:36.000' AS DateTime), CAST(N'2016-10-09T15:23:36.000' AS DateTime), 4, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (20, N'Áo thun cặp siêu xinh - ATT-2844', 7, 3, 4, N'sp11.jpg', 9, 52000, N'<p>
	<strong style="font-size: large;">Chất liệu: thun cotton 4c,kh&ocirc;ng&nbsp;</strong><strong style="font-size: large;">x&ugrave; l&ocirc;ng, thấm h&uacute;t mồ h&ocirc;i...</strong></p>
<p>
	<strong style="font-size: large;">M&agrave;u sắc: &nbsp;như h&igrave;nh</strong></p>
<p>
	<span style="font-size: large;"><strong>Size: S M L</strong></span></p>
<p>
	<span style="font-size: large;"><strong>Zalo, Viber:&nbsp;<span style="color: rgb(255, 0, 0);">0963.74.24.64</span>&nbsp;( zalo page&nbsp;</strong><strong style="font-family: arial, helvetica, sans-serif;">&nbsp;<a href="https://ban.sendo.vn/product">http://page.zaloapp.com/manage/feed</a></strong><strong>&nbsp;)</strong></span></p>
<p>
	<span style="font-size: large;"><strong>Web:</strong></span><a href="https://ban.sendo.vn/product" style="font-family: arial, helvetica, sans-serif; font-size: large;">https://www.sendo.vn/shop/bosiaothunteen/</a></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: large; color: rgb(255, 0, 0);"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size: xx-large;">HỖ TRỢ ĐẶT H&Agrave;NG</span></strong></span></p>
<p>
	<span style="font-size: large; color: rgb(255, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: rgb(0, 0, 128);">&nbsp;Khi gặp kh&oacute; khăn về vấn đề đặt h&agrave;ng vui l&ograve;ng gọi hoặc nhắn tin số Hotline:&nbsp;<strong><span style="color: rgb(255, 0, 0);">0907692334</span></strong></span></span></p>
<p>
	<img alt="Áo thun cặp siêu xinh 1" src="https://media3.scdn.vn/img1/2016/8_10/ao-thun-cap-sieu-xinh-1m4G3-DMemQw_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /></p>
', CAST(N'2016-10-09T15:24:32.000' AS DateTime), CAST(N'2016-10-09T15:24:32.000' AS DateTime), 4, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (21, N'Hàng loại 1 - Áo sơ mi ms955 - ms955', 4, 3, 2, N'sp12.jpg', 8, 149000, N'<h6 style="margin: 0px; padding: 0px 0px 5px; outline: 0px; border: 0px currentcolor; color: #111111; line-height: 1em; font-family: verdana; font-size: 22px; font-weight: 300; vertical-align: baseline; box-sizing: border-box;">
	<strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #000000; line-height: 15px; font-family: Verdana, Arial, Helvetica, sans-serif; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">- Xuất Xứ:&nbsp;</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #000000; line-height: 15px; font-family: Verdana, Arial, Helvetica, sans-serif; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">Việt nam</em></span></span></em></span></strong></h6>
<ul style="color: rgb(0, 0, 0); font-size: 14px; line-height: 19.6px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; list-style: none; margin: 0px 0px 10px; padding-right: 0px; padding-left: 0px; box-sizing: border-box; font-stretch: normal;">
	<li style="box-sizing: border-box;">
		<strong style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #111111; line-height: 22px; font-family: verdana; font-size: 22px; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #000000; line-height: 15px; font-family: Verdana, Arial, Helvetica, sans-serif; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">- Kiểu d&aacute;ng:&nbsp;</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #000000; line-height: 15px; font-family: Verdana, Arial, Helvetica, sans-serif; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">Như h&igrave;nh</em></span></span></em></span></strong></li>
	<li style="box-sizing: border-box;">
		<strong style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: normal; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">- Chất liệu:&nbsp;</span></em></span></strong><strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">C&aacute;t nhật&nbsp;loại 1, v</span></span></em></span></strong><strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">ải mềm mịn, tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt</span></span></em></span></strong></li>
	<li style="box-sizing: border-box;">
		<strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">-&nbsp;</em></span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">M&agrave;u sắc</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">:</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">&nbsp;t&iacute;m, hồng(như h&igrave;nh)</em></span></span></em></span></strong></li>
	<li style="box-sizing: border-box;">
		<strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">-&nbsp;</em></span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">Cam kết&nbsp;</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">:&nbsp;</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">đường may đẹp, chắc chắn. H&agrave;ng cao cấp chuy&ecirc;n bỏ sỉ cho shop,&nbsp;<span style="margin: 0px; padding: 0px; border: 0px currentcolor; text-decoration: underline; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #ff6600; box-sizing: border-box;">KH&Ocirc;NG&nbsp;</span></span>phải h&agrave;ng chợ</em></span></span></em></span></strong></li>
</ul>
<h6 style="margin: 0px; padding: 0px 0px 5px; outline: 0px; border: 0px currentColor; color: #111111; line-height: 1em; font-family: verdana; font-size: 22px; font-weight: 300; vertical-align: baseline; box-sizing: border-box;">
	&nbsp;</h6>
<ul style="color: rgb(0, 0, 0); font-size: 14px; line-height: 19.6px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; list-style: none; margin: 0px 0px 10px; padding-right: 0px; padding-left: 0px; box-sizing: border-box; font-stretch: normal;">
	<li style="box-sizing: border-box;">
		<ul style="list-style: none; margin: 0px 0px 10px; padding-right: 0px; padding-left: 0px; border: 0px currentcolor; color: rgb(51, 51, 51); line-height: 19.6px; box-sizing: border-box;">
			<li style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">
				&nbsp;</li>
			<li style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">
				<span style="color: #ff6600; font-family: ''times new roman'', times; font-size: medium;"><strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;">Thanh to&aacute;n tiền mặt khi nhận h&agrave;ng, được kiểm tra h&agrave;ng trước khi nhận, nếu kh&ocirc;ng vừa &yacute; th&igrave; c&oacute; quyền từ chối kh&ocirc;ng nhận h&agrave;ng v&agrave; kh&ocirc;ng phải trả bất kỳ chi ph&iacute; n&agrave;o</em></strong></span></li>
		</ul>
	</li>
</ul>
<h6 style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: 10px; box-sizing: border-box;">
	&nbsp;</h6>
<h6 style="margin: 0px; padding: 0px 0px 5px; outline: 0px; border: 0px currentColor; color: #111111; line-height: 1em; font-family: verdana; font-size: 22px; font-weight: 300; vertical-align: baseline; box-sizing: border-box;">
	&nbsp;</h6>
<ul style="color: rgb(0, 0, 0); list-style: none; margin: 0px 0px 10px; padding-right: 0px; padding-left: 0px; line-height: 19.6px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; box-sizing: border-box;">
	<li>
		<ul style="list-style: none; margin: 0px 0px 10px; padding-right: 0px; padding-left: 0px; border: 0px currentcolor; color: rgb(51, 51, 51); line-height: 19.6px; box-sizing: border-box;">
			<li style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">
				<br />
				<strong><span style="color: #000000;"><span style="font-family: ''Times New Roman'', serif;"><span style="font-size: 15pt;"><span style="font-weight: normal;"><strong style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 19.6px;"><em style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;"><img alt="Hàng loại 1 - Áo sơ mi ms955 1" src="https://media3.scdn.vn/img1/2016/8_8/hang-loai-1-ao-so-mi-ms955-1m4G3-zoyLp2_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /><br />
				<br />
				<img alt="Hàng loại 1 - Áo sơ mi ms955 2" src="https://media3.scdn.vn/img1/2016/8_8/hang-loai-1-ao-so-mi-ms955-1m4G3-Oaxz4s_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /></em></strong></span></span></span></span></strong></li>
		</ul>
	</li>
</ul>
', CAST(N'2016-10-09T15:25:18.000' AS DateTime), CAST(N'2016-10-09T15:25:18.000' AS DateTime), 4, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (22, N'Quần nữ Navi thời trang co dãn cực đẹp - skin102', 3, 3, 2, N'sp13.jpg', 5, 120000, N'<p style="font-size: 11px;">
	<span style="font-size: small;"><a href="https://www.sendo.vn/quan-skinny.htm">Quần skinny</a> form chuẩn &ocirc;m d&aacute;ng, chất liệu co gi&atilde;n. Quần c&oacute; cấu tr&uacute;c si&ecirc;u đ&agrave;n hồi, chống trầy xước. Quần skinny được may từ chất liệu cao cấp, co gi&atilde;n tốt n&ecirc;n c&aacute;c bạn g&aacute;i sẽ cảm thấy lu&ocirc;n thoải m&aacute;i, c&oacute; nhiều m&agrave;u sắc cho c&aacute;c bạn lựa chọn</span><br />
	<br />
	<span style="font-size: small; font-family: arial, helvetica, sans-serif;">Quần skinny form chuẩn &ocirc;m d&aacute;ng, chất liệu co gi&atilde;n. Quần c&oacute; cấu tr&uacute;c si&ecirc;u đ&agrave;n hồi, chống trầy xước. Quần skinny được may từ chất liệu cao cấp, co gi&atilde;n tốt n&ecirc;n c&aacute;c bạn g&aacute;i sẽ cảm thấy lu&ocirc;n thoải m&aacute;i, c&oacute; nhiều m&agrave;u sắc cho c&aacute;c bạn lựa chọn</span></p>
<p>
	<span style="font-size: small; font-family: arial, helvetica, sans-serif;">Size : S, M, L tương đương 27, 28, 29</span></p>
<p>
	<span style="font-size: small; font-family: arial, helvetica, sans-serif;">Quần skinny form chuẩn &ocirc;m d&aacute;ng, chất liệu co gi&atilde;n. Quần c&oacute; cấu tr&uacute;c si&ecirc;u đ&agrave;n hồi, chống trầy xước. Quần skinny được may từ chất liệu cao cấp, co gi&atilde;n tốt n&ecirc;n c&aacute;c bạn g&aacute;i sẽ cảm thấy lu&ocirc;n thoải m&aacute;i, c&oacute; nhiều m&agrave;u sắc cho c&aacute;c bạn lựa chọn</span></p>
<p>
	&nbsp;</p>
<p style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal; widows: 1;">
	<span style="font-size: small; font-family: arial, helvetica, sans-serif;"><img alt="Quần nữ Navi thời trang co dãn cực đẹp 1" src="https://media3.scdn.vn/img1/2016/5_10/quan-nu-navi-thoi-trang-co-dan-cuc-dep-1m4G3-4f97ac_simg_d0daf0_800x1200_max.png" style="margin: 0 auto; display: block;" /><br />
	<br />
	<img alt="Quần nữ Navi thời trang co dãn cực đẹp 2" src="https://media3.scdn.vn/img1/2016/5_10/quan-nu-navi-thoi-trang-co-dan-cuc-dep-1m4G3-40b9c7_simg_d0daf0_800x1200_max.png" style="margin: 0 auto; display: block;" /></span></p>
', CAST(N'2016-10-09T15:26:20.000' AS DateTime), CAST(N'2016-10-09T15:26:20.000' AS DateTime), 29, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (23, N'Quần Skinny nữ tôn dáng cực đẹp - Skin113', 8, 5, 1, N'sp14.jpg', 5, 120000, N'Mời c&aacute;c bạn tham khảo h&igrave;nh ảnh sản phẩm<br />
<div style="text-align: center;">
	&nbsp;</div>
<span style="font-size: small; font-family: arial, helvetica, sans-serif;"><img alt="Quần Skinny nữ tôn dáng cực đẹp 1" src="https://media3.scdn.vn/img1/2016/5_7/quan-skinny-nu-ton-dang-cuc-dep-1m4G3-b4338a_simg_d0daf0_800x1200_max.jpg" style="margin: 0px auto; display: block; text-align: center;" /></span>', CAST(N'2016-10-09T15:27:23.000' AS DateTime), CAST(N'2016-10-09T15:27:23.000' AS DateTime), 29, 3)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (24, N'Quần jean MICKEY xinh xắn - HDQA009', 3, 5, 2, N'sp15.png', 5, 268000, N'<em><strong><span style="font-size:x-large;"><span style="font-family:times new roman,times;"><a href="https://www.sendo.vn/quan-jean.htm">Quần jean</a> <a href="https://www.sendo.vn/mickey.htm">MICKEY</a> <a href="https://www.sendo.vn/xinh-xan.htm">xinh xắn</a></span></span></strong></em><br />
<em><strong><span style="font-size:x-large;"><span style="font-family:times new roman,times;">Chất: &nbsp;<span style="color:rgb(20,24,35);">72.9% cotton, 20.3%poly, 6.8%</span></span><span style="color:rgb(51,51,51);"> Viscose</span></span>,</strong></em><br />
<em><strong><span style="font-size:x-large;"><span style="font-family:times new roman,times;">Mầu: xanh</span></span></strong></em><br />
<em><strong><span style="font-size:x-large;"><span style="font-family:times new roman,times;">Kiểu như ảnh</span></span></strong></em><br />
&nbsp;<br />
<span style="font-size:large;"><strong><em><span style="font-family:times new roman,times;">SIZE: </span></em></strong></span><br />
<span style="font-size:large;"><strong><em><span style="font-family:times new roman,times;">26&nbsp; Eo 65 &nbsp; &nbsp; &nbsp; &nbsp;Đũng trước 25&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Đũng sau 33 &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; Đ&ugrave;i 46 &nbsp; &nbsp;&nbsp;Gối 29.5 &nbsp; &nbsp; Gấu 34&nbsp; &nbsp; &nbsp; &nbsp;D&agrave;i quần 92</span></em></strong></span><br />
<span style="font-size:large;"><strong><em><span style="font-family:times new roman,times;">27&nbsp; Eo 67.5 &nbsp; &nbsp; Đũng trước 25&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Đũng sau 33&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đ&ugrave;i 47&nbsp; &nbsp; &nbsp;Gối 30&nbsp; &nbsp; &nbsp; &nbsp;Gấu 34.5&nbsp; &nbsp; &nbsp;D&agrave;i quần 93</span></em></strong></span><br />
<span style="font-size:large;"><strong><em><span style="font-family:times new roman,times;">28 &nbsp;Eo 70&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Đũng trước 25.5&nbsp; &nbsp; &nbsp;Đũng sau 33.5&nbsp; &nbsp; &nbsp;&nbsp;Đ&ugrave;i 49 &nbsp; &nbsp; Gối 31&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;Gấu 35.5&nbsp; &nbsp; &nbsp;D&agrave;i quần 95</span></em></strong></span><br />
<span style="font-size:large;"><strong><em><span style="font-family:times new roman,times;">29 &nbsp;Eo 72.5&nbsp; &nbsp;&nbsp;</span></em></strong></span> <strong><em><span style="font-family:times new roman,times;">Đũng trước</span></em></strong>&nbsp;<strong><em><span style="font-family:times new roman,times;">25.5&nbsp; &nbsp; &nbsp;Đũng sau 33.5&nbsp; &nbsp; &nbsp;&nbsp;Đ&ugrave;i 49&nbsp; &nbsp; &nbsp;&nbsp;Gối &nbsp;31&nbsp; &nbsp; &nbsp;Gấu 35.5&nbsp; &nbsp; &nbsp;&nbsp;D&agrave;i quần 95</span></em></strong><br />
<br />
<br />
<br />
<br />
<strong style="box-sizing:border-box;padding:0px;border:0px;"><em style="box-sizing:border-box;padding:0px;border:0px;"><span style="box-sizing:border-box;padding:0px;border:0px;"><span style="color:red;"><span style="font-family:times new roman,serif;"><span style="font-size:36pt;">Sale Sale Sale!!!</span></span></span></span></em></strong><br />
<br />
<br />
<strong><em><span style="font-size:x-large;"><span style="font-family:times new roman,times;"><img alt="Quần jean MICKEY xinh xắn 1" src="https://media3.scdn.vn/img1/2016/4_26/quan-jean-mickey-xinh-xan-1m4G3-f99feb_simg_d0daf0_800x1200_max.jpg" /></span></span></em></strong><br />
', CAST(N'2016-10-09T15:28:36.000' AS DateTime), CAST(N'2016-10-09T15:28:36.000' AS DateTime), 29, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (25, N'Hàng nhập-Quần Jeans cao cấp lưng thun co giãn nhiều nút GLQ001 - GLQ001', 3, 5, 2, N'sp16.png', 30, 300000, N'Bạn c&oacute; thể y&ecirc;u cầu đổi trả h&agrave;ng trong v&ograve;ng 7 ng&agrave;y kể từ khi nhận được h&agrave;ng nếu cảm thấy kh&ocirc;ng h&agrave;i l&ograve;ng hoặc mặc kh&ocirc;ng vừa.<br />
H&agrave;ng đổi trả phải c&ograve;n nguy&ecirc;n tem nh&atilde;n, sạch sẽ, kh&ocirc;ng qua giặt tẩy. Bạn phải trả ph&iacute; chuyển cho lượt gửi trả, <a href="https://www.sendo.vn/san-pham/hang-nhap-quan-jeans-cao-cap-lung-thun-co-gian-nhieu-nut-glq001-3238013/">Cuocsongvang.vn</a> sẽ thanh to&aacute;n ph&iacute; chuyển chiều ngược lại khi gửi h&agrave;ng đổi cho bạn.<br />
<br />
<div style="text-align: center;">
	<img alt="Hàng nhập-Quần Jeans cao cấp lưng thun co giãn nhiều nút GLQ001 2" src="https://media3.scdn.vn/img1/2016/6_22/hang-nhap-quan-jeans-cao-cap-lung-thun-co-gian-nhieu-nut-glq001-1m4G3-zzMQOT_simg_d0daf0_800x1200_max.png" /></div>
', CAST(N'2016-10-09T15:29:45.000' AS DateTime), CAST(N'2016-10-09T15:29:45.000' AS DateTime), 29, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (26, N'Quần lengging hàng nhập - k02', 8, 5, 2, N'sp17.jpg', 2, 175000, N'Xuất xứ quảng ch&acirc;u<br />
Chất li&ecirc;u thun nhập co gi&atilde;n tốt<br />
M&agrave;u sắc đen, x&aacute;m<br />
K&iacute;ch thước freesize', CAST(N'2016-10-09T15:31:11.000' AS DateTime), CAST(N'2016-10-09T15:31:11.000' AS DateTime), 29, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (27, N'Quần jeans thun rách gối cá tính - sp0610', 10, 5, 2, N'sp18.jpg', 6, 155000, N'<p>
	Quần jeans r&aacute;ch gối&nbsp;</p>
<p>
	M&agrave;u sắc: x&aacute;m</p>
<p>
	Chất liệu:jean</p>
<p>
	Xuất xứ:việt nam</p>
<p>
	&nbsp;</p>
<p>
	<img alt="Quần jeans thun rách gối cá tính 1" src="https://media3.scdn.vn/img2/2016/9_10/quan-jeans-thun-rach-goi-ca-tinh-1m4G3-qfD8Sf_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /></p>
', CAST(N'2016-10-09T15:32:11.000' AS DateTime), CAST(N'2016-10-09T15:32:11.000' AS DateTime), 29, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (28, N'BỘ TẬP HOA VĂN 3D - BTHV3D000190', 4, 3, 1, N'sp19.jpg', 2, 341000, N'Mời c&aacute;c bạn tham khảo h&igrave;nh ảnh sản phẩm<br />
<br />
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	<img alt="BỘ TẬP HOA VĂN 3D 1" src="https://media3.scdn.vn/img1/2016/7_21/bo-tap-hoa-van-3d-1m4G3-MUetLx_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /></p>
', CAST(N'2016-10-09T15:33:07.000' AS DateTime), CAST(N'2016-10-09T15:33:07.000' AS DateTime), 30, 3)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (29, N'Bộ Đồ Thể Thao Dày Chữ M - TBD119-Đen', 8, 3, 4, N'sp20.jpg', 30, 165000, N'Chất liệu : Da c&aacute;<br />
M&agrave;u sắc :&nbsp;Đen - Hồng -Trắng<br />
Size : M<br />
ĐẶT H&Agrave;NG: ĐỂ LẠI【SĐT + T&Ecirc;N SP +SIZE 】<br />
<br />
<div style="text-align: center;">
	<span style="box-sizing:border-box;max-width:100%;"><span style="box-sizing:border-box;max-width:100%;"><span style="box-sizing:border-box;max-width:100%;"><span style="box-sizing:border-box;max-width:100%;"><span style="font-size:14pt;"><span style="font-family:arial,helvetica,sans-serif;"><img alt="Bộ Đồ Thể Thao Dày Chữ M 1" src="https://media3.scdn.vn/img1/2016/8_3/bo-do-the-thao-day-chu-m-1m4G3-9JfUHK_simg_d0daf0_800x1200_max.jpg" /><img alt="Bộ Đồ Thể Thao Dày Chữ M 2" src="https://media3.scdn.vn/img1/2016/8_3/bo-do-the-thao-day-chu-m-1m4G3-SIaKnb_simg_d0daf0_800x1200_max.jpg" /></span></span></span></span></span></span></div>
', CAST(N'2016-10-09T15:34:54.000' AS DateTime), CAST(N'2016-10-09T15:34:54.000' AS DateTime), 30, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (30, N'Bộ Đồ Thể Thao Nữ Cách Điệu - BD106-Hồng Nhạt', 5, 2, 4, N'sp21.jpg', 30, 165000, N'<p style="color: rgb(51, 51, 51); font-size: 13px; text-align: center;">
	<span style="font-size: 12px;">Chất liệu Thun Cotton 4 Chiều</span></p>
<p style="color: rgb(51, 51, 51); font-size: 13px; text-align: center;">
	<span style="font-size: 12px;">M&agrave;u sắc :&nbsp;<span style="color: #404040;">Hồng đậm - Hồng nhạc - Xanh chuối</span></span></p>
<p style="color: rgb(51, 51, 51); font-size: 13px; text-align: center;">
	<span style="font-size: 12px;">Size M</span></p>
<p style="color: rgb(51, 51, 51); font-size: 13px; text-align: center;">
	<span style="font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp;L</span></p>
<div style="color: rgb(51, 51, 51); font-size: 13px; text-align: center;">
	<span style="font-size: 12px;"><span style="color: #555555 !important;"><span style="color: #1d2129;">ĐẶT H&Agrave;NG: ĐỂ LẠI【SĐT + T&Ecirc;N SP +SIZE 】</span></span></span></div>
<div style="color: rgb(51, 51, 51); font-size: 13px; text-align: center;">
	<span style="font-size: 12px;"><span style="color: #555555 !important;"><span style="color: #1d2129;">✆ ĐẶT H&Agrave;NG NHANH:08..387 381 44&nbsp;&amp; 0909 557 944 &amp; 0128 3223 725</span></span>&nbsp;</span></div>
<div style="color: rgb(51, 51, 51); font-size: 13px; text-align: center;">
	<span style="font-size: 12px;"><span style="color: #555555 !important;"><span style="color: #1d2129;">Zalo &nbsp;0909 557 944 - 0917 880 779 - 0166 2730&nbsp;147</span></span></span></div>
<div style="color: rgb(51, 51, 51); font-size: 13px; text-align: center;">
	<span style="font-size: 12px;"><span style="color: #555555 !important;"><span style="color: #1d2129;"><img alt="Bộ Đồ Thể Thao Nữ Cách Điệu 1" height="265" src="https://media3.scdn.vn/img2/2016/9_26/bo-do-the-thao-nu-cach-dieu-1m4G3-MImyFa_simg_a302f7_440x265_max.jpg" width="440" /></span></span></span></div>
<div style="color: rgb(51, 51, 51); font-size: 13px; text-align: center;">
	<span style="font-size: 12px;"><span style="color: #555555 !important;"><span style="color: #1d2129;"><img alt="Bộ Đồ Thể Thao Nữ Cách Điệu 2" src="https://media3.scdn.vn/img2/2016/9_16/bo-do-the-thao-nu-cach-dieu-1m4G3-wmDdui_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /></span></span></span></div>
', CAST(N'2016-10-09T15:36:04.000' AS DateTime), CAST(N'2016-10-09T15:36:04.000' AS DateTime), 30, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (31, N'Bộ Đồ Thể Thao Nữ 7F - BD260-XÁM', 10, 3, 1, N'sp22.jpg', 9, 195000, N'<div>
	Chất liệu : Da C&aacute;<br />
	M&agrave;u sắc : Xanh đen - Đỏ - x&aacute;m - V&agrave;ng<br />
	Size M<br />
	L<br />
	ĐẶT H&Agrave;NG: ĐỂ LẠI【SĐT + T&Ecirc;N SP +SIZE 】<br />
	✆ ĐẶT H&Agrave;NG NHANH:08..387 381 44 &amp; 0909 557 944 &amp; 0128 3223 725<br />
	Zalo 0909 557 944 - 0917 880 779 - 0166 2730 147.</div>
<div class="ember-view liquid-child" style="text-align: center;">
	<span style="font-size: 14pt;"><img alt="Bộ Đồ Thể Thao Nữ 7F 1" height="284" src="https://media3.scdn.vn/img2/2016/9_26/bo-do-the-thao-nu-7f-1m4G3-MImyFa_simg_b7f353_472x284_max.jpg" width="472" /></span></div>
<div class="ember-view liquid-child" style="text-align: center;">
	&nbsp;</div>
<div class="ember-view liquid-child">
	<p style="color: rgb(0, 0, 0); text-align: center;">
		&nbsp;</p>
	<p style="color: rgb(0, 0, 0); text-align: center;">
		<span style="color: rgb(0, 0, 255); font-size: 14pt; background-color: rgb(255, 255, 0);"><img alt="Bộ Đồ Thể Thao Nữ 7F 2" src="https://media3.scdn.vn/img2/2016/10_7/bo-do-the-thao-nu-7f-1m4G3-AmXIy4_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /></span></p>
</div>
<br />
', CAST(N'2016-10-09T15:37:08.000' AS DateTime), CAST(N'2016-10-09T15:37:08.000' AS DateTime), 30, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (32, N'Bộ đồ thể thao dài logo ngôi sao size M, L, XL - LL01036 - LL01036_2', 7, 4, 2, N'sp23.jpg', 9, 199000, N'<div>
	<div>
		<p>
			<a href="https://www.sendo.vn/bo-do.htm">Bộ đồ</a> ng&ocirc;i sao h&igrave;nh tr&ograve;n american d&ugrave;ng trong c&aacute;c buổi tập thể dục hay trong sinh hoạt hằng ng&agrave;y cũng rất hợp với c&aacute;c bạn nữ&nbsp;</p>
		<p>
			Kiểu d&aacute;ng:&nbsp;tay d&agrave;i, quần d&agrave;i</p>
		<p>
			M&agrave;u sắc:&nbsp;Đen - Xanh đen - Trắng</p>
		<p>
			Chất liệu:&nbsp;thun da c&aacute; loại 1</p>
		<p>
			K&iacute;ch thước:&nbsp;M, L, XL</p>
	</div>
</div>
<p>
	&nbsp;</p>
<p>
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: x-large; vertical-align: baseline; color: #ff0000; font-family: arial, helvetica, sans-serif; line-height: 23.3333px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><img alt="Bộ đồ thể thao dài logo ngôi sao size M, L, XL - LL01036 3" src="https://media3.scdn.vn/img2/2016/8_22/bo-do-the-thao-dai-logo-ngoi-sao-size-m-l-xl-ll01036-1m4G3-nWcwRx_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /></span></p>
', CAST(N'2016-10-09T15:38:11.000' AS DateTime), CAST(N'2016-10-09T15:38:11.000' AS DateTime), 30, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (33, N'Bộ quần áo thể thao viền sọc kèm áo thun - LL01076 - LL01076_3', 6, 5, 4, N'sp24.jpg', 10, 267000, N'<div>
	<p style="color: #333333;">
		<span style="color: #4b4f56; font-size: 14pt;">Chất liệu: Thun Da C&aacute; loại 1, &aacute;o thun g&acirc;n </span></p>
	<p style="color: #333333;">
		<span style="color: #4b4f56; font-size: 14pt;">M&agrave;u Sắc: Đen, X&aacute;m, Đỏ </span></p>
	<p style="color: #333333;">
		<span style="color: #4b4f56; font-size: 14pt;">Size: M </span></p>
	<p style="color: #333333;">
		<span style="color: #4b4f56; font-size: 14pt;">Kiểu d&aacute;ng: &Aacute;o vest, tay d&agrave;i, quần d&agrave;i viền sọc, logo</span></p>
</div>
<p>
	<br />
	<span style="color: #ff0000; font-size: x-large;"><img alt="Bộ quần áo thể thao viền sọc kèm áo thun - LL01076 8" src="https://media3.scdn.vn/img2/2016/10_8/bo-quan-ao-the-thao-vien-soc-kem-ao-thun-ll01076-1m4G3-XnY7FB_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /><br />
	<br />
	<img alt="Bộ quần áo thể thao viền sọc kèm áo thun - LL01076 9" src="https://media3.scdn.vn/img2/2016/10_8/bo-quan-ao-the-thao-vien-soc-kem-ao-thun-ll01076-1m4G3-JO3U3k_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /></span></p>
', CAST(N'2016-10-09T15:39:18.000' AS DateTime), CAST(N'2016-10-09T15:39:18.000' AS DateTime), 30, 3)
SET IDENTITY_INSERT [dbo].[db_SanPham] OFF
SET IDENTITY_INSERT [dbo].[db_Size] ON 

INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (1, N'MXL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (2, N'L')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (3, N'XL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (4, N'S')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (5, N'XXL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (6, N'M')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (7, N'Free size')
SET IDENTITY_INSERT [dbo].[db_Size] OFF
SET IDENTITY_INSERT [dbo].[db_TinTuc] ON 

INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (6, N'Giới trẻ thế giới ai cũng "lên đồ" vừa đẹp vừa nổi không chê vào đâu được', N'tin1.jpg', N'Thay vì mix chiếc sweatshirt màu vàng nổi bật này theo công thức "giấu quần", cô nàng này lại sơvin cùng với shorts cạp cao vừa gọn gàng lại vừa cá tính. Túi tote, giày sneaker và tất lửng chắc chắn l', CAST(N'2016-10-09T10:19:50.000' AS DateTime), 1, N'<div class="top-content">
	<div class="sapo">
		<h2 class="knd-sapo" data-field="sapo" style="margin: 15px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 22px; font-family: &quot;Times New Roman&quot;; vertical-align: baseline; color: rgb(51, 51, 51); display: inline-block;">
			Street style của c&aacute;c bạn trẻ thế giới tuần qua kh&ocirc;ng chỉ hay ho trong c&aacute;ch phối đồ m&agrave; c&ograve;n nổi bật về m&agrave;u sắc.</h2>
		<div data-check-position="detail_content_start" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0);">
			&nbsp;</div>
		<div class="knd-content" data-field="body" style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: 22px; font-family: &quot;Times New Roman&quot;; vertical-align: baseline; display: inline-block; width: 642px; color: rgb(0, 0, 0);">
			<div class="VCSortableInPreviewMode active" style="margin: 0px auto 22px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center; width: 642px;" type="Photo">
				<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">
					<img alt="Giới trẻ thế giới tiếp tục thể hiện trình lên đồ vừa đẹp vừa nổi không chê vào đâu được - Ảnh 1." data-original="http://kenh14cdn.com/2016/10-1475822192591.jpg" h="1200" height="" id="img_68794ed0-8c58-11e6-b939-01b8b69b7923" photoid="68794ed0-8c58-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/10-1475822192591.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: bottom; box-sizing: border-box; max-width: 100%; cursor: none;" title="Giới trẻ thế giới tiếp tục thể hiện trình lên đồ vừa đẹp vừa nổi không chê vào đâu được - Ảnh 1." type="photo" w="800" width="" /></div>
				<div class="PhotoCMS_Caption" style="margin: 5px 0px 20px; padding: 0px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">
					<p data-placeholder="[nhập chú thích]" style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">
						Thay v&igrave; mix chiếc sweatshirt m&agrave;u v&agrave;ng nổi bật n&agrave;y theo c&ocirc;ng thức &quot;giấu quần&quot;, c&ocirc; n&agrave;ng n&agrave;y lại sơvin c&ugrave;ng với shorts cạp cao vừa gọn g&agrave;ng lại vừa c&aacute; t&iacute;nh. T&uacute;i tote, gi&agrave;y sneaker v&agrave; tất lửng chắc chắn l&agrave; combo phụ kiện ho&agrave;n hảo cho set đồ n&agrave;y.</p>
				</div>
			</div>
			<div class="VCSortableInPreviewMode active" style="margin: 0px auto 22px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center; width: 642px;" type="Photo">
				<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">
					<img alt="Giới trẻ thế giới tiếp tục thể hiện trình lên đồ vừa đẹp vừa nổi không chê vào đâu được - Ảnh 2." data-original="http://kenh14cdn.com/2016/11-1475822192592.jpg" h="1200" height="" id="img_69173c80-8c58-11e6-b939-01b8b69b7923" photoid="69173c80-8c58-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/11-1475822192592.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: bottom; box-sizing: border-box; max-width: 100%; cursor: none;" title="Giới trẻ thế giới tiếp tục thể hiện trình lên đồ vừa đẹp vừa nổi không chê vào đâu được - Ảnh 2." type="photo" w="800" width="" /></div>
				<div class="PhotoCMS_Caption" style="margin: 5px 0px 20px; padding: 0px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">
					<p data-placeholder="[nhập chú thích]" style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">
						Cũng diện sweatshirt theo kiểu sơvin nhưng c&ocirc; n&agrave;ng n&agrave;y lại to&aacute;t l&ecirc;n phong c&aacute;ch &quot;cool ngầu&quot; nhờ chiếc jean shorts r&aacute;ch te tua v&agrave; gi&agrave;y da hầm hố.</p>
				</div>
			</div>
			<div class="VCSortableInPreviewMode active" style="margin: 0px auto 22px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center; width: 642px;" type="Photo">
				<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">
					<img alt="Giới trẻ thế giới tiếp tục thể hiện trình lên đồ vừa đẹp vừa nổi không chê vào đâu được - Ảnh 3." data-original="http://kenh14cdn.com/2016/14-1475822192594.jpg" h="1200" height="" id="img_6ae96470-8c58-11e6-b939-01b8b69b7923" photoid="6ae96470-8c58-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/14-1475822192594.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: bottom; box-sizing: border-box; max-width: 100%; cursor: none;" title="Giới trẻ thế giới tiếp tục thể hiện trình lên đồ vừa đẹp vừa nổi không chê vào đâu được - Ảnh 3." type="photo" w="800" width="" /></div>
				<div class="PhotoCMS_Caption" style="margin: 5px 0px 20px; padding: 0px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">
					<p data-placeholder="[nhập chú thích]" style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">
						Mặc d&ugrave; diện cả c&acirc;y denim theo đ&uacute;ng xu hướng từng thịnh h&agrave;nh c&aacute;ch đ&acirc;y chục năm nhưng tr&ocirc;ng c&ocirc; n&agrave;ng n&agrave;y chẳng hề lỗi thời ch&uacute;t n&agrave;o, nếu kh&ocirc;ng muốn n&oacute;i l&agrave; cực kỳ c&aacute; t&iacute;nh v&agrave; trendy. C&ocirc;ng kh&ocirc;ng nhỏ thuộc về bộ đ&ocirc;i sandal - tất lửng v&agrave; chiếc t&uacute;i mini nổi bật.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<br />
', 1, 1)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (7, N'Zara, H&M về Việt Nam thì giới trẻ Việt vẫn chuộng order quần áo bởi những thương hiệu "hot" không kém này', N'tin2.jpg', N'Nếu như Zara hay Topshop vẫn chưa đủ để thỏa mãn phong cách của bạn thì yên tâm, có đến 12 sự lựa chọn nữa cho những nàng nào thích mua sắm thời trang bình dân online. ', CAST(N'2016-10-09T10:24:01.000' AS DateTime), 2, N'<h2 class="knd-sapo" data-field="sapo">
	&nbsp; Nếu như Zara hay Topshop vẫn chưa đủ để thỏa m&atilde;n phong c&aacute;ch của bạn th&igrave; y&ecirc;n t&acirc;m, c&oacute; đến 12 sự lựa chọn nữa cho những n&agrave;ng n&agrave;o th&iacute;ch mua sắm thời trang b&igrave;nh d&acirc;n online.</h2>
<div data-check-position="detail_content_start">
	&nbsp;</div>
<div class="knd-content" data-field="body">
	<p>
		<b>CPS CHAPS</b></p>
	<p>
		L&agrave; một trong những thương hiệu thời trang b&igrave;nh d&acirc;n d&agrave;nh cho cả nam v&agrave; nữ ra đời năm 1980, CPS CHAPS hướng tới thị phần l&agrave; giới trẻ năng động, đam m&ecirc; thời trang, c&oacute; gu thẩm mỹ v&agrave; c&oacute; phong c&aacute;ch sống hiện đại, ph&oacute;ng kho&aacute;ng. Hơn 30 năm ph&aacute;t triển, h&atilde;ng đ&atilde; vượt ra khỏi bi&ecirc;n giới Th&aacute;i Lan để trở th&agrave;nh một trong những thương hiệu thời trang được y&ecirc;u th&iacute;ch của giới trẻ ch&acirc;u &Aacute; v&agrave; thế giới.</p>
	<p>
		Một trong những d&ograve;ng sản phẩm chủ đạo của CPS l&agrave; quần jeans được mệnh danh l&agrave; &quot;King of Jeans&quot; bởi phong c&aacute;ch thiết kế trẻ trung, mẫu m&atilde; phong ph&uacute;, chất liệu vải cũng như phom d&aacute;ng.</p>
	<p>
		Mức gi&aacute;: Theo kinh nghiệm của những t&iacute;n đồ shopping th&igrave; một chiếc v&aacute;y của CPS CHAPS khoảng 1,2 triệu đồng; jeans th&igrave; khoảng 1,5 triệu đồng.</p>
	<div class="VCSortableInPreviewMode noCaption" type="Photo">
		<div>
			<img alt="Zara, H&amp;M về Việt Nam thì giới trẻ Việt vẫn chuộng order quần áo bởi những thương hiệu hot không kém này - Ảnh 1." data-original="http://kenh14cdn.com/2016/cps-chaps1-1475773280181.jpg" h="1956" height="" id="img_82cb7690-8be6-11e6-b939-01b8b69b7923" photoid="82cb7690-8be6-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/cps-chaps1-1475773280181.jpg" style="max-width: 100%; cursor: none;" title="Zara, H&amp;M về Việt Nam thì giới trẻ Việt vẫn chuộng order quần áo bởi những thương hiệu hot không kém này - Ảnh 1." type="photo" w="1470" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p class="NLPlaceholderShow" data-placeholder="[nhập chú thích]">
				&nbsp;</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode noCaption" type="Photo">
		<div>
			<img alt="Zara, H&amp;M về Việt Nam thì giới trẻ Việt vẫn chuộng order quần áo bởi những thương hiệu hot không kém này - Ảnh 2." data-original="http://kenh14cdn.com/2016/cps-chaps2-1475773280182.jpg" h="750" height="" id="img_8313ca30-8be6-11e6-b939-01b8b69b7923" photoid="8313ca30-8be6-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/cps-chaps2-1475773280182.jpg" style="max-width: 100%; cursor: none;" title="Zara, H&amp;M về Việt Nam thì giới trẻ Việt vẫn chuộng order quần áo bởi những thương hiệu hot không kém này - Ảnh 2." type="photo" w="960" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p class="NLPlaceholderShow" data-placeholder="[nhập chú thích]">
				&nbsp;</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode noCaption" type="Photo">
		<div>
			<img alt="Zara, H&amp;M về Việt Nam thì giới trẻ Việt vẫn chuộng order quần áo bởi những thương hiệu hot không kém này - Ảnh 3." data-original="http://kenh14cdn.com/2016/cps-chaps3-1475773280184.jpg" h="640" height="" id="img_8349f560-8be6-11e6-b939-01b8b69b7923" photoid="8349f560-8be6-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/2016/cps-chaps3-1475773280184.jpg" style="max-width: 100%; cursor: none;" title="Zara, H&amp;M về Việt Nam thì giới trẻ Việt vẫn chuộng order quần áo bởi những thương hiệu hot không kém này - Ảnh 3." type="photo" w="640" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p class="NLPlaceholderShow" data-placeholder="[nhập chú thích]">
				&nbsp;</p>
		</div>
	</div>
	<p>
		<b>Jaspal</b></p>
	<p>
		Cũng như CPS CHAPS, Jaspal l&agrave; thương hiệu thời trang m&agrave; n&agrave;ng n&agrave;o cũng sẽ l&acirc;n la đến ngay khi vừa đặt ch&acirc;n xuống xứ sở ch&ugrave;a v&agrave;ng. Hiện thương hiệu n&agrave;y c&oacute; khoảng 40 cửa hiệu tại Th&aacute;i Lan, 4 cửa hiệu tại Malaysia v&agrave; nhiều nh&agrave; ph&acirc;n phối tr&ecirc;n thế giới. Điểm thu h&uacute;t của Jaspal l&agrave; sử dụng c&aacute;c chất liệu cao cấp để mang đến 1 d&ograve;ng sản phẩm thời trang thời thượng với một mức gi&aacute; b&igrave;nh d&acirc;n, đồng thời kết hợp phong c&aacute;ch thời trang thế giới với gu thẩm mỹ &Aacute; Đ&ocirc;ng.</p>
	<p>
		Mức gi&aacute;: Đồ jeans khoảng 1,9 triệu đồng; v&aacute;y khoảng 1,8 triệu đồng.</p>
</div>
<br />
', 1, 1)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (8, N'Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội', N'tin3.jpg', N'Sau buổi casting đầu tiên tại khu vực TP.HCM cách đây hơn một tuần, chiều 7/10, buổi casting thứ hai cho Vietnam International Fashion Week - Tuần lễ thời trang quốc tế Việt Nam mùa Thu/Đông 2016 đã d', CAST(N'2016-10-09T15:41:08.000' AS DateTime), 0, N'<h2 class="knd-sapo" data-field="sapo">
	&nbsp; Buổi casting tại khu vực ph&iacute;a Bắc cho VIFW m&ugrave;a Thu/Đ&ocirc;ng 2016 vừa diễn ra v&agrave;o chiều 7/10.</h2>
<div class="knd-content" data-field="body">
	<p>
		Sau <a class="seo-suggest-link" href="http://kenh14.vn/mau-luong-tinh-mau-chuyen-gioi-noi-bat-tai-buoi-casting-cho-vietnam-international-fashion-week-20160929181739171.chn" target="_blank" title="Mẫu lưỡng tính, mẫu chuyển giới nổi bật tại buổi casting cho Vietnam International Fashion Week ">buổi casting đầu ti&ecirc;n tại khu vực TP.HCM</a> c&aacute;ch đ&acirc;y hơn một tuần, chiều 7/10, buổi casting thứ hai cho Vietnam International Fashion Week - Tuần lễ thời trang quốc tế Việt Nam m&ugrave;a Thu/Đ&ocirc;ng 2016 đ&atilde; diễn ra tại H&agrave; Nội. VIFW vốn l&agrave; tuần lễ thời trang tầm cỡ nhất hiện nay với sự tham gia của rất nhiều NTK t&ecirc;n tuổi cả trong v&agrave; ngo&agrave;i nước, bởi vậy, được sải bước trong khu&ocirc;n khổ sự kiện n&agrave;y l&agrave; ước mơ của rất nhiều người mẫu trẻ.</p>
	<div class="VCSortableInPreviewMode active" type="Photo">
		<div>
			<img alt="Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội - Ảnh 1." data-original="http://kenh14cdn.com/2016/1-1475835556590.jpg" h="1000" height="" id="img_89ed5c90-8c77-11e6-b939-01b8b69b7923" photoid="89ed5c90-8c77-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/1-1475835556590.jpg" style="max-width: 100%; cursor: none;" title="Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội - Ảnh 1." type="photo" w="1500" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p data-placeholder="[nhập chú thích]">
				Địa điểm diễn ra buổi casting thứ hai cho VIFW Thu/Đ&ocirc;ng 2016 l&agrave; một TTTM lớn tại H&agrave; Nội.</p>
		</div>
	</div>
	<p>
		So với buổi casting tại TP.HCM, buổi casting lần n&agrave;y kh&ocirc;ng n&aacute;o nhiệt bằng v&agrave; cũng kh&ocirc;ng quy tụ những gương mặt quen thuộc. Tuy nhi&ecirc;n, c&aacute;c người mẫu kh&ocirc;ng chuy&ecirc;n vẫn ghi điểm bởi th&aacute;i độ l&agrave;m việc chuy&ecirc;n nghiệp của m&igrave;nh.</p>
	<div class="VCSortableInPreviewMode active" type="Photo">
		<div>
			<img alt="Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội - Ảnh 2." data-original="http://kenh14cdn.com/2016/2-1475835556593.jpg" h="1000" height="" id="img_8b39d9c0-8c77-11e6-b939-01b8b69b7923" photoid="8b39d9c0-8c77-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/2-1475835556593.jpg" style="max-width: 100%; cursor: none;" title="Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội - Ảnh 2." type="photo" w="1500" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p data-placeholder="[nhập chú thích]">
				C&aacute;c người mẫu tập trung ở sảnh để chuẩn bị cho phần đi catwalk.</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode active noCaption" type="Photo">
		<div>
			<img alt="Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội - Ảnh 3." data-original="http://kenh14cdn.com/2016/3-1475835556596.jpg" h="1000" height="" id="img_8bd57d80-8c77-11e6-b939-01b8b69b7923" photoid="8bd57d80-8c77-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/3-1475835556596.jpg" style="max-width: 100%; cursor: none;" title="Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội - Ảnh 3." type="photo" w="1500" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p class="NLPlaceholderShow" data-placeholder="[nhập chú thích]">
				&nbsp;</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode active" type="Photo">
		<div>
			<img alt="Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội - Ảnh 4." data-original="http://kenh14cdn.com/2016/4-1475835556599.jpg" h="1493" height="" id="img_8c191630-8c77-11e6-b939-01b8b69b7923" photoid="8c191630-8c77-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/4-1475835556599.jpg" style="max-width: 100%; cursor: none;" title="Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội - Ảnh 4." type="photo" w="1000" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p data-placeholder="[nhập chú thích]">
				Ki&ecirc;n nhẫn nghe ban gi&aacute;m khảo phổ biến v&agrave; chờ đợi đến lượt m&igrave;nh.</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode active" type="Photo">
		<div>
			<img alt="Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội - Ảnh 5." data-original="http://kenh14cdn.com/2016/5-1475835556602.jpg" h="1000" height="" id="img_8c32dfc0-8c77-11e6-b939-01b8b69b7923" photoid="8c32dfc0-8c77-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/5-1475835556602.jpg" style="max-width: 100%; cursor: none;" title="Vietnam International Fashion Week rục rịch tuyển mẫu, chuẩn bị tổ chức tại Hà Nội - Ảnh 5." type="photo" w="1500" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p data-placeholder="[nhập chú thích]">
				Trước đ&oacute;, c&aacute;c người mẫu tham gia casting đều phải l&agrave;m thủ tục đăng k&yacute;...</p>
		</div>
	</div>
</div>
<br />
', 3, 1)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (9, N'Vũ điệu của những gam màu đơn sắc', N'tin4.jpg', N'Tinh tế, quyến rũ và phá cách là những gì nbộ sưu tập thời trang OUR FIRST FALL COLLECTION 2016 mà Kiều Ly mang lại cho khách hàng của mình. ', CAST(N'2016-10-09T15:42:40.000' AS DateTime), 1, N'<h2 class="knd-sapo" data-field="sapo">
	Tinh tế, quyến rũ v&agrave; ph&aacute; c&aacute;ch l&agrave; những g&igrave; nbộ sưu tập thời trang OUR FIRST FALL COLLECTION 2016 m&agrave; Kiều Ly mang lại cho kh&aacute;ch h&agrave;ng của m&igrave;nh.</h2>
<div class="knd-content" data-field="body">
	<p>
		OUR FIRST FALL COLLECTION 2016 l&agrave; bộ sưu tập thời trang đầu ti&ecirc;n của nh&agrave; thiết kế trẻ Phạm Kiều Ly &ndash; chủ nh&acirc;n shop thời trang ME.choose. Tuy chỉ mới gia nhập l&agrave;ng thời trang được hai năm, nhưng Kiều Ly đ&atilde; tự định hướng cho m&igrave;nh một phong c&aacute;ch thời trang cực kỳ c&aacute; t&iacute;nh. Với niềm đam m&ecirc; thiết kế ch&aacute;y bỏng c&ugrave;ng ho&agrave;i b&atilde;o muốn tạo dựng một Brand gi&aacute; rẻ, cập nhật mọi xu hướng, ph&ugrave; hợp với mọi lứa tuổi với mức gi&aacute; b&igrave;nh d&acirc;n, Kiều Ly đ&atilde; cho ra đời bộ thiết kế đầu ti&ecirc;n của m&igrave;nh d&agrave;nh cho m&ugrave;a thu 2016.</p>
	<div class="VCSortableInPreviewMode active noCaption" type="Photo">
		<div>
			<img alt="Vũ điệu của những gam màu đơn sắc - Ảnh 1." data-original="http://channel.mediacdn.vn//prupload/164/2016/10/img20161007155922189.jpg" height="" rel="lightbox" src="http://channel.mediacdn.vn//thumb_w/640/prupload/164/2016/10/img20161007155922189.jpg" style="max-width: 100%;" title="Vũ điệu của những gam màu đơn sắc - Ảnh 1." width="" /></div>
		<div class="PhotoCMS_Caption">
			<p placeholder="[nhập chú thích]">
				&nbsp;</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode" type="Photo">
		<div>
			<img alt="Vũ điệu của những gam màu đơn sắc - Ảnh 2." data-original="http://channel.mediacdn.vn//prupload/164/2016/10/img20161007155922347.jpg" height="" rel="lightbox" src="http://channel.mediacdn.vn//thumb_w/640/prupload/164/2016/10/img20161007155922347.jpg" style="max-width: 100%;" title="Vũ điệu của những gam màu đơn sắc - Ảnh 2." width="" /></div>
		<div class="PhotoCMS_Caption">
			<p placeholder="[nhập chú thích]">
				Bộ sưu tập d&agrave;nh cho m&ugrave;a thu chủ yếu l&agrave; sự mix match giữa hai chất liệu voan v&agrave; ren</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode noCaption" type="Photo">
		<div>
			<img alt="Vũ điệu của những gam màu đơn sắc - Ảnh 3." data-original="http://channel.mediacdn.vn//prupload/164/2016/10/img20161007155922510.jpg" height="" rel="lightbox" src="http://channel.mediacdn.vn//thumb_w/640/prupload/164/2016/10/img20161007155922510.jpg" style="max-width: 100%;" title="Vũ điệu của những gam màu đơn sắc - Ảnh 3." width="" /></div>
		<div class="PhotoCMS_Caption">
			<p placeholder="[nhập chú thích]">
				&nbsp;</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode" type="Photo">
		<div>
			<img alt="Vũ điệu của những gam màu đơn sắc - Ảnh 4." data-original="http://channel.mediacdn.vn//prupload/164/2016/10/img20161007155925693.jpg" height="" rel="lightbox" src="http://channel.mediacdn.vn//thumb_w/640/prupload/164/2016/10/img20161007155925693.jpg" style="max-width: 100%;" title="Vũ điệu của những gam màu đơn sắc - Ảnh 4." width="" /></div>
		<div class="PhotoCMS_Caption">
			<p placeholder="[nhập chú thích]">
				Với hai t&ocirc;ng m&agrave;u chủ đạo l&agrave; đen &ndash; trắng, rất dễ kết hợp v&agrave; ứng dụng v&agrave;o thực tế, từ v&aacute;y c&ocirc;ng sở đến đầm dạ tiệc, hay chỉ đơn giản l&agrave; những bộ trang phục dạo phố</p>
		</div>
	</div>
</div>
<br />
', 4, 1)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (10, N'Angela Phương Trinh ngọt ngào trong thiết kế mới của Amy Store', N'tin5.jpg', N'Luôn được nhắc đến bởi sự tài năng, xinh đẹp ngay từ còn bé, Angela Phương Trinh giờ đây đã trưởng thành và là một mỹ nhân đình đám nhất nhì showbiz Việt. ', CAST(N'2016-10-09T15:43:21.000' AS DateTime), 0, N'<h2 class="knd-sapo" data-field="sapo">
	Lu&ocirc;n được nhắc đến bởi sự t&agrave;i năng, xinh đẹp ngay từ c&ograve;n b&eacute;, Angela Phương Trinh giờ đ&acirc;y đ&atilde; trưởng th&agrave;nh v&agrave; l&agrave; một mỹ nh&acirc;n đ&igrave;nh đ&aacute;m nhất nh&igrave; showbiz Việt.</h2>
<div class="knd-content" data-field="body">
	<p>
		Gần đ&acirc;y, c&ocirc; n&agrave;ng lại được biết đến với những bộ c&aacute;nh thời trang đẹp mắt. Kh&ocirc;ng qu&aacute; ch&uacute; trọng về thương hiệu, Angela Phương Trinh vẫn s&agrave;nh điệu d&ugrave; diện l&ecirc;n m&igrave;nh những bộ c&aacute;nh b&igrave;nh d&acirc;n, từ c&aacute;c NTK trong nước. Những h&igrave;nh ảnh quyến rũ v&agrave; thời thượng mới nhất, gấy sốt tr&ecirc;n trang c&aacute; nh&acirc;n của người đẹp sinh năm 1995, l&agrave; minh chứng r&otilde; r&agrave;ng nhất cho sức h&uacute;t thời trang của c&ocirc; đối với c&ocirc;ng ch&uacute;ng.</p>
	<p>
		Trong thiết kế mới nhất của h&atilde;ng thời trang Amy Store, Angela Phương Trinh đ&atilde; khoe trọn được sự tinh tế của bộ trang phục m&agrave; vẫn l&agrave;m nổi bật l&ecirc;n v&oacute;c d&aacute;ng mảnh mai, gợi cảm của m&igrave;nh. Với điểm nhấn l&agrave; họa tiết k&egrave;m ren hay những chiếc nơ x&iacute;nh xắn đ&atilde; tạo n&ecirc;n một Angela Phương Trinh đầy quyến rũ.</p>
	<p>
		Thời gian qua, nữ diễn vi&ecirc;n t&ecirc;n thật L&ecirc; Ngọc Phương Trinh đổi hướng trong việc x&acirc;y dựng h&igrave;nh ảnh. Theo đ&oacute;, c&ocirc; n&agrave;ng quay trở lại c&ocirc;ng việc diễn xuất v&agrave; thường ưu ti&ecirc;n những thiết kế gợi cảm vừa phải nhưng vẫn l&agrave;m t&ocirc;n l&ecirc;n vẻ thời thượng của m&igrave;nh m&agrave; ph&ugrave; hợp với lứa tuổi của c&ocirc;.</p>
	<p>
		Với chất liệu gấm mềm mại tạo n&ecirc;n sự bồng bềnh của trang phục, Angela Phương Trinh ph&ugrave; hợp với m&agrave;u hồng nhạt, l&agrave; &quot;t&ocirc;ng&quot; ch&iacute;nh của h&atilde;ng thời trang Amy Store lần n&agrave;y. Trong bộ ảnh mới ch&iacute;nh l&agrave; BST Thu Đ&ocirc;ng 2016 của h&atilde;ng thời trang Amy Store, Angela Phương Trinh chia sẻ c&ocirc; đ&atilde; kh&ocirc;ng thể bỏ qua m&agrave;u sắc cũng như kiểu d&aacute;ng của những bộ trang phục ấm &aacute;p, nữ t&iacute;nh đang khiến c&aacute;c ph&aacute;i đẹp say sưa, l&agrave; sự lựa chọn cho c&aacute;c t&iacute;n đồ thời trang h&agrave;ng đầu cho m&ugrave;a Thu Đ&ocirc;ng năm nay. Chỉ một ch&uacute;t xanh lục tươi tắn của t&uacute;i x&aacute;ch, cả set đồ đ&ocirc;ng trầm u c&oacute; thể bừng s&aacute;ng bất ngờ. &quot;Những chiếc đầm m&agrave;u hồng phấn hay điểm ch&uacute;t m&agrave;u xanh nhẹ nh&agrave;ng của chiếc nơ tạo n&ecirc;n sự quyến rũ cho trang phục trước khi bước ra đường, to&agrave;n bộ m&agrave;u sắc đ&atilde; quyện lại với nhau tạo n&ecirc;n một bức tranh sống động cho bản th&acirc;n người mặc v&agrave; chất liệu sang trọng bằng gấm sẽ khiến c&aacute;c &quot;c&ocirc; n&agrave;ng&quot; trở n&ecirc;n quyến rũ hơn với những khoảnh khắc ấn tượng đầy mới mẻ với trang phục của Amy Store&quot; - nữ diễn vi&ecirc;n &quot;b&agrave; mẹ nh&iacute;&quot; th&uacute; vị khi so s&aacute;nh.</p>
	<p>
		Li&ecirc;n tục ghi điểm với gu thời trang đẳng cấp, c&agrave;ng ng&agrave;y c&agrave;ng thể hiện sự trưởng th&agrave;nh của &quot;b&agrave; mẹ nh&iacute;&quot; Angela Phương Trinh v&agrave; cũng kh&ocirc;ng n&oacute;i ngoa khi c&ocirc; li&ecirc;n tục được b&igrave;nh bầu v&agrave;o trong top những sao mặc đẹp nhất tuần ở c&aacute;c tạp ch&iacute; thời trang danh tiếng.</p>
	<p>
		C&ugrave;ng ngắm vẻ ngọt ng&agrave;o, quyến rũ của c&ocirc; n&agrave;ng Angela Phương Trinh trong bộ sưu tập Thu Đ&ocirc;ng 2016 của h&atilde;ng thời trang Amy Store:</p>
	<div class="VCSortableInPreviewMode noCaption" type="Photo">
		<div>
			<img alt="Angela Phương Trinh ngọt ngào trong thiết kế mới của Amy Store - Ảnh 1." data-original="http://channel.mediacdn.vn//prupload/603/2016/10/img20161006151239829.jpg" height="" rel="lightbox" src="http://channel.mediacdn.vn//prupload/603/2016/10/img20161006151239829.jpg" style="max-width: 100%;" title="Angela Phương Trinh ngọt ngào trong thiết kế mới của Amy Store - Ảnh 1." width="" /></div>
		<div class="PhotoCMS_Caption">
			<p class="NLPlaceholderShow" data-placeholder="[nhập chú thích]">
				&nbsp;</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode noCaption" type="Photo">
		<div>
			<img alt="Angela Phương Trinh ngọt ngào trong thiết kế mới của Amy Store - Ảnh 2." data-original="http://channel.mediacdn.vn//prupload/603/2016/10/img20161006151241966.jpg" height="" rel="lightbox" src="http://channel.mediacdn.vn//prupload/603/2016/10/img20161006151241966.jpg" style="max-width: 100%;" title="Angela Phương Trinh ngọt ngào trong thiết kế mới của Amy Store - Ảnh 2." width="" /></div>
		<div class="PhotoCMS_Caption">
			<p class="NLPlaceholderShow" data-placeholder="[nhập chú thích]">
				&nbsp;</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode noCaption" type="Photo">
		<div>
			<img alt="Angela Phương Trinh ngọt ngào trong thiết kế mới của Amy Store - Ảnh 3." data-original="http://channel.mediacdn.vn//prupload/603/2016/10/img20161006151244193.jpg" height="" rel="lightbox" src="http://channel.mediacdn.vn//prupload/603/2016/10/img20161006151244193.jpg" style="max-width: 100%;" title="Angela Phương Trinh ngọt ngào trong thiết kế mới của Amy Store - Ảnh 3." width="" /></div>
		<div class="PhotoCMS_Caption">
			<p class="NLPlaceholderShow" data-placeholder="[nhập chú thích]">
				&nbsp;</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode noCaption" type="Photo">
		<div>
			<img alt="Angela Phương Trinh ngọt ngào trong thiết kế mới của Amy Store - Ảnh 4." data-original="http://channel.mediacdn.vn//prupload/603/2016/10/img20161006151245811.jpg" height="" rel="lightbox" src="http://channel.mediacdn.vn//thumb_w/640/prupload/603/2016/10/img20161006151245811.jpg" style="max-width: 100%;" title="Angela Phương Trinh ngọt ngào trong thiết kế mới của Amy Store - Ảnh 4." width="" /></div>
	</div>
</div>
<br />
', 0, 1)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (11, N'Street style thế giới: Khi các bạn trẻ diện toàn món đồ basic mà vẫn "chất" phát hờn', N'tin6.jpg', N'Tuần qua, giới trẻ thế giới tiếp tục thể hiện đẳng cấp mặc đẹp mà chẳng cần phải diện những item thật "lồng lộn". ', CAST(N'2016-10-09T15:44:06.000' AS DateTime), 0, N'<h2 class="knd-sapo" data-field="sapo">
	Tuần qua, giới trẻ thế giới tiếp tục thể hiện đẳng cấp mặc đẹp m&agrave; chẳng cần phải diện những item thật &quot;lồng lộn&quot;.</h2>
<div data-check-position="detail_content_start">
	&nbsp;</div>
<div class="knd-content" data-field="body">
	<div class="VCSortableInPreviewMode active" type="Photo">
		<div>
			<img alt="Street style thế giới: Khi các bạn trẻ diện toàn món đồ basic mà vẫn chất phát hờn - Ảnh 1." data-original="http://kenh14cdn.com/2016/12-1475138145275.jpg" h="1200" height="" id="img_bd371270-861f-11e6-b939-01b8b69b7923" photoid="bd371270-861f-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/12-1475138145275.jpg" style="max-width: 100%; cursor: none;" title="Street style thế giới: Khi các bạn trẻ diện toàn món đồ basic mà vẫn chất phát hờn - Ảnh 1." type="photo" w="800" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p data-placeholder="[nhập chú thích]">
				Chiếc &aacute;o sơmi kẻ sọc tưởng chừng cứng nhắc, kh&oacute; mặc lại trở n&ecirc;n v&ocirc; c&ugrave;ng trendy khi được c&ocirc; n&agrave;ng n&agrave;y mix c&ugrave;ng quần ống loe v&agrave; gi&agrave;y sneaker. Sự xuất hiện của chiếc mũ lưỡi trai khiến set đồ tổng thể tr&ocirc;ng cool hơn hẳn.</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode active" type="Photo">
		<div>
			<img alt="Street style thế giới: Khi các bạn trẻ diện toàn món đồ basic mà vẫn chất phát hờn - Ảnh 2." data-original="http://kenh14cdn.com/2016/11-1475138145274.jpg" h="1200" height="" id="img_bd255f30-861f-11e6-b939-01b8b69b7923" photoid="bd255f30-861f-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/11-1475138145274.jpg" style="max-width: 100%; cursor: none;" title="Street style thế giới: Khi các bạn trẻ diện toàn món đồ basic mà vẫn chất phát hờn - Ảnh 2." type="photo" w="800" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p data-placeholder="[nhập chú thích]">
				&Aacute;o hoodie d&aacute;ng oversized lu&ocirc;n l&agrave; item chẳng bao giờ hết hot mỗi độ thu về, v&agrave; c&ocirc; n&agrave;ng n&agrave;y đ&atilde; diện n&oacute; theo c&aacute;ch rất nữ t&iacute;nh, đ&aacute;ng y&ecirc;u khi phối c&ugrave;ng ch&acirc;n v&aacute;y xếp pleat v&agrave; gi&agrave;y sneaker k&egrave;m tất lửng.</p>
		</div>
	</div>
	<div class="VCSortableInPreviewMode active" type="Photo">
		<div>
			<img alt="Street style thế giới: Khi các bạn trẻ diện toàn món đồ basic mà vẫn chất phát hờn - Ảnh 3." data-original="http://kenh14cdn.com/2016/10-1475138145272.jpg" h="1200" height="" id="img_bcefa930-861f-11e6-b939-01b8b69b7923" photoid="bcefa930-861f-11e6-b939-01b8b69b7923" rel="lightbox" src="http://kenh14cdn.com/thumb_w/650/2016/10-1475138145272.jpg" style="max-width: 100%; cursor: none;" title="Street style thế giới: Khi các bạn trẻ diện toàn món đồ basic mà vẫn chất phát hờn - Ảnh 3." type="photo" w="800" width="" /></div>
		<div class="PhotoCMS_Caption">
			<p data-placeholder="[nhập chú thích]">
				C&ocirc; n&agrave;ng n&agrave;y lại &quot;thay m&aacute;u&quot; cho set đồ &aacute;o ph&ocirc;ng - quần shorts với item &iacute;t ai ngờ tới nhất, đ&oacute; ch&iacute;nh l&agrave; boyfriend blazer. Chiếc &aacute;o c&aacute; t&iacute;nh n&agrave;y kết hợp với đ&ocirc;i boots buộc d&acirc;y mang đến vẻ ph&aacute; c&aacute;ch, ph&oacute;ng kho&aacute;ng tuyệt đối cho chủ nh&acirc;n. B&ecirc;n cạnh đ&oacute;, c&ocirc; n&agrave;ng c&ograve;n kh&eacute;o l&eacute;o nhấn nh&aacute; th&ecirc;m một chiếc mũ nồi ton-sur-ton với &aacute;o.</p>
		</div>
	</div>
</div>
<br />
', 0, 1)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (12, N'5 món đồ thời trang giúp bạn “chinh phục” ánh nhìn phái mạnh', N'tin7.jpg', N'Nếu bạn đang tìm kiếm ý tưởng lên đồ cho đêm hẹn hò lãng mạn hay đơn giản là muốn mình tự tin hơn, 5 gợi ý thời trang dưới đây sẽ khiến bạn phải hài lòng.', CAST(N'2016-10-09T15:45:29.000' AS DateTime), 0, N'<div>
	Người ta thường n&oacute;i &ldquo; Đ&agrave;n &ocirc;ng y&ecirc;u bằng mắt, đ&agrave;n b&agrave; y&ecirc;u bằng tai&rdquo;. Chưa thể đo&aacute;n chắc c&acirc;u n&oacute;i n&agrave;y ch&iacute;nh x&aacute;c đến đ&acirc;u nhưng một người phụ nữ khi ăn vận đẹp chắc chắn sẽ cuốn h&uacute;t v&agrave; quyến rũ hơn khi giấu m&igrave;nh trong những bộ c&aacute;nh xuề x&ograve;a, luộm thuộm. Nếu bạn đang t&igrave;m kiếm &yacute; tưởng l&ecirc;n đồ cho đ&ecirc;m hẹn h&ograve; l&atilde;ng mạn hay đơn giản l&agrave; muốn m&igrave;nh tự tin hơn, 5 gợi &yacute; thời trang dưới đ&acirc;y sẽ khiến bạn phải h&agrave;i l&ograve;ng.</div>
<div>
	&nbsp;</div>
<div>
	<span style="font-weight: bold;">1. Một chiếc v&aacute;y trơn m&agrave;u</span></div>
<div>
	&nbsp;</div>
<div>
	Kh&ocirc;ng cần phải phối đồ cầu kỳ, chỉ một chiếc v&aacute;y liền với kiểu d&aacute;ng đơn giản l&agrave; đủ để bạn c&oacute; diện mạo chỉn chu, ưa nh&igrave;n hơn. V&iacute; dụ cụ thể nhất l&agrave; v&aacute;y midi mềm mại, bay bổng nổi bật n&eacute;t nữ t&iacute;nh duy&ecirc;n d&aacute;ng hay một chiếc v&aacute;y d&agrave;i &ocirc;m d&aacute;ng khoe kh&eacute;o những đường cong ẩn hiện, sẽ kh&ocirc;ng bao giờ khiến bạn phải thất vọng khi muốn g&acirc;y ấn tượng với ph&aacute;i mạnh.</div>
<div>
	&nbsp;</div>
<div style="text-align: center;">
	<div>
		<img alt="váy trơn màu" h="" src="http://afamily1.mediacdn.vn/k:8JtZYBME2SUtEok2WIOUV7c3Os5pvZ/Image/2016/10/1-3-7dfca/vay-tron-mau.jpg" title="váy trơn màu" w="" /></div>
	<br />
	<div>
		&nbsp;</div>
	<br />
	<div>
		&nbsp;</div>
	<br />
	<div>
		&nbsp;</div>
</div>
<div>
	<span style="font-weight: bold;">2. &Aacute;o/ v&aacute;y c&oacute; thắt eo</span></div>
<div>
	&nbsp;</div>
<div>
	K&iacute;n đ&aacute;o nhưng vẫn t&ocirc;n d&aacute;ng l&agrave; điểm cộng đ&aacute;ng ch&uacute; &yacute; của những kiểu v&aacute;y, &aacute;o c&oacute; thắt nơ eo duy&ecirc;n d&aacute;ng. D&ugrave; bạn thuộc tu&yacute;p &ldquo;m&igrave;nh d&acirc;y&rdquo; hay đầy đặn nở nang th&igrave; những kiểu đồ nhấn nh&aacute; v&ograve;ng eo thế n&agrave;y đều gi&uacute;p v&oacute;c d&aacute;ng tr&ocirc;ng c&acirc;n đối, cao r&aacute;o hơn, t&ocirc;n l&ecirc;n những đường cong nữ t&iacute;nh v&agrave; mang lại vẻ ngo&agrave;i quyến rũ kh&oacute; cưỡng.&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	<div style="text-align:center;">
		<img alt="váy áo thắt nơ" h="" src="http://afamily1.mediacdn.vn/k:8JtZYBME2SUtEok2WIOUV7c3Os5pvZ/Image/2016/10/2-5-f74ff/vay-ao-that-no.jpg" title="váy áo thắt nơ" w="" /></div>
	<br />
	<div style="text-align:center;">
		&nbsp;</div>
	<br />
	<div style="text-align:center;">
		<img alt="váy áo thắt nơ" h="530" src="http://afamily1.mediacdn.vn/k:thumb_w/600/8JtZYBME2SUtEok2WIOUV7c3Os5pvZ/Image/2016/10/2-7-f74ff/vay-ao-that-no.jpg" title="váy áo thắt nơ" w="600" /></div>
	<div style="text-align:center;">
		&nbsp;</div>
	<div style="text-align:center;">
		&nbsp;</div>
	<br />
	<div style="text-align:center;">
		&nbsp;</div>
	<div style="text-align:center;">
		&nbsp;</div>
	<div style="text-align:center;">
		&nbsp;</div>
</div>
<div>
	&nbsp;</div>
<div>
	<span style="font-weight: bold;">3. Trang phục, son m&agrave;u đỏ</span></div>
<div>
	&nbsp;</div>
<div>
	Bạn c&oacute; thể cho rằng m&agrave;u đỏ qu&aacute; nổi bật v&agrave; ch&oacute;i mắt nhưng c&aacute;c nh&agrave; khoa học đ&atilde; chứng minh sắc đỏ đậm c&oacute; khả năng gi&uacute;p người mặc th&ecirc;m tự tin v&agrave; gia tăng sự thu h&uacute;t với nam giới. M&ugrave;a thu n&agrave;y, h&atilde;y để t&ocirc;ng đỏ khiến bạn th&ecirc;m phần xinh đẹp v&agrave; n&oacute;ng bỏng với một chiếc ch&acirc;n v&aacute;y da đỏ mận hay đơn giản l&agrave; thoa l&ecirc;n m&ocirc;i m&agrave;u đỏ tươi - sắc son chưa bao giờ lỗi mốt.</div>
<div>
	&nbsp;</div>
<div style="text-align: center;">
	&nbsp;</div>
<div style="text-align: center;">
	&nbsp;</div>
<div style="text-align: center;">
	<div>
		&nbsp;</div>
</div>
<div>
	<div style="text-align:center;">
		&nbsp;</div>
	<div style="text-align:center;">
		&nbsp;</div>
	<div style="text-align:center;">
		<img alt="tông màu đỏ" h="" src="http://afamily1.mediacdn.vn/k:8JtZYBME2SUtEok2WIOUV7c3Os5pvZ/Image/2016/10/3-524d4/tong-mau-do.jpg" title="tông màu đỏ" w="" /><br />
		&nbsp;</div>
</div>
<div>
	<span style="font-weight: bold;">4. &Aacute;o/ v&aacute;y khoe xương quai xanh</span></div>
<div>
	&nbsp;</div>
<div>
	Xương quai xanh ch&iacute;nh l&agrave; một trong những n&eacute;t đẹp quyến rũ nhất nhưng kh&ocirc;ng qu&aacute; khi&ecirc;u kh&iacute;ch của ph&aacute;i đẹp. Mỗi khi bạn cần tr&ocirc;ng thật gợi cảm nhưng vẫn nhẹ nh&agrave;ng, nữ t&iacute;nh, &nbsp;h&atilde;y phối một chiếc &aacute;o hai d&acirc;y hay trễ vai với quần jeans hay ch&acirc;n v&aacute;y d&agrave;i ngang gối. Những khoảng hở đ&uacute;ng chỗ v&agrave; được tiết chế vừa phải sẽ kh&ocirc;ng khiến bạn phải ngượng ng&ugrave;ng trước mắt ch&agrave;ng.</div>
<div>
	&nbsp;</div>
<div style="text-align: center;">
	<div>
		<img alt="áo khoe xương quai xanh" h="" src="http://afamily1.mediacdn.vn/k:8JtZYBME2SUtEok2WIOUV7c3Os5pvZ/Image/2016/10/-4-7f6fa/ao-khoe-xuong-quai-xanh.jpg" title="áo khoe xương quai xanh" w="" /></div>
	<br />
	<div>
		&nbsp;</div>
	<br />
	<div>
		&nbsp;</div>
	<br />
	<div>
		<img alt="áo khoe xương quai xanh" h="" src="http://afamily1.mediacdn.vn/k:8JtZYBME2SUtEok2WIOUV7c3Os5pvZ/Image/2016/10/5-b9c94/ao-khoe-xuong-quai-xanh.jpg" title="áo khoe xương quai xanh" w="" /></div>
</div>
<div>
	<span style="font-weight: bold;">5. Thắt lưng</span></div>
<div>
	&nbsp;</div>
<div>
	M&ugrave;a thu cũng l&agrave; l&uacute;c bạn muốn thử nghiệm những c&aacute;ch kết hợp layer nhiều lớp v&aacute;y, &aacute;o nhưng nếu chưa kh&eacute;o kết hợp, v&oacute;c d&aacute;ng sẽ rất dễ trở n&ecirc;n tr&ograve;n trịa hơn thực tế. L&uacute;c n&agrave;y, một chiếc thắt lưng bản nhỏ sẽ l&agrave; điểm nhấn đắt gi&aacute; v&agrave; trợ thủ đắc lực gi&uacute;p set đồ t&ocirc;n d&aacute;ng v&agrave; gọn g&agrave;ng hơn.&nbsp;</div>
<div>
	&nbsp;</div>
<div style="text-align: center;">
	<div>
		<img alt="thắt lưng" h="" src="http://afamily1.mediacdn.vn/k:8JtZYBME2SUtEok2WIOUV7c3Os5pvZ/Image/2016/10/7-2-fb725/that-lung.jpg" title="thắt lưng" w="" /></div>
	<br />
	<div>
		&nbsp;</div>
</div>
<br />
', 1, 2)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (13, N'10 gam màu bừng sáng cả tủ đồ của bạn trong Thu/Đông tới', N'tin8.jpg', N'Những gam màu nào được dự đoán sẽ trở thành xu hướng chiếm lĩnh làng thời trang trong mùa Thu/Đông mới này.', CAST(N'2016-10-09T15:51:24.000' AS DateTime), 0, N'<div>
	Cứ mỗi năm, mỗi m&ugrave;a, Viện M&agrave;u sắc Pantone tại Mĩ lại c&ocirc;ng bố những m&agrave;u sắc nổi trội được dự đo&aacute;n trở th&agrave;nh xu hướng của qu&atilde;ng thời gian sau đ&oacute;. Những m&agrave;u sắc n&agrave;y được nghi&ecirc;n cứu, tổng hợp qua những m&ugrave;a thời trang, khảo s&aacute;t người ti&ecirc;u d&ugrave;ng v&agrave; nhiều chỉ ti&ecirc;u kh&aacute;c. Trong m&ugrave;a thu năm nay, những m&agrave;u sắc n&agrave;o sẽ trở th&agrave;nh xu hướng trong l&agrave;ng thời trang? Dưới đ&acirc;y l&agrave; 10 m&agrave;u sắc được dự đo&aacute;n sẽ &ldquo;l&agrave;m n&ecirc;n chuyện&rdquo; trong những th&aacute;ng cuối năm nay dựa theo bảng m&agrave;u Pantone.</div>
<div>
	&nbsp;</div>
<div>
	<span style="font-weight: bold;">1.&nbsp;Đỏ cực quang</span></div>
<div>
	&nbsp;</div>
<div>
	Nếu như bạn nghĩ rằng m&ugrave;a thu l&agrave; m&ugrave;a của những gam m&agrave;u trầm tối th&igrave; bạn đ&atilde; nhầm. Trong năm nay, t&ocirc;ng m&agrave;u đỏ cực quang tươi s&aacute;ng được dự đo&aacute;n sẽ trở th&agrave;nh xu hướng thắp s&aacute;ng tiết trời đ&ocirc;ng ảm đạm. Gọi l&agrave; đỏ cực quang, sở dĩ bởi ch&uacute;ng l&agrave; m&agrave;u đỏ tươi th&ocirc;ng thường, nhưng lại kh&aacute; hắt s&aacute;ng &ndash; một m&agrave;u đỏ đủ để khiến bạn nổi bật trong bất cứ buổi dạo tối cuối thu n&agrave;o.</div>
<div>
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="xu hướng thu đông 2016" h="505" src="http://afamily1.mediacdn.vn/k:thumb_w/600/8JtZYBME2SUtEok2WIOUV7c3Os5pvZ/Image/2016/09/1-2d49c/xu-huong-thu-dong-2016.jpg" title="xu hướng thu đông 2016" w="700" /></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-weight: bold;">2.&nbsp;N&acirc;u đất s&aacute;ng</span></div>
<div>
	&nbsp;</div>
<div>
	Chẳng kh&oacute; để nhận ra những t&ocirc;ng m&agrave;u &ldquo;tự nhi&ecirc;n&rdquo; trong năm nay thường kh&aacute; được ưa chuộng, v&agrave; m&agrave;u n&acirc;u đất s&aacute;ng cũng kh&ocirc;ng phải ngoại lệ. T&ocirc;ng m&agrave;u n&acirc;u n&agrave;y được đ&aacute;nh gi&aacute; l&agrave; kh&aacute; tương tự với m&agrave;u nude, thanh lịch, ấm &aacute;p nhưng v&ocirc; c&ugrave;ng c&aacute; t&iacute;nh. Những ng&ocirc;i sao Hollywood như Kim Kadashian ch&iacute;nh l&agrave; một trong những nh&acirc;n tố &ldquo;lăng x&ecirc;&rdquo; t&ocirc;ng m&agrave;u ấn tượng n&agrave;y đến với đ&ocirc;ng đảo t&iacute;n đồ thời trang.</div>
<div>
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="xu hướng thu đông 2016" h="505" src="http://afamily1.mediacdn.vn/k:thumb_w/600/8JtZYBME2SUtEok2WIOUV7c3Os5pvZ/Image/2016/09/2-2d49c/xu-huong-thu-dong-2016.jpg" title="xu hướng thu đông 2016" w="700" /></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-weight: bold;">3.&nbsp;Xanh lục bảo</span></div>
<div>
	&nbsp;</div>
<div>
	Tuy l&agrave; t&ocirc;ng m&agrave;u lạnh, thế nhưng m&agrave;u xanh lục bảo lại kh&ocirc;ng hề đem tới cảm gi&aacute;c lạnh lẽo m&agrave; thay v&agrave;o đ&oacute; l&agrave; cảm gi&aacute;c thư th&aacute;i, thoải m&aacute;i v&agrave; v&ocirc; c&ugrave;ng thời trang, tựa như vừa bước v&agrave;o một khu vườn nhiệt đới sum su&ecirc; hoa l&aacute;, c&acirc;y cỏ. Trong bảng m&agrave;u thu đ&ocirc;ng với v&ocirc; v&agrave;n những m&agrave;u sắc trầm buồn, xanh lục bảo l&agrave; một gam m&agrave;u mang năng lượng v&agrave; tươi s&aacute;ng, t&iacute;ch cực hiếm hoi.&nbsp;</div>
<div>
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="xu hướng thu đông 2016" h="505" src="http://afamily1.mediacdn.vn/k:thumb_w/600/8JtZYBME2SUtEok2WIOUV7c3Os5pvZ/Image/2016/09/3-2d49c/xu-huong-thu-dong-2016.jpg" title="xu hướng thu đông 2016" w="700" /></div>
<div>
	&nbsp;</div>
', 0, 2)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (14, N'6 sao Việt giảm nhiều cân tới mức "nhận không ra"', N'tin9.jpg', N'Nhiều sao Việt có ngoại hình thay đổi rõ rệt so với thời mới hoặc trước khi vào nghề.', CAST(N'2016-10-09T15:53:43.000' AS DateTime), 0, N'<div class="div-baiviet">
	<p class="baiviet-sapo" style="font-size: 13px;">
		Nhiều sao Việt c&oacute; ngoại h&igrave;nh thay đổi r&otilde; rệt so với thời mới hoặc trước khi v&agrave;o nghề.</p>
</div>
<center>
	&nbsp;</center>
<div class="text-conent" itemprop="articleBody">
	<p style="text-align: center;">
		=<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 1" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992071-147599020959025-untitled-40.jpg" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		Th&ugrave;y Chi khiến fan bất ngờ với m&agrave;n thay đổi nhan sắc theo thời gian</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 2" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992072-147599020963388-untitled-40-1.jpg" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		Nếu như c&aacute;ch đ&acirc;y v&agrave;i năm, Th&ugrave;y Chi mũm mĩm v&agrave; c&oacute; th&acirc;n h&igrave;nh đầy đặn dễ g&acirc;y thiện cảm&nbsp;th&igrave; hiện tại c&ocirc; c&oacute; nhan sắc nổi bật hơn nhờ giảm c&acirc;n</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 3" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992075-147599020964190-untitled-40-1-1.jpg" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		Th&ugrave;y Chi ng&agrave;y c&agrave;ng xinh đẹp, khả &aacute;i. H&igrave;nh ảnh mới của c&ocirc; nhận được rất nhiều lời khen ngợi</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 4" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992076-147599020951297-untitled-41-1.jpg" width="500" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		Đức Ph&uacute;c Idol vừa tiết lộ giảm 11 c&acirc;n trong 1 th&aacute;ng</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 5" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992078-147599020972965-untitled-42.jpg" width="500" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		Tuy nhi&ecirc;n phương ph&aacute;p uống nước trừ cơm của qu&aacute;n qu&acirc;n Việt Nam Idol đang bị nhiều d&acirc;n trong nghề thể dục thể h&igrave;nh đ&aacute;nh gi&aacute; l&agrave; thiếu thực tế v&agrave; c&oacute; thể g&acirc;y hại cho sức khỏe</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 6" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992107-14759902095484-untitled-43.jpg" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		Văn Mai Phương cũng l&agrave; một nghệ sĩ giảm c&acirc;n th&agrave;nh c&ocirc;ng</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 7" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992107-14759902093971-untitled-44.jpg" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		C&ocirc; tập gym v&agrave; c&oacute; chế độ dinh dưỡng đặc biệt để c&oacute;&nbsp;d&aacute;ng v&oacute;c thon gọn</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 8" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992108-147599020941964-untitled-44-1.jpg" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		Sự thay đổi ngoại h&igrave;nh của Văn Mai Hương khiến nhiều người nghĩ c&ocirc; đ&atilde; phẫu thuật thẩm mỹ nhưng nữ ca sĩ cho biết đ&oacute; chỉ l&agrave; kết quả của việc giảm c&acirc;n</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 9" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992108-147599020981463-untitled-45.jpg" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		Minh Hằng cũng từng c&oacute; một thời mập &uacute;</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 10" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992110-147599020993214-untitled-46.jpg" width="500" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		Nhờ tập luyện v&agrave; thực hiện nguy&ecirc;n tắc kh&ocirc;ng ăn đồ b&eacute;o, nước c&oacute; ga sau 7 giờ tối, Minh Hằng giờ đ&acirc;y c&oacute; được v&oacute;c d&aacute;ng &quot;vạn người m&ecirc;&quot;</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 11" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992110-147599020915523-untitled-47.jpg" width="500" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		Th&aacute;i Trinh giảm được tổng c&ocirc;ng 12 kg so với thời thi The Voice.&nbsp;B&iacute; quyết của c&ocirc; l&agrave;&nbsp;ăn rau xanh v&agrave; uống 5 chai nước suối mỗi ng&agrave;y kết hợp c&ugrave;ng&nbsp;tập luyện để cơ thể được khoẻ mạnh hơn. Mỗi ng&agrave;y c&ocirc;&nbsp;nhảy d&acirc;y 1000 c&aacute;i v&agrave;o buổi s&aacute;ng, chiều chạy li&ecirc;n tục 45 ph&uacute;t, tối tập yoga</p>
	<p style="text-align: center;">
		<img alt="6 sao Việt giảm nhiều cân tới mức &amp;#34;nhận không ra&amp;#34; - 12" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-09/1475992110-147599020972766-untitled-47-1.jpg" width="500" /></p>
	<p style="color:#0000FF;font-style:italic;text-align:center;">
		H&agrave; Anh Tuấn từng nặng hơn 100 kg. Nhờ chế độ luyện tập v&agrave; ăn ki&ecirc;ng khoa học, anh c&oacute; được v&oacute;c d&aacute;ng săn chắc, gọn g&agrave;ng hơn tr&ocirc;ng thấy</p>
</div>
<br />
', 0, 2)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (15, N'Bí quyết làm đẹp của hot girl vạn người mê Helly Tống', N'tin10.jpg', N'Khi nhắc đến Helly Tống, không ít người phải xuýt xoa và trầm trồ về cô gái với nét đẹp thuần túy. Không chỉ xinh đẹp, Helly Tống còn rất thành công trong lĩnh vực kinh doanh khi mới 21 tuổi.', CAST(N'2016-10-09T15:56:58.000' AS DateTime), 1, N'<div class="div-baiviet">
	<p class="baiviet-sapo" style="font-size: 13px;">
		Hot girl với vẻ đẹp đặc biệt chia sẻ về những m&oacute;n đồ l&agrave;m đẹp ưa th&iacute;ch của m&igrave;nh.</p>
</div>
<center>
	&nbsp;</center>
<div class="text-conent" itemprop="articleBody">
	<p align="center">
		<img alt="Bí quyết làm đẹp của hot girl vạn người mê Helly Tống - 1" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-06/1475723946-147565303673506-12814806_1155820024430248_1409989156239140250_n.jpg" width="500" /></p>
	<p>
		Khi nhắc đến Helly Tống, kh&ocirc;ng &iacute;t người phải xu&yacute;t xoa v&agrave; trầm trồ về c&ocirc; g&aacute;i với n&eacute;t đẹp thuần t&uacute;y. Kh&ocirc;ng chỉ&nbsp;xinh đẹp, Helly Tống c&ograve;n rất th&agrave;nh c&ocirc;ng trong lĩnh vực kinh doanh khi mới 21 tuổi.</p>
	<p>
		Kh&ocirc;ng giống như những hot girl kh&aacute;c, bản th&acirc;n Helly Tống kh&ocirc;ng muốn được gọi như vậy, c&ocirc; quan niệm về đời kh&aacute;c hẳn số đ&ocirc;ng những bạn trẻ kh&aacute;c.&nbsp;Helly Tống&nbsp;sống trầm lặng v&agrave; y&ecirc;n b&igrave;nh theo lối sống c&oacute; lẽ như của một người trưởng th&agrave;nh v&agrave; hẳn l&agrave; đ&atilde; c&oacute; nhiều thăng trầm trong cuộc sống.</p>
	<p align="center">
		<img alt="Bí quyết làm đẹp của hot girl vạn người mê Helly Tống - 2" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-06/1475723946-147565316311501-12144820_1078635462148705_8308955014274470998_n.jpg" style="text-align: justify;" width="500" /></p>
	<p>
		&nbsp;</p>
	<p>
		N&oacute;i đến l&agrave;m đẹp, Helly c&oacute; những c&aacute;ch rất ri&ecirc;ng.&nbsp;C&ocirc; kh&ocirc;ng chuộng những sản phẩm qu&aacute; đắt tiền, qu&aacute; cao sang.&nbsp;Bản th&acirc;n Helly&nbsp;cũng l&agrave; người khi&ecirc;m nhường, mọi thứ xung quanh c&ocirc;&nbsp;rất đỗi nhẹ nh&agrave;ng, đơn giản, hoặc c&ocirc; khiến mọi thứ trở n&ecirc;n như vậy.</p>
	<p>
		Helly chia sẻ v&igrave;&nbsp;cũng thường xuy&ecirc;n phải đi chụp h&igrave;nh quảng c&aacute;o&nbsp;n&ecirc;n những l&uacute;c rảnh, c&ocirc; chỉ muốn để mọi thứ thật tự nhi&ecirc;n để da được &quot;thở&quot; nhiều hơn. Cũng v&igrave; thế, người&nbsp;ta thường thấy Helly với một vẻ đẹp nhẹ nh&agrave;ng m&agrave; thuần khiết.</p>
	<p>
		Vậy chắc hẳn, c&ocirc; rất quan t&acirc;m đến l&agrave;n da để c&oacute; thể tự tin để mặt mộc như thế. Helly chia sẻ, những sản phẩm kh&ocirc;ng thể thiếu của c&ocirc; h&agrave;ng ng&agrave;y chỉ xoay quanh dưỡng m&ocirc;i, kem BB, một thỏi son v&agrave; mascara.</p>
	<p>
		<strong>Kem dưỡng m&ocirc;i:</strong></p>
	<p>
		Với Helly, kem dưỡng m&ocirc;i&nbsp;dạng s&aacute;p để trong hũ v&ocirc; c&ugrave;ng tiện lợi v&igrave; ngo&agrave;i việc chăm s&oacute;c cho đ&ocirc;i m&ocirc;i kh&ocirc;ng bị kh&ocirc; nẻ, c&ograve;n c&oacute; thể d&ugrave;ng để b&ocirc;i cho c&aacute;c v&ugrave;ng da kh&ocirc; kh&aacute;c. Thậm ch&iacute;, c&ocirc; c&ograve;n trộn kem dưỡng m&ocirc;i&nbsp;với đường n&acirc;u để th&agrave;nh hỗn hợp&nbsp;tẩy da chết cho m&ocirc;i.&nbsp;</p>
	<p>
		<strong>Kem BB:</strong></p>
	<p>
		Đối với kem BB, Helly chọn loại kem với độ che phủ mỏng nhất. C&ocirc;&nbsp;kh&ocirc;ng th&iacute;ch da mặt m&igrave;nh bị t&ocirc; tr&aacute;t qu&aacute; nhiều lớp, chỉ cần&nbsp;đơn giản l&agrave;&nbsp;l&agrave;m đều m&agrave;u da hơn, che những v&ugrave;ng bị th&acirc;m sau mụn v&agrave; tiện chống nắng lu&ocirc;n.</p>
	<p>
		<strong>Son:</strong></p>
	<p>
		M&agrave;u&nbsp;son y&ecirc;u th&iacute;ch của Helly lu&ocirc;n l&agrave;&nbsp;m&agrave;u đỏ, điều đ&oacute; cũng l&iacute; giải tại sao ch&uacute;ng ta thường thấy Helly c&oacute; một đ&ocirc;i m&ocirc;i căng mọng. C&ocirc; chia sẻ khi n&agrave;o &ldquo;l&agrave;m biếng&rdquo; c&ograve;n c&oacute; thể d&ugrave;ng son l&agrave;m m&agrave;u m&aacute; hồng lu&ocirc;n.</p>
	<p>
		<strong>Mascara:</strong></p>
	<p>
		Mỗi&nbsp;c&ocirc; g&aacute;i kh&ocirc;ng thể thiếu mascara&nbsp;n&ecirc;n chắc chắn Helly kh&ocirc;ng&nbsp;bỏ qua sản phẩm l&agrave;m đẹp n&agrave;y. Tuy nhi&ecirc;n, c&ocirc; cho biết chỉ&nbsp;d&ugrave;ng mascara&nbsp;khi đi dự sự kiện.</p>
</div>
<br />
', 0, 2)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (16, N'3 giải pháp tự nhiên giúp làn da luôn mịn màng, rạng rỡ', N'tin11.jpg', N'Làn da sẽ trở nên tối màu khi xuất hiện nhiều đốm đen và những vết nám. Nguyên nhân chính là sự tích tụ của các tạp chất và quá trình sản xuất melanin diễn ra mạnh mẽ. Đây là một loại hắc tố đem đến n', CAST(N'2016-10-09T15:58:07.000' AS DateTime), 0, N'<p>
	L&agrave;n da sẽ trở n&ecirc;n tối m&agrave;u khi xuất hiện nhiều đốm đen v&agrave; những vết n&aacute;m. Nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave; sự t&iacute;ch tụ của c&aacute;c tạp chất v&agrave; qu&aacute; tr&igrave;nh sản xuất melanin diễn ra mạnh mẽ. Đ&acirc;y l&agrave; một loại hắc tố đem đến những vết đen xấu x&iacute; tr&ecirc;n khu&ocirc;n mặt.&nbsp;Biện ph&aacute;p khắc phục hiện tượng n&agrave;y l&agrave; tăng cường vitamin thiết yếu cho sức khỏe l&agrave;n da v&agrave; loại bỏ c&aacute;c hắc tố đem lại vẻ đẹp mịn m&agrave;ng tự nhi&ecirc;n.</p>
<p>
	<em>H&atilde;y thực hiện theo 3 giải ph&aacute;p dưới đ&acirc;y để c&oacute; được l&agrave;n da mịn m&agrave;ng như &yacute;</em></p>
<p>
	<strong>1. Tăng cường vitamin</strong></p>
<p>
	L&agrave;n da đổi m&agrave;u c&oacute; thể l&agrave; từ nguy&ecirc;n nh&acirc;n thiếu hụt vitamin, v&igrave; vậy h&atilde;y t&igrave;m c&aacute;ch tăng cường vitamin E v&agrave; C cho tế b&agrave;o da để lấy lại vẻ đẹp tự nhi&ecirc;n.&nbsp;</p>
<p>
	Buổi tối trước khi đi ngủ nghiền nhỏ v&agrave;i vi&ecirc;n vitamin C hoặc b&oacute;c một vi&ecirc;n nang mềm viamin E rồi xoa nhẹ l&ecirc;n l&agrave;n da tr&ecirc;n khu&ocirc;n mặt. H&atilde;y để ch&uacute;ng tr&ecirc;n da bạn qua đ&ecirc;m v&agrave; rửa sạch v&agrave;o s&aacute;ng sớm h&ocirc;m sau. Ki&ecirc;n tr&igrave; với biện ph&aacute;p n&agrave;y bạn sẽ nhận thấy sự đổi kh&aacute;c của l&agrave;n da ng&agrave;y c&agrave;ng rạng rỡ. Mặt kh&aacute;c, bạn cũng n&ecirc;n t&iacute;ch cực hơn nữa việc ti&ecirc;u thụ những loại thực phẩm c&oacute; chứa nhiều những loại vitamin n&agrave;y, nhất l&agrave; c&aacute;c loại tr&aacute;i c&acirc;y ti&ecirc;u biểu như cam, qu&yacute;t, d&acirc;u t&acirc;y&hellip;</p>
<p style="text-align: center;">
	<img alt="3 giải pháp tự nhiên giúp làn da luôn mịn màng, rạng rỡ - 2" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-05/1475666606-147555395182549-da-dv2.jpg" /><br />
	<span style="color:#0000FF;"><em>Vitamin E gi&uacute;p l&agrave;n da mịn m&agrave;ng&nbsp;</em></span></p>
<p>
	<strong>2. &Aacute;p dụng một số nguy&ecirc;n liệu tự nhi&ecirc;n</strong></p>
<p>
	Trong cuộc sống, c&oacute; nhiều loại sản phẩm tự nhi&ecirc;n c&oacute; thể gi&uacute;p bạn loại bỏ hắc tố da hiệu quả. Thực hiện theo một số c&aacute;ch l&agrave;m dưới đ&acirc;y bạn sẽ thấy hiệu quả nhanh ch&oacute;ng.</p>
<p style="text-align: center;">
	<img alt="3 giải pháp tự nhiên giúp làn da luôn mịn màng, rạng rỡ - 3" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-05/1475666606-147555395143228-da-dv3.jpg" /><br />
	<span style="color:#0000FF;"><em>Một số nguy&ecirc;n liệu c&oacute; t&iacute;nh năng tẩy trắng da hiệu quả</em></span></p>
<p>
	C&aacute;ch 1: D&ugrave;ng dầu thầu dầu ch&agrave; x&aacute;t nhẹ nh&agrave;ng l&ecirc;n l&agrave;n da hai ng&agrave;y một lần v&agrave; rửa sạch với nước ấm. Thực hiện ki&ecirc;n tr&igrave; theo c&aacute;ch n&agrave;y, bạn sẽ gi&uacute;p l&agrave;n da s&aacute;ng r&otilde; hơn.</p>
<p>
	C&aacute;ch 2: Thường xuy&ecirc;n &aacute;p dụng c&aacute;ch rửa mặt với dầu c&acirc;y tr&agrave; bằng quả &nbsp;b&oacute;ng b&ocirc;ng sẽ gi&uacute;p tế b&agrave;o da ngăn chặn sự hoạt động của c&aacute;c gốc tự do v&agrave; k&iacute;ch th&iacute;ch qu&aacute; tr&igrave;nh ph&aacute;t triển của tế b&agrave;o da mới.</p>
<p>
	C&aacute;ch 3: Sử dụng một quả b&oacute;ng b&ocirc;ng nh&uacute;ng sữa tươi v&agrave; xoa l&ecirc;n những điểm tối tr&ecirc;n da mặt. Để sữa lưu tr&ecirc;n da mặt 10 ph&uacute;t, sau đ&oacute; rửa sạch với nước m&aacute;t v&agrave; vỗ kh&ocirc; với khăn mềm. Thực hiện 2 lần mỗi ng&agrave;y cho đến khi c&oacute; được l&agrave;n da rạng rỡ.</p>
<p>
	C&aacute;ch 4: Xoa nhẹ một ch&uacute;t nước chanh l&ecirc;n khu vực l&agrave;n da tối m&agrave;u trong v&agrave;i ph&uacute;t, sau đ&oacute; rửa sạch với nước m&aacute;t v&agrave; &aacute;p dụng kem dưỡng ẩm. Thực hiện theo c&aacute;ch n&agrave;y, sau một thời gian l&agrave;n da của bạn sẽ sạch sẽ v&agrave; s&aacute;ng r&otilde; hơn.</p>
<p>
	<strong>3. Tự chế mặt nạ l&agrave;m s&aacute;ng da</strong></p>
<p>
	Để tăng cường khả năng l&agrave;m s&aacute;ng da, bạn c&oacute; thể bỏ ra một ch&uacute;t thời gian để chăm s&oacute;c l&agrave;n da với một loại mặt nạ tự nhi&ecirc;n.</p>
<p>
	<em>Th&agrave;nh phần</em></p>
<p>
	- 1 th&igrave;a mật ong</p>
<p>
	- 1 th&igrave;a đường n&acirc;u</p>
<p>
	- Nước lọc vừa đủ</p>
<p style="text-align: center;">
	<img alt="3 giải pháp tự nhiên giúp làn da luôn mịn màng, rạng rỡ - 4" class="news-image" src="http://image.24h.com.vn/upload/4-2016/images/2016-10-05/1475666606-147555395157291-da-dv4.jpg" /><br />
	<span style="color:#0000FF;"><em>Mặt nạ tự nhi&ecirc;n l&agrave;m s&aacute;ng da</em></span></p>
<p>
	<em>Thực hiện</em></p>
<p>
	- Trộn 1 th&igrave;a mật ong v&agrave; 1 th&igrave;a đường n&acirc;u trong b&aacute;t để ch&uacute;ng kết hợp với nhau th&agrave;nh bột nh&atilde;o. Bạn c&oacute; thể th&ecirc;m một ch&uacute;t nước lọc để hỗn hợp c&oacute; được độ nh&atilde;o ph&ugrave; hợp thuận tiện cho việc sử dụng.</p>
<p>
	- Rửa sạch khu&ocirc;n mặt v&agrave; vỗ ẩm với nước ấm, sau đ&oacute; xoa nhẹ nh&agrave;ng hỗn hợp mặt nạ theo h&igrave;nh tr&ograve;n nhỏ l&ecirc;n l&agrave;n da v&agrave; thư gi&atilde;n.</p>
<p>
	- Sau 15 p h&uacute;t rửa sạch mặt nạ với nước ấm v&agrave; vỗ kh&ocirc; với khăn mềm.</p>
', 0, 2)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (17, N'Đây là lý do vì sao Hoàng tử bé lại luôn mặc quần ngắn dù thời tiết có lạnh', N'tin12.jpg', N'Từ khi chào đời vào năm 2013 cho đến nay, hoàng tử bé George, con trai đầu lòng của hoàng tử William và công nương Kate Middleton nước Anh luôn nhận được nhiều tình cảm cũng như sự quan tâm đặc biệt c', CAST(N'2016-10-09T15:59:04.000' AS DateTime), 0, N'<h2>
	Nếu để &yacute;, c&oacute; thế thấy lần n&agrave;o xuất hiện Ho&agrave;ng tử b&eacute; cũng mặc quần shorts ngắn, nhưng kh&ocirc;ng phải v&igrave; n&oacute;ng qu&aacute; đ&acirc;u nh&eacute;.</h2>
<div class="detail_content fl mgt15">
	<div>
		Từ khi ch&agrave;o đời v&agrave;o năm 2013 cho đến nay, ho&agrave;ng tử b&eacute; George, con trai đầu l&ograve;ng của ho&agrave;ng tử William v&agrave; c&ocirc;ng nương Kate Middleton nước Anh lu&ocirc;n nhận được nhiều t&igrave;nh cảm cũng như sự quan t&acirc;m đặc biệt của c&ocirc;ng ch&uacute;ng. Kh&ocirc;ng chỉ nổi tiếng với vẻ ngo&agrave;i đ&aacute;ng y&ecirc;u hết mức, <a href="http://afamily.vn/hoang-tu-be/trang-3.htm" target="http://afamily.vn/hoang-tu-be/trang-3.htm" title="hoàng tử bé"><span style="font-weight: bold;">ho&agrave;ng tử b&eacute;</span></a> c&ograve;n được biết đến với khả năng biến mọi thứ m&igrave;nh mặc trở th&agrave;nh &quot;hot items&quot;, thậm ch&iacute; c&oacute; những m&oacute;n đồ được b&aacute;n hết sạch trong 1 đ&ecirc;m. V&agrave; cũng&nbsp;&nbsp;giống như mẹ Kate Middleton, ho&agrave;ng tử nhỏ lu&ocirc;n được giới truyền th&ocirc;ng săn đ&oacute;n v&agrave; lu&ocirc;n xuất hiện với phong c&aacute;ch thời trang đặc trưng.</div>
	<div>
		&nbsp;</div>
	<div>
		Nếu để &yacute; lần xuất hiện n&agrave;o của ho&agrave;ng tử George, th&igrave; cậu b&eacute; lu&ocirc;n lu&ocirc;n mặc quần shorts ngắn v&agrave; l&yacute; do đằng sau sự lựa chọn thời trang n&agrave;y l&agrave; g&igrave;?&nbsp;</div>
	<div>
		&nbsp;</div>
	<div style="text-align: center;">
		<span style="font-style: italic;"><img alt="Hoàng tử bé nước Anh " h="752" src="http://afamily1.mediacdn.vn/k:thumb_w/600/J1mfVMcPYSxDH1erfcccccccccccc5/Image/2016/10/tat-tan-tat-ve-hoang-tu-be-nuoc-anh-cau-be-nho-tuoi-quyen-luc-nhat-the-gioi_a61110a9e7-1dd65/hoang-tu-be-nuoc-anh-.jpg" title="Hoàng tử bé nước Anh " w="600" /></span></div>
	<div style="text-align: center;">
		<span style="font-style: italic;">H&igrave;nh ảnh mới nhất của Ho&agrave;ng tử b&eacute; trong bộ đồ xinh xắn với &aacute;o ph&ocirc;ng c&oacute; cổ v&agrave; quần shorts ngắn.&nbsp;</span></div>
	<div style="text-align: center;">
		&nbsp;</div>
	<div style="text-align: center;">
		<img alt="Hoàng tử bé nước Anh " h="1015" src="http://afamily1.mediacdn.vn/k:thumb_w/600/J1mfVMcPYSxDH1erfcccccccccccc5/Image/2016/10/hoang-tu-be-1dd65/hoang-tu-be-nuoc-anh-.jpg" title="Hoàng tử bé nước Anh " w="600" /></div>
	<div style="text-align: center;">
		<span style="font-style: italic;">Ngay từ l&uacute;c b&eacute; t&iacute;, lần n&agrave;o xuất hiện Ho&agrave;ng tử cũng diện quần ngắn...</span></div>
	<div style="text-align: center;">
		&nbsp;</div>
	<div style="text-align: center;">
		<img alt="Hoàng tử bé nước Anh " h="545" src="http://afamily1.mediacdn.vn/k:thumb_w/600/J1mfVMcPYSxDH1erfcccccccccccc5/Image/2016/10/6-1469511197684-1dd65/hoang-tu-be-nuoc-anh-.jpg" title="Hoàng tử bé nước Anh " w="650" /></div>
	<div style="text-align: center;">
		<span style="font-style: italic;">... ngay cả khi mặc đồ yếm nữa nh&eacute;.</span></div>
	<div style="text-align: center;">
		&nbsp;</div>
	<div style="text-align: center;">
		<img alt="Hoàng tử bé nước Anh " h="661" src="http://afamily1.mediacdn.vn/k:thumb_w/600/J1mfVMcPYSxDH1erfcccccccccccc5/Image/2016/10/tat-tan-tat-ve-hoang-tu-be-nuoc-anh-cau-be-nho-tuoi-quyen-luc-nhat-the-gioi_4ae89c111f-1dd65/hoang-tu-be-nuoc-anh-.jpg" title="Hoàng tử bé nước Anh " w="600" /></div>
	<div style="text-align: center;">
		<span style="font-style: italic;">Trời se lạnh một ch&uacute;t th&igrave; Ho&agrave;ng tử vẫn xuất hiện với chiếc quần ngắn, nhưng kết hợp ấm &aacute;p hơn với tất d&agrave;i v&agrave; &aacute;o len.</span></div>
	<div style="text-align: center;">
		&nbsp;</div>
	<div style="text-align: center;">
		<div>
			<img alt="Hoàng tử bé nước Anh " h="471" src="http://afamily1.mediacdn.vn/k:thumb_w/600/J1mfVMcPYSxDH1erfcccccccccccc5/Image/2016/10/21JanPAYPROD22072016Georgeonabox-1dd65/hoang-tu-be-nuoc-anh-.jpg" title="Hoàng tử bé nước Anh " w="615" /></div>
		<div>
			<span style="font-style: italic;">C&oacute; vẻ nhưng mặc quần ngắn v&agrave; đi tất d&agrave;i l&agrave; phong c&aacute;ch m&agrave; mẹ Kate chọn cho George?</span></div>
		<div>
			&nbsp;</div>
		<div>
			<img alt="Hoàng tử bé nước Anh " h="1132" src="http://afamily1.mediacdn.vn/k:thumb_w/600/J1mfVMcPYSxDH1erfcccccccccccc5/Image/2016/10/5-1469511197709-1dd65/hoang-tu-be-nuoc-anh-.jpg" title="Hoàng tử bé nước Anh " w="650" /></div>
		<div>
			&nbsp;</div>
		<div>
			<img alt="Hoàng tử bé nước Anh " h="433" src="http://afamily1.mediacdn.vn/k:thumb_w/600/J1mfVMcPYSxDH1erfcccccccccccc5/Image/2016/10/3-1469511197677-1dd65/hoang-tu-be-nuoc-anh-.jpg" title="Hoàng tử bé nước Anh " w="650" /></div>
		<br />
		<div>
			<img alt="Hoàng tử bé nước Anh " h="360" src="http://afamily1.mediacdn.vn/k:thumb_w/600/J1mfVMcPYSxDH1erfcccccccccccc5/Image/2016/10/tat-tan-tat-ve-hoang-tu-be-nuoc-anh-cau-be-nho-tuoi-quyen-luc-nhat-the-gioi-tiep_c2bf1f1c8b-1dd65/hoang-tu-be-nuoc-anh-.jpg" title="Hoàng tử bé nước Anh " w="600" /></div>
		<div>
			&nbsp;</div>
		<div style="text-align: left;">
			Mới đ&acirc;y chuy&ecirc;n gia nghi thức William Hanson đ&atilde; tiết lộ về việc v&igrave; sao Ho&agrave;ng tử b&eacute; lại lu&ocirc;n xuất hiện với chiếc quần shorts ngắn n&agrave;y với tạp ch&iacute; &nbsp;Harper Bazaar UK: &quot;Tại Anh, quần d&agrave;i d&agrave;nh cho b&eacute; trai lớn v&agrave; những người đ&agrave;n &ocirc;ng, trong khi quần shorts ngắn d&agrave;nh cho những cậu b&eacute; nhỏ tuổi. Gia đ&igrave;nh Ho&agrave;ng gia vẫn lu&ocirc;n lu&ocirc;n trung th&agrave;nh với truyền thống n&agrave;y, như Ho&agrave;ng tử William hay Harry đ&atilde; mặc quần shorts cho đến khi được coi l&agrave; đủ tuổi để quần d&agrave;i (quần &acirc;u), v&agrave; thường l&agrave; khoảng 8 năm&quot;. Với truyền thống n&agrave;y, th&igrave; đ&acirc;y thực sự l&agrave; c&aacute;ch gi&uacute;p Ho&agrave;ng tử nổi bật trong m&ugrave;a đ&ocirc;ng đấy chứ!.&nbsp;</div>
		<br />
		<div>
			<img alt="Hoàng tử bé nước Anh " h="1998" src="http://afamily1.mediacdn.vn/k:thumb_w/600/J1mfVMcPYSxDH1erfcccccccccccc5/Image/2016/10/Prince-George-full-1170x1998-1dd65/hoang-tu-be-nuoc-anh-.jpg" title="Hoàng tử bé nước Anh " w="1170" /></div>
		<div style="text-align: right;">
			&nbsp;</div>
		<div style="text-align: right;">
			<span style="font-style: italic;">Nguồn: Thezoereport</span></div>
	</div>
</div>
<br />
', 0, 2)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (18, N'Giới thiệu công ty', N'dmtin3.jpg', N'Được thành lập từ năm 2005, Em đẹp là Công ty thời trang và may mặc chuyên sản xuất, kinh doanh các sản phẩm dệt may, thời trang và thủ công mỹ nghệ… xuất khẩu sang các thị trường khó tính như Nhật Bả', CAST(N'2016-10-09T16:00:17.000' AS DateTime), 3, N'<div>
	Được th&agrave;nh lập từ năm 2005, Em đẹp l&agrave; C&ocirc;ng ty thời trang v&agrave; may mặc chuy&ecirc;n sản xuất, kinh doanh c&aacute;c sản phẩm dệt may, thời trang v&agrave; thủ c&ocirc;ng mỹ nghệ&hellip; xuất khẩu sang c&aacute;c thị trường kh&oacute; t&iacute;nh như Nhật Bản, Mỹ. Được x&acirc;y dựng tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; C&ocirc;ng bằng &ndash; T&ocirc;n trọng &ndash; S&aacute;ng tạo, Em đẹp ng&agrave;y c&agrave;ng khẳng định được uy t&iacute;n v&agrave; thương hiệu tr&ecirc;n thị trường quốc tế.<br />
	&nbsp;</div>
<div>
	Với định hướng ph&aacute;t triển xuất khẩu, đồng h&agrave;nh với việc ph&aacute;t triển thị trường nội địa. Năm 2013, Em đẹp đ&atilde; ph&aacute;t triển c&aacute;c d&ograve;ng sản phẩm khăn truyền thống mang nh&atilde;n hiệu PANSY, được dệt từ sợi b&ocirc;ng tự nhi&ecirc;n (100% cotton, bamboo) c&oacute; bề mặt mịn, độ thấm h&uacute;t cao, an to&agrave;n v&agrave; tạo cảm gi&aacute;c dễ chịu cho người sử dụng. Đến nay, nh&atilde;n hiệu &ldquo;PANSY&rdquo; đ&atilde; sở hữu hơn 15 đầu sản phẩm v&agrave; được b&agrave;y b&aacute;n rộng r&atilde;i tr&ecirc;n khắp cả nước.</div>
<div>
	&nbsp;Giữ vững mục ti&ecirc;u kh&ocirc;ng ngừng đa dạng h&oacute;a c&aacute;c d&ograve;ng sản phẩm để phục vụ nhu cầu ng&agrave;y c&agrave;ng cao của Qu&yacute; kh&aacute;ch h&agrave;ng, năm 2014, Em đẹp đ&atilde; ph&aacute;t triển v&agrave; đưa ra thị trường c&aacute;c sản phẩm thời trang nam nh&atilde;n hiệu &ldquo;W&amp;W&rdquo; như &aacute;o Polo, T-shirt, &aacute;o sơ mi, quần short, quần t&acirc;y, tất, đồ l&oacute;t v.v.. Hiện nay c&aacute;c sản phẩm &ldquo;W&amp;W&rdquo; cũng đ&atilde; được b&agrave;y b&aacute;n phổ biến tại c&aacute;c k&ecirc;nh MT v&agrave; GT trong cả nước.<br />
	&nbsp;</div>
<div>
	Với quy tr&igrave;nh kh&eacute;p t&iacute;n từ thiết kế - sản xuất - ph&acirc;n phối - x&acirc;y dựng thương hiệu, c&aacute;c sản phẩm của Em đẹp lu&ocirc;n đồng h&agrave;nh v&agrave; đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu. C&aacute;c sản phẩm của Em đẹp lu&ocirc;n hợp thời trang, mẫu m&atilde; đẹp, gi&aacute; cả hợp l&yacute; v&agrave; đặc biệt c&aacute;c sản phẩm đều được trải qua kh&acirc;u kiểm tra chất lượng khắt khe, nhằm mang lại sự h&agrave;i l&ograve;ng nhất cho kh&aacute;ch h&agrave;ng.</div>
', 1, 3)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (19, N'Hướng dẫn thanh toán, đặt hàng', N'hdmuahang.jpg', N'Quý khách có thể đặt hàng trên website thông qua các bước sau:
1. Tìm kiểm sản phảm
2. Chọn đặt hàng hoặc thêm vào giỏ hàng
3. Kiểm tra thông tin giỏ hàng, điền thông tin liên hệ
4. Gửi yêu cầu đặ', CAST(N'2016-10-09T16:04:20.000' AS DateTime), 3, N'<header class="article-header clearfix">
	<h1>
		<span style="font-size: 12px;">Qu&yacute; kh&aacute;ch c&oacute; thể đặt h&agrave;ng tr&ecirc;n website th&ocirc;ng qua c&aacute;c bước sau:</span></h1>
</header>
<div class="article-body">
	<p>
		<b>1. T&igrave;m kiểm sản phảm</b></p>
	<p>
		Qu&yacute; kh&aacute;ch truy cập website, click c&aacute;c danh mục sản phẩm muốn xem như &Aacute;o, V&aacute;y... v&agrave; xem những sản phẩm m&igrave;nh y&ecirc;u th&iacute;ch</p>
	<p>
		&nbsp;</p>
	<p>
		2. Chọn đặt h&agrave;ng hoặc th&ecirc;m v&agrave;o giỏ h&agrave;ng<br />
		<br />
		3. Kiểm tra th&ocirc;ng tin giỏ h&agrave;ng, điền th&ocirc;ng tin li&ecirc;n hệ<br />
		<br />
		4. Gửi y&ecirc;u cầu đặt h&agrave;ng</p>
</div>
<br />
', 0, 3)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (20, N'Liên hệ với chúng tôi', N'lienhe.jpg', N'Mọi nhu cầu liên hệ của quý khách, vui lòng liên hệ với chúng tôi theo thông tin dưới đây.
Rất hân hạnh được phục vụ quý khách!', CAST(N'2016-10-09T16:08:57.000' AS DateTime), 4, N'<div>
	Mọi nhu cầu li&ecirc;n hệ của qu&yacute; kh&aacute;ch, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i theo th&ocirc;ng tin dưới đ&acirc;y.<br />
	<br />
	Cửa h&agrave;ng thời trang nữ Em đẹp<br />
	Địa chỉ: Nh&agrave; 18T2 Khu đ&ocirc; thị Trung H&ograve;a - Nh&acirc;n Ch&iacute;nh, Thanh Xu&acirc;n, H&agrave; Nội<br />
	Số điện thoại: 0902 234 481<br />
	Email: emdepfashion@gmail.com<br />
	&nbsp;</div>
<div>
	Rất h&acirc;n hạnh được phục vụ qu&yacute; kh&aacute;ch!</div>
', 0, 3)
SET IDENTITY_INSERT [dbo].[db_TinTuc] OFF
ALTER TABLE [dbo].[db_ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonDatHang_db_DonDatHang] FOREIGN KEY([MaDonDatHang])
REFERENCES [dbo].[db_DonDatHang] ([MaDonDatHang])
GO
ALTER TABLE [dbo].[db_ChiTietDonDatHang] CHECK CONSTRAINT [FK_db_ChiTietDonDatHang_db_DonDatHang]
GO
ALTER TABLE [dbo].[db_ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonDatHang_db_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[db_SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[db_ChiTietDonDatHang] CHECK CONSTRAINT [FK_db_ChiTietDonDatHang_db_SanPham]
GO
ALTER TABLE [dbo].[db_ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonHang_db_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[db_HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[db_ChiTietDonHang] CHECK CONSTRAINT [FK_db_ChiTietDonHang_db_HoaDon]
GO
ALTER TABLE [dbo].[db_ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonHang_db_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[db_SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[db_ChiTietDonHang] CHECK CONSTRAINT [FK_db_ChiTietDonHang_db_SanPham]
GO
ALTER TABLE [dbo].[db_DangKy]  WITH CHECK ADD  CONSTRAINT [FK_db_DangKy_db_QuyenDangNhap] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[db_QuyenDangNhap] ([MaQuyen])
GO
ALTER TABLE [dbo].[db_DangKy] CHECK CONSTRAINT [FK_db_DangKy_db_QuyenDangNhap]
GO
ALTER TABLE [dbo].[db_DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_db_DonDatHang_db_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[db_KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[db_DonDatHang] CHECK CONSTRAINT [FK_db_DonDatHang_db_KhachHang]
GO
ALTER TABLE [dbo].[db_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_db_HoaDon_db_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[db_KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[db_HoaDon] CHECK CONSTRAINT [FK_db_HoaDon_db_KhachHang]
GO
ALTER TABLE [dbo].[db_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_db_HoaDon_db_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[db_NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[db_HoaDon] CHECK CONSTRAINT [FK_db_HoaDon_db_NhanVien]
GO
ALTER TABLE [dbo].[db_LuotDauGia]  WITH CHECK ADD  CONSTRAINT [FK_db_LuotDauGia_db_PhienDauGia] FOREIGN KEY([MaPhienDG])
REFERENCES [dbo].[db_PhienDauGia] ([MaPhienDG])
GO
ALTER TABLE [dbo].[db_LuotDauGia] CHECK CONSTRAINT [FK_db_LuotDauGia_db_PhienDauGia]
GO
ALTER TABLE [dbo].[db_LuotDauGia]  WITH CHECK ADD  CONSTRAINT [FK_LuotDauGia_db_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[db_KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[db_LuotDauGia] CHECK CONSTRAINT [FK_LuotDauGia_db_KhachHang]
GO
ALTER TABLE [dbo].[db_QuangCao]  WITH CHECK ADD  CONSTRAINT [FK_db_QuangCao_db_NhomQuangCao] FOREIGN KEY([NhomQuangCaoID])
REFERENCES [dbo].[db_NhomQuangCao] ([NhomQuangCaoID])
GO
ALTER TABLE [dbo].[db_QuangCao] CHECK CONSTRAINT [FK_db_QuangCao_db_NhomQuangCao]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_ChatLieu] FOREIGN KEY([ChatLieuID])
REFERENCES [dbo].[db_ChatLieu] ([ChatLieuID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_ChatLieu]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_DanhMuc] FOREIGN KEY([MaDM])
REFERENCES [dbo].[db_DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_DanhMuc]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_Mau] FOREIGN KEY([MauID])
REFERENCES [dbo].[db_Mau] ([MauID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_Mau]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_NhomSanPham] FOREIGN KEY([NhomID])
REFERENCES [dbo].[db_NhomSanPham] ([NhomID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_NhomSanPham]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[db_Size] ([SizeID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_Size]
GO
ALTER TABLE [dbo].[db_TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_DanhMucTin] FOREIGN KEY([MaDM])
REFERENCES [dbo].[db_DanhMucTin] ([MaDM])
GO
ALTER TABLE [dbo].[db_TinTuc] CHECK CONSTRAINT [FK_TinTuc_DanhMucTin]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatLuotXemTinTuc]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CapNhatLuotXemTinTuc]
@id int
as
update db_TinTuc set LuotXem=LuotXem+1 where TinTucID=@id
GO
/****** Object:  StoredProcedure [dbo].[chatlieu_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chatlieu_delete]
@chatlieuid int
AS
BEGIN
	delete from db_ChatLieu where ChatLieuID=@chatlieuid
END

GO
/****** Object:  StoredProcedure [dbo].[chatlieu_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chatlieu_inser]
@tenchatlieu nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChatLieu where @tenchatlieu=TenChatLieu))
	begin
	insert into db_ChatLieu(TenChatLieu) values(@tenchatlieu)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[chatlieu_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[chatlieu_update]
@chatlieuid int,
@tenchatlieu nvarchar (50)
AS
BEGIN
	update db_ChatLieu set TenChatLieu=@tenchatlieu where ChatlieuID=@chatlieuid
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdondathang_delete]
@masp int,
@madondathang int
AS
BEGIN
	delete db_ChiTietDonDatHang where MaSP=@masp and MaDonDatHang=@madondathang
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdondathang_inser]
@masp int,
@madondathang int,
@soluongdat int,
@dongiadat float,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChiTietDonDatHang where @masp=MaSP and @madondathang=MaDonDatHang))
	begin
	insert into db_ChiTietDonDatHang(MaSP,MaDonDatHang,SoLuongDat,DonGiaDat) values(@masp,@madondathang,@soluongdat,@dongiadat)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdondathang_update]
@masp int,
@madondathang int,
@soluongdat int,
@dongiadat float
AS
BEGIN
	update db_ChiTietDonDatHang set SoLuongDat=@soluongdat,DonGiaDat=@dongiadat where MaSP=@masp and MaDonDatHang=@madondathang
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdonhang_delete]
@masp int,
@mahoadon int
AS
BEGIN
	delete db_ChiTietDonHang where MaSP=@masp and MaHD=@mahoadon
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdonhang_inser]
@masp int,
@mahoadon int,
@soluong int,
@dongia float,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChiTietDonHang where @masp=MaSP and @mahoadon=MaHD))
	begin
	insert into db_ChiTietDonHang(MaHD,MaSP,SoLuong,DonGia) values(@mahoadon,@masp,@soluong,@dongia)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdonhang_update]
@masp int,
@mahoadon int,
@soluong int,
@dongia float
AS
BEGIN
	update db_ChiTietDonHang set SoLuong=@soluong,DonGia=@dongia where MaSP=@masp and MaHD=@mahoadon
END

GO
/****** Object:  StoredProcedure [dbo].[dangky_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangky_delete]
@tendangnhap varchar(50)
AS
BEGIN
	delete from db_DangKy where TenDangNhap=@tendangnhap
END

GO
/****** Object:  StoredProcedure [dbo].[dangky_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangky_inser]
@tendangnhap varchar(50),
@matkhau varchar(50) ,
@emaildk varchar(50),
@diachidk nvarchar(50),
@tendaydu nvarchar(50),
@cauhoibaomat nvarchar(100),
@ngaysinh date,
@gioitinhdk nvarchar(10),
@maquyen int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DangKy where @tendangnhap=TenDangNhap))
	begin
	insert into db_DangKy(TenDangNhap,MatKhau,EmailDK,DiaChiDK,TenDayDu,CauHoiBaoMat,NgaySinh,GioiTinhDK,MaQuyen) values(@tendangnhap,@matkhau,@emaildk,@diachidk,@tendaydu,@cauhoibaomat,@ngaysinh,@gioitinhdk,@maquyen)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[dangky_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangky_update]
@tendangnhap varchar(50),
@matkhau varchar(50) ,
@emaildk varchar(50),
@diachidk nvarchar(50),
@tendaydu nvarchar(50),
@cauhoibaomat nvarchar(100),
@ngaysinh date,
@gioitinhdk nvarchar(10),
@maquyen int
AS
BEGIN
	update db_DangKy set MatKhau=@matkhau,EmailDK=@emaildk,DiaChiDK=@diachidk,TenDayDu=@tendaydu,CauHoiBaoMat=@cauhoibaomat,NgaySinh=@ngaysinh,GioiTinhDK=@gioitinhdk,MaQuyen=@maquyen where TenDangNhap=@tendangnhap
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuc_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuc_delete]
@madm int
AS
BEGIN
	delete from db_DanhMuc where MaDM=@madm
	delete from db_SanPham where MaDM=@madm
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuc_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuc_inser]
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DanhMuc where @tendm=TenDM))
	begin
	insert into db_DanhMuc(TenDM,AnhDaiDien,ThuTu,MaDMCha) values(@tendm,@anhdaidien,@thutu,@maDMcha)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuc_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuc_update]
@madm int,
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int
AS
BEGIN
	update db_DanhMuc set TenDM=@tendm,AnhDaiDien=@anhdaidien,ThuTu=@thutu,MaDMCha=@maDMcha where MaDM=@madm
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuctin_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[danhmuctin_delete]
@madm int
AS
BEGIN
	delete from db_DanhMucTin where MaDM=@madm
	delete from db_TinTuc where MaDM=@madm
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuctin_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[danhmuctin_inser]
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DanhMuc where @tendm=TenDM))
	begin
	insert into db_DanhMucTin(TenDM,AnhDaiDien,ThuTu,MaDMCha) values(@tendm,@anhdaidien,@thutu,@maDMcha)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuctin_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[danhmuctin_update]
@madm int,
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int
AS
BEGIN
	update db_DanhMucTin set TenDM=@tendm,AnhDaiDien=@anhdaidien,ThuTu=@thutu,MaDMCha=@maDMcha where MaDM=@madm
END

GO
/****** Object:  StoredProcedure [dbo].[dondathang_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dondathang_delete]
@madondathang int
AS
BEGIN
	delete from db_ChiTietDonDatHang where MaDonDatHang=@madondathang
	delete from db_DonDatHang where MaDonDatHang=@madondathang
END

GO
/****** Object:  StoredProcedure [dbo].[dondathang_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dondathang_inser]
@ngaytao datetime,
@thanhtienhd float,
@tinhtrangdonhang nvarchar(300),
@makh int,
@tenkh nvarchar(50),
@sdtkh varchar(15),
@emailkh varchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_DonDatHang(NgayTao,ThanhTienDH,TinhTrangDonHang,MaKH,TenKH,sdtKH,EmailKH) values(@ngaytao,@thanhtienhd,@tinhtrangdonhang,@makh,@tenkh,@sdtkh,@emailkh)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[dondathang_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dondathang_update]
@madondathang int,
@ngaytao datetime,
@thanhtienhd float,
@tinhtrangdonhang nvarchar(300),
@makh int,
@tenkh nvarchar(50),
@sdtkh varchar(15),
@emailkh varchar(50)
AS
BEGIN
	update db_DonDatHang set NgayTao=@ngaytao,ThanhTienDH=@thanhtienhd,TinhTrangDonHang=@tinhtrangdonhang,MaKH=@makh,TenKH=@tenkh,sdtKH=@sdtkh,EmailKH=@emailkh where MaDonDatHang=@madondathang
END

GO
/****** Object:  StoredProcedure [dbo].[hoadon_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hoadon_delete]
@mahoadon int
AS
BEGIN
	delete from db_HoaDon where MaHD=@mahoadon
	delete from db_ChiTietDonHang where MaHD=@mahoadon
END

GO
/****** Object:  StoredProcedure [dbo].[hoadon_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hoadon_inser]
@ngaylap datetime,
@thanhtien float,
@manv int,
@tennv nvarchar(70),
@makh int,
@tenkh nvarchar(70),
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_HoaDon(NgayLap,ThanhTien,MaNV,TenNV,MaKH,TenKH) values(@ngaylap,@thanhtien,@manv,@tennv,@makh,@makh)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[hoadon_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hoadon_update]
@mahoadon int,
@ngaylap datetime,
@thanhtien float,
@manv int,
@tennv nvarchar(70),
@makh int,
@tenkh nvarchar(70)
AS
BEGIN
	update db_HoaDon set NgayLap=@ngaylap,ThanhTien=@thanhtien,MaNV=@manv,TenNV=@tennv,MaKH=@makh,TenKH=@tenkh where MaHD=@mahoadon
END

GO
/****** Object:  StoredProcedure [dbo].[khachang_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[khachang_delete]
@makh int
AS
BEGIN
	delete from db_KhachHang where MaKH=@makh
END

GO
/****** Object:  StoredProcedure [dbo].[khachang_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[khachang_inser]
@tenkh nvarchar(50),
@diachikh nvarchar(100),
@sdtkh varchar(15),
@emailkh varchar(50),
@matkhau nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_KhachHang(TenKh,DiaChiKH,sdtKH,EmailKH,MatKhau) values(@tenkh,@diachikh,@sdtkh,@emailkh,@matkhau)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[khachang_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[khachang_update]
@makh int,
@tenkh nvarchar(50),
@diachikh nvarchar(100),
@sdtkh varchar(15),
@emailkh varchar(50),
@matkhau nvarchar(50)
AS
BEGIN
	update db_KhachHang set TenKh=@tenkh,DiaChiKH=@diachikh,sdtKH=@sdtkh,EmailKH=@emailkh, MatKhau=@matkhau where MaKH=@makh
END

GO
/****** Object:  StoredProcedure [dbo].[luotdaugia_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[luotdaugia_delete]
@MaLuotDG int
AS
BEGIN
	delete from db_LuotDauGia where MaLuotDG=@MaLuotDG
END

GO
/****** Object:  StoredProcedure [dbo].[luotdaugia_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[luotdaugia_inser]
@ThoiGianDG datetime,
@GiaDuaRa float,
@MaXacNhan nvarchar(100),
@MaKH int,
@MaPhienDG int,
@ret int out
AS
BEGIN
	set @ret=1	
	insert into db_LuotDauGia(ThoiGianDG,GiaDuaRa, MaXacNhan, MaKH, MaPhienDG) values(@ThoiGianDG, @GiaDuaRa, @MaXacNhan, @MaKH, @MaPhienDG)
	set @ret=2
END

GO
/****** Object:  StoredProcedure [dbo].[luotdaugia_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[luotdaugia_update]
@MaLuotDG int,
@ThoiGianDG datetime,
@GiaDuaRa float,
@MaXacNhan nvarchar(100),
@MaKH int,
@MaPhienDG int
AS
BEGIN
	update db_LuotDauGia set ThoiGianDG=@ThoiGianDG, GiaDuaRa=@GiaDuaRa,MaXacNhan=@MaXacNhan,MaKH=@MaKH, MaPhienDG=@MaPhienDG
	 where MaLuotDG=@MaLuotDG
END

GO
/****** Object:  StoredProcedure [dbo].[mau_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mau_delete]
@mauid int
AS
BEGIN
	delete from db_Mau where MauID=@mauid
END

GO
/****** Object:  StoredProcedure [dbo].[mau_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mau_inser]
@tenmau nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Mau where @tenmau=TenMau))
	begin
	insert into db_Mau(TenMau) values(@tenmau)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[mau_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mau_update]
@mauid int,
@tenmau nvarchar(50)
AS
BEGIN
	update db_Mau set TenMau=@tenmau where MauID=@mauid
END

GO
/****** Object:  StoredProcedure [dbo].[menu_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[menu_delete]
@mamenu int
AS
BEGIN
	delete from db_Menu where MaMenu=@mamenu
END

GO
/****** Object:  StoredProcedure [dbo].[menu_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[menu_inser]
@tenmenu nvarchar(50),
@lienket varchar(200),
@mamenucha int,
@thutumenu int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Menu where @tenmenu=TenMenu))
	begin
	insert into db_Menu(TenMenu,LienKet,MaMenuCha,ThuTuMenu) values(@tenmenu,@lienket,@mamenucha,@thutumenu)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[menu_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[menu_update]
@mamenu int,
@tenmenu nvarchar(50),
@lienket varchar(200),
@mamenucha int,
@thutumenu int
AS
BEGIN
	update db_Menu set TenMenu=@tenmenu,LienKet=@lienket,MaMenuCha=@mamenucha,ThuTuMenu=@thutumenu where MaMenu=@mamenu
END

GO
/****** Object:  StoredProcedure [dbo].[nhanvien_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhanvien_delete]
@manv int
AS
BEGIN
	delete from db_NhanVien where MaNV=@manv
END

GO
/****** Object:  StoredProcedure [dbo].[nhanvien_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhanvien_inser]
@tennv nvarchar(70),
@gioitinhnv nvarchar(10),
@diachinv nvarchar(100),
@sdtnv varchar(15),
@ngayvaolam datetime,
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_NhanVien(TenNV,GioiTinhNV,DiaChiNV,sdtNV,NgayVaoLam) values(@tennv,@gioitinhnv,@diachinv,@sdtnv,@ngayvaolam)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[nhanvien_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhanvien_update]
@manv int,
@tennv nvarchar(70),
@gioitinhnv nvarchar(10),
@diachinv nvarchar(100),
@sdtnv varchar(15),
@ngayvaolam datetime
AS
BEGIN
	update db_NhanVien set TenNV=@tennv,GioiTinhNV=@gioitinhnv,DiaChiNV=@diachinv,sdtNV=@sdtnv,NgayVaoLam=@ngayvaolam where MaNV=@manv
END

GO
/****** Object:  StoredProcedure [dbo].[nhomquangcao_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomquangcao_delete]
@nhomquangcaoid int
AS
BEGIN
	delete from db_NhomQuangCao where NhomQuangCaoID=@nhomquangcaoid
END

GO
/****** Object:  StoredProcedure [dbo].[nhomquangcao_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomquangcao_inser]
@tennhomqc nvarchar(50),
@vitriqc nvarchar(30),
@thutunhomqc int,
@anhdaidienqc nvarchar(100),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_NhomQuangCao where @tennhomqc=TenNhomQuangCao))
	begin
	insert into db_NhomQuangCao(TenNhomQuangCao,ViTriQC,ThuTuNhomQC,AnhDaiDienQC) values(@tennhomqc,@vitriqc,@thutunhomqc,@anhdaidienqc)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[nhomquangcao_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomquangcao_update]
@nhomquangcaoid int,
@tennhomquangcao nvarchar(50),
@vitriqc nvarchar(30),
@thutunhomqc int,
@anhdaidienqc nvarchar(100)
AS
BEGIN
	update db_NhomQuangCao set TenNhomQuangCao=@tennhomquangcao,ViTriQC=@vitriqc,ThuTuNhomQC=@thutunhomqc,AnhDaiDienQC=@anhdaidienqc where NhomQuangCaoID=@nhomquangcaoid
END

GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomsanpham_delete]
@nhomid int
AS
BEGIN
	delete from db_NhomSanPham where NhomID=@nhomid
END

GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomsanpham_inser]
@tennhom nvarchar(100),
@anhdaidien nvarchar(100),
@thutu int,
@soSPhienthi int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_NhomSanPham where @tennhom=TenNhom))
	begin
	insert into db_NhomSanPham(TenNhom,AnhDaiDien,ThuTu,SoSPHienThi) values(@tennhom,@anhdaidien,@thutu,@soSPhienthi)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomsanpham_update]
@nhomid int,
@tennhom nvarchar(100),
@anhdadien nvarchar(100),
@thutu int,
@solanhienthi int
AS
BEGIN
	update db_NhomSanPham set TenNhom=@tennhom,AnhDaiDien=@anhdadien,ThuTu=@thutu,SoSPHienThi=@solanhienthi where NhomID=@nhomid
END

GO
/****** Object:  StoredProcedure [dbo].[phiendaugia_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[phiendaugia_delete]
@MaPhienDG int
AS
BEGIN
	--Xóa dữ liệu tham chiếu của bảng lượt đấu giá theo phiên này
	delete from db_LuotDauGia where MaPhienDG=@MaPhienDG
	
	--Xóa dữ liệu từ bảng phiên đấu giá
	delete from db_PhienDauGia where MaPhienDG=@MaPhienDG
END

GO
/****** Object:  StoredProcedure [dbo].[phiendaugia_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[phiendaugia_inser]
@ThoiGianBatDau datetime,
@ThoigGianKetThuc datetime,
@MaSP int,
@GiaDeXuat float,
@ret int out
AS
BEGIN
	set @ret=1	
	insert into db_PhienDauGia(ThoiGianBatDau,ThoiGianKetThuc, MaSP, GiaDeXuat) values(@ThoiGianBatDau, @ThoigGianKetThuc, @MaSP, @GiaDeXuat)
	set @ret=2
END

GO
/****** Object:  StoredProcedure [dbo].[phiendaugia_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[phiendaugia_update]
@MaPhienDG int,
@ThoiGianBatDau datetime,
@ThoiGianKetThuc datetime,
@MaSP int,
@GiaDeXuat float
AS
BEGIN
	update db_PhienDauGia set ThoiGianBatDau=@ThoiGianBatDau, ThoiGianKetThuc=@ThoiGianKetThuc,MaSP=@MaSP,GiaDeXuat=@GiaDeXuat
	 where MaPhienDG=@MaPhienDG
END

GO
/****** Object:  StoredProcedure [dbo].[quangcao_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quangcao_delete]
@quangcaoid int
AS
BEGIN
	delete from db_QuangCao where QuangCaoID=@quangcaoid
END

GO
/****** Object:  StoredProcedure [dbo].[quangcao_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quangcao_inser]
@tenqc nvarchar(50),
@loaiqc nvarchar(20),
@anhqc nvarchar(100),
@lienket nchar(100),
@thutuqc int,
@nhomqcID  INT,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_QuangCao where @tenqc=TenQC))
	begin
	insert into db_QuangCao(TenQC,LoaiQC,AnhQC,LienKet,ThuTuQC,NhomQuangCaoID) values(@tenqc,@loaiqc,@anhqc,@lienket,@thutuqc,@nhomqcID)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[quangcao_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quangcao_update]
@quangcaoid int,
@tenquangcao nvarchar(50),
@loaiqc nvarchar(20),
@anhqc nvarchar(100),
@lienket nchar(100),
@thutuqc int,
@nhomquangcaoid int
AS
BEGIN
	update db_QuangCao set TenQC=@tenquangcao,LoaiQC=@loaiqc,AnhQC=@anhqc,LienKet=@lienket,ThuTuQC=@thutuqc,NhomQuangCaoID=@nhomquangcaoid where QuangCaoID=@quangcaoid
END

GO
/****** Object:  StoredProcedure [dbo].[quyendangnhap_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quyendangnhap_delete]
@quyenid int
AS
BEGIN
	delete from db_QuyenDangNhap where MaQuyen=@quyenid
END

GO
/****** Object:  StoredProcedure [dbo].[quyendangnhap_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quyendangnhap_inser]
@tenquyen varchar(10),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_QuyenDangNhap where @tenquyen=TenQuyen))
	begin
	insert into db_QuyenDangNhap(TenQuyen) values(@tenquyen)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[quyendangnhap_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quyendangnhap_update]
@maquyen int,
@tenquyen varchar(100)
AS
BEGIN
	update db_QuyenDangNhap set TenQuyen=@tenquyen where MaQuyen=@maquyen
END

GO
/****** Object:  StoredProcedure [dbo].[sanpham_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_delete]
@masp int
AS
BEGIN
	delete from db_SanPham where MaSP=@masp
END

GO
/****** Object:  StoredProcedure [dbo].[sanpham_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_inser]
@tensp nvarchar(100),
@mauID int,
@sizeID int,
@chatieuID int,
@anhsanpham nvarchar(100),
@soluongsp int,
@giasp float,
@motasp nvarchar(MAX),
@ngaytao datetime,
@ngayhuy datetime,
@maDM int,
@nhomID int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_SanPham where @tensp=TenSP))
	begin
	insert into db_SanPham(TenSP,MauID,SizeID,ChatLieuID,AnhSP,SoLuongSP,GiaSP,MotaSP,NgayTao,NgayHuy,MaDM,NhomID) values(@tensp,@mauID,@sizeID,@chatieuID,@anhsanpham,@soluongsp,@giasp,@motasp,@ngaytao,@ngayhuy,@maDM,@nhomID)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[sanpham_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_update]
@masp int,
@tensp nvarchar(100),
@mauid int,
@sizeid int,
@chatieuid int,
@anhsp nvarchar(100),
@soluongsp int,
@giasp float,
@motasp nvarchar(MAX),
@ngaytao datetime,
@ngayhuy datetime,
@madm int,
@nhomid int
AS
BEGIN
	update db_SanPham set TenSP=@tensp,MauID=@mauid,SizeID=@sizeid,ChatLieuID=@chatieuid,AnhSP=@anhsp,SoLuongSP=@soluongsp,GiaSP=@giasp,MotaSP=@motasp,NgayTao=@ngaytao,NgayHuy=@ngayhuy,MaDM=@madm,NhomID=@nhomid where MaSP=@masp
END

GO
/****** Object:  StoredProcedure [dbo].[size_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[size_delete]
@sizeid int
AS
BEGIN
	delete from db_Size where SizeID=@sizeid
END

GO
/****** Object:  StoredProcedure [dbo].[size_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[size_inser]
@tensize varchar(10),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Size where @tensize=TenSize ))
	begin
	insert into db_Size(TenSize) values(@tensize)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[size_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[size_update]
@sizeid int,
@tensize varchar(10)
AS
BEGIN
	update db_Size set TenSize=@tensize where SizeID=@sizeid
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chatlieu]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_chatlieu]
AS
BEGIN
	select * from db_ChatLieu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chatlieu_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_chatlieu_by_id]
@ChatLieuID INT
AS
BEGIN
	select * from db_ChatLieu where ChatLieuID=@ChatLieuID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chitietdondathang]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_chitietdondathang]
AS
BEGIN
	select * from db_ChiTietDonDatHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chitietdondathang_by_madondathang]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_chitietdondathang_by_madondathang]
(
@madondathang int
)
AS
BEGIN
	select * from db_ChiTietDonDatHang where MaDonDatHang=@madondathang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chitietdonhang]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_chitietdonhang]
AS
BEGIN
	select * from db_ChiTietDonHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_dangky]
AS
BEGIN
	select * from db_DangKy
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_dangky_by_id]
@TenDangNhap varchar(50)
AS
BEGIN
	select * from db_DangKy where TenDangNhap=@TenDangNhap
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky_by_id_matkhau]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_dangky_by_id_matkhau]
@TenDangNhap varchar(50),
@MatKhau varchar(50)
AS
BEGIN
	select * from db_DangKy where TenDangNhap=@TenDangNhap and MatKhau=@MatKhau
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_danhmuc]
AS
BEGIN
	select * from db_DanhMuc order by ThuTu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[thongtin_danhmuc_by_id]
(
@MaDM INT
)
AS
BEGIN
	select * from db_DanhMuc where MaDM=@MaDM
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc_by_MaDMCha]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[thongtin_danhmuc_by_MaDMCha]
(
@MaDMCha INT
)
AS
BEGIN
	select * from db_DanhMuc where MaDMCha=@MaDMCha
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuctin]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_danhmuctin]
AS
BEGIN
	select * from db_DanhMucTin order by ThuTu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuctin_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure  [dbo].[thongtin_danhmuctin_by_id]
(
@MaDM INT
)
AS
BEGIN
	select * from db_DanhMucTin where MaDM=@MaDM
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuctin_by_MaDMCha]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[thongtin_danhmuctin_by_MaDMCha]
(
@MaDMCha INT
)
AS
BEGIN
	select * from db_DanhMucTin where MaDMCha=@MaDMCha
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_dondathang]
AS
BEGIN
	select * from db_DonDatHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_dondathang_by_id]
@MaDonDatHang int
AS
BEGIN
	select * from db_DonDatHang where MaDonDatHang=@MaDonDatHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_by_mathanhtoan]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_dondathang_by_mathanhtoan]
@mathanhtoan nvarchar(300)
AS
BEGIN
	select * from db_DonDatHang where TinhTrangDonHang=@mathanhtoan
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_desc]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[thongtin_dondathang_desc]
AS
BEGIN
	select * from db_DonDatHang order by MaDonDatHang desc
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_hoadon]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_hoadon]
AS
BEGIN
	select * from db_HoaDon
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_khachhang]
AS
BEGIN
	select * from db_KhachHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_emailkh]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_khachhang_by_emailkh]
@emailkh nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where EmailKH=@emailkh
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_emailkh_matkhau]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_khachhang_by_emailkh_matkhau]
@emailkh nvarchar(50),
@matkhau nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where EmailKH=@emailkh and MatKhau=@matkhau
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_makh]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_khachhang_by_makh]
@makh nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where MaKH=@makh
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_luotdaugia]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_luotdaugia]
AS
BEGIN
	select * from db_LuotDauGia
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_luotdaugia_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_luotdaugia_by_id]
@MaLuotDG INT
AS
BEGIN
	select * from db_LuotDauGia where MaLuotDG=@MaLuotDG
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_luotdaugia_by_makh_maphiendg]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_luotdaugia_by_makh_maphiendg]
@MaKH INT,
@MaPhienDG int
AS
BEGIN
	select * from db_LuotDauGia where MaKH=@MaKH and MaPhienDG=@MaPhienDG
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_luotdaugia_by_maphiendg]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_luotdaugia_by_maphiendg]
@MaPhienDG int
AS
BEGIN
	select * from db_LuotDauGia where MaPhienDG=@MaPhienDG order by GiaDuaRa,ThoiGianDG
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_mau]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_mau]
AS
BEGIN
	select * from db_Mau
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_mau_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_mau_by_id]
@MauID INT
AS
BEGIN
	select * from db_Mau where MauID=@MauID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_menu]
AS
BEGIN
	select * from db_Menu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_menu_by_id]
@MaMenu int
AS
BEGIN
	select * from db_Menu where MaMenu=@MaMenu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu_by_mamenucha]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_menu_by_mamenucha]
@MaMenuCha int
AS
BEGIN
	select * from db_Menu where MaMenuCha=@MaMenuCha
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhanvien]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_nhanvien]
AS
BEGIN
	select * from db_NhanVien
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_nhomquangcao]
AS
BEGIN
	select * from db_NhomQuangCao
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_nhomquangcao_by_id]
@NhomQuangCaoID int
AS
BEGIN
	select * from db_NhomQuangCao where NhomQuangCaoID=@NhomQuangCaoID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao_by_vitriqc]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_nhomquangcao_by_vitriqc]
@ViTriQC nvarchar(30)
AS
BEGIN
	select * from db_NhomQuangCao where ViTriQC=@ViTriQC
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomsp]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_nhomsp]
AS
BEGIN
	select * from db_NhomSanPham order by ThuTu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomsp_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_nhomsp_by_id]
@NhomID int
AS
BEGIN
	select * from db_NhomSanPham where NhomID=@NhomID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_phiendaugia]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_phiendaugia]
AS
BEGIN
	select * from db_PhienDauGia order by ThoiGianBatDau desc
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_phiendaugia_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_phiendaugia_by_id]
@MaPhienDG INT
AS
BEGIN
	select * from db_PhienDauGia where MaPhienDG=@MaPhienDG
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_quangcao]
AS
BEGIN
	select * from db_QuangCao
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_quangcao_by_id]
@QuangCaoID int
AS
BEGIN
	select * from db_QuangCao where QuangCaoID=@QuangCaoID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao_by_nhomquangcaoid]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_quangcao_by_nhomquangcaoid]
@NhomQuangCaoID int
AS
BEGIN
	select * from db_QuangCao where NhomQuangCaoID=@NhomQuangCaoID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_quyendangnhap]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[thongtin_quyendangnhap]
AS
BEGIN
	select * from db_QuyenDangNhap
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_quyendangnhap_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_quyendangnhap_by_id]
@MaQuyen int
AS
BEGIN
	select * from db_QuyenDangNhap where MaQuyen=@MaQuyen
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham]
AS
BEGIN
	select * from db_SanPham
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_sanpham_by_id]
@MaSP INT
AS
BEGIN
	select * from db_SanPham where MaSP=@MaSP
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_madm]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_madm]
@MaMD INT
AS
BEGIN
	select top 3 * from db_SanPham where MaDM=@MaMD
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_madm_tatca]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_sanpham_by_madm_tatca]
@MaMD INT
AS
BEGIN
	select * from db_SanPham where MaDM=@MaMD
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_nhomid]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_nhomid]
@NhomID INT,
@SoSPHienThi INT
AS
BEGIN
	declare @sql nvarchar(300)
	set @sql='select top '+ CAST(@SoSPHienThi as varchar(10)) +' * from db_SanPham where NhomID='+CAST(@NhomID as varchar(10))
	exec sp_executesql @sql
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_tukhoa]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_sanpham_by_tukhoa]
@TuKhoa nvarchar(100)
AS
BEGIN
	select * from db_SanPham where TenSP like N'%'+@TuKhoa+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_size]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_size]
AS
BEGIN
	select * from db_Size
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_size_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_size_by_id]
@SizeID INT
AS
BEGIN
	select * from db_Size where SizeID=@SizeID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_tintuc]
AS
BEGIN
	select * from db_TinTuc order by ThuTu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_tintuc_by_id]
@TinTucID INT
AS
BEGIN
	select * from db_TinTuc where TinTucID=@TinTucID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc_by_madm]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_tintuc_by_madm]
@MaMD INT
AS
BEGIN
	select top 6 * from db_TinTuc where MaDM=@MaMD
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc_by_madm_tatca]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_tintuc_by_madm_tatca]
@MaMD INT
AS
BEGIN
	select * from db_TinTuc where MaDM=@MaMD
END

GO
/****** Object:  StoredProcedure [dbo].[tintuc_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tintuc_delete]
@TinTucID int
AS
BEGIN
	delete from db_TinTuc where TinTucID=@TinTucID
END

GO
/****** Object:  StoredProcedure [dbo].[tintuc_inser]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tintuc_inser]
@TieuDe nvarchar(200),
@AnhDaiDien  nvarchar(200),
@MoTa nvarchar(200),
@NgayDang datetime,
@LuotXem int,
@ChiTiet nvarchar(MAX),
@ThuTu int,
@MaDM int
AS
BEGIN
	begin
	insert into db_TinTuc(TieuDe,AnhDaiDien,MoTa,NgayDang,LuotXem,ChiTiet,ThuTu,MaDM) values(@TieuDe,@AnhDaiDien,@MoTa,@NgayDang,@LuotXem,@ChiTiet,@ThuTu,@MaDM)
	end
END

GO
/****** Object:  StoredProcedure [dbo].[tintuc_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tintuc_update]
@TinTucID INT,
@TieuDe nvarchar(200),
@AnhDaiDien nvarchar(200),
@MoTa nvarchar(200),
@NgayDang date,
@LuotXem int,
@ChiTiet nvarchar(MAX),
@ThuTu int,
@MaDM int

AS
BEGIN
	update db_TinTuc set TieuDe=@TieuDe,AnhDaiDien=@AnhDaiDien,MoTa=@MoTa,NgayDang=@NgayDang,LuotXem=@LuotXem,ChiTiet=@ChiTiet,ThuTu=@ThuTu,MaDM=@MaDM where TinTucID=@TinTucID
END

GO
USE [master]
GO
ALTER DATABASE [emdepvn] SET  READ_WRITE 
GO
