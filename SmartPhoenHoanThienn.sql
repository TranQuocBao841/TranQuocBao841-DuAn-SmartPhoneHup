USE [ShopDB]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 4/7/2025 11:11:42 AM ******/
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
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 4/7/2025 11:11:42 AM ******/
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
/****** Object:  Table [dbo].[khach_hang]    Script Date: 4/7/2025 11:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NULL,
	[ma_kh] [nvarchar](20) NOT NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kich_thuoc]    Script Date: 4/7/2025 11:11:42 AM ******/
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
/****** Object:  Table [dbo].[mau_sac]    Script Date: 4/7/2025 11:11:42 AM ******/
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
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 4/7/2025 11:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[ma_nv] [nvarchar](20) NOT NULL,
	[email] [nvarchar](20) NOT NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 4/7/2025 11:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [nvarchar](50) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[trang_thai] [int] NOT NULL,
	[anh] [varchar](255) NULL,
	[mo_ta] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sp_chi_tiet]    Script Date: 4/7/2025 11:11:42 AM ******/
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
	[don_gia] [int] NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 4/7/2025 11:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten_dang_nhap] [nvarchar](50) NOT NULL,
	[mat_khau] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NULL,
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

INSERT [dbo].[khach_hang] ([id], [ten], [email], [ma_kh], [trang_thai]) VALUES (1, N'Nguy?n Van A', N'a@gmail.com', N'KH001', 1)
INSERT [dbo].[khach_hang] ([id], [ten], [email], [ma_kh], [trang_thai]) VALUES (2, N'Tr?n Th? B', N'b@gmail.com', N'KH002', 1)
INSERT [dbo].[khach_hang] ([id], [ten], [email], [ma_kh], [trang_thai]) VALUES (3, N'Lê Van C', N'c@gmail.com', N'KH003', 1)
INSERT [dbo].[khach_hang] ([id], [ten], [email], [ma_kh], [trang_thai]) VALUES (4, N'lan123', N'lan123', N'KH004', 1)
INSERT [dbo].[khach_hang] ([id], [ten], [email], [ma_kh], [trang_thai]) VALUES (5, N'hoangthie', N'hoangthie', N'KH005', 1)
INSERT [dbo].[khach_hang] ([id], [ten], [email], [ma_kh], [trang_thai]) VALUES (6, N'lannguyen', N'lannguyen', N'KH006', 1)
INSERT [dbo].[khach_hang] ([id], [ten], [email], [ma_kh], [trang_thai]) VALUES (7, N'tranquocbao1', N'bao@gmail', N'KH007', 1)
INSERT [dbo].[khach_hang] ([id], [ten], [email], [ma_kh], [trang_thai]) VALUES (9, N'tranquocbao321', N'bao2004tk@gmaill.xx', N'KH008', 1)
SET IDENTITY_INSERT [dbo].[khach_hang] OFF
GO
SET IDENTITY_INSERT [dbo].[kich_thuoc] ON 

INSERT [dbo].[kich_thuoc] ([id], [ma], [ten], [trang_thai]) VALUES (1, N'KT001', N'128GB', 1)
INSERT [dbo].[kich_thuoc] ([id], [ma], [ten], [trang_thai]) VALUES (2, N'KT002', N'256GB', 1)
INSERT [dbo].[kich_thuoc] ([id], [ma], [ten], [trang_thai]) VALUES (3, N'KT003', N'512GB', 1)
INSERT [dbo].[kich_thuoc] ([id], [ma], [ten], [trang_thai]) VALUES (4, N'KT004', N'214GB', 1)
INSERT [dbo].[kich_thuoc] ([id], [ma], [ten], [trang_thai]) VALUES (5, N'KT005', N'200GB', 1)
INSERT [dbo].[kich_thuoc] ([id], [ma], [ten], [trang_thai]) VALUES (6, N'KT006', N'198GB', 1)
SET IDENTITY_INSERT [dbo].[kich_thuoc] OFF
GO
SET IDENTITY_INSERT [dbo].[mau_sac] ON 

