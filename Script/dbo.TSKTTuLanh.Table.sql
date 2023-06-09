USE [Ass]
GO
/****** Object:  Table [dbo].[TSKTTuLanh]    Script Date: 7/15/2023 12:45:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSKTTuLanh](
	[MaSP] [int] NOT NULL,
	[KieuTu] [nvarchar](max) NULL,
	[DungTich] [nvarchar](max) NULL,
	[CongNgheTietKiemDien] [nvarchar](max) NULL,
	[CongNgheLamLanh] [nvarchar](max) NULL,
	[CongNgheKhangKhuanKhuMui] [nvarchar](max) NULL,
	[CongNgheBaoQuanThucPham] [nvarchar](max) NULL,
	[KichThuocKhoiLuong] [nvarchar](max) NULL,
	[TienIch] [nvarchar](max) NULL,
 CONSTRAINT [PK_TSKTTuLanh] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TSKTTuLanh] ([MaSP], [KieuTu], [DungTich], [CongNgheTietKiemDien], [CongNgheLamLanh], [CongNgheKhangKhuanKhuMui], [CongNgheBaoQuanThucPham], [KichThuocKhoiLuong], [TienIch]) VALUES (26, N'Ngăn đá trên', N'236 lít - 2 - 3 người', N'Digital Inverter', N'Công nghệ làm lạnh vòm', N'Bộ lọc than hoạt tính Deodorizer', N'Ngăn rau củ lớn giữ ẩm Big BoxNgăn đông mềm -1 độ C Optimal Fresh Zone', N'Cao 154.5 cm - Rộng 55.5 cm - Sâu 63.7 cm - Nặng 45 kg', N'Ngăn kéo Easy Slide giúp lấy thực phẩm dễ dàng')
INSERT [dbo].[TSKTTuLanh] ([MaSP], [KieuTu], [DungTich], [CongNgheTietKiemDien], [CongNgheLamLanh], [CongNgheKhangKhuanKhuMui], [CongNgheBaoQuanThucPham], [KichThuocKhoiLuong], [TienIch]) VALUES (27, N'Ngăn đá trên', N'217 lít - 2 - 3 người', N'Inverter', N'Linear Cooling', N'Bộ lọc than hoạt tính', N'Linear Cooling', N'Cao 144.5 cm - Rộng 55.5 cm - Sâu 63.7 cm - Nặng 46 kg', N'Ngăn kéo Easy Slide giúp lấy thực phẩm dễ dàng')
INSERT [dbo].[TSKTTuLanh] ([MaSP], [KieuTu], [DungTich], [CongNgheTietKiemDien], [CongNgheLamLanh], [CongNgheKhangKhuanKhuMui], [CongNgheBaoQuanThucPham], [KichThuocKhoiLuong], [TienIch]) VALUES (28, N'Ngăn đá trên', N'208 lít - 2 - 3 người', N'Digital Inverter', N'Làm lạnh đa chiều', N'Bộ lọc than hoạt tính Deodorizer', N'Ngăn Cool PackNgăn rau củ lớn giữ ẩm Big Box', N'Cao 144.5 cm - Rộng 55.6 cm - Sâu 60.6 cm - Nặng 43 kg', N'Ngăn kéo Easy Slide giúp lấy thực phẩm dễ dàng')
INSERT [dbo].[TSKTTuLanh] ([MaSP], [KieuTu], [DungTich], [CongNgheTietKiemDien], [CongNgheLamLanh], [CongNgheKhangKhuanKhuMui], [CongNgheBaoQuanThucPham], [KichThuocKhoiLuong], [TienIch]) VALUES (29, N'Ngăn đá trên', N'170 lít - 2 - 3 người', N'Cảm biến thông minh EconaviInverter', N'Làm lạnh vòng cung Panorama', N'Công nghệ kháng khuẩn Ag Clean với tinh thể bạc Ag+', N'Ngăn Vegetable case', N'Cao 127.8 cm - Rộng 52.6 cm - Sâu 58.4 cm - Nặng 31 kg', N'Ngăn kéo Easy Slide giúp lấy thực phẩm dễ dàng')
INSERT [dbo].[TSKTTuLanh] ([MaSP], [KieuTu], [DungTich], [CongNgheTietKiemDien], [CongNgheLamLanh], [CongNgheKhangKhuanKhuMui], [CongNgheBaoQuanThucPham], [KichThuocKhoiLuong], [TienIch]) VALUES (30, N'Multi Door', N'488 lít - 4 - 5 người', N'Chế độ kỳ nghỉ tiết kiệm điệnDigital Inverter', N'2 dàn lạnh độc lập Twin Cooling Plus™Công nghệ làm lạnh No Frost', N'Bộ lọc than hoạt tính Deodorizer', N'Ngăn rau quả giữ ẩm', N'Bảng điều khiển bên ngoàiChuông báo khi quên đóng cửaChế độ kỳ nghỉ', N'Bảng điều khiển bên ngoàiChuông báo khi quên đóng cửaChế độ kỳ nghỉ')
INSERT [dbo].[TSKTTuLanh] ([MaSP], [KieuTu], [DungTich], [CongNgheTietKiemDien], [CongNgheLamLanh], [CongNgheKhangKhuanKhuMui], [CongNgheBaoQuanThucPham], [KichThuocKhoiLuong], [TienIch]) VALUES (31, N'Multi Door', N'649 lít - Trên 5 người', N'Công nghệ SmartThings AI EnergyInverter', N'Công nghệ All-around Cooling giúp kiểm soát chặt chẽ sự thay đổi nhiệt độCông nghệ làm lạnh Power CoolCông nghệ làm đá nhanh Power Freeze', N'Bộ lọc than hoạt tính', N'Công nghệ làm lạnh No FrostNgăn rau quả giữ ẩm', N'Cao 177.9 cm - Rộng 91.2 cm - Sâu 72.3 cm - Nặng 127 kg', N'Bảng điều khiển đèn ledChuông báo khi quên đóng cửaQuản lí thông minh SmartThings')
INSERT [dbo].[TSKTTuLanh] ([MaSP], [KieuTu], [DungTich], [CongNgheTietKiemDien], [CongNgheLamLanh], [CongNgheKhangKhuanKhuMui], [CongNgheBaoQuanThucPham], [KichThuocKhoiLuong], [TienIch]) VALUES (32, N'Ngăn đá trên', N'
374 lít - 3 - 4 người', N'Smart Inverter', N'Door Cooling+ làm lạnh từ cánh cửa tủLinear CoolingLàm lạnh đa chiều', N'Bộ lọc 5 lớp Hygiene Fresh+™', N'Ngăn Fresh 0 Zone - Ngăn thịt cá 0 độ C', N'Cao 170.2 cm - Rộng 70 cm - Sâu 68 cm - Nặng 69 kg', N'Bảng điều khiển bên ngoàiInverter tiết kiệm năng lượng')
INSERT [dbo].[TSKTTuLanh] ([MaSP], [KieuTu], [DungTich], [CongNgheTietKiemDien], [CongNgheLamLanh], [CongNgheKhangKhuanKhuMui], [CongNgheBaoQuanThucPham], [KichThuocKhoiLuong], [TienIch]) VALUES (33, N'Ngăn đá trên', N'234 lít - 2 - 3 người', N'Cảm biến thông minh EconaviInverter', N'Làm lạnh vòng cung Panorama', N'Công nghệ diệt khuẩn Blue Ag+ với tinh thể bạc Ag+ và ánh sáng xanh', N'Ngăn rau củ Fresh Safe', N'Cao 144.9 cm - Rộng 60 cm - Sâu 59.2 cm - Nặng 41 kg', N'
Khay thực phẩm Tanto tránh rơi thực phẩm ra ngoài')
GO
