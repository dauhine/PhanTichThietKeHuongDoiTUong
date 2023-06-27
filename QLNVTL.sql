USE [QLNVTL]
GO
/****** Object:  Table [dbo].[BangLuong]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangLuong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idnhanvien] [int] NULL,
	[luongcoban] [nvarchar](50) NULL,
	[gio] [nvarchar](50) NULL,
	[ngay] [nvarchar](50) NULL,
	[thang] [nvarchar](50) NULL,
	[nam] [nvarchar](50) NULL,
	[ghichu] [nvarchar](max) NULL,
	[noidung] [nvarchar](50) NULL,
	[trangthai] [nvarchar](50) NULL,
	[tong] [float] NULL,
 CONSTRAINT [PK_BangLuong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idnhanvien] [int] NULL,
	[gio] [nvarchar](50) NULL,
	[ngay] [nvarchar](50) NULL,
	[thang] [nvarchar](50) NULL,
	[nam] [nvarchar](50) NULL,
	[trangthai] [int] NULL,
	[noidung] [nvarchar](max) NULL,
	[ghichu] [nvarchar](max) NULL,
	[dieukien] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChamCong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kihieu] [nvarchar](50) NULL,
	[tenchucvu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeSoLuong]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeSoLuong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[hesoluong] [float] NULL,
 CONSTRAINT [PK_HeSoLuong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoNhanVien]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoNhanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kihieu] [nvarchar](50) NULL,
	[noidung] [nvarchar](max) NULL,
	[ngaytao] [nvarchar](50) NULL,
	[ngaycapnhat] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoSoNhanVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tennhanvien] [nvarchar](50) NULL,
	[cmt] [nvarchar](50) NULL,
	[ngaysinh] [nvarchar](50) NULL,
	[sodienthoai] [nvarchar](50) NULL,
	[hosonhanvien] [int] NULL,
	[noicongtac] [nvarchar](50) NULL,
	[sotaikhoan] [nvarchar](50) NULL,
	[trangthai] [int] NULL,
	[hinhanh] [nvarchar](50) NULL,
	[maphongban] [int] NULL,
	[machucvu] [int] NULL,
	[mahesoluong] [int] NULL,
	[matrocap] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kihieu] [nvarchar](50) NULL,
	[tenphong] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[giatri] [int] NOT NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[matkhau] [nvarchar](50) NULL,
	[maquyen] [int] NULL,
	[trangthai] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhLuong]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhLuong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idnhanvien] [int] NULL,
	[ngaycong] [float] NULL,
	[tong] [float] NULL,
	[thang] [nvarchar](50) NULL,
	[nam] [nvarchar](50) NULL,
	[ngaychot] [nvarchar](50) NULL,
	[ngaylay] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhLuong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TroCap]    Script Date: 04/12/2022 1:56:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TroCap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[giatri] [float] NULL,
 CONSTRAINT [PK_TroCap] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BangLuong] ON 
GO
INSERT [dbo].[BangLuong] ([id], [idnhanvien], [luongcoban], [gio], [ngay], [thang], [nam], [ghichu], [noidung], [trangthai], [tong]) VALUES (1, 1, N'25000', N'120', N'30', N'11', N'2022', N'Không có', N'Bảng Lương', N'1', 41238.5)
GO
INSERT [dbo].[BangLuong] ([id], [idnhanvien], [luongcoban], [gio], [ngay], [thang], [nam], [ghichu], [noidung], [trangthai], [tong]) VALUES (2, 2, N'20000', N'95.5', N'30', N'11', N'2022', N'Đi trễ 1 buổi', N'Bảng lương', N'1', 237625)
GO
SET IDENTITY_INSERT [dbo].[BangLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[ChamCong] ON 
GO
INSERT [dbo].[ChamCong] ([id], [idnhanvien], [gio], [ngay], [thang], [nam], [trangthai], [noidung], [ghichu], [dieukien]) VALUES (1, 1, N'17h', N'03', N'12', N'2022', 1, N'Chấm công', N'Hoàn thành tốt', N'Không có')
GO
INSERT [dbo].[ChamCong] ([id], [idnhanvien], [gio], [ngay], [thang], [nam], [trangthai], [noidung], [ghichu], [dieukien]) VALUES (2, 2, N'17h', N'03', N'12', N'2022', 1, N'Chấm công', N'Hoàn thành tốt', N'Không có')
GO
INSERT [dbo].[ChamCong] ([id], [idnhanvien], [gio], [ngay], [thang], [nam], [trangthai], [noidung], [ghichu], [dieukien]) VALUES (3, 3, N'14h', N'05', N'12', N'2022', 1, N'Chấm công', N'Chưa đạt yêu cầu', N'Đi muộn')
GO
INSERT [dbo].[ChamCong] ([id], [idnhanvien], [gio], [ngay], [thang], [nam], [trangthai], [noidung], [ghichu], [dieukien]) VALUES (4, 4, N'14h', N'05', N'12', N'2022', 1, N'Chấm công', N'Chưa đạt yêu cầu', N'Đi muộn')
GO
INSERT [dbo].[ChamCong] ([id], [idnhanvien], [gio], [ngay], [thang], [nam], [trangthai], [noidung], [ghichu], [dieukien]) VALUES (5, 6, N'15h', N'30', N'10', N'2022', 1, N'Chấm công', N'Hoàn tất ở mức ổn', N'không tập trung lúc làm việc')
GO
SET IDENTITY_INSERT [dbo].[ChamCong] OFF
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 
GO
INSERT [dbo].[ChucVu] ([id], [kihieu], [tenchucvu]) VALUES (1, N'KTC', N'Nhân viên kế toán')
GO
INSERT [dbo].[ChucVu] ([id], [kihieu], [tenchucvu]) VALUES (2, N'KTNS', N'Nhân viên tuyển dụng')
GO
INSERT [dbo].[ChucVu] ([id], [kihieu], [tenchucvu]) VALUES (3, N'KTS', N'Nhân viên sale')
GO
INSERT [dbo].[ChucVu] ([id], [kihieu], [tenchucvu]) VALUES (4, N'KTD', N'Nhân viên kinh doanh')
GO
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[HeSoLuong] ON 
GO
INSERT [dbo].[HeSoLuong] ([id], [ten], [hesoluong]) VALUES (1, N'KD1T', 1.5)
GO
INSERT [dbo].[HeSoLuong] ([id], [ten], [hesoluong]) VALUES (2, N'KD4T', 4.5)
GO
INSERT [dbo].[HeSoLuong] ([id], [ten], [hesoluong]) VALUES (3, N'KD3T', 3.5)
GO
INSERT [dbo].[HeSoLuong] ([id], [ten], [hesoluong]) VALUES (4, N'KD2T', 2.5)
GO
SET IDENTITY_INSERT [dbo].[HeSoLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[HoSoNhanVien] ON 
GO
INSERT [dbo].[HoSoNhanVien] ([id], [kihieu], [noidung], [ngaytao], [ngaycapnhat]) VALUES (1, N'LCH', N'Hồ sơ của Lê Chí Hải', N'12/03/20022', N'12/05/2022')
GO
INSERT [dbo].[HoSoNhanVien] ([id], [kihieu], [noidung], [ngaytao], [ngaycapnhat]) VALUES (3, N'PHA', N'Hồ sơ của Phạm Hồng Anh', N'12/03/20022', N'12/05/2022')
GO
INSERT [dbo].[HoSoNhanVien] ([id], [kihieu], [noidung], [ngaytao], [ngaycapnhat]) VALUES (4, N'NND', N'Hồ sơ của Nguyễn Ngọc Danh', N'12/03/20022', N'12/05/2022')
GO
INSERT [dbo].[HoSoNhanVien] ([id], [kihieu], [noidung], [ngaytao], [ngaycapnhat]) VALUES (6, N'NVA', N'Hồ sơ của Nguyen Van A', N'12/03/20022', N'12/05/2022')
GO
INSERT [dbo].[HoSoNhanVien] ([id], [kihieu], [noidung], [ngaytao], [ngaycapnhat]) VALUES (7, N'DHP', N'Hồ sơ của Đỗ Hoàng Phúc', N'11/28/2022', N'12/01/2022')
GO
INSERT [dbo].[HoSoNhanVien] ([id], [kihieu], [noidung], [ngaytao], [ngaycapnhat]) VALUES (8, N'HTKM', N'Hồ sơ của Huỳnh Thị Kiều My', N'11/29/2022', N'12/4/2022')
GO
INSERT [dbo].[HoSoNhanVien] ([id], [kihieu], [noidung], [ngaytao], [ngaycapnhat]) VALUES (9, N'TNMT', N'Hồ sơ của Trần Nguyễn Minh Thi', N'11/30/2022', N'12/02/2022')
GO
SET IDENTITY_INSERT [dbo].[HoSoNhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 
GO
INSERT [dbo].[NhanVien] ([id], [tennhanvien], [cmt], [ngaysinh], [sodienthoai], [hosonhanvien], [noicongtac], [sotaikhoan], [trangthai], [hinhanh], [maphongban], [machucvu], [mahesoluong], [matrocap]) VALUES (1, N'Lê Chí Hải', N'1234', N'07/16/2001', N'0123456789', 1, N'HCMUE', N'123456789', 1, N'Không có', 1, 1, 1, 1)
GO
INSERT [dbo].[NhanVien] ([id], [tennhanvien], [cmt], [ngaysinh], [sodienthoai], [hosonhanvien], [noicongtac], [sotaikhoan], [trangthai], [hinhanh], [maphongban], [machucvu], [mahesoluong], [matrocap]) VALUES (2, N'Nguyễn Ngọc Danh', N'1234', N'07/16/2001', N'0123456789', 4, N'HCMUE', N'123456789', 1, N'Không có', 4, 4, 1, 1)
GO
INSERT [dbo].[NhanVien] ([id], [tennhanvien], [cmt], [ngaysinh], [sodienthoai], [hosonhanvien], [noicongtac], [sotaikhoan], [trangthai], [hinhanh], [maphongban], [machucvu], [mahesoluong], [matrocap]) VALUES (3, N'Phạm Hồng Anh', N'3132', N'01/01/2001', N'987654321', 3, N'HCMUE', N'123456789', 1, N'Không có', 2, 2, 2, 1)
GO
INSERT [dbo].[NhanVien] ([id], [tennhanvien], [cmt], [ngaysinh], [sodienthoai], [hosonhanvien], [noicongtac], [sotaikhoan], [trangthai], [hinhanh], [maphongban], [machucvu], [mahesoluong], [matrocap]) VALUES (4, N'Nguyen Van A', N'312409', N'10/10/2000', N'012323', 6, N'HCMUP', N'1234', 0, N'Khong co', 3, 3, 3, 3)
GO
INSERT [dbo].[NhanVien] ([id], [tennhanvien], [cmt], [ngaysinh], [sodienthoai], [hosonhanvien], [noicongtac], [sotaikhoan], [trangthai], [hinhanh], [maphongban], [machucvu], [mahesoluong], [matrocap]) VALUES (5, N'Đỗ Hoàng Phúc', N'3124567', N'05/12/1999', N'123984202', 7, N'HCMUT', N'12', 1, N'Không có', 4, 4, 3, 1)
GO
INSERT [dbo].[NhanVien] ([id], [tennhanvien], [cmt], [ngaysinh], [sodienthoai], [hosonhanvien], [noicongtac], [sotaikhoan], [trangthai], [hinhanh], [maphongban], [machucvu], [mahesoluong], [matrocap]) VALUES (6, N'Huỳnh Thị Kiều My', N'31245678', N'05/08/2001', N'113232121', 8, N'HUIF', N'1245435', 1, N'Không có', 2, 2, 4, 2)
GO
INSERT [dbo].[NhanVien] ([id], [tennhanvien], [cmt], [ngaysinh], [sodienthoai], [hosonhanvien], [noicongtac], [sotaikhoan], [trangthai], [hinhanh], [maphongban], [machucvu], [mahesoluong], [matrocap]) VALUES (7, N'Trần Nguyễn Minh Thi', N'312456789', N'05/10/2001', N'113232', 9, N'HUIFT', N'12454356', 1, N'Không có', 3, 3, 2, 2)
GO
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[PhongBan] ON 
GO
INSERT [dbo].[PhongBan] ([id], [kihieu], [tenphong]) VALUES (1, N'KT', N'Kế toán')
GO
INSERT [dbo].[PhongBan] ([id], [kihieu], [tenphong]) VALUES (2, N'PNS', N'Phòng nhân sự')
GO
INSERT [dbo].[PhongBan] ([id], [kihieu], [tenphong]) VALUES (3, N'PS', N'Phòng sale')
GO
INSERT [dbo].[PhongBan] ([id], [kihieu], [tenphong]) VALUES (4, N'KD', N'Kinh Doanh')
GO
SET IDENTITY_INSERT [dbo].[PhongBan] OFF
GO
SET IDENTITY_INSERT [dbo].[TinhLuong] ON 
GO
INSERT [dbo].[TinhLuong] ([id], [idnhanvien], [ngaycong], [tong], [thang], [nam], [ngaychot], [ngaylay]) VALUES (1, 1, 2, 41238.5, N'11', N'2022', N'21', N'22/11/2022')
GO
INSERT [dbo].[TinhLuong] ([id], [idnhanvien], [ngaycong], [tong], [thang], [nam], [ngaychot], [ngaylay]) VALUES (2, 2, 1, 237625, N'11', N'2022', N'21', N'22/11/2022')
GO
INSERT [dbo].[TinhLuong] ([id], [idnhanvien], [ngaycong], [tong], [thang], [nam], [ngaychot], [ngaylay]) VALUES (3, 5, 3, 532432.4, N'11', N'2022', N'21', N'22/11/2022')
GO
INSERT [dbo].[TinhLuong] ([id], [idnhanvien], [ngaycong], [tong], [thang], [nam], [ngaychot], [ngaylay]) VALUES (4, 5, 3, 532432.4, N'11', N'2022', N'21', N'22/11/2022')
GO
INSERT [dbo].[TinhLuong] ([id], [idnhanvien], [ngaycong], [tong], [thang], [nam], [ngaychot], [ngaylay]) VALUES (5, 6, 2.5, 32231.5, N'11', N'2022', N'21', N'22/11/2022')
GO
SET IDENTITY_INSERT [dbo].[TinhLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[TroCap] ON 
GO
INSERT [dbo].[TroCap] ([id], [ten], [giatri]) VALUES (1, N'Trợ cấp thưởng', 12000)
GO
INSERT [dbo].[TroCap] ([id], [ten], [giatri]) VALUES (2, N'Trợ cấp phúc lợi', 12500)
GO
INSERT [dbo].[TroCap] ([id], [ten], [giatri]) VALUES (3, N'Trợ cấp sale', 8000)
GO
INSERT [dbo].[TroCap] ([id], [ten], [giatri]) VALUES (4, N'Trợ cấp tiếp thị', 15000)
GO
SET IDENTITY_INSERT [dbo].[TroCap] OFF
GO
ALTER TABLE [dbo].[BangLuong]  WITH CHECK ADD  CONSTRAINT [FK_BangLuong_NhanVien] FOREIGN KEY([idnhanvien])
REFERENCES [dbo].[NhanVien] ([id])
GO
ALTER TABLE [dbo].[BangLuong] CHECK CONSTRAINT [FK_BangLuong_NhanVien]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChamCong_NhanVien] FOREIGN KEY([idnhanvien])
REFERENCES [dbo].[NhanVien] ([id])
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [FK_ChamCong_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([machucvu])
REFERENCES [dbo].[ChucVu] ([id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_HeSoLuong] FOREIGN KEY([mahesoluong])
REFERENCES [dbo].[HeSoLuong] ([id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_HeSoLuong]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_HoSoNhanVien] FOREIGN KEY([hosonhanvien])
REFERENCES [dbo].[HoSoNhanVien] ([id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_HoSoNhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhongBan] FOREIGN KEY([maphongban])
REFERENCES [dbo].[PhongBan] ([id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_PhongBan]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TroCap] FOREIGN KEY([matrocap])
REFERENCES [dbo].[TroCap] ([id])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TroCap]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_Quyen] FOREIGN KEY([maquyen])
REFERENCES [dbo].[Quyen] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_Quyen]
GO
ALTER TABLE [dbo].[TinhLuong]  WITH CHECK ADD  CONSTRAINT [FK_TinhLuong_NhanVien] FOREIGN KEY([idnhanvien])
REFERENCES [dbo].[NhanVien] ([id])
GO
ALTER TABLE [dbo].[TinhLuong] CHECK CONSTRAINT [FK_TinhLuong_NhanVien]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'di dung gio ve dung gio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChamCong', @level2type=N'COLUMN',@level2name=N'dieukien'
GO
