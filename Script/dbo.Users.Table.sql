USE [Ass]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/10/2023 11:56:19 AM ******/
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
INSERT [dbo].[Users] ([ID], [Ten], [Email], [DiaChi], [Tk], [Mk], [isAdmin], [SDT], [txtCart], [Tuoi]) VALUES (N'US01', N'user1', N'user1@gm.c', N'Ha Noi', N'user1', N'1', 1, N'0981455716', N'1:2/2:1', NULL)
INSERT [dbo].[Users] ([ID], [Ten], [Email], [DiaChi], [Tk], [Mk], [isAdmin], [SDT], [txtCart], [Tuoi]) VALUES (N'AD01', N'admin1', N'admin1@gm.c', N'Hoa Binh', N'admin1', N'1', 2, N'113', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Ten], [Email], [DiaChi], [Tk], [Mk], [isAdmin], [SDT], [txtCart], [Tuoi]) VALUES (N'US02', N'user2', N'user2@gm.c', N'Barcelona', N'user2', N'1', 1, N'0913111111', N'3:2/5:1', 20)
GO
