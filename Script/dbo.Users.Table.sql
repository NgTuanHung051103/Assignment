USE [Ass]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/15/2023 12:45:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [nvarchar](max) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Tk] [nvarchar](max) NULL,
	[Mk] [nvarchar](max) NULL,
	[isAdmin] [int] NULL,
	[SDT] [nvarchar](max) NULL,
	[txtCart] [nvarchar](max) NULL,
	[Tuoi] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Users] ([ID], [Ten], [Email], [DiaChi], [Tk], [Mk], [isAdmin], [SDT], [txtCart], [Tuoi]) VALUES (N'US02', N'Qchi', NULL, NULL, N'user2', N'1', 1, NULL, NULL, NULL)
INSERT [dbo].[Users] ([ID], [Ten], [Email], [DiaChi], [Tk], [Mk], [isAdmin], [SDT], [txtCart], [Tuoi]) VALUES (N'US03', NULL, NULL, NULL, N'user3', N'1', 1, NULL, NULL, NULL)
INSERT [dbo].[Users] ([ID], [Ten], [Email], [DiaChi], [Tk], [Mk], [isAdmin], [SDT], [txtCart], [Tuoi]) VALUES (N'US05', NULL, NULL, NULL, N'user5', N'1', 1, NULL, N'', NULL)
INSERT [dbo].[Users] ([ID], [Ten], [Email], [DiaChi], [Tk], [Mk], [isAdmin], [SDT], [txtCart], [Tuoi]) VALUES (N'US01', N'Tran Trong Huu', N'email@gm.co', N'', N'user1', N'1', 1, N'0912', N'', 0)
INSERT [dbo].[Users] ([ID], [Ten], [Email], [DiaChi], [Tk], [Mk], [isAdmin], [SDT], [txtCart], [Tuoi]) VALUES (N'US04', NULL, NULL, NULL, N'user4', N'1', 1, NULL, NULL, NULL)
INSERT [dbo].[Users] ([ID], [Ten], [Email], [DiaChi], [Tk], [Mk], [isAdmin], [SDT], [txtCart], [Tuoi]) VALUES (N'AD01', N'NgTuanHung', N'', N'', N'admin1', N'1', 2, N'', N'', 18)
INSERT [dbo].[Users] ([ID], [Ten], [Email], [DiaChi], [Tk], [Mk], [isAdmin], [SDT], [txtCart], [Tuoi]) VALUES (N'US06', NULL, NULL, NULL, N'user6', N'1', 1, NULL, NULL, NULL)
GO
