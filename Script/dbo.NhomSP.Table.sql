USE [Ass]
GO
/****** Object:  Table [dbo].[NhomSP]    Script Date: 7/15/2023 12:45:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomSP](
	[MaNhom] [int] NULL,
	[TenNhom] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (1, N'Quat')
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (2, N'DieuHoa')
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (3, N'TuLanh')
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (4, N'Tivi')
GO
