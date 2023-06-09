USE [Ass]
GO
/****** Object:  Table [dbo].[TSKTTivi]    Script Date: 7/15/2023 12:45:42 AM ******/
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
INSERT [dbo].[TSKTTivi] ([MaSP], [LoaiTV], [UngDung], [CongNgheHinhAnh], [DieuKhienBangGiongNoi], [RemoteThongMinh], [PhanChieu], [KichThuoc]) VALUES (34, N'Smart Tivi55 inch4K', N'Clip TVFPT PlayGalaxy Play (Fim+)MP3 ZingMyTVNetflixPOPS KidsSpotifyTrình duyệt webVieONYouTube', N'Ambient ModeChuyển động mượt Motion XceleratorChuyển động ảnh mượt mà Auto Motion PlusDynamic Crystal ColorGiảm độ trễ chơi game Auto Low Latency Mode (ALLM)HDR10+Kiểm soát đèn nền UHD DimmingNâng cấp độ tương phản Contrast Enhancer', N'Bixby (Chưa có tiếng Việt)Google Assistant có tiếng ViệtTìm kiếm giọng nói trên YouTube bằng tiếng Việt', N'One Remote', N'AirPlay 2Screen MirroringTap View', N'Ngang 123.2 cm - Cao 76.8 cm - Dày 22.8 cm')
INSERT [dbo].[TSKTTivi] ([MaSP], [LoaiTV], [UngDung], [CongNgheHinhAnh], [DieuKhienBangGiongNoi], [RemoteThongMinh], [PhanChieu], [KichThuoc]) VALUES (35, N'Google Tivi43 inch4K', N'Clip TVFPT PlayGalaxy Play (Fim+)NetflixVieONVTVcab ONYouTube', N'Chuyển động mượt Motionflow XR 200HDR10HLGMàu sắc sống động Live ColourNâng cấp hình ảnh 4K X-Reality PROTăng cường tương phản Dynamic Contrast Enhancer', N'Google Assistant có tiếng ViệtTìm kiếm giọng nói trên YouTube bằng tiếng Việt', N'Remote tích hợp micro tìm kiếm bằng giọng nói (RMF-TX520P)', N'Chromecast', N'Ngang 97 cm - Cao 62 cm - Dày 23.1 cm')
INSERT [dbo].[TSKTTivi] ([MaSP], [LoaiTV], [UngDung], [CongNgheHinhAnh], [DieuKhienBangGiongNoi], [RemoteThongMinh], [PhanChieu], [KichThuoc]) VALUES (36, N'Smart Tivi50 inch4K', N'Clip TVFPT PlayGalaxy Play (Fim+)MP3 ZingMyTVNetflixPOPS KidsSpotifyTrình duyệt webVieONYouTube', N'Ambient ModeChuyển động mượt Motion XceleratorChuyển động ảnh mượt mà Auto Motion PlusDynamic Crystal ColorGiảm độ trễ chơi game Auto Low Latency Mode (ALLM)HDR10+Kiểm soát đèn nền UHD DimmingNâng cấp độ tương phản Contrast Enhancer
', N'Bixby (Chưa có tiếng Việt)Google Assistant có tiếng ViệtTìm kiếm giọng nói trên YouTube bằng tiếng Việt', N'One Remote', N'AirPlay 2Screen MirroringTap View', N'
Ngang 111.8 cm - Cao 70.2 cm - Dày 22.8 cm')
INSERT [dbo].[TSKTTivi] ([MaSP], [LoaiTV], [UngDung], [CongNgheHinhAnh], [DieuKhienBangGiongNoi], [RemoteThongMinh], [PhanChieu], [KichThuoc]) VALUES (37, N'Smart Tivi43 inch4K', N'Clip TVFPT PlayMP3 ZingMyTVNetflixPOPS KidsSpotifyTrình duyệt webVieONYouTube', N'Chuyển động mượt Motion XceleratorGiảm độ trễ chơi game Auto Low Latency Mode (ALLM)HDR10+Kiểm soát đèn nền UHD DimmingNâng cấp độ tương phản Contrast EnhancerPurColor', N'Bixby (Chưa có tiếng Việt)Google Assistant có tiếng ViệtTìm kiếm giọng nói trên YouTube bằng tiếng Việt', N'One Remote', N'AirPlay 2Screen Mirroring', N'Ngang 96.21 cm - Cao 62.97 cm - Dày 24.24 cm')
INSERT [dbo].[TSKTTivi] ([MaSP], [LoaiTV], [UngDung], [CongNgheHinhAnh], [DieuKhienBangGiongNoi], [RemoteThongMinh], [PhanChieu], [KichThuoc]) VALUES (38, N'Google Tivi55 inch4K', N'FPT PlayGalaxy Play (Fim+)Google PlayNetflixVieONYouTube', N'Auto ModeChuyển động mượt Motionflow XR 200Dolby VisionHDR10HLGKiểm soát đèn nền Direct LED Frame DimmingNâng cấp hình ảnh 4K X-Reality PROTăng cường màu sắc Triluminos Pro', N'Google Assistant có tiếng Việt', N'Remote tích hợp tích micro tìm kiếm giọng nói (RMF-TX800P)', N'AirPlay 2Chromecast', N'
Ngang 123.3 cm - Cao 78.3 cm - Dày 33.9 cm')
INSERT [dbo].[TSKTTivi] ([MaSP], [LoaiTV], [UngDung], [CongNgheHinhAnh], [DieuKhienBangGiongNoi], [RemoteThongMinh], [PhanChieu], [KichThuoc]) VALUES (39, N'Google Tivi55 inch4K', N'Clip TVFPT PlayGalaxy Play (Fim+)NetflixVieONVTVcab ONYouTube', N'Chuyển động mượt Motionflow XR 200HDR10HLGMàu sắc sống động Live ColourNâng cấp hình ảnh 4K X-Reality PROTăng cường tương phản Dynamic Contrast Enhancer', N'Google Assistant có tiếng ViệtTìm kiếm giọng nói trên YouTube bằng tiếng Việt', N'Remote tích hợp micro tìm kiếm bằng giọng nói (RMF-TX520P)', N'Chromecast', N'Ngang 124.3 cm - Cao 79 cm - Dày 29 cm')
INSERT [dbo].[TSKTTivi] ([MaSP], [LoaiTV], [UngDung], [CongNgheHinhAnh], [DieuKhienBangGiongNoi], [RemoteThongMinh], [PhanChieu], [KichThuoc]) VALUES (40, N'Smart Tivi QLED55 inch4K', N'Amazon Prime videoApple TVClip TVFPT PlayMyTVNetflixSpotifyTrình duyệt webVieONYouTube', N'Ambient ModeBrightness/Color DetectionChuyển động mượt Motion XceleratorChế độ Game Motion PlusCông nghệ kiểm soát đèn nền Ultimate UHD DimmingDual LEDGame Bar 3.0Giảm độ trễ chơi game Auto Low Latency Mode (ALLM)Màu sắc chuẩn chứng nhận PANTONEQuantum DotQuantum HDRSuper Ultra Wide Game View & Game Bar', N'Bixby có tiếng ViệtGoogle Assistant có tiếng ViệtTìm kiếm giọng nói trên YouTube bằng tiếng Việt', N'
One Remote sạc qua USB C & ánh sáng', N'AirPlay 2Screen MirroringTap View', N'
Ngang 123.21 cm - Cao 77.38 cm - Dày 24.91 cm')
INSERT [dbo].[TSKTTivi] ([MaSP], [LoaiTV], [UngDung], [CongNgheHinhAnh], [DieuKhienBangGiongNoi], [RemoteThongMinh], [PhanChieu], [KichThuoc]) VALUES (41, N'Smart Tivi QLED50 inch4K', N'Amazon Prime videoApple TVClip TVFPT PlayMyTVNetflixSpotifyTrình duyệt webVieONYouTube', N'Ambient ModeBrightness/Color DetectionChuyển động mượt Motion XceleratorChế độ Game Motion PlusClarity PictureDual LEDGame Bar 3.0Giảm độ trễ chơi game Auto Low Latency Mode (ALLM)Kiểm soát đèn nền UHD Dimming cải tiếnMàu sắc chuẩn chứng nhận PANTONEQuantum DotQuantum HDRSuper Ultra Wide Game View & Game Bar', N'Bixby có tiếng ViệtGoogle Assistant có tiếng ViệtTìm kiếm giọng nói trên YouTube bằng tiếng Việt', N'One Remote sạc qua USB C & ánh sáng', N'AirPlay 2Screen MirroringTap View', N'Ngang 111.83 cm - Cao 70.94 cm - Dày 19.91 cm')
GO
