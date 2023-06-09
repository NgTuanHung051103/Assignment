USE [Ass]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/15/2023 12:45:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[AccountID] [nvarchar](50) NULL,
	[OrderDate] [date] NULL,
	[Address] [nvarchar](max) NULL,
	[TotalPrice] [int] NULL,
	[Status] [int] NULL,
	[Order_txt] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[SDT] [nvarchar](max) NULL,
	[httt] [int] NULL,
 CONSTRAINT [PK__Orders__C3905BAF509E78F5] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (2, N'US01', CAST(N'2023-07-10' AS Date), N'Ha Noi', 4779000, 3, N'5:1/14:1', N'user1@gm.c', N'0981455716', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (3, N'US01', CAST(N'2023-07-10' AS Date), N'Ha Noi', 12150000, 2, N'6:1/18:1', N'user1@gm.c', N'0981455716', 2)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (4, N'US01', CAST(N'2023-07-10' AS Date), N'Ha Noi', 7610000, 0, N'2:1/17:1', N'user1@gm.c', N'0981455716', 2)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (5, N'US01', CAST(N'2023-07-12' AS Date), N'HòaBinhf', 3640000, 0, N'35:1/30:1', N'vuquynhchi@g.c', N'0909090', 2)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (6, N'US01', CAST(N'2023-07-12' AS Date), N'nam dinh', 620000, 4, N'2:1', N'email@gm.co', N'0912', 2)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (7, N'US01', CAST(N'2023-07-12' AS Date), N'lang son', 2500000, 0, N'30:1', N'email@gm.co', N'0912', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (8, N'US01', CAST(N'2023-07-12' AS Date), N'Cao Bang', 1790000, 0, N'38:1', N'email@gm.co', N'0912', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (9, N'US01', CAST(N'2023-07-12' AS Date), N'bac giang', 999000, 0, N'4:1', N'email@gm.co', N'0912', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (10, N'US01', CAST(N'2023-07-12' AS Date), N'da lat', 59070000, 0, N'19:3', N'email@gm.co', N'0912', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (11, N'US01', CAST(N'2023-07-12' AS Date), N'Song Da', 450000, 0, N'1:1', N'email@gm.co', N'0912', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (12, N'US01', CAST(N'2023-07-12' AS Date), N'Lan 1', 1850000, 0, N'2:1/3:1', N'email@gm.co', N'0912', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (13, N'US01', CAST(N'2023-07-12' AS Date), N'Lan 2', 2229000, 0, N'3:1/4:1', N'email@gm.co', N'0912', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (14, N'US06', CAST(N'2023-07-12' AS Date), N'Vào mã qr bên dưới', 2649000, 5, N'2:3/5:1', N'Mẹ', N'Chuyển con tiền ăn', 2)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (15, N'US01', CAST(N'2023-07-15' AS Date), N'Lanjgsonw', 6990000, 0, N'17:1', N'email@gm.co', N'0912', 2)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (16, N'US01', CAST(N'2023-07-15' AS Date), N'a', 450000, 0, N'1:1', N'email@gm.co', N'0912', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (17, N'US01', CAST(N'2023-07-15' AS Date), N'b', 789000, 0, N'5:1', N'email@gm.co', N'0912', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (18, N'US01', CAST(N'2023-07-15' AS Date), N'd', 1769000, 0, N'5:1/11:1', N'email@gm.co', N'0912', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (19, N'US01', CAST(N'2023-07-15' AS Date), N'asd', 3690000, 0, N'15:1', N'email@gm.co', N'0912', 1)
GO
