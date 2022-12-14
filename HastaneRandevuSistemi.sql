USE [db_Polikinlik]
GO
/****** Object:  Table [dbo].[tblHasta]    Script Date: 27.05.2021 12:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHasta](
	[hastaId] [int] IDENTITY(1,1) NOT NULL,
	[hastaTc] [varchar](11) NOT NULL,
	[ad] [varchar](20) NULL,
	[soyad] [varchar](20) NULL,
	[adres] [varchar](max) NULL,
	[cinsiyet] [varchar](5) NULL,
	[cepTel] [varchar](11) NULL,
	[email] [varchar](max) NOT NULL,
	[dogumTar] [date] NULL,
	[dogumYer] [varchar](20) NULL,
	[kanGrubu] [varchar](3) NULL,
	[sifre] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[hastaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblIlceler]    Script Date: 27.05.2021 12:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblIlceler](
	[ilceId] [int] IDENTITY(1,1) NOT NULL,
	[ilceAd] [varchar](20) NOT NULL,
	[ilId] [int] NULL,
	[aktif] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ilceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblIller]    Script Date: 27.05.2021 12:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblIller](
	[ilId] [int] IDENTITY(1,1) NOT NULL,
	[ilPlaka] [int] NULL,
	[ilAd] [varchar](20) NOT NULL,
	[aktif] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblKlinik]    Script Date: 27.05.2021 12:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKlinik](
	[klinikId] [int] IDENTITY(1,1) NOT NULL,
	[ilId] [int] NULL,
	[ilceId] [int] NULL,
	[klinikAd] [varchar](75) NULL,
	[klinikAdres] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[klinikId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblKullanici]    Script Date: 27.05.2021 12:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKullanici](
	[kullanciId] [int] IDENTITY(1,1) NOT NULL,
	[id] [varchar](max) NULL,
	[pw] [varchar](max) NULL,
	[pId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[kullanciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPersonel]    Script Date: 27.05.2021 12:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPersonel](
	[personelId] [int] IDENTITY(1,1) NOT NULL,
	[tcNo] [varchar](11) NOT NULL,
	[ad] [varchar](20) NULL,
	[soyad] [varchar](20) NULL,
	[adres] [varchar](max) NULL,
	[cinsiyet] [varchar](5) NULL,
	[cepTel] [varchar](11) NULL,
	[email] [varchar](max) NOT NULL,
	[dogumTar] [date] NULL,
	[dogumYer] [varchar](20) NULL,
	[unvanId] [int] NULL,
	[klinikId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[personelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRandevu]    Script Date: 27.05.2021 12:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRandevu](
	[randevuId] [int] IDENTITY(1,1) NOT NULL,
	[hastaId] [int] NULL,
	[doktorId] [int] NULL,
	[gun] [date] NULL,
	[saat] [int] NULL,
	[silinmiş] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[randevuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUnvan]    Script Date: 27.05.2021 12:35:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUnvan](
	[unvanId] [int] IDENTITY(1,1) NOT NULL,
	[unvanAd] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[unvanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblHasta] ON 

INSERT [dbo].[tblHasta] ([hastaId], [hastaTc], [ad], [soyad], [adres], [cinsiyet], [cepTel], [email], [dogumTar], [dogumYer], [kanGrubu], [sifre]) VALUES (1, N'12345678910', N'abdullah sait', N'koçoğlu', N'AKSARAY', N'ERKEK', N'02124442323', N'abdullahsaitkoc@gmail.com', CAST(0x4C320B00 AS Date), N'istanbul', N'A+', N'123')
INSERT [dbo].[tblHasta] ([hastaId], [hastaTc], [ad], [soyad], [adres], [cinsiyet], [cepTel], [email], [dogumTar], [dogumYer], [kanGrubu], [sifre]) VALUES (2, N'77777777777', N'Ali', N'Koç', N'ankara', N'ERKEK', N'02111111111', N'ali@gmail.com', CAST(0x0E100B00 AS Date), N'istanbul', N'A+', N'123')
SET IDENTITY_INSERT [dbo].[tblHasta] OFF
SET IDENTITY_INSERT [dbo].[tblIlceler] ON 

INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (1, N'SEYHAN', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (2, N'CEYHAN', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (3, N'FEKE', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (4, N'KARAİSALI', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (5, N'KARATAŞ', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (6, N'KOZAN', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (7, N'POZANTI', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (8, N'SAİMBEYLİ', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (9, N'TUFANBEYLİ', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (10, N'YUMURTALIK', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (11, N'YÜREĞİR', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (12, N'ALADAĞ', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (13, N'İMAMOĞLU', 1, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (14, N'MERKEZ', 2, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (15, N'BESNİ', 2, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (16, N'ÇELİKHAN', 2, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (17, N'GERGER', 2, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (18, N'GÖLBAŞI', 2, 1)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (19, N'KAHTA', 2, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (20, N'SAMSAT', 2, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (21, N'SİNCİK', 2, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (22, N'TUT', 2, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (23, N'MERKEZ', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (24, N'BOLVADİN', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (25, N'ÇAY', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (26, N'DAZKIRI', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (27, N'DİNAR', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (28, N'EMİRDAĞ', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (29, N'İHSANİYE', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (30, N'SANDIKLI', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (31, N'SİNANPAŞA', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (32, N'SULDANDAĞI', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (33, N'ŞUHUT', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (34, N'BAŞMAKÇI', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (35, N'BAYAT', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (36, N'İŞCEHİSAR', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (37, N'ÇOBANLAR', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (38, N'EVCİLER', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (39, N'HOCALAR', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (40, N'KIZILÖREN', 3, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (41, N'MERKEZ', 68, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (42, N'ORTAKÖY', 68, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (43, N'AĞAÇÖREN', 68, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (44, N'GÜZELYURT', 68, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (45, N'SARIYAHŞİ', 68, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (46, N'ESKİL', 68, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (47, N'GÜLAĞAÇ', 68, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (48, N'MERKEZ', 5, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (49, N'GÖYNÜÇEK', 5, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (50, N'GÜMÜŞHACIKÖYÜ', 5, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (51, N'MERZİFON', 5, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (52, N'SULUOVA', 5, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (53, N'TAŞOVA', 5, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (54, N'HAMAMÖZÜ', 5, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (55, N'ALTINDAĞ', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (56, N'AYAS', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (57, N'BALA', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (58, N'BEYPAZARI', 6, 1)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (59, N'ÇAMLIDERE', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (60, N'ÇANKAYA', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (61, N'ÇUBUK', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (62, N'ELMADAĞ', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (63, N'GÜDÜL', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (64, N'HAYMANA', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (65, N'KALECİK', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (66, N'KIZILCAHAMAM', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (67, N'NALLIHAN', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (68, N'POLATLI', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (69, N'ŞEREFLİKOÇHİSAR', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (70, N'YENİMAHALLE', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (71, N'GÖLBAŞI', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (72, N'KEÇİÖREN', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (73, N'MAMAK', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (74, N'SİNCAN', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (75, N'KAZAN', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (76, N'AKYURT', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (77, N'ETİMESGUT', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (78, N'EVREN', 6, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (79, N'ANSEKİ', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (80, N'ALANYA', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (81, N'MERKEZ', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (82, N'ELMALI', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (83, N'FİNİKE', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (84, N'GAZİPAŞA', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (85, N'GÜNDOĞMUŞ', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (86, N'KAŞ', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (87, N'KORKUTELİ', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (88, N'KUMLUCA', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (89, N'MANAVGAT', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (90, N'SERİK', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (91, N'DEMRE', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (92, N'İBRADI', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (93, N'KEMER', 7, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (94, N'MERKEZ', 75, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (95, N'GÖLE', 75, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (96, N'ÇILDIR', 75, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (97, N'HANAK', 75, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (98, N'POSOF', 75, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (99, N'DAMAL', 75, 0)
GO
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (100, N'ARDANUÇ', 8, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (101, N'ARHAVİ', 8, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (102, N'MERKEZ', 8, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (103, N'BORÇKA', 8, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (104, N'HOPA', 8, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (105, N'ŞAVŞAT', 8, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (106, N'YUSUFELİ', 8, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (107, N'MURGUL', 8, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (108, N'MERKEZ', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (109, N'BOZDOĞAN', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (110, N'ÇİNE', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (111, N'GERMENCİK', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (112, N'KARACASU', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (113, N'KOÇARLI', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (114, N'KUŞADASI', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (115, N'KUYUCAK', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (116, N'NAZİLLİ', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (117, N'SÖKE', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (118, N'SULTANHİSAR', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (119, N'YENİPAZAR', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (120, N'BUHARKENT', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (121, N'İNCİRLİOVA', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (122, N'KARPUZLU', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (123, N'KÖŞK', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (124, N'DİDİM', 9, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (125, N'MERKEZ', 4, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (126, N'DİYADİN', 4, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (127, N'DOĞUBEYAZIT', 4, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (128, N'ELEŞKİRT', 4, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (129, N'HAMUR', 4, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (130, N'PATNOS', 4, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (131, N'TAŞLIÇAY', 4, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (132, N'TUTAK', 4, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (133, N'AYVALIK', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (134, N'MERKEZ', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (135, N'BALYA', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (136, N'BANDIRMA', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (137, N'BİGADİÇ', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (138, N'BURHANİYE', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (139, N'DURSUNBEY', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (140, N'EDREMİT', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (141, N'ERDEK', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (142, N'GÖNEN', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (143, N'HAVRAN', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (144, N'İVRİNDİ', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (145, N'KEPSUT', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (146, N'MANYAS', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (147, N'SAVAŞTEPE', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (148, N'SINDIRGI', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (149, N'SUSURLUK', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (150, N'MARMARA', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (151, N'GÖMEÇ', 10, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (152, N'MERKEZ', 74, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (153, N'KURUCAŞİLE', 74, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (154, N'ULUS', 74, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (155, N'AMASRA', 74, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (156, N'MERKEZ', 72, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (157, N'BEŞİRİ', 72, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (158, N'GERCÜŞ', 72, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (159, N'KOZLUK', 72, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (160, N'SASON', 72, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (161, N'HASANKEYF', 72, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (162, N'MERKEZ', 69, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (163, N'AYDINTEPE', 69, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (164, N'DEMİRÖZÜ', 69, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (165, N'MERKEZ', 14, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (166, N'GEREDE', 14, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (167, N'GÖYNÜK', 14, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (168, N'KIBRISCIK', 14, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (169, N'MENGEN', 14, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (170, N'MUDURNU', 14, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (171, N'SEBEN', 14, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (172, N'DÖRTDİVAN', 14, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (173, N'YENİÇAĞA', 14, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (174, N'AĞLASUN', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (175, N'BUCAK', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (176, N'MERKEZ', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (177, N'GÖLHİSAR', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (178, N'TEFENNİ', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (179, N'YEŞİLOVA', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (180, N'KARAMANLI', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (181, N'KEMER', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (182, N'ALTINYAYLA', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (183, N'ÇAVDIR', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (184, N'ÇELTİKÇİ', 15, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (185, N'GEMLİK', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (186, N'İNEGÖL', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (187, N'İZNİK', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (188, N'KARACABEY', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (189, N'KELES', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (190, N'MUDANYA', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (191, N'MUSTAFA K. PAŞA', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (192, N'ORHANELİ', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (193, N'ORHANGAZİ', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (194, N'YENİŞEHİR', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (195, N'BÜYÜK ORHAN', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (196, N'HARMANCIK', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (197, N'NÜLİFER', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (198, N'OSMAN GAZİ', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (199, N'YILDIRIM', 16, 0)
GO
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (200, N'GÜRSU', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (201, N'KESTEL', 16, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (202, N'MERKEZ', 11, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (203, N'BOZÜYÜK', 11, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (204, N'GÖLPAZARI', 11, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (205, N'OSMANELİ', 11, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (206, N'PAZARYERİ', 11, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (207, N'SÖĞÜT', 11, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (208, N'YENİPAZAR', 11, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (209, N'İNHİSAR', 11, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (210, N'MERKEZ', 12, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (211, N'GENÇ', 12, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (212, N'KARLIOVA', 12, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (213, N'KİGI', 12, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (214, N'SOLHAN', 12, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (215, N'ADAKLI', 12, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (216, N'YAYLADERE', 12, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (217, N'YEDİSU', 12, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (218, N'ADİLCEVAZ', 13, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (219, N'AHLAT', 13, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (220, N'MERKEZ', 13, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (221, N'HİZAN', 13, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (222, N'MUTKİ', 13, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (223, N'TATVAN', 13, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (224, N'GÜROYMAK', 13, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (225, N'MERKEZ', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (226, N'ACIPAYAM', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (227, N'BULDAN', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (228, N'ÇAL', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (229, N'ÇAMELİ', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (230, N'ÇARDAK', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (231, N'ÇİVRİL', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (232, N'GÜNEY', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (233, N'KALE', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (234, N'SARAYKÖY', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (235, N'TAVAS', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (236, N'BABADAĞ', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (237, N'BEKİLLİ', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (238, N'HONAZ', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (239, N'SERİNHİSAR', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (240, N'AKKÖY', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (241, N'BAKLAN', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (242, N'BEYAĞAÇ', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (243, N'BOZKURT', 20, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (244, N'MERKEZ', 81, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (245, N'AKÇAKOCA', 81, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (246, N'YIĞILCA', 81, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (247, N'CUMAYERİ', 81, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (248, N'GÖLYAKA', 81, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (249, N'ÇİLİMLİ', 81, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (250, N'GÜMÜŞOVA', 81, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (251, N'KAYNAŞLI', 81, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (252, N'MERKEZ', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (253, N'BİSMİL', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (254, N'ÇERMİK', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (255, N'ÇINAR', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (256, N'ÇÜNGÜŞ', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (257, N'DİCLE', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (258, N'ERGANİ', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (259, N'HANİ', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (260, N'HAZRO', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (261, N'KULP', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (262, N'LİCE', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (263, N'SİLVAN', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (264, N'EĞİL', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (265, N'KOCAKÖY', 21, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (266, N'MERKEZ', 22, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (267, N'ENEZ', 22, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (268, N'HAVSA', 22, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (269, N'İPSALA', 22, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (270, N'KEŞAN', 22, 1)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (271, N'LALAPAŞA', 22, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (272, N'MERİÇ', 22, 1)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (273, N'UZUNKÖPRÜ', 22, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (274, N'SÜLOĞLU', 22, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (275, N'MERKEZ', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (276, N'AĞIN', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (277, N'BASKİL', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (278, N'KARAKOÇAN', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (279, N'KEBAN', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (280, N'MADEN', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (281, N'PALU', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (282, N'SİVRİCE', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (283, N'ARICAK', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (284, N'KOVANCILAR', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (285, N'ALACAKAYA', 23, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (286, N'MERKEZ', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (287, N'PALANDÖKEN', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (288, N'AŞKALE', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (289, N'ÇAT', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (290, N'HINIS', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (291, N'HORASAN', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (292, N'OLTU', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (293, N'İSPİR', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (294, N'KARAYAZI', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (295, N'NARMAN', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (296, N'OLUR', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (297, N'PASİNLER', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (298, N'ŞENKAYA', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (299, N'TEKMAN', 25, 0)
GO
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (300, N'TORTUM', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (301, N'KARAÇOBAN', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (302, N'UZUNDERE', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (303, N'PAZARYOLU', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (304, N'ILICA', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (305, N'KÖPRÜKÖY', 25, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (306, N'ÇAYIRLI', 24, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (307, N'MERKEZ', 24, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (308, N'İLİÇ', 24, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (309, N'KEMAH', 24, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (310, N'KEMALİYE', 24, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (311, N'REFAHİYE', 24, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (312, N'TERCAN', 24, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (313, N'OTLUKBELİ', 24, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (314, N'MERKEZ', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (315, N'ÇİFTELER', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (316, N'MAHMUDİYE', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (317, N'MİHALIÇLIK', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (318, N'SARICAKAYA', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (319, N'SEYİTGAZİ', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (320, N'SİVRİHİSAR', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (321, N'ALPU', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (322, N'BEYLİKOVA', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (323, N'İNÖNÜ', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (324, N'GÜNYÜZÜ', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (325, N'HAN', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (326, N'MİHALGAZİ', 26, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (327, N'ARABAN', 27, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (328, N'İSLAHİYE', 27, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (329, N'NİZİP', 27, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (330, N'OĞUZELİ', 27, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (331, N'YAVUZELİ', 27, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (332, N'ŞAHİNBEY', 27, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (333, N'ŞEHİT KAMİL', 27, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (334, N'KARKAMIŞ', 27, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (335, N'NURDAĞI', 27, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (336, N'MERKEZ', 29, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (337, N'KELKİT', 29, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (338, N'ŞİRAN', 29, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (339, N'TORUL', 29, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (340, N'KÖSE', 29, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (341, N'KÜRTÜN', 29, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (342, N'ALUCRA', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (343, N'BULANCAK', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (344, N'DERELİ', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (345, N'ESPİYE', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (346, N'EYNESİL', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (347, N'MERKEZ', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (348, N'GÖRELE', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (349, N'KEŞAP', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (350, N'ŞEBİNKARAHİSAR', 28, 1)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (351, N'TİREBOLU', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (352, N'PİPAZİZ', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (353, N'YAĞLIDERE', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (354, N'ÇAMOLUK', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (355, N'ÇANAKÇI', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (356, N'DOĞANKENT', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (357, N'GÜCE', 28, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (358, N'MERKEZ', 30, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (359, N'ÇUKURCA', 30, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (360, N'ŞEMDİNLİ', 30, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (361, N'YÜKSEKOVA', 30, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (362, N'ALTINÖZÜ', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (363, N'DÖRTYOL', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (364, N'MERKEZ', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (365, N'HASSA', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (366, N'İSKENDERUN', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (367, N'KIRIKHAN', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (368, N'REYHANLI', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (369, N'SAMANDAĞ', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (370, N'YAYLADAĞ', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (371, N'ERZİN', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (372, N'BELEN', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (373, N'KUMLU', 31, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (374, N'MERKEZ', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (375, N'ATABEY', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (376, N'KEÇİBORLU', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (377, N'EĞİRDİR', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (378, N'GELENDOST', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (379, N'SİNİRKENT', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (380, N'ULUBORLU', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (381, N'YALVAÇ', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (382, N'AKSU', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (383, N'GÖNEN', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (384, N'YENİŞAR BADEMLİ', 32, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (385, N'MERKEZ', 76, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (386, N'ARALIK', 76, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (387, N'TUZLUCA', 76, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (388, N'KARAKOYUNLU', 76, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (389, N'AFŞİN', 46, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (390, N'ANDIRIN', 46, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (391, N'ELBİSTAN', 46, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (392, N'GÖKSUN', 46, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (393, N'MERKEZ', 46, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (394, N'PAZARCIK', 46, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (395, N'TÜRKOĞLU', 46, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (396, N'ÇAĞLAYANCERİT', 46, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (397, N'EKİNÖZÜ', 46, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (398, N'NURHAK', 46, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (399, N'EFLANİ', 78, 0)
GO
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (400, N'ESKİPAZAR', 78, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (401, N'MERKEZ', 78, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (402, N'OVACIK', 78, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (403, N'SAFRANBOLU', 78, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (404, N'YENİCE', 78, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (405, N'ERMENEK', 70, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (406, N'MERKEZ', 70, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (407, N'AYRANCI', 70, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (408, N'KAZIMKARABEKİR', 70, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (409, N'BAŞYAYLA', 70, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (410, N'SARIVELİLER', 70, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (411, N'MERKEZ', 36, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (412, N'ARPAÇAY', 36, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (413, N'DİGOR', 36, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (414, N'KAĞIZMAN', 36, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (415, N'SARIKAMIŞ', 36, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (416, N'SELİM', 36, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (417, N'SUSUZ', 36, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (418, N'AKYAKA', 36, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (419, N'ABANA', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (420, N'MERKEZ', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (421, N'ARAÇ', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (422, N'AZDAVAY', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (423, N'BOZKURT', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (424, N'CİDE', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (425, N'ÇATALZEYTİN', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (426, N'DADAY', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (427, N'DEVREKANİ', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (428, N'İNEBOLU', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (429, N'KÜRE', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (430, N'TAŞKÖPRÜ', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (431, N'TOSYA', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (432, N'İHSANGAZİ', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (433, N'PINARBAŞI', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (434, N'ŞENPAZAR', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (435, N'AĞLI', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (436, N'DOĞANYURT', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (437, N'HANÖNÜ', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (438, N'SEYDİLER', 37, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (439, N'BÜNYAN', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (440, N'DEVELİ', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (441, N'FELAHİYE', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (442, N'İNCESU', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (443, N'PINARBAŞI', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (444, N'SARIOĞLAN', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (445, N'SARIZ', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (446, N'TOMARZA', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (447, N'YAHYALI', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (448, N'YEŞİLHİSAR', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (449, N'AKKIŞLA', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (450, N'TALAS', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (451, N'KOCASİNAN', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (452, N'MELİKGAZİ', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (453, N'HACILAR', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (454, N'ÖZVATAN', 38, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (455, N'DERİCE', 71, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (456, N'KESKİN', 71, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (457, N'MERKEZ', 71, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (458, N'SALAK YURT', 71, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (459, N'BAHŞİLİ', 71, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (460, N'BALIŞEYH', 71, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (461, N'ÇELEBİ', 71, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (462, N'KARAKEÇİLİ', 71, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (463, N'YAHŞİHAN', 71, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (464, N'MERKEZ', 39, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (465, N'BABAESKİ', 39, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (466, N'DEMİRKÖY', 39, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (467, N'KOFÇAY', 39, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (468, N'LÜLEBURGAZ', 39, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (469, N'VİZE', 39, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (470, N'MERKEZ', 40, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (471, N'ÇİÇEKDAĞI', 40, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (472, N'KAMAN', 40, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (473, N'MUCUR', 40, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (474, N'AKPINAR', 40, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (475, N'AKÇAKENT', 40, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (476, N'BOZTEPE', 40, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (477, N'İZMİT', 41, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (478, N'GEBZE', 41, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (479, N'GÖLCÜK', 41, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (480, N'KANDIRA', 41, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (481, N'KARAMÜRSEL', 41, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (482, N'KÖRFEZ', 41, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (483, N'DERİNCE', 41, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (484, N'MERKEZ', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (485, N'AKŞEHİR', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (486, N'BEYŞEHİR', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (487, N'BOZKIR', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (488, N'CİHANBEYLİ', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (489, N'ÇUMRA', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (490, N'DOĞANHİSAR', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (491, N'EREĞLİ', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (492, N'HADİM', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (493, N'ILGIN', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (494, N'KADINHANI', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (495, N'KARAPINAR', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (496, N'KULU', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (497, N'SARAYÖNÜ', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (498, N'SEYDİŞEHİR', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (499, N'YUNAK', 42, 0)
GO
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (500, N'AKÖREN', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (501, N'ALTINEKİN', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (502, N'DEREBUCAK', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (503, N'HÜYÜK', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (504, N'KARATAY', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (505, N'MERAM', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (506, N'SELÇUKLU', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (507, N'TAŞKENT', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (508, N'AHIRLI', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (509, N'ÇELTİK', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (510, N'DERBENT', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (511, N'EMİRGAZİ', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (512, N'GÜNEYSINIR', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (513, N'HALKAPINAR', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (514, N'TUZLUKÇU', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (515, N'YALIHÜYÜK', 42, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (516, N'MERKEZ', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (517, N'ALTINTAŞ', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (518, N'DOMANİÇ', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (519, N'EMET', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (520, N'GEDİZ', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (521, N'SİMAV', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (522, N'TAVŞANLI', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (523, N'ASLANAPA', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (524, N'DUMLUPINAR', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (525, N'HİSARCIK', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (526, N'ŞAPHANE', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (527, N'ÇAVDARHİSAR', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (528, N'PAZARLAR', 43, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (529, N'KMERKEZ', 79, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (530, N'ELBEYLİ', 79, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (531, N'MUSABEYLİ', 79, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (532, N'POLATELİ', 79, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (533, N'MERKEZ', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (534, N'AKÇADAĞ', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (535, N'ARAPGİR', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (536, N'ARGUVAN', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (537, N'DARENDE', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (538, N'DOĞANŞEHİR', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (539, N'HEKİMHAN', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (540, N'PÜTÜRGE', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (541, N'YEŞİLYURT', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (542, N'BATTALGAZİ', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (543, N'DOĞANYOL', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (544, N'KALE', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (545, N'KULUNCAK', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (546, N'YAZIHAN', 44, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (547, N'AKHİSAR', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (548, N'ALAŞEHİR', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (549, N'DEMİRCİ', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (550, N'GÖRDES', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (551, N'KIRKAĞAÇ', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (552, N'KULA', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (553, N'MERKEZ', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (554, N'SALİHLİ', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (555, N'SARIGÖL', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (556, N'SARUHANLI', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (557, N'SELENDİ', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (558, N'SOMA', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (559, N'TURGUTLU', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (560, N'AHMETLİ', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (561, N'GÖLMARMARA', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (562, N'KÖPRÜBAŞI', 45, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (563, N'DERİK', 47, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (564, N'KIZILTEPE', 47, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (565, N'MERKEZ', 47, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (566, N'MAZIDAĞI', 47, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (567, N'MİDYAT', 47, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (568, N'NUSAYBİN', 47, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (569, N'ÖMERLİ', 47, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (570, N'SAVUR', 47, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (571, N'YEŞİLLİ', 47, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (572, N'MERKEZ', 33, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (573, N'ANAMUR', 33, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (574, N'ERDEMLİ', 33, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (575, N'GÜLNAR', 33, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (576, N'MUT', 33, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (577, N'SİLİFKE', 33, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (578, N'TARSUS', 33, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (579, N'AYDINCIK', 33, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (580, N'BOZYAZI', 33, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (581, N'ÇAMLIYAYLA', 33, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (582, N'BODRUM', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (583, N'DATÇA', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (584, N'FETHİYE', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (585, N'KÖYCEĞİZ', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (586, N'MARMARİS', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (587, N'MİLAS', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (588, N'MERKEZ', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (589, N'ULA', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (590, N'YATAĞAN', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (591, N'DALAMAN', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (592, N'KAVAKLI DERE', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (593, N'ORTACA', 48, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (594, N'BULANIK', 49, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (595, N'MALAZGİRT', 49, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (596, N'MERKEZ', 49, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (597, N'VARTO', 49, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (598, N'HASKÖY', 49, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (599, N'KORKUT', 49, 0)
GO
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (600, N'MERKEZ', 50, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (601, N'AVANOS', 50, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (602, N'DERİNKUYU', 50, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (603, N'GÜLŞEHİR', 50, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (604, N'HACIBEKTAŞ', 50, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (605, N'KOZAKLI', 50, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (606, N'ÜRGÜP', 50, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (607, N'ACIGÖL', 50, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (608, N'MERKEZ', 51, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (609, N'BOR', 51, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (610, N'ÇAMARDI', 51, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (611, N'ULUKIŞLA', 51, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (612, N'ALTUNHİSAR', 51, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (613, N'ÇİFTLİK', 51, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (614, N'AKKUŞ', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (615, N'AYBASTI', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (616, N'FATSA', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (617, N'GÖLKÖY', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (618, N'KORGAN', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (619, N'KUMRU', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (620, N'MESUDİYE', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (621, N'MERKEZ', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (622, N'PERŞEMBE', 52, 1)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (623, N'ULUBEY', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (624, N'ÜNYE', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (625, N'GÜLYALI', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (626, N'GÜRGENTEPE', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (627, N'ÇAMAŞ', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (628, N'ÇATALPINAR', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (629, N'ÇAYBAŞI', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (630, N'İKİZCE', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (631, N'KABADÜZ', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (632, N'KABATAŞ', 52, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (633, N'BAHÇE', 80, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (634, N'KADİRLİ', 80, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (635, N'MERKEZ', 80, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (636, N'DÜZİÇİ', 80, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (637, N'HASANBEYLİ', 80, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (638, N'SUMBAŞ', 80, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (639, N'TOPRAKKALE', 80, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (640, N'MERKEZ', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (641, N'ARDEŞEN', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (642, N'ÇAMLIHEMŞİN', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (643, N'ÇAYELİ', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (644, N'FINDIKLI', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (645, N'İKİZDERE', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (646, N'KALKANDERE', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (647, N'PAZAR', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (648, N'GÜNEYSU', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (649, N'DEREPAZARI', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (650, N'HEMŞİN', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (651, N'İKİDERE', 53, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (652, N'AKYAZI', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (653, N'GEYVE', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (654, N'HENDEK', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (655, N'KARASU', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (656, N'KAYNARCA', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (657, N'ADAPAZARI', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (658, N'PAMUKOVA', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (659, N'TARAKLI', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (660, N'FERİZLİ', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (661, N'KARAPÜRÇEK', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (662, N'SÖĞÜTLÜ', 54, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (663, N'ALAÇAM', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (664, N'BAFRA', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (665, N'ÇARŞAMBA', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (666, N'HAVZA', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (667, N'KAVAK', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (668, N'LADİK', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (669, N'CANİK', 55, 1)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (670, N'TERME', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (671, N'VEZİRKÖPRÜ', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (672, N'ASARCIK', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (673, N'ONDOKUZMAYIS', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (674, N'SALIPAZARI', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (675, N'TEKKEKÖY', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (676, N'AYVACIK', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (677, N'YAKAKENT', 55, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (678, N'AYANCIK', 57, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (679, N'BOYABAT', 57, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (680, N'MERKEZ', 57, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (681, N'DURAĞAN', 57, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (682, N'ERGELEK', 57, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (683, N'GERZE', 57, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (684, N'TÜRKELİ', 57, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (685, N'DİKMEN', 57, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (686, N'SARAYDÜZÜ', 57, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (687, N'DİVRİĞİ', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (688, N'GEMEREK', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (689, N'GÜRÜN', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (690, N'HAFİK', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (691, N'İMRANLI', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (692, N'KANGAL', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (693, N'KOYUL HİSAR', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (694, N'MERKEZ', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (695, N'SU ŞEHRİ', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (696, N'ŞARKIŞLA', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (697, N'YILDIZELİ', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (698, N'ZARA', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (699, N'AKINCILAR', 58, 0)
GO
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (700, N'ALTINYAYLA', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (701, N'DOĞANŞAR', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (702, N'GÜLOVA', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (703, N'ULAŞ', 58, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (704, N'BAYKAN', 56, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (705, N'ERUH', 56, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (706, N'KURTALAN', 56, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (707, N'PERVARİ', 56, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (708, N'MERKEZ', 56, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (709, N'ŞİRVARİ', 56, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (710, N'AYDINLAR', 56, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (711, N'SÜLEYMANPAŞA', 59, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (712, N'ÇERKEZKÖY', 59, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (713, N'ÇORLU', 59, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (714, N'HAYRABOLU', 59, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (715, N'MALKARA', 59, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (716, N'MURATLI', 59, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (717, N'SARAY', 59, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (718, N'ŞARKÖY', 59, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (719, N'MARAMARAEREĞLİSİ', 59, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (720, N'ALMUS', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (721, N'ARTOVA', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (722, N'MERKEZ', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (723, N'ERBAA', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (724, N'NİKSAR', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (725, N'REŞADİYE', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (726, N'TURHAL', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (727, N'ZİLE', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (728, N'PAZAR', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (729, N'YEŞİLYURT', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (730, N'BAŞÇİFTLİK', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (731, N'SULUSARAY', 60, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (732, N'MERKEZ', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (733, N'AKÇAABAT', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (734, N'ARAKLI', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (735, N'ARŞİN', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (736, N'ÇAYKARA', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (737, N'MAÇKA', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (738, N'OF', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (739, N'SÜRMENE', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (740, N'TONYA', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (741, N'VAKFIKEBİR', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (742, N'YOMRA', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (743, N'BEŞİKDÜZÜ', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (744, N'ŞALPAZARI', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (745, N'ÇARŞIBAŞI', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (746, N'DERNEKPAZARI', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (747, N'DÜZKÖY', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (748, N'HAYRAT', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (749, N'KÖPRÜBAŞI', 61, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (750, N'MERKEZ', 62, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (751, N'ÇEMİŞGEZEK', 62, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (752, N'HOZAT', 62, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (753, N'MAZGİRT', 62, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (754, N'NAZİMİYE', 62, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (755, N'OVACIK', 62, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (756, N'PERTEK', 62, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (757, N'PÜLÜMÜR', 62, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (758, N'BANAZ', 64, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (759, N'EŞME', 64, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (760, N'KARAHALLI', 64, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (761, N'SİVASLI', 64, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (762, N'ULUBEY', 64, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (763, N'MERKEZ', 64, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (764, N'BAŞKALE', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (765, N'MERKEZ', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (766, N'EDREMİT', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (767, N'ÇATAK', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (768, N'ERCİŞ', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (769, N'GEVAŞ', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (770, N'GÜRPINAR', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (771, N'MURADİYE', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (772, N'ÖZALP', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (773, N'BAHÇESARAY', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (774, N'ÇALDIRAN', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (775, N'SARAY', 65, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (776, N'MERKEZ', 77, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (777, N'ALTINOVA', 77, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (778, N'ARMUTLU', 77, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (779, N'ÇINARCIK', 77, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (780, N'ÇİFTLİKKÖY', 77, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (781, N'TERMAL', 77, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (782, N'AKDAĞMADENİ', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (783, N'BOĞAZLIYAN', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (784, N'MERKEZ', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (785, N'ÇAYIRALAN', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (786, N'ÇEKEREK', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (787, N'SARIKAYA', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (788, N'SORGUN', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (789, N'ŞEFAATLI', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (790, N'YERKÖY', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (791, N'KADIŞEHRİ', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (792, N'SARAYKENT', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (793, N'YENİFAKILI', 66, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (794, N'ÇAYCUMA', 67, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (795, N'DEVREK', 67, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (796, N'MERKEZ', 67, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (797, N'EREĞLİ', 67, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (798, N'ALAPLI', 67, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (799, N'GÖKÇEBEY', 67, 0)
GO
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (800, N'MERKEZ', 17, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (801, N'AYVACIK', 17, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (802, N'BAYRAMİÇ', 17, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (803, N'BİGA', 17, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (804, N'BOZCAADA', 17, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (805, N'ÇAN', 17, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (806, N'ECEABAT', 17, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (807, N'EZİNE', 17, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (808, N'LAPSEKİ', 17, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (809, N'YENİCE', 17, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (810, N'MERKEZ', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (811, N'ÇERKEŞ', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (812, N'ELDİVAN', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (813, N'ILGAZ', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (814, N'KURŞUNLU', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (815, N'ORTA', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (816, N'ŞABANÖZÜ', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (817, N'YAPRAKLI', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (818, N'ATKARACALAR', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (819, N'KIZILIRMAK', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (820, N'BAYRAMÖREN', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (821, N'KORGUN', 18, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (822, N'ALACA', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (823, N'BAYAT', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (824, N'MERKEZ', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (825, N'İKSİPLİ', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (826, N'KARGI', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (827, N'MECİTÖZÜ', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (828, N'ORTAKÖY', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (829, N'OSMANCIK', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (830, N'SUNGURLU', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (831, N'DODURGA', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (832, N'LAÇİN', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (833, N'OĞUZLAR', 19, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (834, N'ADALAR', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (835, N'BAKIRKÖY', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (836, N'BEŞİKTAŞ', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (837, N'BEYKOZ', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (838, N'BEYOĞLU', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (839, N'ÇATALCA', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (840, N'EMİNÖNÜ', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (841, N'EYÜP', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (842, N'FATİH', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (843, N'GAZİOSMANPAŞA', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (844, N'KADIKÖY', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (845, N'KARTAL', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (846, N'SARIYER', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (847, N'SİLİVRİ', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (848, N'ŞİLE', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (849, N'ŞİŞLİ', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (850, N'ÜSKÜDAR', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (851, N'ZEYTİNBURNU', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (852, N'BÜYÜKÇEKMECE', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (853, N'KAĞITHANE', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (854, N'KÜÇÜKÇEKMECE', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (855, N'PENDİK', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (856, N'ÜMRANİYE', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (857, N'BAYRAMPAŞA', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (858, N'AVCILAR', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (859, N'BAĞCILAR', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (860, N'BAHÇELİEVLER', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (861, N'GÜNGÖREN', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (862, N'MALTEPE', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (863, N'SULTANBEYLİ', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (864, N'TUZLA', 34, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (865, N'ESENLER', 34, 1)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (866, N'ALİAĞA', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (867, N'BAYINDIR', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (868, N'BERGAMA', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (869, N'BORNOVA', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (870, N'ÇEŞME', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (871, N'DİKİLİ', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (872, N'FOÇA', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (873, N'KARABURUN', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (874, N'KARŞIYAKA', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (875, N'KEMALPAŞA', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (876, N'KINIK', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (877, N'KİRAZ', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (878, N'MENEMEN', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (879, N'ÖDEMİŞ', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (880, N'SEFERİHİSAR', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (881, N'SELÇUK', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (882, N'TİRE', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (883, N'TORBALI', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (884, N'URLA', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (885, N'BEYDAĞ', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (886, N'BUCA', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (887, N'KONAK', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (888, N'MENDERES', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (889, N'BALÇOVA', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (890, N'ÇİGLİ', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (891, N'GAZİEMİR', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (892, N'NARLIDERE', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (893, N'GÜZELBAHÇE', 35, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (894, N'MERKEZ', 63, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (895, N'AKÇAKALE', 63, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (896, N'BİRECİK', 63, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (897, N'BOZOVA', 63, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (898, N'CEYLANPINAR', 63, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (899, N'HALFETİ', 63, 0)
GO
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (900, N'HİLVAN', 63, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (901, N'SİVEREK', 63, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (902, N'SURUÇ', 63, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (903, N'VİRANŞEHİR', 63, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (904, N'HARRAN', 63, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (905, N'BEYTÜŞŞEBAP', 73, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (906, N'MERKEZ', 73, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (907, N'CİZRE', 73, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (908, N'İDİL', 73, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (909, N'SİLOPİ', 73, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (910, N'ULUDERE', 73, 0)
INSERT [dbo].[tblIlceler] ([ilceId], [ilceAd], [ilId], [aktif]) VALUES (911, N'GÜÇLÜKONAK', 73, 0)
SET IDENTITY_INSERT [dbo].[tblIlceler] OFF
SET IDENTITY_INSERT [dbo].[tblIller] ON 

INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (1, 1, N'Adana', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (2, 2, N'Adıyaman', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (3, 3, N'Afyon', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (4, 4, N'Ağrı', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (5, 5, N'Amasya', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (6, 6, N'Ankara', 1)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (7, 7, N'Antalya', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (8, 8, N'Artvin', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (9, 9, N'Aydın', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (10, 10, N'Balıkesir', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (11, 11, N'Bilecik', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (12, 12, N'Bingöl', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (13, 13, N'Bitlis', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (14, 14, N'Bolu', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (15, 15, N'Burdur', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (16, 16, N'Bursa', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (17, 17, N'Çanakkale', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (18, 18, N'Çankırı', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (19, 19, N'Çorum', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (20, 20, N'Denizli', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (21, 21, N'Diyarbakır', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (22, 22, N'Edirne', 1)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (23, 23, N'Elazığ', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (24, 24, N'Erzincan', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (25, 25, N'Erzurum', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (26, 26, N'Eskişehir', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (27, 27, N'Gaziantep', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (28, 28, N'Giresun', 1)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (29, 29, N'Gümüşhane', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (30, 30, N'Hakkari', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (31, 31, N'Hatay', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (32, 32, N'Isparta', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (33, 33, N'Mersin', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (34, 34, N'İstanbul', 1)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (35, 35, N'İzmir', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (36, 36, N'Kars', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (37, 37, N'Kastamonu', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (38, 38, N'Kayseri', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (39, 39, N'Kırklareli', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (40, 40, N'Kırşehir', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (41, 41, N'Kocaeli', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (42, 42, N'Konya', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (43, 43, N'Kütahya', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (44, 44, N'Malatya', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (45, 45, N'Manisa', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (46, 46, N'K.Maraş', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (47, 47, N'Mardin', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (48, 48, N'Muğla', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (49, 49, N'Muş', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (50, 50, N'Nevşehir', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (51, 51, N'Niğde', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (52, 52, N'Ordu', 1)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (53, 53, N'Rize', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (54, 54, N'Sakarya', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (55, 55, N'Samsun', 1)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (56, 56, N'Siirt', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (57, 57, N'Sinop', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (58, 58, N'Sivas', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (59, 59, N'Tekirdağ', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (60, 60, N'Tokat', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (61, 61, N'Trabzon', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (62, 62, N'Tunceli', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (63, 63, N'Şanlıurfa', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (64, 64, N'Uşak', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (65, 65, N'Van', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (66, 66, N'Yozgat', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (67, 67, N'Zonguldak', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (68, 68, N'Aksaray', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (69, 69, N'Bayburt', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (70, 70, N'Karaman', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (71, 71, N'Kırıkkale', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (72, 72, N'Batman', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (73, 73, N'Şırnak', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (74, 74, N'Bartın', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (75, 75, N'Ardahan', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (76, 76, N'Iğdır', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (77, 77, N'Yalova', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (78, 78, N'Karabük', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (79, 79, N'Kilis', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (80, 80, N'Osmaniye', 0)
INSERT [dbo].[tblIller] ([ilId], [ilPlaka], [ilAd], [aktif]) VALUES (81, 81, N'Düzce', 0)
SET IDENTITY_INSERT [dbo].[tblIller] OFF
SET IDENTITY_INSERT [dbo].[tblKlinik] ON 

INSERT [dbo].[tblKlinik] ([klinikId], [ilId], [ilceId], [klinikAd], [klinikAdres]) VALUES (1, 55, 669, N'BAŞAK KLİNİĞİ', N'ZİYA BEY CADDESİ HÜSREV SOKAK NO 23 ')
INSERT [dbo].[tblKlinik] ([klinikId], [ilId], [ilceId], [klinikAd], [klinikAdres]) VALUES (2, 22, 272, N'KARTANESİ ÖZEL KLİNİĞİ', N'ZİYA BEY CADDESİ HÜSREV SOKAK NO 23 ')
INSERT [dbo].[tblKlinik] ([klinikId], [ilId], [ilceId], [klinikAd], [klinikAdres]) VALUES (3, 22, 270, N'BALAT KLİNİĞİ', N'ZİYA BEY CADDESİ HÜSREV SOKAK NO 23 ')
INSERT [dbo].[tblKlinik] ([klinikId], [ilId], [ilceId], [klinikAd], [klinikAdres]) VALUES (4, 28, 350, N'AYYILDIZ KLİNİĞİ', N'ZİYA BEY CADDESİ HÜSREV SOKAK NO 23 ')
INSERT [dbo].[tblKlinik] ([klinikId], [ilId], [ilceId], [klinikAd], [klinikAdres]) VALUES (5, 52, 350, N'SEFA KLİNİĞİ', N'ZİYA BEY CADDESİ HÜSREV SOKAK NO 23 ')
INSERT [dbo].[tblKlinik] ([klinikId], [ilId], [ilceId], [klinikAd], [klinikAdres]) VALUES (6, 34, 865, N'GONCA REHABİLİTASYON  MERKEZİ', N'ZİYA BEY CADDESİ HÜSREV SOKAK NO 23 ')
INSERT [dbo].[tblKlinik] ([klinikId], [ilId], [ilceId], [klinikAd], [klinikAdres]) VALUES (7, 6, 58, N'DEMET  POLİKİNLİĞİ', N'Karacabey  Caddesi Irmak sokak  no:23')
INSERT [dbo].[tblKlinik] ([klinikId], [ilId], [ilceId], [klinikAd], [klinikAdres]) VALUES (8, 6, 18, N'Ankara Acıbadem ', N'gölbaşı caddesi')
SET IDENTITY_INSERT [dbo].[tblKlinik] OFF
SET IDENTITY_INSERT [dbo].[tblKullanici] ON 

INSERT [dbo].[tblKullanici] ([kullanciId], [id], [pw], [pId]) VALUES (1, N'Abdullah', N'Sait', 1)
INSERT [dbo].[tblKullanici] ([kullanciId], [id], [pw], [pId]) VALUES (19, N'Mehmet', N'Uslu', 21)
INSERT [dbo].[tblKullanici] ([kullanciId], [id], [pw], [pId]) VALUES (20, N'Ayse', N'Canan', 22)
INSERT [dbo].[tblKullanici] ([kullanciId], [id], [pw], [pId]) VALUES (21, N'Necati', N'Yıldız', 23)
INSERT [dbo].[tblKullanici] ([kullanciId], [id], [pw], [pId]) VALUES (23, N'meral', N'meral', 26)
SET IDENTITY_INSERT [dbo].[tblKullanici] OFF
SET IDENTITY_INSERT [dbo].[tblPersonel] ON 

INSERT [dbo].[tblPersonel] ([personelId], [tcNo], [ad], [soyad], [adres], [cinsiyet], [cepTel], [email], [dogumTar], [dogumYer], [unvanId], [klinikId]) VALUES (1, N'10000000000', N'Abdullah', N'Koc', N'İstanbul', N'ERKEK', N'05320000000', N'abdullah.saidkoc@gmail.com', CAST(0x92210B00 AS Date), N'İstanbul', 1, 6)
INSERT [dbo].[tblPersonel] ([personelId], [tcNo], [ad], [soyad], [adres], [cinsiyet], [cepTel], [email], [dogumTar], [dogumYer], [unvanId], [klinikId]) VALUES (21, N'10000000001', N'Mehmet', N'Uslu', N'Bursa', N'ERKEK', N'05424058771', N'mehmet.uslu@gmail.com', CAST(0x7E070B00 AS Date), N'Bursa', 2, 6)
INSERT [dbo].[tblPersonel] ([personelId], [tcNo], [ad], [soyad], [adres], [cinsiyet], [cepTel], [email], [dogumTar], [dogumYer], [unvanId], [klinikId]) VALUES (22, N'23232323232', N'Ayşe', N'Canan', N'merkez caddesi  gül sokak', N'KADIN', N'05364022323', N'aysecanan@gmail.com', CAST(0x3AF90A00 AS Date), N'mANİSA', 1, 1)
INSERT [dbo].[tblPersonel] ([personelId], [tcNo], [ad], [soyad], [adres], [cinsiyet], [cepTel], [email], [dogumTar], [dogumYer], [unvanId], [klinikId]) VALUES (23, N'12121212121', N'Necati ', N'Yıldız', N'ayazağa caddesi nuri sokak no23', N'ERKEK', N'05422322323', N'necatiyildiz@gmail.com', CAST(0xD3E30A00 AS Date), N'Ankara', 2, 7)
INSERT [dbo].[tblPersonel] ([personelId], [tcNo], [ad], [soyad], [adres], [cinsiyet], [cepTel], [email], [dogumTar], [dogumYer], [unvanId], [klinikId]) VALUES (26, N'23232328999', N'meral', N'uzun', N'gül tepe mahallesi', N'KADIN', N'05423336777', N'meraluzun@gmail.com', CAST(0x07240B00 AS Date), N'Ankara', 3, 6)
SET IDENTITY_INSERT [dbo].[tblPersonel] OFF
SET IDENTITY_INSERT [dbo].[tblRandevu] ON 

INSERT [dbo].[tblRandevu] ([randevuId], [hastaId], [doktorId], [gun], [saat], [silinmiş]) VALUES (2, 1, 23, CAST(0x35420B00 AS Date), 11, 1)
INSERT [dbo].[tblRandevu] ([randevuId], [hastaId], [doktorId], [gun], [saat], [silinmiş]) VALUES (5, 1, 21, CAST(0x35420B00 AS Date), 14, 1)
INSERT [dbo].[tblRandevu] ([randevuId], [hastaId], [doktorId], [gun], [saat], [silinmiş]) VALUES (6, 1, 23, CAST(0x90420B00 AS Date), 8, 1)
INSERT [dbo].[tblRandevu] ([randevuId], [hastaId], [doktorId], [gun], [saat], [silinmiş]) VALUES (7, 1, 23, CAST(0x90420B00 AS Date), 9, 1)
INSERT [dbo].[tblRandevu] ([randevuId], [hastaId], [doktorId], [gun], [saat], [silinmiş]) VALUES (8, 1, 21, CAST(0x94420B00 AS Date), 15, 0)
INSERT [dbo].[tblRandevu] ([randevuId], [hastaId], [doktorId], [gun], [saat], [silinmiş]) VALUES (9, 2, 23, CAST(0x90420B00 AS Date), 9, 1)
SET IDENTITY_INSERT [dbo].[tblRandevu] OFF
SET IDENTITY_INSERT [dbo].[tblUnvan] ON 

INSERT [dbo].[tblUnvan] ([unvanId], [unvanAd]) VALUES (1, N'GENEL MÜDÜR')
INSERT [dbo].[tblUnvan] ([unvanId], [unvanAd]) VALUES (2, N'DOKTOR')
INSERT [dbo].[tblUnvan] ([unvanId], [unvanAd]) VALUES (3, N'SEKRETER')
SET IDENTITY_INSERT [dbo].[tblUnvan] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblHasta__573CFEEBDB2DBF7B]    Script Date: 27.05.2021 12:35:29 ******/
ALTER TABLE [dbo].[tblHasta] ADD UNIQUE NONCLUSTERED 
(
	[hastaTc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblPerso__E0786750319BDB54]    Script Date: 27.05.2021 12:35:29 ******/
ALTER TABLE [dbo].[tblPersonel] ADD UNIQUE NONCLUSTERED 
(
	[tcNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblIlceler] ADD  DEFAULT ((0)) FOR [aktif]
GO
ALTER TABLE [dbo].[tblIller] ADD  DEFAULT ((0)) FOR [aktif]
GO
ALTER TABLE [dbo].[tblRandevu] ADD  DEFAULT ((0)) FOR [silinmiş]
GO
ALTER TABLE [dbo].[tblIlceler]  WITH CHECK ADD FOREIGN KEY([ilId])
REFERENCES [dbo].[tblIller] ([ilId])
GO
ALTER TABLE [dbo].[tblKlinik]  WITH CHECK ADD FOREIGN KEY([ilceId])
REFERENCES [dbo].[tblIlceler] ([ilceId])
GO
ALTER TABLE [dbo].[tblKlinik]  WITH CHECK ADD FOREIGN KEY([ilId])
REFERENCES [dbo].[tblIller] ([ilId])
GO
ALTER TABLE [dbo].[tblKullanici]  WITH CHECK ADD FOREIGN KEY([pId])
REFERENCES [dbo].[tblPersonel] ([personelId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPersonel]  WITH CHECK ADD FOREIGN KEY([klinikId])
REFERENCES [dbo].[tblKlinik] ([klinikId])
GO
ALTER TABLE [dbo].[tblPersonel]  WITH CHECK ADD FOREIGN KEY([unvanId])
REFERENCES [dbo].[tblUnvan] ([unvanId])
GO
ALTER TABLE [dbo].[tblRandevu]  WITH CHECK ADD FOREIGN KEY([doktorId])
REFERENCES [dbo].[tblPersonel] ([personelId])
GO
ALTER TABLE [dbo].[tblRandevu]  WITH CHECK ADD FOREIGN KEY([hastaId])
REFERENCES [dbo].[tblHasta] ([hastaId])
GO
ALTER TABLE [dbo].[tblHasta]  WITH CHECK ADD  CONSTRAINT [ck_had] CHECK  ((len([ad])>=(3)))
GO
ALTER TABLE [dbo].[tblHasta] CHECK CONSTRAINT [ck_had]
GO
ALTER TABLE [dbo].[tblHasta]  WITH CHECK ADD  CONSTRAINT [ck_hastaTc] CHECK  ((len([hastaTc])=(11) AND [hastaTc] like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[tblHasta] CHECK CONSTRAINT [ck_hastaTc]
GO
ALTER TABLE [dbo].[tblHasta]  WITH CHECK ADD  CONSTRAINT [ck_hcepTel] CHECK  ((len([cepTel])=(11) AND [cepTel] like '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[tblHasta] CHECK CONSTRAINT [ck_hcepTel]
GO
ALTER TABLE [dbo].[tblHasta]  WITH CHECK ADD  CONSTRAINT [ck_hcinsiyet] CHECK  (([cinsiyet]='ERKEK' OR [cinsiyet]='KADIN'))
GO
ALTER TABLE [dbo].[tblHasta] CHECK CONSTRAINT [ck_hcinsiyet]
GO
ALTER TABLE [dbo].[tblHasta]  WITH CHECK ADD  CONSTRAINT [ck_hemail] CHECK  (([email] like '%@%.%'))
GO
ALTER TABLE [dbo].[tblHasta] CHECK CONSTRAINT [ck_hemail]
GO
ALTER TABLE [dbo].[tblHasta]  WITH CHECK ADD  CONSTRAINT [ck_hsoyad] CHECK  ((len([soyad])>=(2)))
GO
ALTER TABLE [dbo].[tblHasta] CHECK CONSTRAINT [ck_hsoyad]
GO
ALTER TABLE [dbo].[tblHasta]  WITH CHECK ADD  CONSTRAINT [ck_kanGrubu] CHECK  (([kanGrubu]='AB-' OR [kanGrubu]='AB+' OR [kanGrubu]='0-' OR [kanGrubu]='0+' OR [kanGrubu]='B-' OR [kanGrubu]='B+' OR [kanGrubu]='A-' OR [kanGrubu]='A+'))
GO
ALTER TABLE [dbo].[tblHasta] CHECK CONSTRAINT [ck_kanGrubu]
GO
ALTER TABLE [dbo].[tblKlinik]  WITH CHECK ADD  CONSTRAINT [ck_klinikAd] CHECK  ((len([klinikAd])>=(3)))
GO
ALTER TABLE [dbo].[tblKlinik] CHECK CONSTRAINT [ck_klinikAd]
GO
ALTER TABLE [dbo].[tblKlinik]  WITH CHECK ADD  CONSTRAINT [ck_klinikAdres] CHECK  ((len([klinikAdres])>=(3)))
GO
ALTER TABLE [dbo].[tblKlinik] CHECK CONSTRAINT [ck_klinikAdres]
GO
ALTER TABLE [dbo].[tblPersonel]  WITH CHECK ADD  CONSTRAINT [ck_ad] CHECK  ((len([ad])>=(3)))
GO
ALTER TABLE [dbo].[tblPersonel] CHECK CONSTRAINT [ck_ad]
GO
ALTER TABLE [dbo].[tblPersonel]  WITH CHECK ADD  CONSTRAINT [ck_cepTel] CHECK  ((len([cepTel])=(11) AND [cepTel] like '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[tblPersonel] CHECK CONSTRAINT [ck_cepTel]
GO
ALTER TABLE [dbo].[tblPersonel]  WITH CHECK ADD  CONSTRAINT [ck_cinsiyet] CHECK  (([cinsiyet]='ERKEK' OR [cinsiyet]='KADIN'))
GO
ALTER TABLE [dbo].[tblPersonel] CHECK CONSTRAINT [ck_cinsiyet]
GO
ALTER TABLE [dbo].[tblPersonel]  WITH CHECK ADD  CONSTRAINT [ck_email] CHECK  (([email] like '%@%.%'))
GO
ALTER TABLE [dbo].[tblPersonel] CHECK CONSTRAINT [ck_email]
GO
ALTER TABLE [dbo].[tblPersonel]  WITH CHECK ADD  CONSTRAINT [ck_soyad] CHECK  ((len([soyad])>=(3)))
GO
ALTER TABLE [dbo].[tblPersonel] CHECK CONSTRAINT [ck_soyad]
GO
ALTER TABLE [dbo].[tblPersonel]  WITH CHECK ADD  CONSTRAINT [ck_tcNo] CHECK  ((len([tcNo])=(11) AND [tcNo] like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[tblPersonel] CHECK CONSTRAINT [ck_tcNo]
GO
