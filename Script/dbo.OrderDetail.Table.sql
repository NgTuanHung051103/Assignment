USE [Ass]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/15/2023 12:45:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[Img] [nvarchar](max) NULL,
	[GiaThanh] [int] NULL,
	[TenSP] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (2, 5, 1, N'https://cdn.tgdd.vn/Products/Images/1992/275185/dung-asia-vy539790-070223-050825-600x600.jpg', 789000, N'Quạt đứng Asia VY539790')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (2, 14, 1, N'https://cdn.tgdd.vn/Products/Images/1992/302733/quat-tran-kdk-m11su-sil-bac-080323-111921-600x600.jpg', 3990000, N'Quạt trần KDK M11SU(SIL) bạc')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (3, 18, 1, N'https://cdn.tgdd.vn/Products/Images/2002/300077/may-lanh-lg-inverter-15-hp-v13win-050523-041322-550x160.jpg', 11590000, N'Máy lạnh LG Inverter 1.5 HP V13WIN')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (4, 2, 1, N'https://cdn.tgdd.vn/Products/Images/1992/268451/dung-senko-dts1609-0-600x600.jpg', 620000, N'Quạt đứng Senko DTS1609')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (5, 35, 1, N'https://cdn.tgdd.vn/Products/Images/1942/275517/google-sony-4k-43-inch-kd-43x75k-141022-100813-550x340.jpg', 1140000, N'Tivi Sony 4K 43 inch KD-43X75K ')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (5, 30, 1, N'https://cdn.tgdd.vn/Products/Images/1943/236996/samsung-rf48a4010m9-sv-300x300.jpg', 2500000, N'Tủ lạnh Samsung Inverter 488 lít RF48A4010M9/SV')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (6, 2, 1, N'https://cdn.tgdd.vn/Products/Images/1992/268451/dung-senko-dts1609-0-600x600.jpg', 620000, N'Quạt đứng Senko DTS1609')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (7, 30, 1, N'https://cdn.tgdd.vn/Products/Images/1943/236996/samsung-rf48a4010m9-sv-300x300.jpg', 2500000, N'Tủ lạnh Samsung Inverter 488 lít RF48A4010M9/SV')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (8, 38, 1, N'https://cdn.tgdd.vn/Products/Images/1942/274761/android-sony-4k-55-inch-kd-55x80k-180322-022717-550x340.png', 1790000, N'Google Tivi Sony 4K 55 inch KD-55X80K')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (11, 1, 1, N'https://cdn.tgdd.vn/Products/Images/1992/268460/treo-senko-t1680-070223-054629-600x600.jpg', 450000, N'Quạt treo Senko T1680')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (12, 3, 1, N'https://cdn.tgdd.vn/Products/Images/1992/206027/quat-dung-toshiba-f-lsa10-w-vn-trang-0-600x600.jpg', 1230000, N'Quạt đứng Toshiba F-LSA10(W)')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (13, 3, 1, N'https://cdn.tgdd.vn/Products/Images/1992/206027/quat-dung-toshiba-f-lsa10-w-vn-trang-0-600x600.jpg', 1230000, N'Quạt đứng Toshiba F-LSA10(W)')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (14, 5, 1, N'https://cdn.tgdd.vn/Products/Images/1992/275185/dung-asia-vy539790-070223-050825-600x600.jpg', 789000, N'Quạt đứng Asia VY539790')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (15, 17, 1, N'https://cdn.tgdd.vn/Products/Images/1992/302731/quat-tran-kdk-w56wv-bk-den-080323-020421-600x600.jpg', 6990000, N'Quạt trần KDK W56WV(BK) đen')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (16, 1, 1, N'https://cdn.tgdd.vn/Products/Images/1992/268460/treo-senko-t1680-070223-054629-600x600.jpg', 450000, N'Quạt treo Senko T1680')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (3, 6, 1, N'https://cdn.tgdd.vn/Products/Images/1992/268462/quat-treo-senko-tc1622-070223-054812-600x600.jpg', 560000, N'Quạt treo Senko TC1622')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (13, 4, 1, N'https://cdn.tgdd.vn/Products/Images/1992/275186/dung-asia-vy639990-070223-051016-600x600.jpg', 999000, N'Quạt đứng Asia VY639990')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (18, 5, 1, N'https://cdn.tgdd.vn/Products/Images/1992/275185/dung-asia-vy539790-070223-050825-600x600.jpg', 789000, N'Quạt đứng Asia VY539790')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (4, 17, 1, N'https://cdn.tgdd.vn/Products/Images/1992/302731/quat-tran-kdk-w56wv-bk-den-080323-020421-600x600.jpg', 6990000, N'Quạt trần KDK W56WV(BK) đen')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (19, 15, 1, N'https://cdn.tgdd.vn/Products/Images/1992/302717/quat-tran-kdk-m56pr-gd-vang-240223-101325-600x600.jpg', 3690000, N'Quạt trần KDK M56PR(GD) vàng')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (9, 4, 1, N'https://cdn.tgdd.vn/Products/Images/1992/275186/dung-asia-vy639990-070223-051016-600x600.jpg', 999000, N'Quạt đứng Asia VY639990')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (14, 2, 3, N'https://cdn.tgdd.vn/Products/Images/1992/268451/dung-senko-dts1609-0-600x600.jpg', 620000, N'Quạt đứng Senko DTS1609')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (10, 19, 3, N'https://cdn.tgdd.vn/Products/Images/2002/267690/toshiba-2-hp-inverter-ras-h18c4kcvg-v-050423-030748-550x160.jpg', 19690000, N'Máy l?nh Toshiba 2 HP Inverter RAS-H18C4KCVG-V')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (17, 5, 1, N'https://cdn.tgdd.vn/Products/Images/1992/275185/dung-asia-vy539790-070223-050825-600x600.jpg', 789000, N'Quạt đứng Asia VY539790')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (12, 2, 1, N'https://cdn.tgdd.vn/Products/Images/1992/268451/dung-senko-dts1609-0-600x600.jpg', 620000, N'Quạt đứng Senko DTS1609')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (18, 11, 1, N'https://cdn.tgdd.vn/Products/Images/1992/275180/dung-asia-vy449690-070223-050659-600x600.jpg', 980000, N'Quạt đứng Asia VY449690')
GO
