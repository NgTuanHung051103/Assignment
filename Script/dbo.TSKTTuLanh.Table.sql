USE [Ass]
GO
/****** Object:  Table [dbo].[TSKTTuLanh]    Script Date: 7/10/2023 11:56:19 AM ******/
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