INSERT [dbo].[mau_sac] ([id], [ma], [ten], [trang_thai]) VALUES (1, N'MS001', N'Ðen', 1)
INSERT [dbo].[mau_sac] ([id], [ma], [ten], [trang_thai]) VALUES (2, N'MS002', N'Trắng', 1)
INSERT [dbo].[mau_sac] ([id], [ma], [ten], [trang_thai]) VALUES (3, N'MS003', N'Xanh duong', 1)
INSERT [dbo].[mau_sac] ([id], [ma], [ten], [trang_thai]) VALUES (4, N'MS004', N'Đỏ', 1)
INSERT [dbo].[mau_sac] ([id], [ma], [ten], [trang_thai]) VALUES (5, N'MS005', N'Vàng', 1)
INSERT [dbo].[mau_sac] ([id], [ma], [ten], [trang_thai]) VALUES (6, N'MS006', N'Nâu', 1)
SET IDENTITY_INSERT [dbo].[mau_sac] OFF
GO
SET IDENTITY_INSERT [dbo].[nhan_vien] ON 

INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [email], [trang_thai]) VALUES (1, N'Ph?m Qu?c D', N'NV001', N'@Dgmail.com', 1)
INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [email], [trang_thai]) VALUES (2, N'Hoàng Minh E', N'NV002', N'@Egmail.com', 1)
INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [email], [trang_thai]) VALUES (3, N'Ngô Th? F', N'NV003', N'@Fgmail.com', 1)
INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [email], [trang_thai]) VALUES (4, N'tranquocbao3', N'NV004', N'bao2004tk@gmail', 1)
INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [email], [trang_thai]) VALUES (6, N'tranquocbao4', N'NV005', N'bao2004tk@gmaix', 1)
INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [email], [trang_thai]) VALUES (7, N'tranquocbao5', N'NV006', N'bao222tk@gmail.com', 1)
INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [email], [trang_thai]) VALUES (8, N'tranquocbao5', N'NV007', N'bao222tk@gmail.com', 1)
INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [email], [trang_thai]) VALUES (9, N'lan123567', N'NV008', N'lan@gmail.com', 1)
INSERT [dbo].[nhan_vien] ([id], [ten], [ma_nv], [email], [trang_thai]) VALUES (10, N'tranquocbao123', N'NV009', N'bao2004tk@gmai.vnn', 1)
SET IDENTITY_INSERT [dbo].[nhan_vien] OFF
GO
SET IDENTITY_INSERT [dbo].[san_pham] ON 

INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai], [anh], [mo_ta]) VALUES (1, N'SP001', N'Điện Thoại IPhone 15', 1, N'https://tse4.mm.bing.net/th?id=OIP.St4ZWeAxV2UqXKUjqprrSgHaEJ&pid=Api&P=0&h=180', N'Hiệu năng mạnh mẽ, phù hợp cho chơi game và xử lý tác vụ nặng.')
INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai], [anh], [mo_ta]) VALUES (2, N'SP002', N'Điện Thoại IPhone Utra', 1, N'https://tse1.mm.bing.net/th?id=OIP.KQW_Xv85vwIjaRucMBimNQHaEJ&pid=Api&P=0&h=180', N'Thiết kế mỏng nhẹ, sang trọng, thích hợp cho người dùng yêu thích sự tinh tế.')
INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai], [anh], [mo_ta]) VALUES (3, N'SP003', N'Điện Thoại Galaxy A54', 1, N'https://tse4.mm.bing.net/th?id=OIP.bT6XGnvN0A5OUT7fehsTQQHaEI&pid=Api&P=0&h=180', N'Camera chất lượng cao, hỗ trợ chụp đêm và quay video 4K.')
INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai], [anh], [mo_ta]) VALUES (4, N'SP004', N'Điện Thoại samunng', 1, N'https://tse4.mm.bing.net/th?id=OIP.cQ8PXW02Z-2PD09o3VD4wQHaET&pid=Api&P=0&h=180', N'Pin dung lượng lớn, sạc nhanh, thoải mái sử dụng cả ngày.')
INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai], [anh], [mo_ta]) VALUES (5, N'SP005', N'Điện Thoại Redmi Not13', 0, N'https://tse3.mm.bing.net/th?id=OIP.UQOYK9W7Y3y7mGeQAqW1lwHaD4&pid=Api&P=0&h=180', N'Màn hình AMOLED sắc nét, hiển thị sống động dưới mọi điều kiện ánh sáng.')
INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai], [anh], [mo_ta]) VALUES (6, N'SP006', N'Điện Thoại Utra Galaxy ', 1, N'https://tse4.mm.bing.net/th?id=OIP.wLy5ZTOzQaMy5FSz0Fo3fgHaEj&pid=Api&P=0&h=180', N'Hệ điều hành tối ưu, giao diện mượt mà, dễ sử dụng.')
INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai], [anh], [mo_ta]) VALUES (7, N'SP007', N'Điện Thoại Redmi Not10', 1, N'https://tse4.mm.bing.net/th?id=OIP.eVaWZGTdVg6uCrZvo11P3QHaEK&pid=Api&P=0&h=180', N'Hỗ trợ 5G, kết nối siêu nhanh, sẵn sàng cho tương lai.')
INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai], [anh], [mo_ta]) VALUES (8, N'SP008', N'Điện Thoại Redmi Not12', 0, N'https://tse1.mm.bing.net/th?id=OIP.KtweUbpFZ7tYPvgmIe_J2QHaET&pid=Api&P=0&h=180', N'Công nghệ nhận diện khuôn mặt và vân tay hiện đại.')
INSERT [dbo].[san_pham] ([id], [ma], [ten], [trang_thai], [anh], [mo_ta]) VALUES (9, N'SP009', N'Điện Thoại Realme Pro', 1, N'https://tse4.mm.bing.net/th?id=OIP.3scNt1vlNVEHlNFujeeoGwHaE8&pid=Api&P=0&h=180', N'Tích hợp loa stereo, âm thanh sống động khi xem phim hoặc chơi game.')
SET IDENTITY_INSERT [dbo].[san_pham] OFF
GO
SET IDENTITY_INSERT [dbo].[sp_chi_tiet] ON 

