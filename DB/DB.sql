USE [master]
GO
/****** Object:  Database [ShopOnline]    Script Date: 18/6/2017 1:16:57 AM ******/
CREATE DATABASE [ShopOnline]
 
ALTER DATABASE [ShopOnline] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopOnline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopOnline] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopOnline] SET  MULTI_USER 
GO
ALTER DATABASE [ShopOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopOnline] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShopOnline] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShopOnline]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 18/6/2017 1:16:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [nvarchar](10) NULL,
	[MaTaiKhoan] [nvarchar](128) NULL,
	[TenTaiKhoan] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](2048) NULL,
	[TinhTrang] [int] NULL CONSTRAINT [DF_BinhLuan_TinhTrang]  DEFAULT ((0)),
	[Ngay] [datetime] NULL CONSTRAINT [DF_BinhLuan_Ngay]  DEFAULT (getdate()),
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL CONSTRAINT [DF_OrderDetail_SoLuong]  DEFAULT ((1)),
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[IdGH] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nchar](128) NULL,
	[MaSanPham] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[IdGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[NguoiDat] [nvarchar](128) NULL,
	[NguoiNhan] [nvarchar](50) NULL,
	[SDT] [varchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TongTien] [bigint] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL CONSTRAINT [DF_LoaiSanPham_MaLoaiSanPham]  DEFAULT ((0)),
	[TenLoaiSanPham] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](3) NULL CONSTRAINT [DF_LoaiSanPham_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NOT NULL CONSTRAINT [DF_NhaSanXuat_MaNhaSanXuat]  DEFAULT ((0)),
	[TenNhaSanXuat] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](3) NULL CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[MoreImages] [xml] NULL,
	[Gia] [int] NULL CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)),
	[SoLuongDaBan] [int] NULL CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)),
	[LuotView] [int] NULL CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)),
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)),
	[GhiChu] [nvarchar](50) NULL CONSTRAINT [DF_SanPham_GhiChu]  DEFAULT (N'New'),
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinCaNhan]    Script Date: 18/6/2017 1:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinCaNhan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[SoDienThoai] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThongTinCaNhan] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705040843094_InitialCreate', N'DoAn_ShopOnline.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A7738AD4CAE5EC621BD82D5227E909BAB9609D2DCE5B404BB443AC44A912954D50F497F5E1FCA4F3173A942859E245175BB19D628145440EBF190E87E47038F4FFFFFCDFF8C7E7C0B79E709C90904EECA3D1A16D61EA861EA1CB899DB2C5771FEC1F7FF8C737E30B2F78B67E2DE84E381DB4A4C9C47E642C3A759CC47DC4014A460171E33009176CE4868183BCD0393E3CFCDE393A723040D8806559E34F296524C0D9077C4E43EAE288A5C8BF0E3DEC27A21C6A6619AA7583029C44C8C513FB3C3CA30FB3C730BAA53EA17894B7B0AD339F20906686FD856D214A438618C87AFA39C133168774398BA000F9F72F1106BA05F2132CFA70BA22EFDA9DC363DE1D67D5B08072D38485414FC0A313A11F476EBE9696ED527FA0C10BD0347BE1BDCEB438B1AF3C9C157D0A7D5080CCF074EAC79C78625F972CCE92E806B351D17094435EC600F7358CBF8CAA880756E77607A53D1D8F0EF9BF036B9AFA2C8DF184E294C5C83FB0EED2B94FDC5FF0CB7DF805D3C9C9D17C71F2E1DD7BE49DBCFF373E7957ED29F415E86A0550741787118E4136BC28FB6F5B4EBD9D23372C9B55DAE45A015B82A9615BD7E8F923A64BF60893E6F8836D5D9267EC1525C2B83E530233091AB13885CF9BD4F7D1DCC765BDD3C893FFDFC0F5F8DDFB41B8DEA027B2CC865EE20F13278679F509FB596DF248A27C7AD5C6FB41905DC661C0BFEBF695D73ECCC2347679674223C93D8A9798D5A51B3B2BE3ED64D21C6A78B32E50F7DFB4B9A4AA796B497987D69909058B6DCF8642DED7E5DBD9E2CEA208062F332DAE912683D36F582309E1C092E8562674D4D5842874EDEFBC225E0488F8032C891DB88047B2207180CB5EFE14820122DA5BE63B9424B02278FF41C96383E8F0E700A2CFB09BC660A8338682E8D5B9DD3D8614DFA4C19CDBFFF6780D3634F75FC34BE4B230BEA0BCD5C6781F43F74B98B20BEA9D23863F33B700E49FF724E80E30883867AE8B93E4128C197BD3101CEE02F08AB293E3DE707C91DAB54B32F51109F43E89B49C3E14A42BBF444FA1F82606329D7FD224EAC770496837510B52B3A83945ABA882ACAFA81CAC9BA482D22C6846D02A674E3598C7978DD0F02E5F06BBFF3EDF669BB7692DA8A871062B24FE19531CC332E6DD21C6704C5723D065DDD885B3900D1F67FAEA7B53C6E957E4A743B35A6B36648BC0F0B32183DDFFD9908909C54FC4E35E49878350410CF09DE8F567ACF6392749B6EDE950EBE6B6996F670D304D97B324095D92CD024D084C0430EAF2830F67B54733F2DEC81111E818183AE15B1E9440DF6CD9A86EE939F631C3D6999B8708A7287191A7AA113AE4F510ACD8513582AD222375E1BE557882A5E3983742FC1094C04C2594A9D382509744C86FD592D4B2E316C6FB5EF2906BCE71842967D8AA892ECCF581102E40C9471A94360D8D9D8AC5351BA2C16B358D799B0BBB1A77253EB1159B6CF19D0D7629FCB75731CC668D6DC1389B55D2450063506F17062ACE2A5D0D403EB8EC9B814A272683810A976A2B065AD7D80E0CB4AE923767A0F911B5EBF84BE7D57D33CFFA4179FBDB7AA3BA76609B357DEC9969E6BE27B461D002C7AA799ECF79257E669AC319C829CE678970756513E1E033CCEA219B95BFABF5439D6610D9889A005786D6022AAE0315206542F510AE88E5354A27BC881EB045DCAD1156ACFD126CC50654ECEAB56885D07C792A1B67A7D347D9B3D21A1423EF7458A8E0680C425EBCEA1DEFA014535C56554C175FB88F375CE998188C0605B578AE0625159D195C4B8569B66B49E790F571C936D292E43E19B4547466702D091B6D5792C629E8E1166CA4A2FA163ED0642B221DE56E53D68D9D3C634A148C1D436AD5F81A4511A1CB4AAA9528B166799ED5F4BB59FFE4A320C770DC449383544A5B7262618C9658AA05D620E9258913768E189A231EE7997A8142A6DD5B0DCB7FC1B2BA7DAA8358EC030535FF3B6F61B8C4AFEDB7AA4322702EA19701F76AB250BAC606F4CD2D9EFE867C146BA2F7D3D04F036A76B2CCADF33BBC6AFBBC4445183B92FC8A13A5684C7175EBEAEF3438EAC41870A04A3F66FDC1324398545E78A155A59B3C53334A11A8AAA29882573B1B3C9343D37BC0647FB1FF78B522BCCEFC12492A550051D413A392E7A08055EABAA3D65351AA98F59AEE8852BE491552AAEA216535ABA42664B5622D3C8346F514DD39A879245574B5B63BB226A3A40AADA95E035B23B35CD71D5593745205D65477C75E65A0C80BE91EEF60C653CC465B587ED8DD6C0F3360BCCEAA38CC1658B9D3AF02558A7B62895B7B054C94EFA545194F7C1B59541EE7D8CCA20C18E615A876235E5F801AAFF1CD98B56BEEDA22DF74CD6FC6EB67B7AF6A1DCAA14F2629B997873FE990371607AEF64736CA092C27B1AD428DB0C1BF240C07234E309AFDE64F7D82F9725E105C234A163861796A877D7C78742CBDD1D99FF7324E9278BEE6C06A7A34531FB32D6469D12714BB8F28567326367853B20255C2D157D4C3CF13FBF7ACD56916D9E07F65C507D655F29992DF52A8B88F536CFDA1E6800E9363DF7CE0DAD31711DDB57AF5DF87BCE981751BC38C39B50E255DAE33C2F57712BDA4C99B6E20CDDAAF27DEEE84AA3D49D0A24A1362FD170873C206797D5048F9CF003DFFABAF68DA17061B216A5E110C8537880A4DAF04D6C132BE10F0E093652F04FA7556FF62601DD18CAF0508ED0F26BF15E8BE0C152D77B8D568CE45DB5892323DB7E65A6F9478B9EBBD4949C9DE68A2AB69D73DE03648AD5EC332DE5856F260BBA326E97830EC5D9AF6AB671AEF4B72F12AED63B739C5DB4C236EB822FA5B650FEF41BE9B267F67F739C2DBB635532C77CF132DFB6502EF99B189ACAEDDE7FB6EDBD84C61DE3D37B65E59BD7B666BBBDA3F776C699DB7D09DE7E8AAE946863B195D2CB82D07370F9CC3097F1E8211E41E65FE74529FF4D594B0DAC2704562666ACE3693192B1347E1AB5034B3EDD757B1E1377656D034B335E46836F116EB7F236F41D3CCDB90F9B88BEC616DEEA12EA3BB651D6B4A887A4BD9C2B59EB424A7B7F9AC8D17EC6F29397810A5D4668FE18EF8EDE4020FA29221A74E8FDC5FF5BA17F6CECA2F2FC2FE9D90E50A82FF0E23C56E6DD72C69AEE8222C366F49A282448AD05C63863CD852CF624616C86550CD63CCD9DBEF2C6EC76F3AE6D8BBA2B7298B52065DC6C1DCAF05BCB813D0C43F4B70AECB3CBE8DB29F3119A20B2026E1B1F95BFA534A7CAF94FB521313324070EF424474F958321ED95DBE94483721ED0824D4573A45F738887C004B6EE90C3DE1756403F3FB8897C87D5945004D20ED035157FBF89CA0658C824460ACDAC327D8B0173CFFF017687BF2D780540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a26637a0-2c98-46b4-a493-4d5a142ae721', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'a26637a0-2c98-46b4-a493-4d5a142ae721')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'05c220be-cc7e-4f9e-bcfa-e3883b1a1720', N'ryo@gmail.com', 0, N'AGkjAN2sVtY9ieLDbEMulIYzheRHXlL4ywQcNy7lf7YSD7fNkQTs3FNMsFOPsIyZYw==', N'95dec9dd-d8f4-4290-9090-9a1b2f14a516', NULL, 0, 0, NULL, 1, 0, N'ryo@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'admin@gmail.com', 0, N'AOR+AkCofAq8px+p6v98m1nhWJfZQ79uXyK3eFDkSMLCDGwqRXel6AqKT6/PFdhAbA==', N'4e1b9929-b72a-4398-a361-6dae8f51c884', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd878ac3f-6012-4fa2-8f9c-521462edc28d', N'hebizoro@gmail.com', 0, N'ANdSYVVlN4ZyNjgVrYwrkIEwlUeGEX0a25cT6r9jYDoJMlPs44t/CZoVaW/6CF/v7g==', N'178d21bb-94c1-4154-8c6e-c87cade64763', NULL, 0, 0, NULL, 1, 0, N'hebizoro@gmail.com')
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (1, N'1111', N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'admin@gmail.com', N'Quá đẹp', 0, CAST(N'2017-05-09 18:45:18.340' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (2, N'1111', N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'admin@gmail.com', N'Quá vi diệu', 0, CAST(N'2017-05-09 18:50:40.353' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (3, N'1111', N'd878ac3f-6012-4fa2-8f9c-521462edc28d', N'hebizoro@gmail.com', N'Quá đẹp luôn ad ơi', 0, CAST(N'2017-05-09 19:33:41.017' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (4, N'1111', N'd878ac3f-6012-4fa2-8f9c-521462edc28d', N'hebizoro@gmail.com', N'Top 1 của ngày là đây chứ đâu', 0, CAST(N'2017-05-09 19:39:55.300' AS DateTime))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'1111', 9, N'RyoSama', 1, 9999999, 29999997)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'1111', 10, N'RyoSama', 1, 9999999, 19999998)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'1111', 10010, N'RyoSama', 6, 9999999, 59999994)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP01', 10010, N'Iphone 6s', 4, 18890000, 75560000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP02', 9, N'iPhone 7', 1, 25190000, 75570000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP02', 10, N'iPhone 7', 1, 25190000, 75570000)
INSERT [dbo].[ChiTietHoaDon] ([MaSanPham], [OrderID], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (N'SP02', 10009, N'iPhone 7', 1, 25190000, 125950000)
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai]) VALUES (9, CAST(N'2017-06-04 10:58:57.707' AS DateTime), N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'Thành Thần Thánh', N'01634819905', N'94/54 Hòa Bình', 105569997, 0)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai]) VALUES (10, CAST(N'2017-06-04 13:38:39.777' AS DateTime), N'd878ac3f-6012-4fa2-8f9c-521462edc28d', N'Thành Thần Thánh', N'01634819905', N'94/54 Hòa Bình', 95569998, 0)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai]) VALUES (10009, CAST(N'2017-06-17 16:03:27.410' AS DateTime), N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'Thành Thần Thánh', N'12312312', N'94/54 Hòa Bình', 125950000, 0)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NguoiDat], [NguoiNhan], [SDT], [DiaChi], [TongTien], [TrangThai]) VALUES (10010, CAST(N'2017-06-17 16:11:01.623' AS DateTime), N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'Thành Thần Thánh', N'31231231', N'94/54 Hòa Bình', 135559994, 0)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP01', N'Cao Cấp', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP02', N'Tầm Trung', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP03', N'Sang Chảnh', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX01', N'Iphone', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX02', N'SamSung', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX03', N'Oppo', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'1111', N'LSP01', N'NSX01', N'RyoSama', N'<p><img alt="heart" src="http://localhost:62486/Areas/AssetAdmin/ckeditor/plugins/smiley/images/heart.png" style="height:23px; width:23px" title="heart" /><img alt="heart" src="http://localhost:62486/Areas/AssetAdmin/ckeditor/plugins/smiley/images/heart.png" style="height:23px; width:23px" title="heart" /><img alt="yes" src="http://localhost:62486/Areas/AssetAdmin/ckeditor/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /><img alt="yes" src="http://localhost:62486/Areas/AssetAdmin/ckeditor/plugins/smiley/images/thumbs_up.png" style="height:23px; width:23px" title="yes" /></p>
', N'<Images><Images>/Asset/img/1.png</Images><Images>/Asset/img/SP01.png</Images><Images>/Asset/img/SP01_2.png</Images><Images>/Asset/img/SP02.png</Images><Images>/Asset/img/SP11.png</Images><Images>/Asset/img/SP10.png</Images></Images>', 9999999, 0, 0, N'0         ', N'Da xua iz do bet')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP01', N'LSP02', N'NSX01', N'Iphone 6s', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:LED-backlit IPS LCD, 5.5&quot;, Retina HD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:iOS 9<br />
&nbsp;&nbsp;&nbsp; Camera sau:12 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:5 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Apple A9 2 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:2 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:16 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:1 Nano SIM<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:2750 mAh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP01.png</Images><Images>/Asset/img/SP01_1.png</Images><Images>/Asset/img/SP01_2.png</Images><Images>/Asset/img/SP01_3.png</Images><Images>/Asset/img/SP01_4.png</Images></Images>', 18890000, 0, 10001, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP02', N'LSP01', N'NSX01', N'iPhone 7', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:LED-backlit IPS LCD, 5.5&quot;, Retina HD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:iOS 10<br />
&nbsp;&nbsp;&nbsp; Camera sau:Hai camera 12 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:7 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Apple A10 Fusion 4 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:3 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:128 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:Kh&ocirc;ng<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:1 Nano SIM<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:2900 mAh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP02.png</Images><Images>/Asset/img/SP02_1.png</Images><Images>/Asset/img/SP02_2.png</Images><Images>/Asset/img/SP02_3.png</Images><Images>/Asset/img/SP02_4.png</Images></Images>', 25190000, 0, 5, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP03', N'LSP02', N'NSX01', N'IPHONE 5S', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:LED-backlit IPS LCD, 4&quot;, DVGA<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:iOS 10<br />
&nbsp;&nbsp;&nbsp; Camera sau:8 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:1.2 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Apple A7 2 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:1 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:16 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:Kh&ocirc;ng<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:1 Nano SIM<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:1560 mAh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP03.png</Images><Images>/Asset/img/SP03_1.png</Images><Images>/Asset/img/SP03_2.png</Images><Images>/Asset/img/SP03_3.png</Images><Images>/Asset/img/SP03_4.png</Images></Images>', 6490000, 0, 45555, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP04', N'LSP03', N'NSX01', N'Iphone 4s', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:LED-backlit IPS LCD, 3.5&quot;, DVGA<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:iOS 7.0<br />
&nbsp;&nbsp;&nbsp; Camera sau:5 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:VGA (0.3 MP)<br />
&nbsp;&nbsp;&nbsp; CPU:Apple A4<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:8 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:1 Micro SIM<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:1420 mAh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP04.png</Images><Images>/Asset/img/SP04_1.png</Images><Images>/Asset/img/SP04_2.png</Images><Images>/Asset/img/SP04_3.png</Images><Images>/Asset/img/SP04_4.png</Images></Images>', 3900000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP05', N'LSP01', N'NSX02', N'SG J7 Prime', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:PLS TFT LCD, 5.5&quot;, Full HD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:Android 6.0 (Marshmallow)<br />
&nbsp;&nbsp;&nbsp; Camera sau:13 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:8 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Exynos 7870 8 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:3 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:32 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:MicroSD, hỗ trợ tối đa 256 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:2 Nano SIM, hỗ trợ 4G<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:3300 mAh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP05.png</Images><Images>/Asset/img/SP05_1.png</Images><Images>/Asset/img/SP05_2.png</Images><Images>/Asset/img/SP05_3.png</Images><Images>/Asset/img/SP05_4.png</Images></Images>', 5990000, 0, 5, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP06', N'LSP01', N'NSX02', N'SG C9 Pro', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:Super AMOLED, 6&quot;, Full HD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:Android 6.0 (Marshmallow)<br />
&nbsp;&nbsp;&nbsp; Camera sau:16 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:16 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Snapdragon 653 8 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:6 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:64 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:MicroSD, hỗ trợ tối đa 256 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:2 Nano SIM, hỗ trợ 4G<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:4000 mAh, c&oacute; sạc nhanh</p>
', N'<Images><Images>/Asset/img/SP06.png</Images><Images>/Asset/img/SP06_1.png</Images><Images>/Asset/img/SP06_2.png</Images><Images>/Asset/img/SP06_3.png</Images><Images>/Asset/img/SP06_4.png</Images></Images>', 11490000, 0, 6, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP07', N'LSP02', N'NSX02', N'SG A7 2017', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:Super AMOLED, 5.7&quot;, Full HD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:Android 6.0 (Marshmallow)<br />
&nbsp;&nbsp;&nbsp; Camera sau:16 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:16 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Exynos 7880 8 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:3 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:32 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:MicroSD, hỗ trợ tối đa 256 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:2 Nano SIM, hỗ trợ 4G<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:3600 mAh, c&oacute; sạc nhanh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP07.png</Images><Images>/Asset/img/SP07_1.png</Images><Images>/Asset/img/SP07_2.png</Images><Images>/Asset/img/SP07_3.png</Images><Images>/Asset/img/SP07_4.png</Images></Images>', 10990000, 0, 150011, N'0         ', N'new')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP08', N'LSP03', N'NSX02', N'SG A9 PRO', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:Super AMOLED, 6&quot;, Full HD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:Android 6.0 (Marshmallow)<br />
&nbsp;&nbsp;&nbsp; Camera sau:16 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:8 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Qualcomm Snapdragon 652 8 nh&acirc;n<br />
&nbsp;&nbsp;&nbsp; RAM:4 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:32 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:MicroSD, hỗ trợ tối đa 256 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:2 Nano SIM<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:5000 mAh, c&oacute; sạc nhanh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP08.png</Images><Images>/Asset/img/SP08_1.png</Images><Images>/Asset/img/SP08_2.png</Images><Images>/Asset/img/SP08_3.png</Images><Images>/Asset/img/SP08_4.png</Images></Images>', 10990000, 0, 5, N'0         ', N'Đang khuyến mãi')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP10', N'LSP02', N'NSX03', N' OP F3 PLUS', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:IPS LCD, 6&quot;, Full HD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:Android 6.0 (Marshmallow)<br />
&nbsp;&nbsp;&nbsp; Camera sau:16 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:16 MP v&agrave; 8 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Snapdragon 653 8 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:4 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:64 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:MicroSD, hỗ trợ tối đa 256 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:2 Nano SIM, hỗ trợ 4G<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:4000 mAh, c&oacute; sạc nhanh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP10.png</Images><Images>/Asset/img/SP10_1.png</Images><Images>/Asset/img/SP10_2.png</Images><Images>/Asset/img/SP10_3.png</Images><Images>/Asset/img/SP10_4.png</Images></Images>', 19999999, 0, 6, N'0         ', N'Đang khuyến mãi')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP11', N'LSP01', N'NSX03', N'OP F1s [17]', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:IPS LCD, 5.5&quot;, HD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:Android 5.1 (Lollipop)<br />
&nbsp;&nbsp;&nbsp; Camera sau:13 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:16 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Mediatek MT6750 8 nh&acirc;n<br />
&nbsp;&nbsp;&nbsp; RAM:4 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:64 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:MicroSD, hỗ trợ tối đa 128 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:2 Nano SIM, hỗ trợ 4G<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:3075 mAh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP11.png</Images><Images>/Asset/img/SP11_1.png</Images><Images>/Asset/img/SP11_2.png</Images><Images>/Asset/img/SP11_3.png</Images><Images>/Asset/img/SP11_4.png</Images></Images>', 19999999, 0, 4, N'0         ', N'Đang khuyến mãi')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP12', N'LSP02', N'NSX03', N'OP A37 NEO', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:IPS LCD, 5&quot;, HD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:Android 5.1 (Lollipop)<br />
&nbsp;&nbsp;&nbsp; Camera sau:8 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:5 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Qualcomm Snapdragon 410 4 nh&acirc;n 64-bit<br />
&nbsp;&nbsp;&nbsp; RAM:2 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:16 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:MicroSD, hỗ trợ tối đa 128 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:2 Nano SIM, hỗ trợ 4G<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:2630 mAh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP12.png</Images><Images>/Asset/img/SP12_1.png</Images><Images>/Asset/img/SP12_2.png</Images><Images>/Asset/img/SP12_3.png</Images><Images>/Asset/img/SP12_4.png</Images></Images>', 19999999, 0, 42245, N'0         ', N'3290000')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [MoreImages], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP9', N'LSP01', N'NSX03', N'OP F1s', N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp; M&agrave;n h&igrave;nh:IPS LCD, 5.5&quot;, HD<br />
&nbsp;&nbsp;&nbsp; Hệ điều h&agrave;nh:Android 5.1 (Lollipop)<br />
&nbsp;&nbsp;&nbsp; Camera sau:13 MP<br />
&nbsp;&nbsp;&nbsp; Camera trước:16 MP<br />
&nbsp;&nbsp;&nbsp; CPU:Mediatek MT6750 8 nh&acirc;n<br />
&nbsp;&nbsp;&nbsp; RAM:3 GB<br />
&nbsp;&nbsp;&nbsp; Bộ nhớ trong:32 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ nhớ:MicroSD, hỗ trợ tối đa 128 GB<br />
&nbsp;&nbsp;&nbsp; Thẻ SIM:2 Nano SIM, hỗ trợ 4G<br />
&nbsp;&nbsp;&nbsp; Dung lượng pin:3075 mAh</p>

