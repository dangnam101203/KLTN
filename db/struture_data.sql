USE [CALOBYE]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 11/9/2024 1:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [nchar](50) NOT NULL,
	[firstname] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[avatar] [nvarchar](50) NULL,
	[time_create] [datetime] NULL,
 CONSTRAINT [pk_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 11/9/2024 1:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[ID] [varchar](50) NOT NULL,
	[TITLE] [nvarchar](100) NOT NULL,
	[SLUG] [nvarchar](50) NOT NULL,
	[PARENT_ID] [varchar](50) NULL,
	[time_create] [datetime] NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 11/9/2024 1:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[ID] [varchar](50) NOT NULL,
	[LAST_NAME] [nvarchar](20) NOT NULL,
	[FIRST_NAME] [nvarchar](20) NOT NULL,
	[PHONE_NUMBER] [char](10) NOT NULL,
	[ORDER_ADDRESS] [nvarchar](200) NOT NULL,
	[EMAIL] [nvarchar](100) NOT NULL,
	[USER_NAME] [nvarchar](50) NOT NULL,
	[PASSWORD] [nvarchar](100) NOT NULL,
	[time_create] [datetime] NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_DETAILS]    Script Date: 11/9/2024 1:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAILS](
	[ID] [varchar](50) NOT NULL,
	[PRODUCT_ID] [varchar](50) NOT NULL,
	[AMOUNT] [int] NOT NULL,
	[TOTAL] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_ORDER_DETAILS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[PRODUCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 11/9/2024 1:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[ID] [varchar](50) NOT NULL,
	[TITLE] [nvarchar](max) NOT NULL,
	[SLUG] [nvarchar](100) NOT NULL,
	[DESCRIPTION] [nvarchar](max) NOT NULL,
	[PRICE] [money] NOT NULL,
	[THUMBNAIL] [nvarchar](50) NULL,
	[CATEGORY_ID] [varchar](50) NOT NULL,
	[TIME_CREATE] [datetime] NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THE_ORDER]    Script Date: 11/9/2024 1:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THE_ORDER](
	[ID] [varchar](50) NOT NULL,
	[CUSTOMER_ID] [varchar](50) NOT NULL,
	[DATE_ORDER] [datetime] NOT NULL,
	[IS_PAID] [bit] NOT NULL,
	[DELIVERY_STATUS] [bit] NOT NULL,
 CONSTRAINT [PK_THE_ORDER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([id], [firstname], [lastname], [email], [password], [avatar], [time_create]) VALUES (N'e9fe0a2b-5bd0-4d6a-acd3-2c6f5bc13800              ', N'Admin', N'Calobye', N'calobyeadmin.asia@gmail.com', N'21232F297A57A5A743894A0E4A801FC3', N'default.png', CAST(N'2022-12-23T03:39:14.650' AS DateTime))
GO
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [SLUG], [PARENT_ID], [time_create]) VALUES (N'2688b3bc-8ce5-4851-b801-da9b2a9eb4f3', N'Thực phẩm ăn nhanh', N'thuc-pham-an-nhanh', NULL, CAST(N'2022-12-23T16:07:09.137' AS DateTime))
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [SLUG], [PARENT_ID], [time_create]) VALUES (N'lbg1s03h2r1ocyy5x', N'Sản phẩm nổi bật ', N'san-pham-noi-bat', NULL, CAST(N'2022-12-23T04:21:22.610' AS DateTime))
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [SLUG], [PARENT_ID], [time_create]) VALUES (N'lbg1za9qtaqttf0l2', N'Bổ sung dinh dưỡng', N'bo-sung-dinh-duong', NULL, CAST(N'2022-12-23T04:21:22.610' AS DateTime))
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [SLUG], [PARENT_ID], [time_create]) VALUES (N'lbg2c6py1lszvlnfl', N'Protein', N'protein', N'lbg1za9qtaqttf0l2', CAST(N'2022-12-23T04:21:22.610' AS DateTime))
GO
INSERT [dbo].[CUSTOMER] ([ID], [LAST_NAME], [FIRST_NAME], [PHONE_NUMBER], [ORDER_ADDRESS], [EMAIL], [USER_NAME], [PASSWORD], [time_create]) VALUES (N'6b0cfb20-bf96-4921-9917-27f026237393', N'Duy Đức', N'Đặng', N'0946407647', N'43/7/1 Vườn Lài, Phường An Phú Đông, Quận 12', N'dangduyducdangduyduc@gmail.com', N'duyduc2003', N'8EEB2F08CB5B7B23ED62446EF61D1D34', CAST(N'2022-12-23T21:47:27.863' AS DateTime))
GO
INSERT [dbo].[ORDER_DETAILS] ([ID], [PRODUCT_ID], [AMOUNT], [TOTAL]) VALUES (N'47ecbcbe-0842-43b3-a6b4-2a1687710d17', N'f289cb58-e790-44a8-869c-4426cc7ec286', 5, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[ORDER_DETAILS] ([ID], [PRODUCT_ID], [AMOUNT], [TOTAL]) VALUES (N'49d33a61-c27d-4bd1-8b8b-abf4e4095445', N'a0baeaf0-e2ae-4ae2-9343-d3bb541b7bfe', 2, CAST(140000 AS Decimal(18, 0)))
INSERT [dbo].[ORDER_DETAILS] ([ID], [PRODUCT_ID], [AMOUNT], [TOTAL]) VALUES (N'65629582-92fc-406a-94fe-75a341ef2c3e', N'4981768c-42c1-4787-b0ca-3943299d5a76', 2, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[ORDER_DETAILS] ([ID], [PRODUCT_ID], [AMOUNT], [TOTAL]) VALUES (N'65629582-92fc-406a-94fe-75a341ef2c3e', N'f289cb58-e790-44a8-869c-4426cc7ec286', 10, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[ORDER_DETAILS] ([ID], [PRODUCT_ID], [AMOUNT], [TOTAL]) VALUES (N'754abdf2-052e-4c37-8842-99e90a04dfed', N'f289cb58-e790-44a8-869c-4426cc7ec286', 5, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[ORDER_DETAILS] ([ID], [PRODUCT_ID], [AMOUNT], [TOTAL]) VALUES (N'c38a2e77-e55e-4c2e-a924-d1299c37e4cd', N'b246df58-faee-4c25-811a-bc3952f02a05', 4, CAST(3600000 AS Decimal(18, 0)))
INSERT [dbo].[ORDER_DETAILS] ([ID], [PRODUCT_ID], [AMOUNT], [TOTAL]) VALUES (N'c39612cf-b416-48c0-8f43-71b5666dfab4', N'a0baeaf0-e2ae-4ae2-9343-d3bb541b7bfe', 5, CAST(350000 AS Decimal(18, 0)))
INSERT [dbo].[ORDER_DETAILS] ([ID], [PRODUCT_ID], [AMOUNT], [TOTAL]) VALUES (N'c39612cf-b416-48c0-8f43-71b5666dfab4', N'b246df58-faee-4c25-811a-bc3952f02a05', 2, CAST(1800000 AS Decimal(18, 0)))
INSERT [dbo].[ORDER_DETAILS] ([ID], [PRODUCT_ID], [AMOUNT], [TOTAL]) VALUES (N'c7f112ab-a01c-462e-ab03-0ba131df1ad0', N'a0baeaf0-e2ae-4ae2-9343-d3bb541b7bfe', 2, CAST(140000 AS Decimal(18, 0)))
INSERT [dbo].[ORDER_DETAILS] ([ID], [PRODUCT_ID], [AMOUNT], [TOTAL]) VALUES (N'f3ef7ce2-8ceb-4eb2-9e42-bfd486104559', N'f289cb58-e790-44a8-869c-4426cc7ec286', 10, CAST(100000 AS Decimal(18, 0)))
GO
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'325f5938-f2df-435f-9ee6-1f41a276735e', N'Thuốc tăng cân', N'thuoc-tang-can', N'The remainder of this section gives a proof of the expression (14) and discusses some points which arise from the preceding paragraph.', 700000.0000, N'thuoc-tang-can.jpg', N'lbg1za9qtaqttf0l2', CAST(N'2022-12-23T15:59:41.677' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'34008cc7-66c9-45ca-be85-7dbde863cef7', N'Ngủ cốc', N'ngu-coc', N'Xin chào', 1000000.0000, N'ngu-coc.jpg', N'lbg1za9qtaqttf0l2', CAST(N'2022-12-24T11:07:04.370' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'453c39be-98fe-4eb3-aee1-937a50dbcfe0', N'Mì tôm chua cay Hảo Hảo', N'mi-tom-chua-cay-hao-hao', N'The remainder of this section gives a proof of the expression (14) and discusses some points which arise from the preceding paragraph.', 3500.0000, N'mi-tom-chua-cay-hao-hao.jpg', N'2688b3bc-8ce5-4851-b801-da9b2a9eb4f3', CAST(N'2022-12-23T16:07:37.213' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'4981768c-42c1-4787-b0ca-3943299d5a76', N'Nui chiên', N'nui-chien', N'Nhoam nhoam', 50000.0000, N'nui-chien.jpg', N'2688b3bc-8ce5-4851-b801-da9b2a9eb4f3', CAST(N'2022-12-23T20:47:20.713' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'78410de0-6a21-481e-be9d-4857b483e300', N'Thuốc Giáng sinh', N'thuoc-giang-sinh', N'The remainder of this section gives a proof of the expression (14) and discusses some points which arise from the preceding paragraph.', 1500000.0000, N'thuoc-giang-sinh.jpg', N'lbg1s03h2r1ocyy5x', CAST(N'2022-12-23T15:57:08.107' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'9a8f77ca-0243-4847-add4-ab4be9f35a5b', N'Đạm', N'djam', N'The remainder of this section gives a proof of the expression (14) and discusses some points which arise from the preceding paragraph.', 300000.0000, N'djam.jpg', N'lbg2c6py1lszvlnfl', CAST(N'2022-12-23T15:58:39.307' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'a0baeaf0-e2ae-4ae2-9343-d3bb541b7bfe', N'Gà rán combo 2 người', N'ga-ran-combo-2-nguoi', N'Nhiều sự lựa chọn, tiết kiệm đến 25% so với mua lẻ', 70000.0000, N'ga-ran-combo-2-nguoi.png', N'2688b3bc-8ce5-4851-b801-da9b2a9eb4f3', CAST(N'2022-12-23T16:14:16.073' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'b246df58-faee-4c25-811a-bc3952f02a05', N'Thuốc Giảm cân', N'thuoc-giam-can', N'The remainder of this section gives a proof of the expression (14) and discusses some points which arise from the preceding paragraph.', 900000.0000, N'thuoc-giam-can.jpg', N'lbg1s03h2r1ocyy5x', CAST(N'2022-12-23T15:55:48.353' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'b3418d2e-a74c-4fe1-8b75-3bffd8299529', N'Thuốc chống say nắng', N'thuoc-chong-say-nang', N'The remainder of this section gives a proof of the expression (14) and discusses some points which arise from the preceding paragraph.', 750000.0000, N'thuoc-chong-say-nang.jpg', N'lbg2c6py1lszvlnfl', CAST(N'2022-12-23T16:02:52.863' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'c37d856e-dd79-4353-8eb2-ec3274a346c7', N'Chống còi xương', N'chong-coi-xuong', N'The remainder of this section gives a proof of the expression (14) and discusses some points which arise from the preceding paragraph.', 1000000.0000, N'chong-coi-xuong.jpg', N'lbg1s03h2r1ocyy5x', CAST(N'2022-12-23T15:56:37.743' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'd0ab70b6-34ef-4fff-89f6-7986aa4730df', N'Protein', N'protein', N'The remainder of this section gives a proof of the expression (14) and discusses some points which arise from the preceding paragraph.', 2000000.0000, N'protein.jpg', N'lbg1s03h2r1ocyy5x', CAST(N'2022-12-23T15:57:59.860' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'f289cb58-e790-44a8-869c-4426cc7ec286', N'Sting ', N'sting', N'The remainder of this section gives a proof of the expression (14) and discusses some points which arise from the preceding paragraph.', 10000.0000, N'sting.jpg', N'2688b3bc-8ce5-4851-b801-da9b2a9eb4f3', CAST(N'2022-12-23T16:04:09.573' AS DateTime))
INSERT [dbo].[PRODUCT] ([ID], [TITLE], [SLUG], [DESCRIPTION], [PRICE], [THUMBNAIL], [CATEGORY_ID], [TIME_CREATE]) VALUES (N'fedad12d-3ef0-4439-a21f-c80bdaf3cfde', N'Vitamin', N'vitamin', N'The remainder of this section gives a proof of the expression (14) and discusses some points which arise from the preceding paragraph.', 250000.0000, N'vitamin.jpg', N'lbg1za9qtaqttf0l2', CAST(N'2022-12-23T16:00:49.033' AS DateTime))
GO
INSERT [dbo].[THE_ORDER] ([ID], [CUSTOMER_ID], [DATE_ORDER], [IS_PAID], [DELIVERY_STATUS]) VALUES (N'47ecbcbe-0842-43b3-a6b4-2a1687710d17', N'6b0cfb20-bf96-4921-9917-27f026237393', CAST(N'2022-12-25T15:16:37.517' AS DateTime), 1, 1)
INSERT [dbo].[THE_ORDER] ([ID], [CUSTOMER_ID], [DATE_ORDER], [IS_PAID], [DELIVERY_STATUS]) VALUES (N'49d33a61-c27d-4bd1-8b8b-abf4e4095445', N'6b0cfb20-bf96-4921-9917-27f026237393', CAST(N'2022-12-26T09:12:59.840' AS DateTime), 1, 0)
INSERT [dbo].[THE_ORDER] ([ID], [CUSTOMER_ID], [DATE_ORDER], [IS_PAID], [DELIVERY_STATUS]) VALUES (N'65629582-92fc-406a-94fe-75a341ef2c3e', N'6b0cfb20-bf96-4921-9917-27f026237393', CAST(N'2022-12-23T21:48:27.620' AS DateTime), 1, 1)
INSERT [dbo].[THE_ORDER] ([ID], [CUSTOMER_ID], [DATE_ORDER], [IS_PAID], [DELIVERY_STATUS]) VALUES (N'754abdf2-052e-4c37-8842-99e90a04dfed', N'6b0cfb20-bf96-4921-9917-27f026237393', CAST(N'2022-12-23T21:50:05.177' AS DateTime), 1, 1)
INSERT [dbo].[THE_ORDER] ([ID], [CUSTOMER_ID], [DATE_ORDER], [IS_PAID], [DELIVERY_STATUS]) VALUES (N'c38a2e77-e55e-4c2e-a924-d1299c37e4cd', N'6b0cfb20-bf96-4921-9917-27f026237393', CAST(N'2022-12-26T09:44:00.940' AS DateTime), 0, 0)
INSERT [dbo].[THE_ORDER] ([ID], [CUSTOMER_ID], [DATE_ORDER], [IS_PAID], [DELIVERY_STATUS]) VALUES (N'c39612cf-b416-48c0-8f43-71b5666dfab4', N'6b0cfb20-bf96-4921-9917-27f026237393', CAST(N'2022-12-24T11:17:24.813' AS DateTime), 1, 1)
INSERT [dbo].[THE_ORDER] ([ID], [CUSTOMER_ID], [DATE_ORDER], [IS_PAID], [DELIVERY_STATUS]) VALUES (N'c7f112ab-a01c-462e-ab03-0ba131df1ad0', N'6b0cfb20-bf96-4921-9917-27f026237393', CAST(N'2022-12-25T17:03:38.683' AS DateTime), 1, 1)
INSERT [dbo].[THE_ORDER] ([ID], [CUSTOMER_ID], [DATE_ORDER], [IS_PAID], [DELIVERY_STATUS]) VALUES (N'f3ef7ce2-8ceb-4eb2-9e42-bfd486104559', N'6b0cfb20-bf96-4921-9917-27f026237393', CAST(N'2022-12-23T21:51:49.870' AS DateTime), 1, 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__admin__AB6E6164835507A6]    Script Date: 11/9/2024 1:39:32 PM ******/
ALTER TABLE [dbo].[admin] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CATEGORY__475DFD2F5F4518FA]    Script Date: 11/9/2024 1:39:32 PM ******/
ALTER TABLE [dbo].[CATEGORY] ADD UNIQUE NONCLUSTERED 
(
	[TITLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CATEGORY__A43AD45CCCF62286]    Script Date: 11/9/2024 1:39:32 PM ******/
ALTER TABLE [dbo].[CATEGORY] ADD UNIQUE NONCLUSTERED 
(
	[SLUG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CUSTOMER__161CF72499CF2E53]    Script Date: 11/9/2024 1:39:32 PM ******/
ALTER TABLE [dbo].[CUSTOMER] ADD UNIQUE NONCLUSTERED 
(
	[EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CUSTOMER__E0B75F6F9C42307D]    Script Date: 11/9/2024 1:39:32 PM ******/
ALTER TABLE [dbo].[CUSTOMER] ADD UNIQUE NONCLUSTERED 
(
	[USER_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PRODUCT__A43AD45C7A163916]    Script Date: 11/9/2024 1:39:32 PM ******/
ALTER TABLE [dbo].[PRODUCT] ADD UNIQUE NONCLUSTERED 
(
	[SLUG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[admin] ADD  CONSTRAINT [df_avatar]  DEFAULT ('default.png') FOR [avatar]
GO
ALTER TABLE [dbo].[admin] ADD  DEFAULT (getdate()) FOR [time_create]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  DEFAULT (getdate()) FOR [time_create]
GO
ALTER TABLE [dbo].[CUSTOMER] ADD  DEFAULT (getdate()) FOR [time_create]
GO
ALTER TABLE [dbo].[ORDER_DETAILS] ADD  DEFAULT ((1)) FOR [AMOUNT]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  DEFAULT ((0)) FOR [PRICE]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  DEFAULT (getdate()) FOR [TIME_CREATE]
GO
ALTER TABLE [dbo].[THE_ORDER] ADD  DEFAULT ((0)) FOR [IS_PAID]
GO
ALTER TABLE [dbo].[THE_ORDER] ADD  DEFAULT ((0)) FOR [DELIVERY_STATUS]
GO
ALTER TABLE [dbo].[CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_CATEGORY_CATEGORY] FOREIGN KEY([PARENT_ID])
REFERENCES [dbo].[CATEGORY] ([ID])
GO
ALTER TABLE [dbo].[CATEGORY] CHECK CONSTRAINT [FK_CATEGORY_CATEGORY]
GO
ALTER TABLE [dbo].[ORDER_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERDETAILS_PRODUCT] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[PRODUCT] ([ID])
GO
ALTER TABLE [dbo].[ORDER_DETAILS] CHECK CONSTRAINT [FK_ORDERDETAILS_PRODUCT]
GO
ALTER TABLE [dbo].[ORDER_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERDETAILS_THEORDER] FOREIGN KEY([ID])
REFERENCES [dbo].[THE_ORDER] ([ID])
GO
ALTER TABLE [dbo].[ORDER_DETAILS] CHECK CONSTRAINT [FK_ORDERDETAILS_THEORDER]
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_CATEGORY] FOREIGN KEY([CATEGORY_ID])
REFERENCES [dbo].[CATEGORY] ([ID])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK_PRODUCT_CATEGORY]
GO
ALTER TABLE [dbo].[THE_ORDER]  WITH CHECK ADD  CONSTRAINT [FK_THEORDER_CUSTOMER] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
ALTER TABLE [dbo].[THE_ORDER] CHECK CONSTRAINT [FK_THEORDER_CUSTOMER]
GO
