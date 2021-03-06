USE [ThuVien]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  Table [dbo].[Muon]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  Table [dbo].[NXB]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 9/19/2020 1:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IDRole] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  Table [dbo].[TacGia]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  Table [dbo].[TheLoai]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  Table [dbo].[TheThuVien]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  Table [dbo].[Tra]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  Table [dbo].[UserInRole]    Script Date: 9/19/2020 1:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInRole](
	[IDRole] [int] NOT NULL,
	[MaTaiKhoan] [int] NOT NULL,
 CONSTRAINT [PK_UserInRole] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC,
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[SachView]    Script Date: 9/19/2020 1:21:01 PM ******/
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
INSERT [dbo].[DocGia] ([IDDocGia], [HoTen], [DiaChi], [SDT], [IDThe]) VALUES (1, N'Trần Nam', N'Hà Nội', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Muon] ON 

INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (3, 1, 6, 3)
INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (4, 2, 10, 5)
INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (5, 2, 12, 1)
INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (6, 3, 7, 2)
INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (7, 4, 9, 1)
INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (8, 1, 6, 1)
INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (9, 1, 6, 1)
INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (11, 1, 6, 1)
INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (12, 3, 7, 1)
INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (14, 1, 6, 1)
INSERT [dbo].[Muon] ([IDMuon], [IDThe], [MaSach], [SoLuongSach]) VALUES (15, 1, 8, 1)
SET IDENTITY_INSERT [dbo].[Muon] OFF
INSERT [dbo].[NhanVien] ([IDNhanVien], [HoTen]) VALUES (1, N'Trần Đức Anh')
INSERT [dbo].[NhanVien] ([IDNhanVien], [HoTen]) VALUES (2, N'Trần Anh')
INSERT [dbo].[NhanVien] ([IDNhanVien], [HoTen]) VALUES (3, N'Dương Đức')
INSERT [dbo].[NhanVien] ([IDNhanVien], [HoTen]) VALUES (4, N'Trần Tú')
INSERT [dbo].[NhanVien] ([IDNhanVien], [HoTen]) VALUES (5, N'Nguyễn Long')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [AnhDaiDien]) VALUES (1, N'Nhà Xuất Bản Giáo Dục', N'GiaoDuc.png')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [AnhDaiDien]) VALUES (2, N'Nhà Xuất Bản Khoa Học Xã Hội', N'KhoaHoc.jpg')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [AnhDaiDien]) VALUES (3, N'Nhà Xuất Bản Thanh Niên', N'ThanhNien.jpg')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [AnhDaiDien]) VALUES (4, N'Nhà Xuất Bản Phụ Nữ', N'PhuNu.jpg')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [AnhDaiDien]) VALUES (5, N'Nhà Xuất Bản Tri Thức', N'TriThuc.jpg')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [AnhDaiDien]) VALUES (6, N'Nhà Xuất Bản Kim Đồng', N'KimDong.png')
INSERT [dbo].[Role] ([IDRole], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([IDRole], [RoleName]) VALUES (2, N'Stuff')
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaNXB], [MaTheLoai], [AnhDaiDien]) VALUES (4, N'Toán rời rạc', 9, 1, 3, N'ToanRoiRac.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaNXB], [MaTheLoai], [AnhDaiDien]) VALUES (5, N'Khám Phá Thế Giới', 21, 2, 7, N'KhamPhaTheGioi.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaNXB], [MaTheLoai], [AnhDaiDien]) VALUES (6, N'Tuyển Tập Thơ Hay', 14, 5, 8, N'TuyenTapThoHay.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaNXB], [MaTheLoai], [AnhDaiDien]) VALUES (7, N'Thơ Đời', 1, 6, 8, N'ThoDoi.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaNXB], [MaTheLoai], [AnhDaiDien]) VALUES (8, N'Truyện Kiều', 0, 4, 8, N'TruyenKieu.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaNXB], [MaTheLoai], [AnhDaiDien]) VALUES (9, N'Thám Tử Conan', 22, 6, 4, N'ThamTuConan.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaNXB], [MaTheLoai], [AnhDaiDien]) VALUES (10, N'Doraemon', 23, 6, 1, N'Doraemon.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaNXB], [MaTheLoai], [AnhDaiDien]) VALUES (12, N'Shin Cậu Bé Bút Chì', 24, 6, 1, N'ShinCauBeButChi.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaNXB], [MaTheLoai], [AnhDaiDien]) VALUES (28, N'Tôi thấy hoa vàng trên cỏ xanh', 20, 1, 8, N'ToiThayHoaVangTrenCoXanh.jpg')
SET IDENTITY_INSERT [dbo].[Sach] OFF
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (0, N'Nguyễn Du')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (1, N'Xuân Diệu')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (2, N'Xuân Quỳnh')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (3, N'Hàn Mặc Tử')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (5, N'Huy Cận')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (9, N'Lương Thế Vinh')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (12, N'Hồ Xuân Hương')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (14, N'Chế Lan Viên')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (20, N'Nguyễn Nhật Ánh')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (21, N'Trần Đức Anh')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (22, N'Aojama Gosho')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (23, N'Jujiko Jujio')
INSERT [dbo].[TacGia] ([MaTG], [HoTen]) VALUES (24, N'Usui Yoshito')
SET IDENTITY_INSERT [dbo].[TacGia] OFF
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaTaiKhoan]) VALUES (N'admin', N'123', 0)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaTaiKhoan]) VALUES (N'ducanhtran', N'123456', 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [MaTaiKhoan]) VALUES (N'tda', N'123456789', 2)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [AnhDaiDien]) VALUES (1, N'Phiêu Lưu', N'PhieuLuu.jpg')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [AnhDaiDien]) VALUES (2, N'Tiểu Thuyết', N'TieuThuyet.jpg')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [AnhDaiDien]) VALUES (3, N'Toán Học', N'ToanHoc.jpg')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [AnhDaiDien]) VALUES (4, N'Trinh Thám', N'TrinhTham.jpg')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [AnhDaiDien]) VALUES (5, N'Nghệ Thuật', N'NgheThuat.jpg')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [AnhDaiDien]) VALUES (6, N'Lịch Sử', N'LichSu.jpg')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [AnhDaiDien]) VALUES (7, N'Địa Lý', N'DiaLy.jpg')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [AnhDaiDien]) VALUES (8, N'Văn Học', N'VanHoc.jpg')
SET IDENTITY_INSERT [dbo].[TheThuVien] ON 

