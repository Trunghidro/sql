USE [master]
GO
/****** Object:  Database [QuanLyDiemSV]    Script Date: 10/9/2023 2:01:29 AM ******/
CREATE DATABASE [QuanLyDiemSV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyDiemSV', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL16.DTRHIDRO\MSSQL\DATA\QuanLyDiemSV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyDiemSV_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL16.DTRHIDRO\MSSQL\DATA\QuanLyDiemSV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyDiemSV] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyDiemSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyDiemSV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyDiemSV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyDiemSV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyDiemSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyDiemSV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyDiemSV] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyDiemSV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyDiemSV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyDiemSV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyDiemSV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyDiemSV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyDiemSV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyDiemSV', N'ON'
GO
ALTER DATABASE [QuanLyDiemSV] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyDiemSV] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyDiemSV]
GO
/****** Object:  Table [dbo].[DMKhoa]    Script Date: 10/9/2023 2:01:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMKhoa](
	[MaKhoa] [char](2) NOT NULL,
	[TenKhoa] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DMMH]    Script Date: 10/9/2023 2:01:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMMH](
	[MaMH] [char](2) NOT NULL,
	[TenMH] [nvarchar](25) NOT NULL,
	[SoTiet] [tinyint] NULL,
 CONSTRAINT [DMMH_MaMH_pk] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DMSV]    Script Date: 10/9/2023 2:01:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMSV](
	[MaSV] [char](3) NOT NULL,
	[HoSV] [nvarchar](30) NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [nchar](7) NULL,
	[NgaySinh] [datetime] NOT NULL,
	[NoiSinh] [nvarchar](20) NULL,
	[MaKhoa] [char](2) NULL,
	[HocBong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 10/9/2023 2:01:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[MaSV] [char](3) NOT NULL,
	[MaMH] [char](2) NOT NULL,
	[LanThi] [tinyint] NOT NULL,
	[Diem] [decimal](4, 2) NULL,
 CONSTRAINT [KetQua_MaSV_MaMH_LanThi_pk] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC,
	[LanThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'AV', N'Anh Văn')
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'MT', N'Mỹ Thuật')
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'NT', N'Nghệ Thuật')
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'TH', N'Tin Học')
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'TR', N'Triết')
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'VH', N'Văn Hóa')
INSERT [dbo].[DMKhoa] ([MaKhoa], [TenKhoa]) VALUES (N'VL', N'Vật Lý')
GO
INSERT [dbo].[DMMH] ([MaMH], [TenMH], [SoTiet]) VALUES (N'01', N'Cơ Sở Dữ Liệu', 45)
INSERT [dbo].[DMMH] ([MaMH], [TenMH], [SoTiet]) VALUES (N'02', N'Trí Tuệ Nhân Tạo', 45)
INSERT [dbo].[DMMH] ([MaMH], [TenMH], [SoTiet]) VALUES (N'03', N'Truyền Tin', 45)
INSERT [dbo].[DMMH] ([MaMH], [TenMH], [SoTiet]) VALUES (N'04', N'Đồ Họa', 60)
INSERT [dbo].[DMMH] ([MaMH], [TenMH], [SoTiet]) VALUES (N'05', N'Văn Phạm', 60)
INSERT [dbo].[DMMH] ([MaMH], [TenMH], [SoTiet]) VALUES (N'06', N'Mỹ Thuật', 60)
INSERT [dbo].[DMMH] ([MaMH], [TenMH], [SoTiet]) VALUES (N'07', N'Văn Hóa', 60)
GO
INSERT [dbo].[DMSV] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'A01', N'Nguyễn Thị', N'Hải', N'Nữ     ', CAST(N'1990-02-23T00:00:00.000' AS DateTime), N'Thái Nguyên', N'TH', 0)
INSERT [dbo].[DMSV] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'A02', N'Trần Văn', N'Chính', N'Nam    ', CAST(N'1992-12-24T00:00:00.000' AS DateTime), N'Bình Định', N'VL', 150000)
INSERT [dbo].[DMSV] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', N'Nữ     ', CAST(N'1990-02-21T00:00:00.000' AS DateTime), N'TP Hồ Chí Minh', N'TH', 170000)
INSERT [dbo].[DMSV] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'A04', N'Trần Anh', N'Tuấn', N'Nam    ', CAST(N'1990-12-20T00:00:00.000' AS DateTime), N'Hà Nội', N'AV', 80000)
INSERT [dbo].[DMSV] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'A05', N'Đào Mạnh', N'Trung', N'Nam    ', CAST(N'2004-09-19T00:00:00.000' AS DateTime), N'Hà Nội', N'TH', 0)
INSERT [dbo].[DMSV] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'B01', N'Trần Thanh', N'Mai', N'Nữ     ', CAST(N'1991-08-12T00:00:00.000' AS DateTime), N'Hải Phòng', N'TR', 0)
INSERT [dbo].[DMSV] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', N'Nữ     ', CAST(N'1991-01-02T00:00:00.000' AS DateTime), N'TP Hồ Chí Minh', N'AV', 0)
INSERT [dbo].[DMSV] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKhoa], [HocBong]) VALUES (N'B03', N'Nguyễn', N'Trang', N'Nữ     ', CAST(N'2004-01-19T00:00:00.000' AS DateTime), N'Hà Nội', N'TH', 9999)
GO
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A01', N'01', 1, CAST(3.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A01', N'01', 2, CAST(6.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A01', N'02', 2, CAST(6.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A01', N'03', 1, CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A02', N'01', 1, CAST(4.50 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A02', N'01', 2, CAST(7.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A02', N'03', 1, CAST(10.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A02', N'05', 1, CAST(9.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A03', N'01', 1, CAST(2.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A03', N'01', 2, CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A03', N'03', 1, CAST(2.50 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A03', N'03', 2, CAST(4.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A04', N'05', 2, CAST(10.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A05', N'05', 1, CAST(9.00 AS Decimal(4, 2)))
INSERT [dbo].[KetQua] ([MaSV], [MaMH], [LanThi], [Diem]) VALUES (N'A05', N'05', 2, CAST(9.00 AS Decimal(4, 2)))
GO
ALTER TABLE [dbo].[DMSV]  WITH CHECK ADD  CONSTRAINT [DMKhoa_MaKhoa_fk] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[DMKhoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[DMSV] CHECK CONSTRAINT [DMKhoa_MaKhoa_fk]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [DMMH_MaMH_fk] FOREIGN KEY([MaMH])
REFERENCES [dbo].[DMMH] ([MaMH])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [DMMH_MaMH_fk]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [KetQua_MaSV_fk] FOREIGN KEY([MaSV])
REFERENCES [dbo].[DMSV] ([MaSV])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [KetQua_MaSV_fk]
GO
USE [master]
GO
ALTER DATABASE [QuanLyDiemSV] SET  READ_WRITE 
GO
