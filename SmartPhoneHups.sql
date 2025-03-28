USE [ShopDB]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 3/26/2025 9:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_khach_hang] [int] NOT NULL,
	[id_nhan_vien] [int] NOT NULL,
	[ngay_mua_hang] [datetime] NOT NULL,
	[tong_tien] [decimal](18, 2) NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 3/26/2025 9:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_spct] [int] NOT NULL,
	[id_hoa_don] [int] NOT NULL,
	[so_luong] [int] NOT NULL,
	[don_gia] [decimal](18, 2) NOT NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 3/26/2025 9:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[sdt] [nvarchar](15) NOT NULL,
	[ma_kh] [nvarchar](20) NOT NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kich_thuoc]    Script Date: 3/26/2025 9:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kich_thuoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](50) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mau_sac]    Script Date: 3/26/2025 9:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mau_sac](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](50) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 3/26/2025 9:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[ma_nv] [nvarchar](20) NOT NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 3/26/2025 9:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](50) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sp_chi_tiet]    Script Date: 3/26/2025 9:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sp_chi_tiet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_spct] [nvarchar](50) NOT NULL,
	[id_mau_sac] [int] NOT NULL,
	[id_kich_thuoc] [int] NOT NULL,
	[id_san_pham] [int] NOT NULL,
	[so_luong] [int] NOT NULL,
	[don_gia] [decimal](18, 2) NOT NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 3/26/2025 9:12:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten_dang_nhap] [nvarchar](50) NOT NULL,
	[mat_khau] [nvarchar](255) NOT NULL,
	[loai_tai_khoan] [int] NOT NULL,
	[id_khach_hang] [int] NULL,
	[id_nhan_vien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[hoa_don] ON 

INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_mua_hang], [tong_tien], [trang_thai]) VALUES (1, 1, 1, CAST(N'2025-03-24T22:44:01.627' AS DateTime), CAST(25000000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_mua_hang], [tong_tien], [trang_thai]) VALUES (2, 2, 2, CAST(N'2025-03-24T22:44:01.627' AS DateTime), CAST(35000000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[hoa_don] OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] ON 

INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_spct], [id_hoa_don], [so_luong], [don_gia], [trang_thai]) VALUES (1, 1, 1, 1, CAST(25000000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_spct], [id_hoa_don], [so_luong], [don_gia], [trang_thai]) VALUES (2, 2, 2, 1, CAST(35000000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[khach_hang] ON 

INSERT [dbo].[khach_hang] ([id], [ten], [sdt], [ma_kh], [trang_thai]) VALUES (1, N'Nguy?n Van A', N'0901234567', N'KH001', 1)
INSERT [dbo].[khach_hang] ([id], [ten], [sdt], [ma_kh], [trang_thai]) VALUES (2, N'Tr?n Th? B', N'0912345678', N'KH002', 1)
INSERT [dbo].[khach_hang] ([id], [ten], [sdt], [ma_kh], [trang_thai]) VALUES (3, N'Lê Van C', N'0923456789', N'KH003', 1)
SET IDENTITY_INSERT [dbo].[khach_hang] OFF
GO
SET IDENTITY_INSERT [dbo].[kich_thuoc] ON 

INSERT [dbo].[kich_thuoc] ([id], [ma], [ten], [trang_thai]) VALUES (1, N'KT001', N'128GB', 1)
INSERT [dbo].[kich_thuoc] ([id], [ma], [ten], [trang_thai]) VALUES (2, N'KT002', N'256GB', 1)
INSERT [dbo].[kich_thuoc] ([id], [ma], [ten], [trang_thai]) VALUES (3, N'KT003', N'512GB', 1)
SET IDENTITY_INSERT [dbo].[kich_thuoc] OFF
GO
SET IDENTITY_INSERT [dbo].[mau_sac] ON 

INSERT [dbo].[mau_sac] ([id], [ma], [ten], [trang_thai]) VALUES (1, N'MS001', N'Ðen', 1)
INSERT [dbo].[mau_sac] ([id], [ma], [ten], [trang_thai]) VALUES (2, N'MS002', N'Tr?ng', 1)
INSERT [dbo].[mau_sac] ([id], [ma], [ten], [trang_thai]) VALUES (3, N'MS003', N'Xanh duong', 1)
SET IDENTITY_INSERT [dbo].[mau_sac] OFF
GO
SET IDENTITY_INSERT [dbo].[nhan_vien] ON 

INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [trang_thai]) VALUES (1, N'Ph?m Qu?c D', N'NV001', 1)
INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [trang_thai]) VALUES (2, N'Hoàng Minh E', N'NV002', 1)
INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [trang_thai]) VALUES (3, N'Ngô Th? F', N'NV003', 1)
SET IDENTITY_INSERT [dbo].[nhan_vien] OFF
GO
SET IDENTITY_INSERT [dbo].[san_pham] ON 

INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai]) VALUES (1, N'SP001', N'Ði?n tho?i iPhone 15', 1)
INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai]) VALUES (2, N'SP002', N'Laptop Dell XPS 15', 1)
INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai]) VALUES (3, N'SP003', N'Máy tính b?ng Samsung Galaxy Tab', 1)
SET IDENTITY_INSERT [dbo].[san_pham] OFF
GO
SET IDENTITY_INSERT [dbo].[sp_chi_tiet] ON 