INSERT [dbo].[sp_chi_tiet] ([id], [ma_spct], [id_mau_sac], [id_kich_thuoc], [id_san_pham], [so_luong], [don_gia], [trang_thai]) VALUES (1, N'SPCT001', 1, 1, 1, 50, 25000000, 1)
INSERT [dbo].[sp_chi_tiet] ([id], [ma_spct], [id_mau_sac], [id_kich_thuoc], [id_san_pham], [so_luong], [don_gia], [trang_thai]) VALUES (2, N'SPCT002', 2, 2, 2, 30, 35000000, 1)
INSERT [dbo].[sp_chi_tiet] ([id], [ma_spct], [id_mau_sac], [id_kich_thuoc], [id_san_pham], [so_luong], [don_gia], [trang_thai]) VALUES (3, N'SPCT003', 3, 3, 3, 20, 15000000, 1)
INSERT [dbo].[sp_chi_tiet] ([id], [ma_spct], [id_mau_sac], [id_kich_thuoc], [id_san_pham], [so_luong], [don_gia], [trang_thai]) VALUES (4, N'SPCT004', 4, 4, 4, 45, 30000000, 1)
INSERT [dbo].[sp_chi_tiet] ([id], [ma_spct], [id_mau_sac], [id_kich_thuoc], [id_san_pham], [so_luong], [don_gia], [trang_thai]) VALUES (5, N'SPCT005', 5, 5, 5, 50, 30000000, 1)
INSERT [dbo].[sp_chi_tiet] ([id], [ma_spct], [id_mau_sac], [id_kich_thuoc], [id_san_pham], [so_luong], [don_gia], [trang_thai]) VALUES (6, N'SPCT006', 6, 6, 6, 60, 18000000, 1)
SET IDENTITY_INSERT [dbo].[sp_chi_tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[tai_khoan] ON 

INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (1, N'user_kh1', N'a@gmail.com', N'213245', 2, 1, NULL)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (2, N'user_kh2', N'b@gmail.com', N'213245', 2, 2, NULL)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (3, N'user_nv1', N'@Dgmail.com', N'213245', 1, NULL, 1)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (4, N'user_nv2', N'@Fgmail.com', N'213245', 1, NULL, 2)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (5, N'tranquocbao1', N'bao1234', N'bao@gmail', 2, 7, NULL)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (6, N'tranquocbao2', N'bao12345', N'bao2@gmail', 1, NULL, NULL)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (7, N'tranquocbao3', N'bao123', N'bao2004tk@gmail', 1, NULL, 4)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (8, N'tranquocbao4', N'bao1234', N'bao2004tk@gmaix', 1, NULL, 6)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (10, N'tranquocbao5', N'bao123456', N'bao222tk@gmail.com', 1, NULL, 8)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (11, N'lan123567', N'lan123', N'lan@gmail.com', 1, NULL, 9)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (12, N'tranquocbao123', N'bao123', N'bao2004tk@gmai.vnn', 1, NULL, 10)
INSERT [dbo].[tai_khoan] ([id], [ten_dang_nhap], [mat_khau], [email], [loai_tai_khoan], [id_khach_hang], [id_nhan_vien]) VALUES (13, N'tranquocbao321', N'bao123', N'bao2004tk@gmaill.xx', 2, 9, NULL)
SET IDENTITY_INSERT [dbo].[tai_khoan] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__khach_ha__0FE0B7EF85259304]    Script Date: 4/7/2025 11:11:42 AM ******/
ALTER TABLE [dbo].[khach_hang] ADD UNIQUE NONCLUSTERED 
(
	[ma_kh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__kich_thu__3213C8B6FAA02830]    Script Date: 4/7/2025 11:11:42 AM ******/
ALTER TABLE [dbo].[kich_thuoc] ADD UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__mau_sac__3213C8B64B004D40]    Script Date: 4/7/2025 11:11:42 AM ******/
ALTER TABLE [dbo].[mau_sac] ADD UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__nhan_vie__0FE15F7DF8C6D781]    Script Date: 4/7/2025 11:11:42 AM ******/
ALTER TABLE [dbo].[nhan_vien] ADD UNIQUE NONCLUSTERED 
(
	[ma_nv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__san_pham__3213C8B6B8372018]    Script Date: 4/7/2025 11:11:42 AM ******/
ALTER TABLE [dbo].[san_pham] ADD UNIQUE NONCLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__sp_chi_t__E4FF7C53DF65C8B1]    Script Date: 4/7/2025 11:11:42 AM ******/
ALTER TABLE [dbo].[sp_chi_tiet] ADD UNIQUE NONCLUSTERED 
(
	[ma_spct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tai_khoa__363698B324A3CB60]    Script Date: 4/7/2025 11:11:42 AM ******/
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
ALTER TABLE [dbo].[sp_chi_tiet]  WITH CHECK ADD  CONSTRAINT [CK__sp_chi_ti__don_g__72C60C4A] CHECK  (([don_gia]>=(0)))
GO
ALTER TABLE [dbo].[sp_chi_tiet] CHECK CONSTRAINT [CK__sp_chi_ti__don_g__72C60C4A]
GO
ALTER TABLE [dbo].[sp_chi_tiet]  WITH CHECK ADD CHECK  (([so_luong]>=(0)))
GO
ALTER TABLE [dbo].[tai_khoan]  WITH CHECK ADD CHECK  (([loai_tai_khoan]=(2) OR [loai_tai_khoan]=(1)))
GO
