USE [Ass]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/10/2023 11:56:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[ThuongHieu] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[GiaThanh] [nvarchar](max) NULL,
	[NhomSP] [nvarchar](max) NULL,
	[SoLuong] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (1, N'Quạt treo Senko T1680', N'Senko', N'https://cdn.tgdd.vn/Products/Images/1992/268460/treo-senko-t1680-070223-054629-600x600.jpg', N'450000', N'1', N'5')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (2, N'Quạt đứng Senko DTS1609', N'Senko', N'https://cdn.tgdd.vn/Products/Images/1992/268451/dung-senko-dts1609-0-600x600.jpg', N'620000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (3, N'Quạt đứng Toshiba F-LSA10(W)', N'Toshiba', N'https://cdn.tgdd.vn/Products/Images/1992/206027/quat-dung-toshiba-f-lsa10-w-vn-trang-0-600x600.jpg', N'1230000', N'1', N'4')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (4, N'Quạt đứng Asia VY639990', N'Asia', N'https://cdn.tgdd.vn/Products/Images/1992/275186/dung-asia-vy639990-070223-051016-600x600.jpg', N'999000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (5, N'Quạt đứng Asia VY539790', N'Asia', N'https://cdn.tgdd.vn/Products/Images/1992/275185/dung-asia-vy539790-070223-050825-600x600.jpg', N'789000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (6, N'Quạt treo Senko TC1622', N'Senko', N'https://cdn.tgdd.vn/Products/Images/1992/268462/quat-treo-senko-tc1622-070223-054812-600x600.jpg', N'560000', N'1', N'5')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (7, N'Quạt đứng Senko DH1600', N'Senko', N'https://cdn.tgdd.vn/Products/Images/1992/268450/dung-senko-dh1600-0-600x600.jpg', N'580000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (8, N'Quạt treo Asia VY377990', N'Asia', N'https://cdn.tgdd.vn/Products/Images/1992/275529/275529-1-600x600.jpg', N'1092000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (9, N'Quạt treo Asia VY377790', N'Asia', N'https://cdn.tgdd.vn/Products/Images/1992/275528/treo-asia-vy377790-070223-050634-600x600.jpg', N'999000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (10, N'Quạt treo Toshiba F-WSA20', N'Toshiba', N'https://cdn.tgdd.vn/Products/Images/1992/166885/toshiba-f-wsa20-h-vn-070223-055916-600x600.jpg', N'1490000', N'1', N'5')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (11, N'Quạt đứng Asia VY449690', N'Asia', N'https://cdn.tgdd.vn/Products/Images/1992/275180/dung-asia-vy449690-070223-050659-600x600.jpg', N'1049000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (12, N'Quạt đứng Toshiba DC inverter F-LSD30(W)', N'Toshiba', N'https://cdn.tgdd.vn/Products/Images/1992/203754/quat-dung-toshiba-f-lsd30-w-vn-0-600x600.jpg', N'2990000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (13, N'Quạt trần KDK V60WK(GY) xám', N'KDK', N'https://cdn.tgdd.vn/Products/Images/1992/302726/302726-600x600-1.jpg', N'3990000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (14, N'Quạt trần KDK M11SU(SIL) bạc', N'KDK', N'https://cdn.tgdd.vn/Products/Images/1992/302733/quat-tran-kdk-m11su-sil-bac-080323-111921-600x600.jpg', N'3990000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (15, N'Quạt trần KDK M56PR(GD) vàng', N'KDK', N'https://cdn.tgdd.vn/Products/Images/1992/302717/quat-tran-kdk-m56pr-gd-vang-240223-101325-600x600.jpg', N'3690000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (16, N' Quạt trần KDK T60AW(SIL)', N'KDK', N'https://cdn.tgdd.vn/Products/Images/1992/302722/quat-tran-kdk-t60aw-sil-080323-113121-600x600.jpg', N'9590000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (17, N'Quạt trần KDK W56WV(BK) đen', N'KDK', N'https://cdn.tgdd.vn/Products/Images/1992/302731/quat-tran-kdk-w56wv-bk-den-080323-020421-600x600.jpg', N'6990000', N'1', N'3')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (18, N'Máy lạnh LG Inverter 1.5 HP V13WIN', N'LG', N'https://cdn.tgdd.vn/Products/Images/2002/300077/may-lanh-lg-inverter-15-hp-v13win-050523-041322-550x160.jpg', N'11590000', N'2', N'3')
GO
