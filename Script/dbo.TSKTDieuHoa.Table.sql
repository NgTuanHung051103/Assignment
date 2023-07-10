USE [Ass]
GO
/****** Object:  Table [dbo].[TSKTDieuHoa]    Script Date: 7/10/2023 11:56:19 AM ******/
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
GO
