USE [QL_BanHangTuiXach]
GO
/****** Object:  Table [dbo].[CTDH]    Script Date: 11/4/2022 2:35:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDH](
	[MaCTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NULL,
	[SoLuong] [int] NULL,
	[MaSp] [int] NULL,
 CONSTRAINT [PK_CTDH] PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/4/2022 2:35:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[MaTT] [int] NULL,
	[MaNV] [int] NULL,
	[NgayLapHD] [datetime] NULL,
	[NgayGH] [datetime] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/4/2022 2:35:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[HoKH] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DienThoai] [nchar](10) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](50) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](200) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 11/4/2022 2:35:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSp] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSp] [nvarchar](50) NULL,
	[Mota] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/4/2022 2:35:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[HoNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [nchar](10) NULL,
	[Email] [varchar](50) NULL,
	[CaLamViec] [int] NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](200) NULL,
	[IsAdmin] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/4/2022 2:35:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[MaLoaiSp] [int] NULL,
	[DonViTinh] [nchar](10) NULL,
	[DonGia] [float] NULL,
	[HinhSP] [varchar](max) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 11/4/2022 2:35:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[HinhThucTT] [nvarchar](100) NULL,
 CONSTRAINT [PK_ThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CTDH] ON 

INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (1, 1, 2, 2)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (2, 3, 1, 10)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (3, 12, 3, 6)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (4, 13, 4, 16)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (5, 14, 7, 23)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (6, 15, 10, 13)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (7, 16, 5, 27)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (8, 17, 8, 30)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (9, 18, 6, 27)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (10, 18, 5, 23)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (11, 19, 12, 20)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (12, 20, 2, 21)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (13, 20, 1, 18)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (14, 18, 1, 17)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (15, 18, 2, 20)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (27, 61, 1, 1)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (28, 65, 1, 1)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (29, 67, 1, 5)
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [SoLuong], [MaSp]) VALUES (30, 67, 1, 18)
SET IDENTITY_INSERT [dbo].[CTDH] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (1, 1, 2, 1, CAST(0x0000ADFC00000000 AS DateTime), CAST(0x0000AE000021C870 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (3, 1, 2, 1, CAST(0x0000AED000000000 AS DateTime), CAST(0x0000AED300000000 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (12, 8, 1, 2, CAST(0x0000AE3A00000000 AS DateTime), CAST(0x0000AE3D00000000 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (13, 9, 3, 5, CAST(0x0000AE6A00000000 AS DateTime), CAST(0x0000AE6E00000000 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (14, 12, 2, 6, CAST(0x0000AEC900000000 AS DateTime), CAST(0x0000AECB00000000 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (15, 10, 1, 8, CAST(0x0000AF0B00000000 AS DateTime), CAST(0x0000AF0E00000000 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (16, 16, 2, 7, CAST(0x0000AEF600000000 AS DateTime), CAST(0x0000AEFA00000000 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (17, 14, 2, 11, CAST(0x0000AE4900000000 AS DateTime), CAST(0x0000AE4B00000000 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (18, 20, 3, 10, CAST(0x0000AE1000000000 AS DateTime), CAST(0x0000AE1400000000 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (19, 19, 1, 3, CAST(0x0000AE2300000000 AS DateTime), CAST(0x0000AE2600000000 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (20, 20, 1, 9, CAST(0x0000AE9700000000 AS DateTime), CAST(0x0000AE9B00000000 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (21, 19, 1, 1, CAST(0x0000AF3F0019979C AS DateTime), CAST(0x0000AF400019979C AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (22, 19, 2, 3, CAST(0x0000AF3F001A195C AS DateTime), CAST(0x0000AF40001A195C AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (23, 19, 1, 9, CAST(0x0000AF3F001A1F22 AS DateTime), CAST(0x0000AF40001A1F22 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (24, 19, 2, 1, CAST(0x0000AF3F001FCD7B AS DateTime), CAST(0x0000AF40001FCD7B AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (25, 19, 1, 5, CAST(0x0000AF3F0020F0CC AS DateTime), CAST(0x0000AF400020F0CC AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (26, 19, 3, 2, CAST(0x0000AF3F0020F831 AS DateTime), CAST(0x0000AF400020F831 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (27, 19, 1, 1, CAST(0x0000AF3F0020FD2B AS DateTime), CAST(0x0000AF400020FD2B AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (28, 19, 3, 10, CAST(0x0000AF3F00230576 AS DateTime), CAST(0x0000AF4000230576 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (29, 19, 1, 1, CAST(0x0000AF3F0023BFD6 AS DateTime), CAST(0x0000AF400023BFD6 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (30, 19, 3, 2, CAST(0x0000AF3F00246A56 AS DateTime), CAST(0x0000AF4000246A57 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (31, 19, 1, 5, CAST(0x0000AF3F002556E3 AS DateTime), CAST(0x0000AF40002556E3 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (32, 19, 2, 7, CAST(0x0000AF3F00255EC7 AS DateTime), CAST(0x0000AF4000255EC7 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (33, 19, 2, 8, CAST(0x0000AF3F00256589 AS DateTime), CAST(0x0000AF4000256589 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (60, 19, 3, 1, CAST(0x0000AF3F002CC899 AS DateTime), CAST(0x0000AF40002CC899 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (61, 19, 2, 9, CAST(0x0000AF3F002CCB1B AS DateTime), CAST(0x0000AF41011A12F0 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (65, 19, 1, 11, CAST(0x0000AF3F01746D5D AS DateTime), CAST(0x0000AF40011A12F0 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (67, 19, 2, 5, CAST(0x0000AF4101052B55 AS DateTime), CAST(0x0000AF41011A12F0 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (69, 19, 1, 1, CAST(0x0000AF420044A7A0 AS DateTime), CAST(0x0000AF430044A7A0 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (72, 1, 3, 1, CAST(0x0000AF3F010FE960 AS DateTime), CAST(0x0000AF4101102FB0 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (73, 1, 2, 1, CAST(0x0000AF3F01133520 AS DateTime), CAST(0x0000AF4201133520 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (74, 9, 3, 2, CAST(0x0000AF3E0114DB00 AS DateTime), CAST(0x0000AF400114DB00 AS DateTime))
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaTT], [MaNV], [NgayLapHD], [NgayGH]) VALUES (75, 1, 2, 1, CAST(0x0000AF3E017D8010 AS DateTime), CAST(0x0000AF40017D8010 AS DateTime))
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (1, N'An', N'Trần Văn ', N'Nam', N'0892555874', N'71 Chu Văn An, Sao Đỏ, Chí Linh, Hải Dương', N'An@gmail.com', N'An', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (8, N'Nam', N'Nguyễn Văn', N'Nam', N'0332415891', N'Hà Nam', N'Nam@gmail.com', N'Nam', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (9, N'Lân', N'Ngô ', N'Nam', N'0122558461', N'256 Huỳnh Tấn Phát, P Phú Thuận, Q7, Tp.HCM
', N'Lan@gmail.com', N'Lân N', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (10, N'Duy', N'Thì', N'Nam', N'0135685551', N'135 Hà Huy Tập, P Nam Hà, Hà Tĩnh
', N'Duy@gmial.com', N'Duy', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (11, N'Hà', N'Nhậm', N'Nữ', N'0256337894', N'26 Quốc Hương, P Thảo Điền, Q2, Tp.HCM
', N'Ha@gmail.com', N'Hà', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (12, N'My', N'Phạm', N'Nữ', N'0144526388', N'142 Lương Định Của, P An Phú, Q2,Tp.HCM
', N'My122@gmail.com', N'My', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (13, N'Đao', N'Trần', N'Nữ', N'0253688412', N'42 Quốc Oai, Hà Nội
', N'Dao@gmail.com', N'Ðao', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (14, N'Linh', N'Nguyễn', N'Nam', N'0125568468', N'49 Điện Biên Phủ, P25, Q Bình Thạnh, Tp.HCM
', N'Lin@gmail.com', N'Linhd', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (15, N'Nhi', N'Nguyễn ', N'Nữ', N'0852634556', N'Hà Nội', N'Nhi@gmail.com', N'NhiNu', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (16, N'Duc', N'Trần', N'Nam', N'0144558962', N'Tp.Hồ Chí Minh', N'Duc@gmail.com', N'Duc', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (18, N'Baa', N'Nguyen', N'Nữ', N'0124585879', N'127 VÕ văn kiệt, phường 3, Quận 1, TPHCM', N'a@gmail.com', N'Ba', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (19, N'Maa', N'Lee', N'Nam', N'098526256 ', N'Từ Liêm, Hà Nội', N'Maa@gmail.com', N'My', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (20, N'Chi', N'Trịnh Kim', N'Nữ', N'0253697411', N'Bình Dương', N'Chi43@gmail.com', N'Chi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (21, N'Cống', N'Đồng Văn', N'Nam', N'0984785496', N'Mai Chí Thọ, Q2, Tp.HCM', N'Cong@gmail.com', N'Cong', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (22, N'Linh', N'Trần', N'Nữ', N'0289625625', N'Bình Dương', N'Linh@121gmail.com', N'Linh', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (23, N'Trang', N'Phan', N'Nam', N'0141415217', N'Đống Đa, Hà Nội', N'TrangKhung@gmail.com', N'Trang', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (24, N'Làn', N'Tea', N'Nam', N'01256845  ', N'Bình Dương', N'Lan@gmail.com', N'Làn', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (25, N'Traan', N'sdd', N'Nam', N'asss      ', N'41 Hà Huy Tập, Tp. Vinh', N'Traa@gmail.com', N'Tranaa', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (26, N'Trân', N'Trần', N'Nam', N'0334125899', N'Nam Từ Liêm, Hà Nội', N'TranTran@gmail.com', N'Trân', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (27, N'Hồ', N'Hoài ', N'Nữ', N'0252525263', N'Bình Trưng Tây, Q2, TP.HCM', N'Ho@gmail.com', N'Ho', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [HoKH], [GioiTinh], [DienThoai], [DiaChi], [Email], [TenDangNhap], [MatKhau]) VALUES (29, N'HAHA', N'Hà', N'Nữ', N'0963256141', N'Bình Dương', N'Ha@gmail.com', NULL, N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (1, N'Túi Messenger
', N'Túi còn có nắp đóng đựng đồ khá yên tâm
')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (2, N'Túi Balo', N'balo đi học đa dạng kiểu dáng, chất liệu tốt, nhiều ngăn chứa')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (3, N'Túi Crossbody
', N'Thiết kế dáng đeo chéo với form nhỏ nhắn
')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (4, N'Túi bì thư (envelope)
', N'Thiết kế giống như tên gọi của mình, phần trước được làm thêm một chiếc nắp gập y như một cái phong thư. Điểm độc đáo là mẫu túi này có thể kết hợp thêm dây đeo chéo để đeo qua vai hoặc đeo qua ngực.
')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (5, N'Túi Tote
', N'Những cô nàng sinh viên hay học sinh cần sử dụng túi thay thế cho chiếc balo
')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (6, N'Túi xách Vascara', N'Đây là dòng túi xách cầm tay tương đối gọn nhẹ với vẻ ngoài thanh lịch và nữ tính.
')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (7, N'Túi xách nắp gập
', N'Cầm tay hoặc đeo chéo đều được.Màu sắc hiện đại phù hợp với giới trẻ
')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (8, N'Túi Bucket', N'túi được nhiều cô nàng bánh bèo chọn lựa vì thiết kế cực điệu đà của mình. Phần đáy của chiếc túi có dạng tròn, trên miệng túi được may những dây rút, khi muốn đóng túi hay mở túi, các bạn sẽ sử dụng hai chiếc dây này. Thiết kế tương tự như cái xô nên còn được gọi là túi xô.')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (9, N'Túi bao tử', N'Những chiếc túi bao tử thường được dùng để mix đồ theo phong cách năng động và cá tính. Đeo ở trước bụng nên em túi này cũng được nhiều chị em dùng để đựng tiền khi bán hàng')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (10, N'Túi Wristlet', N'Túi Wristlet thậm chí còn được thiết kế phần dây để nàng có thể đeo chúng luôn trên cổ tay của mình. Thiết kế cực cá tính và khỏe khoắn, phù hợp vớ những cô nàng có phong cách thời trang đơn giản, thể thao... Diện em nó đi chơi những ngày cuối tuần thật không còn gì tuyệt vời hơn.

')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (13, N'Túi đeo chéo', N'Phù hợp với mọi lứa tuổi')
INSERT [dbo].[LoaiSP] ([MaLoaiSp], [TenLoaiSp], [Mota]) VALUES (14, N'Balo mini', N'Dễ dang phối đồ')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (1, N'Lân', N'Trần', N'71 Chu Văn An, Sao Đỏ, Chí Linh, Hải Dương', N'0145256388', N'Lan@gmail.com', 1, N'AAA', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (2, N'Hà', N'Linh', N'Quỳnh Lưu, Nghệ An', N'0258963215', N'Linh@gmail.com', 2, N'Ha', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (3, N'Thư', N'Hà', N' Hà ,Hà Nam', N'0235688545', N'Ha@gmail.com', 1, N'Thu', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (4, N'Nhung', N'Chi', N'Q7, TpHCM', N'0147852369', N'Chi@gmail.com', 1, N'Nhung Chi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (5, N'Đỗ', N'Nam', N'Q2,TpHCM', N'0332451447', N'Nam1232@gmail.com', 1, N'Ðo Nam', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (6, N'Admin', NULL, NULL, N'0444444455', N'Admin@gmail.com', NULL, N'Admin', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 1)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (7, N'Quỳnh', N'Lê', N'321 Phạm Văn Đồng, P1, Gò vấp', N'0123256254', N'Quynh123@gmail.com', 2, N'Quynh', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (8, N'Đinh Hà Nam', N'Nguyễn', N'111 Phạm Văn Chiêu, P 14, Gò Vấp', N'0247852689', N'Nam@gmail.com', 2, N'Nam', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (9, N'Bình Đăng', N'Nguyễn', N'321 Tân Sơn, P15,Tân Bình, ', N'0248596347', N'Dang@gmail.com', 2, N'Dang Binh', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (10, N'Thị Hà Trang', N'Phan', N'12 Nguyễn Thái Sơn, P5, Gò Vấp', N'0845214792', N'Trang@gmail.com', 1, N'Ha Trang', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (11, N'Lâm', N'Nguyễn Trần', N'850 Quang Trung, P8, Gò Vấp ', N'0145268914', N'Lam@gmail.com', 1, N'Lam', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (12, N'Lâng', N'Định', N'Đồng Nai', N'0123474785', N'Lang123@gmail.com', 2, NULL, N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (14, N'Đồng', N'Tô Hữu', N'Lê Văn Lương, Nhà Bè, Tp.HCM', N'0124585874', N'Dong45647@gmail.com', 1, NULL, N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [HoNV], [DiaChi], [DienThoai], [Email], [CaLamViec], [TenDangNhap], [MatKhau], [IsAdmin]) VALUES (15, N'Trang', N'êrere', N'Bắc Ninh', N'089875678 ', N'Trang98@gmail.com', NULL, N'Trang123', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (1, N'Túi bì thư màu xanh dương', 1, N'Cái       ', 200000, N'Images/TuiBiThuMauXanhDuong.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (2, N'Túi Tote Hàn Quốc
', 5, N'Cái       ', 250000, N'Images/TuiToteHanQuoc.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (3, N'Balo Herschel Classic Standard', 2, N'Cái       ', 150000, N'Images/BaloDeo.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (4, N'Túi xách nhỏ dáng bì thư', 4, N'Cái       ', 180000, N'Images/TuixachNhoDangBiThu.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (5, N'Cross Body Bag
', 3, N'Cái       ', 500000, N'Images/TuiCrossBodyBagg.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (6, N'Túi Message Dean
', 1, N'Cái       ', 120000, N'Images/TuiMessager1.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (7, N'Túi Model Tote
', 5, N'Cái       ', 199000, N'Images/TuiToteHienDai.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (8, N'Túi Messager Canvas vintage
', 1, N'Cái       ', 600000, N'Images/TuiMessager2.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (9, N'Túi Cross Body
', 3, N'Cái       ', 50000, N'Images/TuiCrossBody2.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (10, N'Túi bì thư
', 4, N'Cái       ', 190000, N'Images/TuiBiThu2.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (11, N'Balo đeo 2 chiếc
', 2, N'Cái       ', 155000, N'Images/TuiBaLo2.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (12, N'Túi Messager Ipad Oxford
', 1, N'Cái       ', 135000, N'Images/TuiMessager3.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (13, N'Túi tote in logo
', 5, N'Cái       ', 100000, N'Images/TuiToteInLoGo.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (14, N'Túi đeo chéo
', 3, N'Cái       ', 580000, N'Images/TuiCrossBody3.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (15, N'Backpack M Harvest Gold
', 2, N'Cái       ', 165000, N'Images/TuiBaLo3.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (16, N'Túi bì thư anh ngọc
', 4, N'Cái       ', 190000, N'Images/TuiBiThu3.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (17, N'Túi Messager Hàn Quốc
', 1, N'Cái       ', 160000, N'Images/TuiMessager5.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (18, N'Túi Crossbody xanh
', 3, N'Cái       ', 310000, N'Images/TuiCrossBody4.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (19, N'Túi tote vải Canvas
', 5, N'Cái       ', 105000, N'Images/TuiToteVaiCanvas.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (20, N'Túi Bucket Guess Dư Xịn', 8, N'Cái       ', 890000, N'Images/TuiBucketGuessDuXin.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (21, N'Túi Bucket Bag', 8, N'Cái       ', 900000, N'Images/TuiBucketBag.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (22, N'Túi Bucket Just Star Da Nâu', 8, N'Cái       ', 1000000, N'Images/TuiBucketJustStarDaNau.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (23, N'Túi Bucket Thiết kế giỏ xách tiêu thu', 8, N'Cái       ', 980000, N'Images/TuiBucketThietKeGioXachTieuThu.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (24, N'Túi Bucket Nu Pe Duvall Mini Purple', 8, N'Cái       ', 890000, N'Images/TuiBucketNuPedroDuvallMiniPurple.png', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (25, N'Túi Bucket Phong cách Hàn Quốc', 8, N'Cái       ', 870000, N'Images/TuiBucketPhongCachHanQuoc.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (26, N'Túi Bucket', 8, N'Cái       ', 750000, N'Images/TuiBucket.jpg', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (27, N'Túi MK Bucket Suri', 8, N'Cái       ', 750000, N'Images/TuiMKBucketSuri.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (28, N'Túi Bucket Celes Tine', 8, N'Cái       ', 780000, N'Images/TuiBucketCelesTine.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (29, N'Túi Bucket Cúc', 8, N'Cái       ', 790000, N'Images/TuiBucketCuc.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (30, N'Túi Bucket Da Ralan', 8, N'Cái       ', 840000, N'Images/TuiBucketDaRalan.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (32, N'Túi đeo chéo nữ Wristle', 10, N'Cái       ', 15000, N'Images/TuiDeoCheoNuWristlet.jpg', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (33, N'Túi có nắp gâp', 7, N'Cái       ', 210000, N'Images/TuiBiThu5.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (34, N'Túi Bao tử Hot trend', 9, N'Cái       ', 210000, N'Images/TuiBaoTuHotTrend.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (35, N'Túi bì thư 1', 1, N'Cái       ', 500000, N'Images/TuiBiThu3223338192.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (36, N'Túi Wristlet 1', 10, N'Cái       ', 450000, N'Images/TuiWristlet.png', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (37, N'Túi đựng điện thoại Wristle', 10, N'Cái       ', 560000, N'Images/TuiDungDienThoaiWristlet.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (38, N'Túi bao tử Burbery ', 9, N'Cái       ', 520000, N'Images/TuiBaoTyBurrbery.jpg', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (39, N'Túi bao tử nữ Coatch', 9, N'Cái       ', 750000, N'Images/TuiBaoTuNuCoatch.jpeg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (40, N'
Túi Wristlet vân da cá sấu Jianti', 10, N'Cái       ', 580000, N'Images/TuiWristletVanDaCaSauJianti.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (41, N'Túi nilon', 14, N'Cái       ', 5000000, N'Images/tim-hieu-ve-tui-xach-nam-hang-hieu221937598.jpg', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSp], [DonViTinh], [DonGia], [HinhSP], [TrangThai]) VALUES (42, N'aaaa', NULL, N'Cái       ', 5000000, N'Images/tui-xach-nu-dep222151064.jpg', 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[ThanhToan] ON 

INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT]) VALUES (1, N'Momo')
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT]) VALUES (2, N'Card')
INSERT [dbo].[ThanhToan] ([MaTT], [HinhThucTT]) VALUES (3, N'Tiền mặt')
SET IDENTITY_INSERT [dbo].[ThanhToan] OFF
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[CTDH] CHECK CONSTRAINT [FK_CTDH_DonHang]
GO
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_SanPham] FOREIGN KEY([MaSp])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTDH] CHECK CONSTRAINT [FK_CTDH_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NhanVien]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_ThanhToan1] FOREIGN KEY([MaTT])
REFERENCES [dbo].[ThanhToan] ([MaTT])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_ThanhToan1]
GO
