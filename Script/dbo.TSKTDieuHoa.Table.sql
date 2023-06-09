USE [Ass]
GO
/****** Object:  Table [dbo].[TSKTDieuHoa]    Script Date: 7/15/2023 12:45:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSKTDieuHoa](
	[MaSP] [int] NOT NULL,
	[LoaiMay] [nvarchar](max) NULL,
	[CongSuat] [nvarchar](max) NULL,
	[PhamVi] [nvarchar](max) NULL,
	[KhuKhuan] [nvarchar](max) NULL,
	[CongNgheTietKiemDien] [nvarchar](max) NULL,
	[LamLanhNhanh] [nvarchar](max) NULL,
	[TienIch] [nvarchar](max) NULL,
	[TieuThuDien] [nvarchar](max) NULL,
	[DanLanh] [nvarchar](max) NULL,
	[DanNong] [nvarchar](max) NULL,
 CONSTRAINT [PK_TSKTDieuHoa] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TSKTDieuHoa] ([MaSP], [LoaiMay], [CongSuat], [PhamVi], [KhuKhuan], [CongNgheTietKiemDien], [LamLanhNhanh], [TienIch], [TieuThuDien], [DanLanh], [DanNong]) VALUES (18, N'1 chiều (chỉ làm lạnh)Có Inverter', N'1.5 HP - 11.000 BTU', N'Từ 15 - 20m² (từ 40 đến 60 m³)', N'Màng lọc bụi mịn PM 2.5Màng lọc sơ cấp
', N'Dual inverterEnergy Ctrl - Kiểm soát năng lượng chủ động 4 mức', N'Jet Cool', N'Chế độ ngủ đêm tránh buốtChức năng tự chẩn đoán lỗiChức năng tự làm sạchCông nghệ Gold-Fin chống ăn mònHẹn giờ bật, tắtThổi gió dễ chịu (cho trẻ em, người già)Tự khởi động lại khi có điện', N'1.15 kW/h5 sao (Hiệu suất năng lượng 4.85)', N'Dài 83.7 cm - Cao 30.8 cm - Dày 18.9 cm - Nặng 8.2 kg', N'Dài 71.7 cm - Cao 49.5 cm - Dày 23 cm - Nặng 22.1 kg')
INSERT [dbo].[TSKTDieuHoa] ([MaSP], [LoaiMay], [CongSuat], [PhamVi], [KhuKhuan], [CongNgheTietKiemDien], [LamLanhNhanh], [TienIch], [TieuThuDien], [DanLanh], [DanNong]) VALUES (19, N'1 chiều (chỉ làm lạnh)Có Inverter', N'2 HP - 17.000 BTU', N'Từ 20 - 30m² (từ 60 đến 80m³)', N'Chỉ có lưới lọc bụi thô, phin lọc chống mốcCông nghệ chống bám bẩn Magic CoilCông nghệ tinh lọc không khí Ultra Fresh', N'EcoHybrid Inverter', N'Hi Power', N'Chế độ chỉ sử dụng quạt Fan Only - chỉ làm mát, không làm lạnhChức năng hút ẩmChức năng tự làm sạchHẹn giờ tắt máyTự khởi động lại khi có điện', N'1.66 kW/h5 sao (Hiệu suất năng lượng 4.84)', N'
Dài 80 cm - Cao 29 cm - Dày 24 cm - Nặng 9 kg', N'Dài 84.5 cm - Cao 55 cm - Dày 31.6 cm - Nặng 33 kg')
INSERT [dbo].[TSKTDieuHoa] ([MaSP], [LoaiMay], [CongSuat], [PhamVi], [KhuKhuan], [CongNgheTietKiemDien], [LamLanhNhanh], [TienIch], [TieuThuDien], [DanLanh], [DanNong]) VALUES (20, N'1 chiều (chỉ làm lạnh)Có Inverter', N'2.5 HP - 20.500 BTU', N'Từ 30 - 40m² (từ 80 đến 120m³)', N'Có lưới lọc bụiMàng lọc bụi mịn PM 2.5Phin lọc Enzyme Blue tích hợp lọc bụi mịn PM2.5Streamer diệt khuẩn', N'Inverter', N'Powerful', N'Chức năng chống ẩm mốc bảo vệ sức khỏeHẹn giờ bật tắt máyLuồng gió thoải mái CoandaTùy chọn mua thêm bộ điều khiển không dây Daikin MobileTự khởi động lại khi có điện', N'2.06 kW/h5 sao (Hiệu suất năng lượng 5.25)', N'Dài 77 cm - Cao 28.6 cm - Dày 24.4 cm - Nặng 8 kg', N'Dài 84.5 cm - Cao 59.5 cm - Dày 30 cm - Nặng 35 kg')
INSERT [dbo].[TSKTDieuHoa] ([MaSP], [LoaiMay], [CongSuat], [PhamVi], [KhuKhuan], [CongNgheTietKiemDien], [LamLanhNhanh], [TienIch], [TieuThuDien], [DanLanh], [DanNong]) VALUES (21, N'2 chiều (có sưởi ấm)Có Inverter', N'1.5 HP - 12.300 BTU', N'Từ 15 - 20m² (từ 40 đến 60 m³)', N'Lưới lọc bụiPhin lọc Enzyme Blue tích hợp lọc bụi mịn PM2.5Streamer diệt khuẩn', N'Inverter', N'Powerful', N'Chức năng chống ẩm mốc kết hợp công nghệ StreamerHoạt động siêu êm QuietHẹn giờ bật tắt máyLuồng gió thoải mái CoandaTùy chọn mua thêm bộ điều khiển không dây Daikin MobileTự khởi động lại khi có điện', N'1.075 kW/h5 sao (Hiệu suất năng lượng 5.7)', N'Dài 77 cm - Cao 28.6 cm - Dày 24.4 cm - Nặng 9 kg', N'Dài 67.5 cm - Cao 55 cm - Dày 28.4 cm - Nặng 26 kg')
INSERT [dbo].[TSKTDieuHoa] ([MaSP], [LoaiMay], [CongSuat], [PhamVi], [KhuKhuan], [CongNgheTietKiemDien], [LamLanhNhanh], [TienIch], [TieuThuDien], [DanLanh], [DanNong]) VALUES (22, N'2 chiều (có sưởi ấm)Có Inverter', N'1.5 HP - 12.000 BTU', N'Từ 15 - 20m² (từ 40 đến 60 m³)', N'Màng lọc sơ cấp', N'Dual inverter', N'Jet Cool', N'Chức năng tự chẩn đoán lỗiChức năng tự làm sạchChế độ ngủ đêm tránh buốtCông nghệ Gold-Fin chống ăn mònHẹn giờ bật tắt máyMàn hình hiển thị nhiệt độ trên dàn lạnhThổi gió dễ chịu (cho trẻ em, người già)Tự khởi động lại khi có điệnĐảo gió 4 chiều giúp hơi lạnh lan toả đồng đều', N'1.08 kW/h5 sao (Hiệu suất năng lượng 5.0)', N'Dài 84 cm - Cao 31 cm - Dày 19 cm - Nặng 8.5 kg', N'
Dài 81 cm - Cao 50 cm - Dày 23.5 cm - Nặng 24.7 kg')
INSERT [dbo].[TSKTDieuHoa] ([MaSP], [LoaiMay], [CongSuat], [PhamVi], [KhuKhuan], [CongNgheTietKiemDien], [LamLanhNhanh], [TienIch], [TieuThuDien], [DanLanh], [DanNong]) VALUES (23, N'2 chiều (có sưởi ấm)Có Inverter', N'2.5 HP - 20.500 BTU', N'Từ 30 - 40m² (từ 80 đến 120m³)', N'Lưới lọc bụiPhin lọc Apatit Titan & PM 2.5 (tùy chọn)', N'EconoInverterMắt thần thông minh', N'
Powerful', N'Chức năng chống ẩm mốc bảo vệ sức khỏeChức năng khử ẩmHẹn giờ bật tắt máyRemote có đèn LEDThổi gió dễ chịu (cho trẻ em, người già)Tùy chọn mua thêm bộ điều khiển không dây Daikin MobileTự khởi động lại khi có điệnTự động vận hành lạnh sưởi theo nhiệt độ phòng', N'1.74 kW/h5 sao (Hiệu suất năng lượng 5.80)', N'Dài 99 cm - Cao 29.5 cm - Dày 28.1 cm - Nặng 13 kg', N'Dài 84.5 cm - Cao 59.5 cm - Dày 30 cm - Nặng 36 kg')
INSERT [dbo].[TSKTDieuHoa] ([MaSP], [LoaiMay], [CongSuat], [PhamVi], [KhuKhuan], [CongNgheTietKiemDien], [LamLanhNhanh], [TienIch], [TieuThuDien], [DanLanh], [DanNong]) VALUES (24, N'1 chiều (chỉ làm lạnh)Có Inverter', N'1.5 HP - 12.000 BTU', N'Từ 15 - 20m² (từ 40 đến 60 m³)', N'Bộ lọc chống nấm mốcCông nghệ chống bám bẩn Magic CoilCông nghệ tinh lọc không khí Ultra Fresh', N'EcoHybrid Inverter', N'
Hi Power', N'
Chế độ chỉ sử dụng quạt Fan Only - chỉ làm mát, không làm lạnhChức năng hút ẩmChức năng tự làm sạchHẹn giờ tắt máyTự khởi động lại khi có điện', N'1.18 kW/h5 sao (Hiệu suất năng lượng 4.62)', N'Dài 77 cm - Cao 25.5 cm - Dày 22 cm - Nặng 9 kg', N'Dài 65.5 cm - Cao 53 cm - Dày 21 cm - Nặng 21 kg')
INSERT [dbo].[TSKTDieuHoa] ([MaSP], [LoaiMay], [CongSuat], [PhamVi], [KhuKhuan], [CongNgheTietKiemDien], [LamLanhNhanh], [TienIch], [TieuThuDien], [DanLanh], [DanNong]) VALUES (25, N'2 chiều (có sưởi ấm)Có Inverter', N'2 HP - 17.100 BTU', N'Từ 20 - 30m² (từ 60 đến 80m³)', N'Khử mùi Enzyme Blue mặc định & PM 2.5 (Tùy chọn mua thêm)', N'EconoInverterMắt thần thông minh', N'Powerful', N'Chế độ làm lạnh dễ chịuChức năng chống ẩm mốc bảo vệ sức khỏeDàn nóng được trang bị thêm bo mạch để bảo vệ khi điện áp thay đổiHẹn giờ bật tắt máyLuồng gió thoải mái CoandaMáng nước có thể tháo rời (dễ vệ sinh dàn lạnh)Remote có đèn LEDTùy chọn mua thêm bộ điều khiển không dây Daikin MobileTự khởi động lại khi có điệnTự động vận hành lạnh sưởi theo nhiệt độ phòng', N'1.74 kW/h5 sao (Hiệu suất năng lượng 6.30)', N'Dài 98 cm - Cao 29.5 cm - Dày 28.1 cm - Nặng 13 kg', N'
Dài 95.5 cm - Cao 59.5 cm - Dày 32 cm - Nặng 36 kg')
GO
