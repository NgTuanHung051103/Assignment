USE [Ass]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/10/2023 11:56:19 AM ******/
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
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (3, 6, 1, N'https://cdn.tgdd.vn/Products/Images/1992/268462/quat-treo-senko-tc1622-070223-054812-600x600.jpg', 560000, N'Quạt treo Senko TC1622')
INSERT [dbo].[OrderDetail] ([OrderID], [MaSP], [SoLuong], [Img], [GiaThanh], [TenSP]) VALUES (4, 17, 1, N'https://cdn.tgdd.vn/Products/Images/1992/302731/quat-tran-kdk-w56wv-bk-den-080323-020421-600x600.jpg', 6990000, N'Quạt trần KDK W56WV(BK) đen')
GO
