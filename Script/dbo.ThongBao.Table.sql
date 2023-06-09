USE [Ass]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 7/15/2023 12:45:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[stt] [int] IDENTITY(1,1) NOT NULL,
	[userID] [nvarchar](max) NULL,
	[thongbao] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThongBao] PRIMARY KEY CLUSTERED 
(
	[stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThongBao] ON 

INSERT [dbo].[ThongBao] ([stt], [userID], [thongbao]) VALUES (2, N'US01', N'abc')
INSERT [dbo].[ThongBao] ([stt], [userID], [thongbao]) VALUES (3, N'US01', N'1')
INSERT [dbo].[ThongBao] ([stt], [userID], [thongbao]) VALUES (4, N'US01', N'd')
INSERT [dbo].[ThongBao] ([stt], [userID], [thongbao]) VALUES (5, N'US01', N'c')
INSERT [dbo].[ThongBao] ([stt], [userID], [thongbao]) VALUES (6, N'US01', N'e')
INSERT [dbo].[ThongBao] ([stt], [userID], [thongbao]) VALUES (7, N'US01', N'3')
SET IDENTITY_INSERT [dbo].[ThongBao] OFF
GO
