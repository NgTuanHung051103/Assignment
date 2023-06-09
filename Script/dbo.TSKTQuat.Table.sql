USE [Ass]
GO
/****** Object:  Table [dbo].[TSKTQuat]    Script Date: 7/15/2023 12:45:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSKTQuat](
	[MaSP] [int] NOT NULL,
	[LoaiQuat] [nvarchar](max) NULL,
	[DuongKinhQuat] [nvarchar](max) NULL,
	[CheDoGio] [nvarchar](max) NULL,
	[BangDieuKhien] [nvarchar](max) NULL,
	[LoaiMotor] [nvarchar](max) NULL,
	[TienIch] [nvarchar](max) NULL,
	[KichThuocKhoiLuong] [nvarchar](max) NULL,
	[SoCanhQuat] [int] NULL,
 CONSTRAINT [PK_TSKTQuat] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (1, N'Quạt treo tường', N'3 cánh - 39 cm', N'Gió thường
', N'Dây kéo
', N'Bạc thau', N'Công tắc và các phần bảo vệ mối nối dây làm bằng chất liệu chống cháyLồng quạt có khe hở nan quạt nhỏ', N'Ngang 44.5 cm - Cao 59 cm - Sâu 33.5 cm - Nặng 3.7 kg', 3)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (2, N'Quạt đứng', N'5 cánh - 39 cm', N'Gió thường', N'Nút xoay', N'Bạc thau', N'Công tắc và các phần bảo vệ mối nối dây làm bằng chất liệu chống cháyLồng quạt có khe hở nan quạt nhỏĐiều chỉnh được chiều cao', N'Ngang 46.5 cm - Cao 106.3 - 117.5 cm - Sâu 46.5 cm - Nặng 4.5 kg', 5)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (3, N'Quạt đứng', N'5 cánh - 40 cm', N'Gió thường', N'Nút nhấn, Nút xoay', N'Bạc thau', N'Hẹn giờ tắtLồng quạt có khe hở nan quạt nhỏĐiều chỉnh được chiều cao', N'Ngang 40 cm - Cao 114 - 133.5 cm - Sâu 40 cm - Nặng 8.3 kg', 5)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (4, N'Quạt đứng', N'6 cánh - 40 cm', N'Gió thường', N'Nút xoay', N'Bạc thau', N'Lồng quạt có khe hở nan quạt nhỏĐiều chỉnh được chiều cao', N'Ngang 52 cm - Cao 100.5 - 119 cm - Sâu 52 cm - Nặng 5.6 kg', 6)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (5, N'Quạt đứng', N'5 cánh - 44 cm', N'Gió thường', N'Nút xoay', N'Bạc thau', N'Lồng quạt có khe hở nan quạt nhỏĐiều chỉnh được chiều cao', N'Ngang 46.5 cm - Cao 110.5 - 139.5 cm - Sâu 46.5 cm - Nặng 6 kg', 5)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (6, N'Quạt treo tường', N'7 cánh - 39 cm', N'Gió thường', N'Dây kéo, Nút xoay', N'Bạc thau', N'Công tắc và các phần bảo vệ mối nối dây làm bằng chất liệu chống cháyLồng quạt có khe hở nan quạt nhỏ', N'Ngang 45 cm - Cao 47 cm - Sâu 29 cm - Nặng 4 kg', 7)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (7, N'Quạt đứng', N'3 cánh - 39 cm', N'Gió thường', N'Nút nhấnNút xoay', N'Bạc thau', N'Công tắc và các phần bảo vệ mối nối dây làm bằng chất liệu chống cháyHẹn giờ tắtLồng quạt có khe hở nan quạt nhỏĐiều chỉnh được chiều cao', N'Ngang 37.5 cm - Cao 109 - 123 cm - Sâu 41 cm - Nặng 4.9 kg', 3)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (8, N'Quạt treo tường', N'
3 cánh - 40 cm', N'Gió ngủGió thườngGió tự nhiên', N'Nút nhấnRemote', N'Bạc thau', N'Có remoteHẹn giờ tắtLồng quạt có khe hở nan quạt nhỏ', N'Ngang 44.7 cm - Cao 55.2 cm - Sâu 36.5 cm - Nặng 3.5 kg', 3)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (9, N'Quạt treo tường', N'3 cánh - 40 cm', N'Gió ngủGió thườngGió tự nhiên', N'Nút nhấnRemote', N'Bạc thau', N'Có remoteHẹn giờ tắtLồng quạt có khe hở nan quạt nhỏ', N'Ngang 47 cm - Cao 69 cm - Sâu 36.5 cm - Nặng 3.5 kg', 3)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (10, N'Quạt treo tường', N'3 cánh', N'Gió ngủGió thườngGió tự nhiên', N'Nút nhấnRemote
', N'Bạc thau', N'Có remoteHẹn giờ tắtLồng quạt có khe hở nan quạt nhỏ', N'Ngang 46.5 cm - Cao 54 cm - Sâu 35 cm - Nặng 3.6 kg', 3)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (11, N'Quạt đứng', N'3 cánh - 40 cm', N'Gió thường', N'Nút xoay', N'Bạc thau', N'Lồng quạt có khe hở nan quạt nhỏĐiều chỉnh được chiều cao', N'Ngang 44.5 cm - Cao 95 - 130 cm - Sâu 44.5 cm - Nặng 6 kg', 3)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (12, N'Quạt đứng', N'9 cánh - 40 cm', N'Cảm biến nhiệt độGió ngủGió thườngGió tự nhiênGió yên tĩnh', N'Nút nhấnNút xoayRemote', N'Bạc thau', N'Có remoteDC Inverter tiết kiệm điệnHẹn giờ tắtLồng quạt có khe hở nan quạt nhỏMàn hình LED hiển thịĐiều chỉnh được chiều cao', N'Ngang 40 cm - Cao 122 - 133 cm - Sâu 40 cm - Nặng 7.2 kg', 9)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (13, N'Quạt trần', N'5 cánh - 150 cm', N'Gió ngủGió thườngGió tự nhiên', N'Remote', N'Bạc đạn', N'Có remoteCó đèn LEDHẹn giờ tắt', N'Ngang 150 cm - Cao 34.1 cm - Sâu 150 cm - Nặng 8 kg', 5)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (14, N'Quạt trần', N'3 cánh - 120 cm', N'Gió ngủGió thường', N'Remote', N'Bạc đạn', N'Có remoteHẹn giờ mởHẹn giờ tắt', N'Ngang 120 cm - Cao 26 cm - Sâu 120 cm - Nặng 5.1 kg', 3)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (15, N'Quạt trần', N'
4 cánh - 140 cm', N'Gió thường', N'Remote', N'Bạc đạn', N'Có remoteHẹn giờ tắt', N'Ngang 140 cm - Cao 42 cm - Sâu 140 cm - Nặng 7 kg', 4)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (16, N'Quạt trần', N'
5 cánh - 150 cm', N'Gió ngủGió thườngGió tự nhiên
', N'Remote', N'Bạc đạn', N'Có remoteHẹn giờ mởHẹn giờ tắt', N'Ngang 150 cm - Cao 31.5 cm - Sâu 150 cm - Nặng 5.1 kg', 5)
INSERT [dbo].[TSKTQuat] ([MaSP], [LoaiQuat], [DuongKinhQuat], [CheDoGio], [BangDieuKhien], [LoaiMotor], [TienIch], [KichThuocKhoiLuong], [SoCanhQuat]) VALUES (17, N'Quạt trần', N'4 cánh - 140 cm', N'Gió ngủGió thườngGió tự nhiên', N'Remote', N'Bạc đạn', N'Có remoteHẹn giờ mởHẹn giờ tắt', N'Ngang 140 cm - Cao 31.5 cm - Sâu 140 cm - Nặng 4.9 kg', 4)
GO