INSERT [dbo].[TheThuVien] ([IDThe], [NgayTao], [NgayHetHan], [TrangThai], [IDNhanVien]) VALUES (1, CAST(N'2020-05-18' AS Date), CAST(N'2020-05-19' AS Date), 0, 1)
INSERT [dbo].[TheThuVien] ([IDThe], [NgayTao], [NgayHetHan], [TrangThai], [IDNhanVien]) VALUES (2, CAST(N'2020-05-18' AS Date), CAST(N'2020-05-20' AS Date), 0, 1)
INSERT [dbo].[TheThuVien] ([IDThe], [NgayTao], [NgayHetHan], [TrangThai], [IDNhanVien]) VALUES (3, CAST(N'2020-05-10' AS Date), CAST(N'2020-05-20' AS Date), 1, 1)
INSERT [dbo].[TheThuVien] ([IDThe], [NgayTao], [NgayHetHan], [TrangThai], [IDNhanVien]) VALUES (4, CAST(N'2020-06-01' AS Date), CAST(N'2020-06-30' AS Date), 1, 1)
INSERT [dbo].[TheThuVien] ([IDThe], [NgayTao], [NgayHetHan], [TrangThai], [IDNhanVien]) VALUES (6, CAST(N'2020-06-01' AS Date), CAST(N'2020-06-30' AS Date), 1, 4)
SET IDENTITY_INSERT [dbo].[TheThuVien] OFF
INSERT [dbo].[UserInRole] ([IDRole], [MaTaiKhoan]) VALUES (1, 0)
INSERT [dbo].[UserInRole] ([IDRole], [MaTaiKhoan]) VALUES (2, 1)
INSERT [dbo].[UserInRole] ([IDRole], [MaTaiKhoan]) VALUES (2, 2)
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
ALTER TABLE [dbo].[UserInRole]  WITH CHECK ADD  CONSTRAINT [FK_UserInRole_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([IDRole])
GO
ALTER TABLE [dbo].[UserInRole] CHECK CONSTRAINT [FK_UserInRole_Role]
GO
ALTER TABLE [dbo].[UserInRole]  WITH CHECK ADD  CONSTRAINT [FK_UserInRole_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[UserInRole] CHECK CONSTRAINT [FK_UserInRole_TaiKhoan]
GO
/****** Object:  StoredProcedure [dbo].[NXB_Delete]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[NXB_Insert]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[NXB_Ten]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[NXB_ThongTin]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[NXB_Update]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Sach_Delete]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Sach_Insert]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Sach_InsertProc]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Sach_Ten]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Sach_ThongTin]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Sach_Update]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TacGia_GetMaTG]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TacGia_Insert]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TacGia_InsertProc]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TacGia_SearchByName]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TacGia_TenByID]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TaiKhoan_DangNhap_MatKhau]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Delete]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Insert]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Ten]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TaiKhoan_ThongTin]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TaiKhoan_Update]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoai_Delete]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoai_Insert]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoai_Ten]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoai_ThongTin]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TheLoai_Update]    Script Date: 9/19/2020 1:21:01 PM ******/
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
/****** Object:  StoredProcedure [dbo].[TheThuVien_InsertProc]    Script Date: 9/19/2020 1:21:01 PM ******/
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
