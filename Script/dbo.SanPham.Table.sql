USE [Ass]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/15/2023 12:45:42 AM ******/
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
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (1, N'Quạt treo Senko T1680', N'Senko', N'https://cdn.tgdd.vn/Products/Images/1992/268460/treo-senko-t1680-070223-054629-600x600.jpg', N'450000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (2, N'Quạt đứng Senko DTS1609', N'Senko', N'https://cdn.tgdd.vn/Products/Images/1992/268451/dung-senko-dts1609-0-600x600.jpg', N'620000', N'1', N'8')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (3, N'Quạt đứng Toshiba F-LSA10(W)', N'Toshiba', N'https://cdn.tgdd.vn/Products/Images/1992/206027/quat-dung-toshiba-f-lsa10-w-vn-trang-0-600x600.jpg', N'1230000', N'1', N'8')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (4, N'Quạt đứng Asia VY639990', N'Asia', N'https://cdn.tgdd.vn/Products/Images/1992/275186/dung-asia-vy639990-070223-051016-600x600.jpg', N'999000', N'1', N'8')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (5, N'Quạt đứng Asia VY539790', N'Asia', N'https://cdn.tgdd.vn/Products/Images/1992/275185/dung-asia-vy539790-070223-050825-600x600.jpg', N'789000', N'1', N'7')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (6, N'Quạt treo Senko TC1622', N'Senko', N'https://cdn.tgdd.vn/Products/Images/1992/268462/quat-treo-senko-tc1622-070223-054812-600x600.jpg', N'560000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (7, N'Quạt đứng Senko DH1600', N'Senko', N'https://cdn.tgdd.vn/Products/Images/1992/268450/dung-senko-dh1600-0-600x600.jpg', N'580000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (8, N'Quạt treo Asia VY377990', N'Asia', N'https://cdn.tgdd.vn/Products/Images/1992/275529/275529-1-600x600.jpg', N'1092000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (9, N'Quạt treo Asia VY377790', N'Asia', N'https://cdn.tgdd.vn/Products/Images/1992/275528/treo-asia-vy377790-070223-050634-600x600.jpg', N'999000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (10, N'Quạt treo Toshiba F-WSA20', N'Toshiba', N'https://cdn.tgdd.vn/Products/Images/1992/166885/toshiba-f-wsa20-h-vn-070223-055916-600x600.jpg', N'1490000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (11, N'Quạt đứng Asia VY449690', N'Asia', N'https://cdn.tgdd.vn/Products/Images/1992/275180/dung-asia-vy449690-070223-050659-600x600.jpg', N'980000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (12, N'Quạt đứng Toshiba DC inverter F-LSD30(W)', N'Toshiba', N'https://cdn.tgdd.vn/Products/Images/1992/203754/quat-dung-toshiba-f-lsd30-w-vn-0-600x600.jpg', N'2990000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (13, N'Quạt trần KDK V60WK(GY) xám', N'KDK', N'https://cdn.tgdd.vn/Products/Images/1992/302726/302726-600x600-1.jpg', N'3990000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (14, N'Quạt trần KDK M11SU(SIL) bạc', N'KDK', N'https://cdn.tgdd.vn/Products/Images/1992/302733/quat-tran-kdk-m11su-sil-bac-080323-111921-600x600.jpg', N'3990000', N'1', N'7')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (15, N'Quạt trần KDK M56PR(GD) vàng', N'KDK', N'https://cdn.tgdd.vn/Products/Images/1992/302717/quat-tran-kdk-m56pr-gd-vang-240223-101325-600x600.jpg', N'3690000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (16, N' Quạt trần KDK T60AW(SIL)', N'KDK', N'https://cdn.tgdd.vn/Products/Images/1992/302722/quat-tran-kdk-t60aw-sil-080323-113121-600x600.jpg', N'9590000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (17, N'Quạt trần KDK W56WV(BK) đen', N'KDK', N'https://cdn.tgdd.vn/Products/Images/1992/302731/quat-tran-kdk-w56wv-bk-den-080323-020421-600x600.jpg', N'6990000', N'1', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (18, N'Máy lạnh LG Inverter 1.5 HP V13WIN', N'LG', N'https://cdn.tgdd.vn/Products/Images/2002/300077/may-lanh-lg-inverter-15-hp-v13win-050523-041322-550x160.jpg', N'11590000', N'2', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (19, N'Máy l?nh Toshiba 2 HP Inverter RAS-H18C4KCVG-V', N'Toshiba', N'https://cdn.tgdd.vn/Products/Images/2002/267690/toshiba-2-hp-inverter-ras-h18c4kcvg-v-050423-030748-550x160.jpg', N'19690000', N'2', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (20, N'Máy lạnh Daikin Inverter 2.5 HP FTKF60XVMV', N'Daikin', N'https://cdn.tgdd.vn/Products/Images/2002/303866/may-lanh-daikin-inverter-25-hp-ftkf60xvmv-300523-114108-550x160.jpg', N'24690000', N'2', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (21, N'Máy lạnh Daikin Inverter 2 chiều 1.5 HP ATHF35XVMV', N'Daikin', N'https://cdn.tgdd.vn/Products/Images/2002/307259/product-307259-160523-025109-550x160.jpg', N'16790000', N'2', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (22, N'Máy lạnh 2 chiều LG Inverter 1.5 HP B13END1', N'LG', N'https://cdn.tgdd.vn/Products/Images/2002/273345/2-chieu-lg-inverter-15-hp-b13end1-1.-550x160.jpg', N'15190000', N'2', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (23, N'Máy lạnh 2 chiều Daikin Inverter 2.5 HP FTHF60VVMV', N'Daikin', N'https://cdn.tgdd.vn/Products/Images/2002/277628/2-chieu-daikin-inverter-25-hp-fthf60vvmv-1-550x160.jpg', N'29490000', N'2', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (24, N'Máy lạnh Toshiba 1.5 HP Inverter RAS-H13C4KCVG-V', N'Toshiba', N'https://cdn.tgdd.vn/Products/Images/2002/267689/toshiba-15-hp-inverter-ras-h13c4kcvg-v-050423-024935-550x160.jpg', N'13290000', N'2', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (25, N'Máy lạnh 2 chiều Daikin Inverter 2 HP FTHF50VVMV', N'Daikin', N'https://cdn.tgdd.vn/Products/Images/2002/237446/daikin-fthf50vvmv-550x160.jpg', N'21790000', N'2', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (26, N'Tủ lạnh Samsung Inverter 236 lít RT22M4032BY/SV', N'SamSung', N'https://cdn.tgdd.vn/Products/Images/1943/220325/samsung-rt22m4032by-sv-300x300.jpg', N'9300000', N'3', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (27, N'Tủ lạnh LG Inverter 217 Lít GV-B212WB ', N'LG', N'https://cdn.tgdd.vn/Products/Images/1943/294558/tu-lanh-lg-gv-b212wb-1-600x600.jpg', N'8990000', N'3', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (28, N'Tủ lạnh Samsung Inverter 208 lít RT20HAR8DBU/SV', N'Samsung', N'https://cdn.tgdd.vn/Products/Images/1943/220320/samsung-rt20har8dbu-sv-300x300.jpg', N'7890000', N'3', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (29, N'Tủ lạnh Panasonic Inverter 170 lít NR-BA190PPVN', N'Panasonic', N'https://cdn.tgdd.vn/Products/Images/1943/230195/panasonic-nr-ba190ppvn-300x300.jpg', N'6590000', N'3', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (30, N'Tủ lạnh Samsung Inverter 488 lít RF48A4010M9/SV', N'Samsung', N'https://cdn.tgdd.vn/Products/Images/1943/236996/samsung-rf48a4010m9-sv-300x300.jpg', N'2500000', N'3', N'8')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (31, N'Tủ lạnh Samsung Inverter 649 lít RF59C700ES9/SV', N'Samsung', N'https://cdn.tgdd.vn/Products/Images/1943/304785/rf59c700es9-sv-600x600.jpg', N'3890000', N'3', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (32, N'Tủ lạnh LG Inverter 374 lít GN-D372BLA', N'LG', N'https://cdn.tgdd.vn/Products/Images/1943/258352/lg-inverter-374-lit-gn-d372bla-1.-600x600.jpg', N'1890000', N'3', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (33, N'Tủ lạnh Panasonic Inverter 234 lít NR-TV261APSV', N'Panasonic', N'https://cdn.tgdd.vn/Products/Images/1943/237337/panasonic-nr-tv261apsv-600x600.jpg', N'809000', N'3', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (34, N'Smart Tivi Samsung 4K Crystal UHD 55 inch UA55AU8100', N'Samsung', N'https://cdn.tgdd.vn/Products/Images/1942/235792/led-4k-samsung-ua55au8100-221122-040640-550x340.jpg', N'1340000', N'4', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (35, N'Tivi Sony 4K 43 inch KD-43X75K ', N'Sony', N'https://cdn.tgdd.vn/Products/Images/1942/275517/google-sony-4k-43-inch-kd-43x75k-141022-100813-550x340.jpg', N'1140000', N'4', N'9')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (36, N'Smart Tivi Samsung 4K Crystal UHD 50 inch UA50AU8100', N'Samsung', N'https://cdn.tgdd.vn/Products/Images/1942/235791/led-4k-samsung-ua50au8100-221122-040529-550x340.jpg', N'1240000', N'4', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (37, N'Smart Tivi Samsung 4K 43 inch UA43AU7002 ', N'Samsung', N'https://cdn.tgdd.vn/Products/Images/1942/279935/product-279935-110522-094032-550x340.jpg', N'840000', N'4', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (38, N'Google Tivi Sony 4K 55 inch KD-55X80K', N'Sony', N'https://cdn.tgdd.vn/Products/Images/1942/274761/android-sony-4k-55-inch-kd-55x80k-180322-022717-550x340.png', N'1790000', N'4', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (39, N'Google Tivi Sony 4K 55 inch KD-55X75K', N'Sony', N'https://cdn.tgdd.vn/Products/Images/1942/274763/android-sony-4k-43-inch-kd-43x80k-180322-024040-550x340.png', N'1400000', N'4', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (40, N'Smart Tivi QLED 4K 55 inch Samsung QA55Q60C', N'Samsung', N'https://cdn.tgdd.vn/Products/Images/1942/303225/smart-tivi-qled-4k-55-inch-samsung-qa55q60c-020323-105917-550x340.jpg', N'1690000', N'4', N'10')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [ThuongHieu], [Img], [GiaThanh], [NhomSP], [SoLuong]) VALUES (41, N'Smart Tivi QLED 4K 50 inch Samsung QA50Q60C', N'Samsung', N'https://cdn.tgdd.vn/Products/Images/1942/303227/smart-tivi-qled-4k-50-inch-samsung-qa50q60c-240323-033511-550x340.jpg', N'1590000', N'4', N'10')
GO
