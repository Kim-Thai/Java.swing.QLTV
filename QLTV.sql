USE [master]
GO
/****** Object:  Database [LibrariApp]    Script Date: 6/12/2020 6:04:56 PM ******/
CREATE DATABASE [LibrariApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibrariApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LibrariApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LibrariApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LibrariApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LibrariApp] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibrariApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibrariApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibrariApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibrariApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibrariApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibrariApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibrariApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibrariApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibrariApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibrariApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibrariApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibrariApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibrariApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibrariApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibrariApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibrariApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LibrariApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibrariApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibrariApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibrariApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibrariApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibrariApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibrariApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibrariApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LibrariApp] SET  MULTI_USER 
GO
ALTER DATABASE [LibrariApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibrariApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibrariApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibrariApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LibrariApp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LibrariApp] SET QUERY_STORE = OFF
GO
USE [LibrariApp]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/12/2020 6:04:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaAd] [nchar](10) NOT NULL,
	[TenAd] [nvarchar](max) NULL,
	[MatKhauAd] [nchar](10) NULL,
	[NgaySinhAd] [nvarchar](50) NULL,
	[GioiTinhAd] [nvarchar](50) NULL,
	[DiaChiAd] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[MaAd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 6/12/2020 6:04:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDG] [int] NOT NULL,
	[TenDG] [nvarchar](max) NULL,
	[GioiTinhDG] [nvarchar](50) NULL,
	[NgaySinh] [nchar](30) NULL,
	[DiaChiDG] [nvarchar](max) NULL,
	[SoDT] [nchar](10) NULL,
	[NgayTao] [nvarchar](50) NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuonTraSach]    Script Date: 6/12/2020 6:04:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuonTraSach](
	[MaPhieu] [int] NOT NULL,
	[MaDG] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[MaAd] [nchar](10) NOT NULL,
	[NgayMuon] [nvarchar](50) NULL,
	[NgayHenTra] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_MuonTraSach] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC,
	[MaDG] ASC,
	[MaSach] ASC,
	[MaAd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 6/12/2020 6:04:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[MaNXB] [int] NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_NXB] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 6/12/2020 6:04:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] NOT NULL,
	[TenSach] [nvarchar](max) NOT NULL,
	[MaTG] [int] NOT NULL,
	[MaTheLoai] [int] NOT NULL,
	[MaNXB] [int] NOT NULL,
	[NamXB] [int] NOT NULL,
	[NgonNgu] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongSach] [int] NOT NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaTG] ASC,
	[MaTheLoai] ASC,
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 6/12/2020 6:04:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [int] NOT NULL,
	[TenTG] [nvarchar](max) NULL,
	[DiaChiTG] [nvarchar](max) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 6/12/2020 6:04:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [int] NOT NULL,
	[TenTheLoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiSach] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongKeTop]    Script Date: 6/12/2020 6:04:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongKeTop](
	[MaSach] [int] NOT NULL,
	[TenSach] [nvarchar](max) NOT NULL,
	[LuotMuon] [int] NOT NULL,
 CONSTRAINT [PK_ThongKeTop] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([MaAd], [TenAd], [MatKhauAd], [NgaySinhAd], [GioiTinhAd], [DiaChiAd]) VALUES (N'NV20200001', N'Hoàng Kim Thái', N'1234      ', N'18/11/1998', N'Nam', N'Hà Tĩnh')
INSERT [dbo].[Admin] ([MaAd], [TenAd], [MatKhauAd], [NgaySinhAd], [GioiTinhAd], [DiaChiAd]) VALUES (N'NV20200002', N'Nguyễn Minh Văn', N'1         ', N'20/2/1999', N'nam', N'Phú thọ')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [GioiTinhDG], [NgaySinh], [DiaChiDG], [SoDT], [NgayTao]) VALUES (10001, N'Hoàng Kim Thái', N'Nam', N'18/11/1999                    ', N'Hà Tĩnh', N'345726555 ', N'10/10/2019')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [GioiTinhDG], [NgaySinh], [DiaChiDG], [SoDT], [NgayTao]) VALUES (10002, N'Nguyễn Văn Tú', N'Nam', N'18/11/1999                    ', N'Hà Nội', N'014284963 ', N'2/2/2019')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [GioiTinhDG], [NgaySinh], [DiaChiDG], [SoDT], [NgayTao]) VALUES (10003, N'Nguyễn Minh Văn', N'Nam', N'19/12/1999                    ', N'Phú Thọ', N'34572452  ', N'12/12/2019')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [GioiTinhDG], [NgaySinh], [DiaChiDG], [SoDT], [NgayTao]) VALUES (10004, N'Trần Bảo Quốc', N'Nam', N'19/11/1999                    ', N'Nghệ An', N'12452134  ', N'12/2/2019')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [GioiTinhDG], [NgaySinh], [DiaChiDG], [SoDT], [NgayTao]) VALUES (10005, N'Nguyễn Thị Huyền', N'Nam', N'18/12/1999                    ', N'Hà Tĩnh', N'0383780675', N'30/05/2020')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [GioiTinhDG], [NgaySinh], [DiaChiDG], [SoDT], [NgayTao]) VALUES (10006, N'Cao Nam Phong', N'Nam', N'18/02/1997                    ', N'Hà Tĩnh', N'0378265425', N'30/05/2020')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [GioiTinhDG], [NgaySinh], [DiaChiDG], [SoDT], [NgayTao]) VALUES (10007, N'Lê Thị Hạnh', N'Nam', N'18/11/1999                    ', N'Hà Nội', N'0345726542', N'31/05/2020')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [GioiTinhDG], [NgaySinh], [DiaChiDG], [SoDT], [NgayTao]) VALUES (10008, N'Nam ANh', N'Nam', N'1/1/1999                      ', N'Hà Nam', N'034552851 ', N'31/05/2020')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000002, 10002, 3020001, N'NV20200001', N'23/05/2020', N'02/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000003, 10002, 3020003, N'NV20200001', N'24/05/2020', N'13/06/2020', N'Đã Trả')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000005, 10002, 3020004, N'NV20200001', N'24/05/2020', N'03/06/2020', N'Đã Trả')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000006, 10002, 3020004, N'NV20200001', N'24/05/2020', N'13/06/2020', N'Đã Trả')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000007, 10002, 3020004, N'NV20200001', N'24/05/2020', N'13/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000008, 10001, 3020004, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000009, 10001, 3020003, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000010, 10001, 3020001, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000011, 10001, 3020002, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000012, 10003, 3020001, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000013, 10003, 3020003, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000014, 10003, 3020003, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000015, 10003, 3020002, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000016, 10003, 3020003, N'NV20200001', N'25/05/2020', N'14/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000017, 10004, 3020003, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Đã Trả')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000018, 10002, 3020007, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000019, 10003, 3020004, N'NV20200001', N'25/05/2020', N'04/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000020, 10002, 3020001, N'NV20200001', N'26/05/2020', N'05/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000021, 10004, 3020003, N'NV20200001', N'27/05/2020', N'06/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000022, 10002, 3020001, N'NV20200001', N'27/05/2020', N'06/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000023, 10002, 3020003, N'NV20200001', N'29/05/2020', N'08/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000024, 10003, 3020001, N'NV20200001', N'29/05/2020', N'08/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000025, 10004, 3020001, N'NV20200001', N'29/05/2020', N'08/06/2020', N'Chưa')
INSERT [dbo].[MuonTraSach] ([MaPhieu], [MaDG], [MaSach], [MaAd], [NgayMuon], [NgayHenTra], [TinhTrang]) VALUES (1000026, 10002, 3020003, N'NV20200001', N'31/05/2020', N'10/06/2020', N'Chưa')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi]) VALUES (111001, N'Nhà Sách Phương nam', N'Hà Nội')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi]) VALUES (111002, N'Nhà Sách Hữu Nghi', N'Hà Nam')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi]) VALUES (111003, N'Nhà sách nhi đồng', N'Hà Nội')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi]) VALUES (111004, N'Nhà Sách Đường Minh', N'Cao Bằng')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi]) VALUES (111005, N'Nhà Sách Giáo Dục ', N'Lạng Sơn')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi]) VALUES (111006, N'Nhà Sách Pháp Luật', N'Hải Phòng')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi]) VALUES (111007, N'Nhà Sách Minh Văn', N'Hải Dương')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi]) VALUES (111008, N'Nhà Sách Bảo Đại', N'Hà Nam')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi]) VALUES (111009, N'Nhà Sách Bảo Quốc', N'Thái Bình')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi]) VALUES (111010, N'Nhà Sách Kim Hoàng', N'Cao Bằng')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020001, N'Truyện Tiếu Lâm', 202001001, 20200001, 111001, 2014, N'Tiếng Việt', 15000, 113)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020002, N'Truyện Tranh Vui Vẻ', 202001001, 20200001, 111001, 2015, N'Tiếng Việt', 20000, 13)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020003, N'Truyện Hài Việt Nam', 202001001, 20200001, 111001, 2020, N'Tiếng Việt', 17000, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020004, N'Tấu Hài Xuyên Việt', 202001001, 20200001, 111001, 2010, N'Tiếng Anh', 13000, 700)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020007, N'Năm Tháng 4', 202001001, 20200001, 111001, 2000, N'Tiếng Việt', 20000, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020008, N'Hoa Hồng Trên Ngực Trái', 202001010, 20200009, 111007, 2019, N'Tiếng Việt', 200000, 2000)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020009, N'Những Ngọn Nến Trong Mưa', 202001003, 20200004, 111002, 1998, N'Tiếng Việt', 150000, 500)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020010, N'Mắt Biếc', 202001007, 20200004, 111008, 2019, N'Tiếng Việt', 300000, 100)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020011, N'Quỷ Đêm', 202001008, 20200003, 111009, 2000, N'Tiếng Anh', 250000, 50)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020012, N'Anh Thợ Điện Tốt Bụng', 202001005, 20200009, 111004, 2010, N'Tiếng Việt', 150000, 100)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020013, N'Cô Chủ Nhỏ', 202001004, 20200004, 111010, 1990, N'Tiếng Việt', 50000, 200)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020014, N'Nhớ Rừng', 202001009, 20200004, 111005, 1990, N'Tiếng Việt', 100000, 1000)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020015, N'Chiếc Thuyền Ngoài Xa', 202001003, 20200004, 111005, 1989, N'Tiếng Việt', 70000, 1234)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020016, N'Dòng Sông Xưa', 202001006, 20200004, 111005, 1965, N'Tiếng Việt', 90000, 123)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020017, N'Chú Cuội', 202001003, 20200001, 111003, 1970, N'Tiếng Việt', 110000, 125)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020018, N'Luật Biển 1982', 202001008, 20200005, 111006, 1982, N'Tiếng Anh', 150000, 150)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTG], [MaTheLoai], [MaNXB], [NamXB], [NgonNgu], [Gia], [SoLuongSach]) VALUES (3020020, N'Sách Giáo Khoa', 202001001, 20200004, 111002, 2020, N'Tiếng Việt', 100000, 111)
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001001, N'Lê Nam', N'Hà Nội')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001002, N'Bảo Trọng', N'Hà Nam')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001003, N'Bảo Nam', N'12 lê lợi')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001004, N'Lê Na', N'12 Lê La')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001005, N'Hoàng Kim Nam', N'Hải Phòng')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001006, N'Trần Hoài Nam', N'Hải Dương')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001007, N'Võ Ngọc Tân', N'Cao Bằng')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001008, N'Trần Nam Phong', N'Hà Nội')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001009, N'Lê Anh Tuấn', N'Thái Bình')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001010, N'Nguyễn Trần Dần', N'Hà Tĩnh')
INSERT [dbo].[TacGia] ([MaTG], [TenTG], [DiaChiTG]) VALUES (202001011, N'Nam Cao', N'Cao Bằng')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (20200001, N'Thiếu Nhi')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (20200002, N'Toán Học')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (20200003, N'Khoa Học Viễn Tưởng')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (20200004, N'Văn học')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (20200005, N'Lịch Sử')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (20200006, N'Địa Lý')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (20200007, N'Khoa Học Công Nghệ.')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (20200008, N'Ngoại Ngữ')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (20200009, N'Tâm Lý Tinh Cảm')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (20200010, N'Luật Pháp')
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020001, N'Truyện Tiếu Lâm', 7)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020002, N'Truyện Tranh Vui Vẻ', 1)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020003, N'Truyện Hài Việt Nam', 8)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020004, N'Tấu Hài Xuyên Việt', 5)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020005, N'Tấu Hài Là Dễ', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020007, N'Năm Tháng 4', 1)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020008, N'Hoa Hồng Trên Ngực Trái', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020009, N'Những Ngọn Nến Trong Mưa', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020010, N'Mắt Biếc', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020011, N'Quỷ Đêm', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020012, N'Anh Thợ Điện Tốt Bụng', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020013, N'Cô Chủ Nhỏ', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020014, N'Nhớ Rừng', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020015, N'Chiếc Thuyền Ngoài Xa', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020016, N'Dòng Sông Xưa', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020017, N'Chú Cuội', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020018, N'Luật Biển 1982', 0)
INSERT [dbo].[ThongKeTop] ([MaSach], [TenSach], [LuotMuon]) VALUES (3020020, N'Sách Giáo Khoa', 0)
ALTER TABLE [dbo].[MuonTraSach]  WITH CHECK ADD  CONSTRAINT [FK_MuonTraSach_Admin] FOREIGN KEY([MaAd])
REFERENCES [dbo].[Admin] ([MaAd])
GO
ALTER TABLE [dbo].[MuonTraSach] CHECK CONSTRAINT [FK_MuonTraSach_Admin]
GO
ALTER TABLE [dbo].[MuonTraSach]  WITH CHECK ADD  CONSTRAINT [FK_MuonTraSach_DocGia1] FOREIGN KEY([MaDG])
REFERENCES [dbo].[DocGia] ([MaDG])
GO
ALTER TABLE [dbo].[MuonTraSach] CHECK CONSTRAINT [FK_MuonTraSach_DocGia1]
GO
ALTER TABLE [dbo].[MuonTraSach]  WITH CHECK ADD  CONSTRAINT [FK_MuonTraSach_ThongKeTop] FOREIGN KEY([MaSach])
REFERENCES [dbo].[ThongKeTop] ([MaSach])
GO
ALTER TABLE [dbo].[MuonTraSach] CHECK CONSTRAINT [FK_MuonTraSach_ThongKeTop]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_LoaiSach] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_LoaiSach]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NXB1] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NXB] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NXB1]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([MaTG])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ThongKeTop] FOREIGN KEY([MaSach])
REFERENCES [dbo].[ThongKeTop] ([MaSach])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_ThongKeTop]
GO
USE [master]
GO
ALTER DATABASE [LibrariApp] SET  READ_WRITE 
GO
