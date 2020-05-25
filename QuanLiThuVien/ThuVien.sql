USE [master]
GO
/****** Object:  Database [ThuVien]    Script Date: 5/25/2020 10:22:28 AM ******/
CREATE DATABASE [ThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThuVien', FILENAME = N'D:\SQLData\ThuVien.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ThuVien_log', FILENAME = N'D:\SQLLog\ThuVien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ThuVien] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThuVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThuVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [ThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThuVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ThuVien]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[IDDocGia] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[IDThe] [int] NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[IDDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Muon]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muon](
	[IDMuon] [int] IDENTITY(1,1) NOT NULL,
	[IDThe] [int] NULL,
	[MaSach] [int] NULL,
	[SoLuongSach] [int] NULL,
 CONSTRAINT [PK_Muon] PRIMARY KEY CLUSTERED 
(
	[IDMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NXB]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[MaNXB] [int] NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
 CONSTRAINT [PK_NXB] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[MaTG] [int] NULL,
	[MaNXB] [int] NULL,
	[MaTheLoai] [int] NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sach_1] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[MaTaiKhoan] [int] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [int] NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheThuVien]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheThuVien](
	[IDThe] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [date] NULL,
	[NgayHetHan] [date] NULL,
	[TrangThai] [bit] NOT NULL CONSTRAINT [DF_TheThuVien_TrangThai]  DEFAULT ((0)),
	[IDNhanVien] [int] NULL,
 CONSTRAINT [PK_TheThuVien] PRIMARY KEY CLUSTERED 
(
	[IDThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tra]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tra](
	[IDTra] [int] IDENTITY(1,1) NOT NULL,
	[IDMuon] [int] NULL,
	[IDThe] [int] NULL,
 CONSTRAINT [PK_Tra] PRIMARY KEY CLUSTERED 
(
	[IDTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[SachView]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SachView]
AS
SELECT        dbo.Sach.MaSach, dbo.Sach.TenSach, dbo.TacGia.HoTen, dbo.TheLoai.TenTheLoai, dbo.NXB.TenNXB, dbo.Sach.AnhDaiDien
FROM            dbo.Sach INNER JOIN
                         dbo.NXB ON dbo.Sach.MaNXB = dbo.NXB.MaNXB INNER JOIN
                         dbo.TacGia ON dbo.Sach.MaTG = dbo.TacGia.MaTG INNER JOIN
                         dbo.TheLoai ON dbo.Sach.MaTheLoai = dbo.TheLoai.MaTheLoai

GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [FK_DocGia_TheThuVien] FOREIGN KEY([IDThe])
REFERENCES [dbo].[TheThuVien] ([IDThe])
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [FK_DocGia_TheThuVien]
GO
ALTER TABLE [dbo].[Muon]  WITH CHECK ADD  CONSTRAINT [FK_Muon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[Muon] CHECK CONSTRAINT [FK_Muon_Sach]
GO
ALTER TABLE [dbo].[Muon]  WITH CHECK ADD  CONSTRAINT [FK_Muon_TheThuVien] FOREIGN KEY([IDThe])
REFERENCES [dbo].[TheThuVien] ([IDThe])
GO
ALTER TABLE [dbo].[Muon] CHECK CONSTRAINT [FK_Muon_TheThuVien]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSach_NXB] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NXB] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_ChiTietSach_NXB]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSach_TacGia] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([MaTG])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_ChiTietSach_TacGia]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSach_TheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_ChiTietSach_TheLoai]
GO
ALTER TABLE [dbo].[TheThuVien]  WITH CHECK ADD  CONSTRAINT [FK_TheThuVien_NhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([IDNhanVien])
GO
ALTER TABLE [dbo].[TheThuVien] CHECK CONSTRAINT [FK_TheThuVien_NhanVien]
GO
ALTER TABLE [dbo].[Tra]  WITH CHECK ADD  CONSTRAINT [FK_Tra_Muon] FOREIGN KEY([IDMuon])
REFERENCES [dbo].[Muon] ([IDMuon])
GO
ALTER TABLE [dbo].[Tra] CHECK CONSTRAINT [FK_Tra_Muon]
GO
ALTER TABLE [dbo].[Tra]  WITH CHECK ADD  CONSTRAINT [FK_Tra_TheThuVien] FOREIGN KEY([IDThe])
REFERENCES [dbo].[TheThuVien] ([IDThe])
GO
ALTER TABLE [dbo].[Tra] CHECK CONSTRAINT [FK_Tra_TheThuVien]
GO
/****** Object:  StoredProcedure [dbo].[NXB_Delete]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NXB_Delete](
    @MaNXB int
)
as
begin
    delete NXB where MaNXB = @MaNXB
end
GO
/****** Object:  StoredProcedure [dbo].[NXB_Insert]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NXB_Insert](
    @MaNXB int,
	@TenNXB nvarchar(50),
	@AnhDaiDien nvarchar(100)
)
as
begin
    insert into NXB(MaNXB, TenNXB, AnhDaiDien) values(@MaNXB, @TenNXB, @AnhDaiDien)
end
GO
/****** Object:  StoredProcedure [dbo].[NXB_Ten]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NXB_Ten](
    @MaNXB int,
	@TenNXB nvarchar(50) out
)
as
begin
    set @TenNXB = (select top(1) TenNXB from NXB where MaNXB = @MaNXB)
end
GO
/****** Object:  StoredProcedure [dbo].[NXB_ThongTin]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NXB_ThongTin]
as
begin
    select * from NXB
end
GO
/****** Object:  StoredProcedure [dbo].[NXB_Update]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NXB_Update](
    @MaNXB int,
	@TenNXB nvarchar(50),
	@AnhDaiDien nvarchar(100)
)
as
begin
    update NXB set TenNXB = @TenNXB, AnhDaiDien = @AnhDaiDien
	where MaNXB = @MaNXB 
end
GO
/****** Object:  StoredProcedure [dbo].[Sach_Delete]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sach_Delete](
    @maSach int
)
as
begin
    delete from sach where MaSach = @maSach
end
GO
/****** Object:  StoredProcedure [dbo].[Sach_Insert]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery24.sql|7|0|C:\Users\Computer\AppData\Local\Temp\~vs3494.sql
CREATE proc [dbo].[Sach_Insert](
    @MaSach int,
	@TenSach nvarchar(50),
	@NamXB int,
	@IDThe int,
	@TenTG nvarchar(50),
	@MaNXB int,
	@MaTheLoai int,
	@AnhDaiDien nvarchar(100)
)
as
begin
    insert into Sach(MaSach, TenSach, NamXB, IDThe, MaTG, MaNXB, MaTheLoai, AnhDaiDien)
	values(@MaSach,
	       @TenSach,
		   @NamXB, 
		   (select IDThe from TheThuVien where @IDThe = IDThe), 
		   (select MaTG from TacGia where @TenTG = HoTen),
	       @MaNXB,
		   @MaTheLoai,
		   @AnhDaiDien)
end
GO
/****** Object:  StoredProcedure [dbo].[Sach_InsertProc]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sach_InsertProc](
    @TenSach nvarchar(50),
	@TenTacGia nvarchar(50),
	@TenNXB nvarchar(50),
	@TenTheLoai nvarchar(50),
	@AnhDaiDien nvarchar(100)
)
as
begin
    insert into Sach(TenSach, MaTG, MaNXB, MaTheLoai, AnhDaiDien)
	values(
	    @TenSach,
		(select MaTG from TacGia where HoTen=@TenTacGia),
		(select MaNXB from NXB where TenNXB = @TenNXB),
		(select MaTheLoai from TheLoai where TenTheLoai = @TenTheLoai),
		@AnhDaiDien
	)
end
GO
/****** Object:  StoredProcedure [dbo].[Sach_Ten]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sach_Ten](
    @MaSach int,
	@TenSach nvarchar(50) out
)
as
begin
    set @TenSach = (select TenSach from Sach where MaSach = @MaSach)
end
GO
/****** Object:  StoredProcedure [dbo].[Sach_ThongTin]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sach_ThongTin]
as
begin
    select * from Sach
end
GO
/****** Object:  StoredProcedure [dbo].[Sach_Update]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sach_Update](
    @MaSach int,
	@TenSach nvarchar(50),
	@NamXB int,
	@IDThe int,
	@TenTG nvarchar(50),
	@MaNXB int,
	@MaTheLoai int,
	@AnhDaiDien nvarchar(100)
)
as
begin
    update sach
	set TenSach =  @TenSach, 
	    NamXB = @NamXB, 
		IDThe = (select IDThe from TheThuVien where IDThe = @IDThe),
		MaTG = (select MaTG from TacGia where HoTen = @TenTG),
		MaNXB = @MaNXB,
		MaTheLoai = @MaTheLoai, 
		AnhDaiDien = @AnhDaiDien
	where MaSach = @MaSach
end
GO
/****** Object:  StoredProcedure [dbo].[TacGia_GetMaTG]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TacGia_GetMaTG](
    @MaTG int out
)
as
begin
    if (select MaTG from TacGia ) = null
	begin
	    set @MaTG = 1
	end
	else
	begin
	    set @MaTG = (select top(1) MaTG from TacGia order by MaTG desc)
	end
end
GO
/****** Object:  StoredProcedure [dbo].[TacGia_Insert]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TacGia_Insert](
    @MaTG int,
    @HoTen nvarchar(50)
)
as
begin
    insert into TacGia(MaTG, HoTen) values(@MaTG, @HoTen)
end
GO
/****** Object:  StoredProcedure [dbo].[TacGia_InsertProc]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TacGia_InsertProc](
    @HoTen nvarchar(50)
)
as
begin
    insert into TacGia(HoTen) values(@HoTen)
end
GO
/****** Object:  StoredProcedure [dbo].[TacGia_SearchByName]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TacGia_SearchByName](
    @TenTG nvarchar(50),
	@MaTG int out
)
as
begin
    set @MaTG = (select MaTG from TacGia where HoTen = @TenTG) 
end
GO
/****** Object:  StoredProcedure [dbo].[TacGia_TenByID]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TacGia_TenByID](
    @MaTG int,
	@Ten nvarchar(50) out
)
as
begin
    set @Ten = (select HoTen from TacGia where MaTG = @MaTG)
end
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoan_DangNhap_MatKhau]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TaiKhoan_DangNhap_MatKhau](
    @TenDangNhap nvarchar(50),
	@MatKhau nvarchar(50)
)
as
begin
    select * from TaiKhoan where TenDangNhap = @TenDangNhap and MatKhau = @MatKhau
end
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Delete]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TaiKhoan_Delete](
    @MaTaiKhoan int
)
as
begin
    delete TaiKhoan where MaTaiKhoan = @MaTaiKhoan
end
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Insert]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TaiKhoan_Insert](
    @MaTaiKhoan int,
	@TenDangNhap nvarchar(50),
	@MatKhau nvarchar(50)
)
as
begin
    insert into TaiKhoan(MaTaiKhoan, TenDangNhap, MatKhau) values(@MaTaiKhoan, @TenDangNhap, @MatKhau)
end
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Ten]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TaiKhoan_Ten](
    @MaTaiKhoan int,
	@TenDangNhap nvarchar(50) out
)
as
begin
    set @TenDangNhap = (select top(1) TenDangNhap from TaiKhoan where MaTaiKhoan = @MaTaiKhoan)
end
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoan_ThongTin]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TaiKhoan_ThongTin]
as
begin
    select * from TaiKhoan
end
GO
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Update]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TaiKhoan_Update](
    @MaTaiKhoan int,
	@TenDangNhap nvarchar(50),
	@MatKhau nvarchar(50)
)
as
begin
    update TaiKhoan set TenDangNhap = @TenDangNhap, MatKhau = @MatKhau
	where MaTaiKhoan = @MaTaiKhoan
end
GO
/****** Object:  StoredProcedure [dbo].[TheLoai_Delete]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TheLoai_Delete](
    @maTheLoai int
)
as
begin
    delete TheLoai where MaTheLoai = @maTheLoai
end
GO
/****** Object:  StoredProcedure [dbo].[TheLoai_Insert]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TheLoai_Insert](
    @MaTheLoai int,
	@TenTheLoai nvarchar(50),
	@AnhDaiDien nvarchar(100)
)
as
begin
    insert into TheLoai(MaTheLoai, TenTheLoai, AnhDaiDien) values(@MaTheLoai, @TenTheLoai, @AnhDaiDien)
end
GO
/****** Object:  StoredProcedure [dbo].[TheLoai_Ten]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TheLoai_Ten](
    @MaTheLoai int,
	@TenTheLoai nvarchar(50) out
)
as
begin
    set @TenTheLoai = (select top(1) TenTheLoai from TheLoai where MaTheLoai = @MaTheLoai)
end
GO
/****** Object:  StoredProcedure [dbo].[TheLoai_ThongTin]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TheLoai_ThongTin]
as
begin
    select * from TheLoai
end
GO
/****** Object:  StoredProcedure [dbo].[TheLoai_Update]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TheLoai_Update](
    @MaTheLoai int,
	@TenTheLoai nvarchar(50),
	@AnhDaiDien nvarchar(100)
)
as
begin
    update TheLoai set TenTheLoai = @TenTheLoai, AnhDaiDien = @AnhDaiDien
	where MaTheLoai = @MaTheLoai;
end
GO
/****** Object:  StoredProcedure [dbo].[TheThuVien_InsertProc]    Script Date: 5/25/2020 10:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TheThuVien_InsertProc](
    @NgayTao date,
	@NgayHetHan date,
	@TrangThai bit,
	@IDNhanVien int
)
as
begin
    insert into TheThuVien(NgayTao, NgayHetHan, TrangThai, IDNhanVien)
	values(@NgayTao, @NgayHetHan, @TrangThai, (select IDNhanVien from NhanVien where IDNhanVien = @IDNhanVien))
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[24] 4[45] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Sach"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "NXB"
            Begin Extent = 
               Top = 155
               Left = 251
               Bottom = 267
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TacGia"
            Begin Extent = 
               Top = 11
               Left = 275
               Bottom = 106
               Right = 445
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TheLoai"
            Begin Extent = 
               Top = 186
               Left = 22
               Bottom = 298
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SachView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SachView'
GO
USE [master]
GO
ALTER DATABASE [ThuVien] SET  READ_WRITE 
GO