INSERT [dbo].[sp_chi_tiet] ([id], [ma_spct], [id_mau_sac], [id_kich_thuoc], [id_san_pham], [so_luong], [don_gia], [trang_thai]) VALUES (1, N'SPCT001', 1, 1, 1, 50, CAST(25000000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[sp_chi_tiet] ([id], [ma_spct], [id_mau_sac], [id_kich_thuoc], [id_san_pham], [so_luong], [don_gia], [trang_thai]) VALUES (2, N'SPCT002', 2, 2, 2, 30, CAST(35000000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[sp_chi_tiet] ([id], [ma_spct], [id_mau_sac], [id_kich_thuoc], [id_san_pham], [so_luong], [don_gia], [trang_thai]) VALUES (3, N'SPCT003', 3, 3, 3, 20, CAST(15000000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[sp_chi_tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[tai_khoan] ON 

INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (1, N'user_kh1', N'123456', 2, 1, NULL)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (2, N'user_kh2', N'123456', 2, 2, NULL)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (3, N'user_nv1', N'123456', 1, NULL, 1)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (4, N'user_nv2', N'123456', 1, NULL, 2)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (5, N'tranquocbao', N'bao123', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tai_khoan] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__khach_ha__0FE0B7EF7CE84F2B]    Script Date: 3/26/2025 9:12:38 PM ******/
ALTER TABLE [dbo].[khach_hang] ADD UNIQUE NONCLUSTERED 
(
	[ma_kh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__khach_ha__DDDFB483FCFFDAE8]    Script Date: 3/26/2025 9:12:38 PM ******/
ALTER TABLE [dbo].[khach_hang] ADD UNIQUE NONCLUSTERED 
(
	[sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__kich_thu__3213C8B6C816F5AD]    Script Date: 3/26/2025 9:12:38 PM ******/
ALTER TABLE [dbo].[kich_thuoc] ADD UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__mau_sac__3213C8B6EF3ADE66]    Script Date: 3/26/2025 9:12:38 PM ******/
ALTER TABLE [dbo].[mau_sac] ADD UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__nhan_vie__0FE15F7D09AE0D3A]    Script Date: 3/26/2025 9:12:38 PM ******/
ALTER TABLE [dbo].[nhan_vien] ADD UNIQUE NONCLUSTERED 
(
	[ma_nv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__san_pham__3213C8B61FE95470]    Script Date: 3/26/2025 9:12:38 PM ******/
ALTER TABLE [dbo].[san_pham] ADD UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__sp_chi_t__E4FF7C5308BFC646]    Script Date: 3/26/2025 9:12:38 PM ******/
ALTER TABLE [dbo].[sp_chi_tiet] ADD UNIQUE NONCLUSTERED 
(
	[ma_spct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tai_khoa__363698B3922AA41A]    Script Date: 3/26/2025 9:12:38 PM ******/
ALTER TABLE [dbo].[tai_khoan] ADD UNIQUE NONCLUSTERED 
(
	[ten_dang_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT (getdate()) FOR [ngay_mua_hang]
GO
ALTER TABLE [dbo].[hoa_don] ADD  DEFAULT ((1)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] ADD  DEFAULT ((1)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT ((1)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[kich_thuoc] ADD  DEFAULT ((1)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[mau_sac] ADD  DEFAULT ((1)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[nhan_vien] ADD  DEFAULT ((1)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[san_pham] ADD  DEFAULT ((1)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[sp_chi_tiet] ADD  DEFAULT ((1)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [fk_hd_kh] FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [fk_hd_kh]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [fk_hd_nv] FOREIGN KEY([id_nhan_vien])
REFERENCES [dbo].[nhan_vien] ([id])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [fk_hd_nv]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [fk_hdct_hd] FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [fk_hdct_hd]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [fk_hdct_spct] FOREIGN KEY([id_spct])
REFERENCES [dbo].[sp_chi_tiet] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [fk_hdct_spct]
GO
ALTER TABLE [dbo].[sp_chi_tiet]  WITH CHECK ADD  CONSTRAINT [fk_sp] FOREIGN KEY([id_san_pham])
REFERENCES [dbo].[san_pham] ([id])
GO
ALTER TABLE [dbo].[sp_chi_tiet] CHECK CONSTRAINT [fk_sp]
GO
ALTER TABLE [dbo].[sp_chi_tiet]  WITH CHECK ADD  CONSTRAINT [fk_sp_kt] FOREIGN KEY([id_kich_thuoc])
REFERENCES [dbo].[kich_thuoc] ([id])
GO
ALTER TABLE [dbo].[sp_chi_tiet] CHECK CONSTRAINT [fk_sp_kt]
GO
ALTER TABLE [dbo].[sp_chi_tiet]  WITH CHECK ADD  CONSTRAINT [fk_sp_mau] FOREIGN KEY([id_mau_sac])
REFERENCES [dbo].[mau_sac] ([id])
GO
ALTER TABLE [dbo].[sp_chi_tiet] CHECK CONSTRAINT [fk_sp_mau]
GO
ALTER TABLE [dbo].[tai_khoan]  WITH CHECK ADD  CONSTRAINT [fk_tk_kh] FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tai_khoan] CHECK CONSTRAINT [fk_tk_kh]
GO
ALTER TABLE [dbo].[tai_khoan]  WITH CHECK ADD  CONSTRAINT [fk_tk_nv] FOREIGN KEY([id_nhan_vien])
REFERENCES [dbo].[nhan_vien] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tai_khoan] CHECK CONSTRAINT [fk_tk_nv]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD CHECK  (([don_gia]>(0)))
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD CHECK  (([so_luong]>(0)))
GO
ALTER TABLE [dbo].[sp_chi_tiet]  WITH CHECK ADD CHECK  (([don_gia]>=(0)))
GO
ALTER TABLE [dbo].[sp_chi_tiet]  WITH CHECK ADD CHECK  (([so_luong]>=(0)))
GO
ALTER TABLE [dbo].[tai_khoan]  WITH CHECK ADD CHECK  (([loai_tai_khoan]=(2) OR [loai_tai_khoan]=(1)))
GO
