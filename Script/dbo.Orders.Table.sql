USE [Ass]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/10/2023 11:56:19 AM ******/
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
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (1, N'AD01', CAST(N'2023-04-05' AS Date), N'HaNoi', 200000, 1, N'1:2', N'admin1@gm.c', N'0912321421', NULL)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (2, N'US01', CAST(N'2023-07-10' AS Date), N'Ha Noi', 4779000, 1, N'5:1/14:1', N'user1@gm.c', N'0981455716', 1)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (3, N'US01', CAST(N'2023-07-10' AS Date), N'Ha Noi', 12150000, 1, N'6:1/18:1', N'user1@gm.c', N'0981455716', 2)
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [Address], [TotalPrice], [Status], [Order_txt], [Email], [SDT], [httt]) VALUES (4, N'US01', CAST(N'2023-07-10' AS Date), N'Ha Noi', 7610000, 1, N'2:1/17:1', N'user1@gm.c', N'0981455716', 2)
GO
