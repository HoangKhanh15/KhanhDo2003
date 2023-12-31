USE [QL_WEBBANDOANNHANH]
GO
/****** Object:  Table [dbo].[CT_DonHang]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DonHang](
	[MaDonHang] [int] NOT NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaBan] [decimal](18, 2) NULL,
	[ThanhTien] [decimal](18, 2) NULL,
	[MaKH] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaTT] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[TinhTrang] [nvarchar](10) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](200) NULL,
	[SDT] [nchar](11) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MaND] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nchar](50) NOT NULL,
	[MatKhau] [nchar](50) NULL,
	[MaPQ] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](200) NULL,
	[SDT] [nchar](11) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[ChucVu] [nvarchar](200) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[MaND] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanLoai]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhanLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaPQ] [int] IDENTITY(1,1) NOT NULL,
	[TenPQ] [nvarchar](200) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhuongThucTT]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongThucTT](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TenTT] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhuongThucTT] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuanLy]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLy](
	[MaQL] [int] IDENTITY(1,1) NOT NULL,
	[TenQL] [nvarchar](200) NULL,
	[SDT] [nchar](11) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[ChucVu] [nvarchar](200) NULL,
	[MaND] [int] NULL,
 CONSTRAINT [PK_QuanLy] PRIMARY KEY CLUSTERED 
(
	[MaQL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaLoai] [int] NULL,
	[TenSP] [nvarchar](200) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[DonGia] [decimal](18, 2) NULL,
	[HangTon] [int] NULL,
 CONSTRAINT [PK_DoAn] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/26/2023 11:57:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[TenHienThi] [nvarchar](50) NULL,
	[SDT] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD  CONSTRAINT [FK_CT_DonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[CT_DonHang] CHECK CONSTRAINT [FK_CT_DonHang_DonHang]
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD  CONSTRAINT [FK_CT_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[CT_DonHang] CHECK CONSTRAINT [FK_CT_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD  CONSTRAINT [FK_CT_DonHang_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[CT_DonHang] CHECK CONSTRAINT [FK_CT_DonHang_NhanVien]
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD  CONSTRAINT [FK_CT_DonHang_PhuongThucTT] FOREIGN KEY([MaTT])
REFERENCES [dbo].[PhuongThucTT] ([MaTT])
GO
ALTER TABLE [dbo].[CT_DonHang] CHECK CONSTRAINT [FK_CT_DonHang_PhuongThucTT]
GO
ALTER TABLE [dbo].[CT_DonHang]  WITH CHECK ADD  CONSTRAINT [FK_CT_DonHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CT_DonHang] CHECK CONSTRAINT [FK_CT_DonHang_SanPham]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_NguoiDung]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_PhanQuyen] FOREIGN KEY([MaPQ])
REFERENCES [dbo].[PhanQuyen] ([MaPQ])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_PhanQuyen]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NguoiDung]
GO
ALTER TABLE [dbo].[QuanLy]  WITH CHECK ADD  CONSTRAINT [FK_QuanLy_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[QuanLy] CHECK CONSTRAINT [FK_QuanLy_NguoiDung]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_PhanLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[PhanLoai] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_PhanLoai]
GO
