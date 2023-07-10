USE [Ass]
GO
/****** Object:  Table [dbo].[TSKTTivi]    Script Date: 7/10/2023 11:56:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSKTTivi](
	[MaSP] [int] NOT NULL,
	[LoaiTV] [nvarchar](max) NULL,
	[UngDung] [nvarchar](max) NULL,
	[CongNgheHinhAnh] [nvarchar](max) NULL,
	[DieuKhienBangGiongNoi] [nvarchar](max) NULL,
	[RemoteThongMinh] [nvarchar](max) NULL,
	[PhanChieu] [nvarchar](max) NULL,
	[KichThuoc] [nvarchar](max) NULL,
 CONSTRAINT [PK_TSKTTivi] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