<p>&nbsp;</p>
', N'<Images><Images>/Asset/img/SP9.png</Images><Images>/Asset/img/SP9_1.png</Images><Images>/Asset/img/SP9_2.png</Images><Images>/Asset/img/SP9_3.png</Images><Images>/Asset/img/SP9_4.png</Images></Images>', 19999999, 0, 0, N'0         ', N'new')
SET IDENTITY_INSERT [dbo].[ThongTinCaNhan] ON 

INSERT [dbo].[ThongTinCaNhan] ([id], [MaTaiKhoan], [TenTaiKhoan], [SoDienThoai], [DiaChi], [GioiTinh], [NgaySinh]) VALUES (1, N'92a956b3-1679-47e0-8508-13099dd9c6f0', N'Soái Ặc Min', 1634819905, N'nhà hàng xóm', N'nam', N'1996-04-17')
INSERT [dbo].[ThongTinCaNhan] ([id], [MaTaiKhoan], [TenTaiKhoan], [SoDienThoai], [DiaChi], [GioiTinh], [NgaySinh]) VALUES (2, N'05c220be-cc7e-4f9e-bcfa-e3883b1a1720', N'RyoSama', 1123123123, N'1231312123', N'nữ', N'1998-03-12')
SET IDENTITY_INSERT [dbo].[ThongTinCaNhan] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 18/6/2017 1:16:58 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 18/6/2017 1:16:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 18/6/2017 1:16:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 18/6/2017 1:16:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 18/6/2017 1:16:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 18/6/2017 1:16:58 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [DF_GioHang_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [DF_GioHang_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [DF_GioHang_TongTien]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[HoaDon] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_OrderDetail_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers] FOREIGN KEY([NguoiDat])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_Order_AspNetUsers]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThongTinCaNhan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinCaNhan_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ThongTinCaNhan] CHECK CONSTRAINT [FK_ThongTinCaNhan_AspNetUsers]
GO
USE [master]
GO
ALTER DATABASE [ShopOnline] SET  READ_WRITE 
GO
