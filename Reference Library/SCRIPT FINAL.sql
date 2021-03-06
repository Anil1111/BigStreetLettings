USE [master]
GO
/****** Object:  Database [Ext_RealEstate]    Script Date: 4/16/2017 10:52:44 AM ******/
CREATE DATABASE [Ext_RealEstate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ext_RealEstate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Ext_RealEstate.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ext_RealEstate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Ext_RealEstate_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Ext_RealEstate] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ext_RealEstate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ext_RealEstate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ext_RealEstate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ext_RealEstate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ext_RealEstate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ext_RealEstate] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET RECOVERY FULL 
GO
ALTER DATABASE [Ext_RealEstate] SET  MULTI_USER 
GO
ALTER DATABASE [Ext_RealEstate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ext_RealEstate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ext_RealEstate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ext_RealEstate] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ext_RealEstate] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ext_RealEstate', N'ON'
GO
ALTER DATABASE [Ext_RealEstate] SET QUERY_STORE = OFF
GO
USE [Ext_RealEstate]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Ext_RealEstate]
GO
/****** Object:  Table [dbo].[tbl_Add_Property]    Script Date: 4/16/2017 10:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Add_Property](
	[Property_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Price] [nchar](10) NULL,
	[PropertyName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Details] [nvarchar](50) NULL,
	[PropertyArea] [nchar](10) NULL,
	[Bedroom] [nchar](10) NULL,
	[Bathroom] [nchar](10) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Add_Property] PRIMARY KEY CLUSTERED 
(
	[Property_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Admin_Login]    Script Date: 4/16/2017 10:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Admin_Login](
	[Name] [nvarchar](50) NOT NULL,
	[EmailId] [nvarchar](50) NULL,
	[MobileNo] [numeric](10, 0) NULL,
	[Password] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[CityId] [bigint] NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Admin_Login] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Agent_Registration]    Script Date: 4/16/2017 10:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Agent_Registration](
	[Agent_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Mobile_Number] [numeric](10, 0) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Agent_Registration] PRIMARY KEY CLUSTERED 
(
	[Agent_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Area]    Script Date: 4/16/2017 10:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Area](
	[AreaId] [bigint] IDENTITY(1,1) NOT NULL,
	[CityId] [bigint] NULL,
	[AreaTitle] [nvarchar](50) NULL,
	[PinCode] [numeric](6, 0) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Area] PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_City1]    Script Date: 4/16/2017 10:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_City1](
	[CityId] [bigint] IDENTITY(1,1) NOT NULL,
	[StateId] [bigint] NULL,
	[CountryId] [bigint] NULL,
	[CityName] [nvarchar](50) NULL,
	[Flag] [nchar](1) NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_City1] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Client_Registration]    Script Date: 4/16/2017 10:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Client_Registration](
	[Client_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Mobile_Number] [numeric](10, 0) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Client_Registration] PRIMARY KEY CLUSTERED 
(
	[Client_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Company_Profile]    Script Date: 4/16/2017 10:52:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Company_Profile](
	[CompanyId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[CompanyLogo] [nvarchar](max) NULL,
	[AddressLine1] [nvarchar](50) NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[EmailId] [nvarchar](50) NULL,
	[MobileNumber] [numeric](10, 0) NULL,
	[PhoneNumber] [numeric](10, 0) NULL,
	[Website] [nvarchar](max) NULL,
	[MapLink] [nvarchar](max) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Company_Profile] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Contact]    Script Date: 4/16/2017 10:52:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Contact](
	[Contact_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone_Number] [numeric](10, 0) NULL,
	[Mobile_Number] [numeric](10, 0) NULL,
	[Fax] [numeric](10, 0) NULL,
	[Email] [nvarchar](50) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Contact] PRIMARY KEY CLUSTERED 
(
	[Contact_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Country]    Script Date: 4/16/2017 10:52:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Country](
	[CountryId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
	[Flag] [nchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Prop_Detail]    Script Date: 4/16/2017 10:52:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Prop_Detail](
	[Prop_Detail_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Rate_sqft] [numeric](18, 0) NULL,
	[Total_sqft] [numeric](18, 0) NULL,
	[Total_Rate] [numeric](18, 0) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_Prop_Detail] PRIMARY KEY CLUSTERED 
(
	[Prop_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Prop_Mst]    Script Date: 4/16/2017 10:52:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Prop_Mst](
	[Prop_Mst_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PropertyId] [bigint] NULL,
	[AddressLine1] [nvarchar](50) NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[Area] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Prop_Mst] PRIMARY KEY CLUSTERED 
(
	[Prop_Mst_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Prop_Specification]    Script Date: 4/16/2017 10:52:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Prop_Specification](
	[Prop_Spac_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Prop_Mst_Id] [bigint] NULL,
	[Specification] [nvarchar](50) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Prop_Detail] PRIMARY KEY CLUSTERED 
(
	[Prop_Spac_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Property_Type]    Script Date: 4/16/2017 10:52:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Property_Type](
	[PropertyId] [bigint] IDENTITY(1,1) NOT NULL,
	[PropertyTitle] [nvarchar](50) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Property_Type] PRIMARY KEY CLUSTERED 
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Rent_Type]    Script Date: 4/16/2017 10:52:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Rent_Type](
	[RentId] [bigint] IDENTITY(1,1) NOT NULL,
	[RentTitle] [nvarchar](50) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Rent_Type] PRIMARY KEY CLUSTERED 
(
	[RentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Slider]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Slider](
	[SliderId] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[SliderImage] [nvarchar](max) NULL,
	[Description] [nvarchar](50) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Slider] PRIMARY KEY CLUSTERED 
(
	[SliderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_State]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_State](
	[StateId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryId] [bigint] NULL,
	[StateName] [nvarchar](50) NULL,
	[Flag] [nchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Testimonial]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Testimonial](
	[TestimonialId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Image] [nvarchar](max) NULL,
	[Comment] [nvarchar](50) NULL,
	[Flag] [nchar](1) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateUser] [bigint] NULL,
	[UpdateUser] [bigint] NULL,
 CONSTRAINT [PK_tbl_Testimonial] PRIMARY KEY CLUSTERED 
(
	[TestimonialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[SP_Add_Property]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Add_Property] 

@Image nvarchar(MAX) =null,
@Price nchar(10)	=null,
@PropertyName nvarchar(50)	=null,
@Address nvarchar(50)	=null,
@Details nvarchar(50)	=null,
@PropertyArea nchar(10)	=null,
@Bedroom char(10) =null,
@Bathroom char(10) =null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@UpdateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null
AS
BEGIN
	if (@mode='insert')
	BEGIN
	if (SELECT COUNT(*) FROM tbl_Add_Property WHERE PropertyName= @PropertyName) < 1
		insert into tbl_Add_Property(Image, Price, PropertyName, Address,Details,PropertyArea, Bedroom, Bathroom, Flag, CreateDate, CreateUser) values (@Image,@Price,@PropertyName,@Address,@Details,@PropertyArea,@Bedroom,@Bathroom, @Flag, @CreateDate, @CreateUser)
	END

	If (@mode = 'selectAll')
		BEGIN
	select * from tbl_Add_Property
		END	
	--	if(@mode='SelectCityByStateId')
	--BEGIN
	--	select * from tbl_City1 where StateId=@StateId
	--END
END


GO
/****** Object:  StoredProcedure [dbo].[SP_Admin_Login]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Admin_Login]
	@Name nvarchar(50)=null,
	@EmailId nvarchar(50)=null,
	@MobileNo nvarchar(50)=null,
	@Password nvarchar(50)=null,
@Address nvarchar(50)=null,
@CityId bigint=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateDate	datetime	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null

AS
BEGIN
if (@mode='insert')
	BEGIN
		insert into tbl_Admin_Login(Name,EmailId,MobileNo,Password,Address,CityId,Flag, CreateDate, CreateUser) values (@Name,@EmailId,@MobileNo,@Password,@Address,@CityId,@Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_Admin_Login set EmailId=@EmailId,MobileNo=@MobileNo,Password=@Password, Address=@Address,CityId=@CityId,UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Name=@Name
	END
	if( @mode='delete')
	BEGIN
		update tbl_Admin_Login set MobileNo=@MobileNo,Password=@Password,Address=@Address,CityId=@CityId, Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Name=@Name 
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Admin_Login where Name=@Name
	END
	
	If (@Mode = 'selectAll')
		BEGIN
			Select EmailId,Password From 
			tbl_Admin_Login where EmailId=@EmailId and Password=@Password 
		END	
		if(@mode='Login')
	Begin
		select * from tbl_Admin_Login where EmailId=@EmailId and Password=@Password
	End
		if(@mode='Compare')
	Begin
		select Password from tbl_Admin_Login 
		END

		if(@mode='ChangePassword')
	Begin
	update tbl_Admin_Login set Password=@Password, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser 
	End 
		--if(@mode='selectByCatId')
	--BEGIN
	--	select * from tbl_subcategory where Category_id=@Category_id
	--END
END


GO
/****** Object:  StoredProcedure [dbo].[SP_Agent_Registration]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Agent_Registration]
@Agent_Id bigint=null,
	@Name nvarchar(50)=null,
	@Email nvarchar(50)=null,
	@Password nvarchar(50)=null,
	@Mobile_Number nvarchar(50)=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateDate	datetime	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null

AS
BEGIN

if (@mode='insert')
	if (SELECT COUNT(*) FROM tbl_Agent_Registration WHERE Email= @Email) < 1

	BEGIN
		insert into tbl_Agent_Registration(Name,Email,Password,Mobile_Number,Flag, CreateDate, CreateUser) values (@Name,@Email,@Password,@Mobile_Number,@Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_Agent_Registration set Name=@Name, Email=@Email,Password=@Password,Mobile_Number=@Mobile_Number,UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Agent_Id=@Agent_Id
	END
	if( @mode='delete')
	BEGIN
		update tbl_Agent_Registration set Name=@Name,Email=@Email,Password=@Password,Mobile_Number=@Mobile_Number, Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Agent_Id=@Agent_Id 
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Agent_Registration where Agent_Id=@Agent_Id
	END
	if(@mode='Login')
	Begin
		select * from tbl_Agent_Registration where Email=@Email and Password=@Password
	End
		--if(@mode='selectByCatId')
	--BEGIN
	--	select * from tbl_subcategory where Category_id=@Category_id
	--END



END

GO
/****** Object:  StoredProcedure [dbo].[SP_Area]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Area]	
@AreaId bigint=null,
@CityId bigint=null,
	@AreaTitle nvarchar(50)=null,
	@PinCode numeric(6,0)=null,
	@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateDate	datetime	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null
AS
BEGIN

if (@mode='insert')
	BEGIN
	if (SELECT COUNT(*) FROM tbl_Area WHERE AreaTitle= @AreaTitle) < 1
		insert into tbl_Area(CityId,AreaTitle,PinCode,Flag, CreateDate, CreateUser) values (@CityId,@AreaTitle,@PinCode,@Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_Area set CityId=@CityId,AreaTitle=@AreaTitle,PinCode=@PinCode,UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where AreaId=@AreaId
	END
	if( @mode='delete')
	BEGIN
		update tbl_Area set  Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where AreaId=@AreaId 
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Area where AreaId=@AreaId
	END
	If (@mode = 'selectAll')
		BEGIN
			Select AreaId,AreaTitle,CityName,StateName,CountryName,PinCode from
			tbl_Area as ar
			INNER JOIN tbl_City1 as ct
			on ct.CityId=ar.CityId
			INNER JOIN tbl_State as st
			on ct.StateId=st.StateId
			INNER JOIN tbl_Country as co
			on st.CountryId=co.CountryId where ar.Flag='A';

			Select AreaId,AreaTitle,CityName,StateName,CountryName,PinCode from
			tbl_Area as ar
			INNER JOIN tbl_City1 as ct
			on ct.CityId=ar.CityId
			INNER JOIN tbl_State as st
			on ct.StateId=st.StateId
			INNER JOIN tbl_Country as co
			on st.CountryId=co.CountryId where ar.Flag='D';
		END	
		if(@mode='SelectAreaByCityId')
	BEGIN
		select * from tbl_Area where CityId=@CityId
	END
		--if(@mode='selectByCatId')
	--BEGIN
	--	select * from tbl_subcategory where Category_id=@Category_id
	--END
END


GO
/****** Object:  StoredProcedure [dbo].[SP_City]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_City] 
@CountryId bigint =null,
@StateId	bigint	=null,
@CityId	bigint =null,
@CityName	nvarchar(50)	=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@UpdateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null
	AS
BEGIN
	if (@mode='insert')
	BEGIN
	if (SELECT COUNT(*) FROM tbl_City1 WHERE CityName= @CityName) < 1
		insert into tbl_City1(CountryId,StateId, CityName, Flag, CreateDate, CreateUser) values (@CountryId,@StateId, @CityName, @Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_City1 set CountryId=@CountryId,StateId=@StateId, CityName=@CityName, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where CityId=@CityId
	END
	if( @mode='delete')
	BEGIN
		update tbl_City1 set  Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where CityId=@CityId
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_City1 where CityId=@CityId
	END

	If (@mode = 'selectAll')
		BEGIN
			Select CityId,CityName,StateName,CountryName from
			tbl_City1 as ct
			INNER JOIN tbl_State as st
			on ct.StateId=st.StateId
			INNER JOIN tbl_Country as co
			on st.CountryId=co.CountryId where ct.Flag='A';

				Select CityId,CityName,StateName,CountryName from
			tbl_City1 as ct
			INNER JOIN tbl_State as st
			on ct.StateId=st.StateId
			INNER JOIN tbl_Country as co
			on st.CountryId=co.CountryId where ct.Flag='D';
		END	
		if(@mode='SelectCityByStateId')
	BEGIN
		select * from tbl_City1 where StateId=@StateId
	END
END



GO
/****** Object:  StoredProcedure [dbo].[SP_Client_Registration]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Client_Registration]
@Client_Id bigint=null,
@Name nvarchar(50)=null,
	@Email nvarchar(50)=null,
	@Password nvarchar(50)=null,
@Mobile_Number numeric(10,0)=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateDate	datetime	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null
AS
BEGIN

if (@mode='insert')
	BEGIN
	if (SELECT COUNT(*) FROM tbl_Client_Registration WHERE Email= @Email) < 1

		insert into tbl_Client_Registration(Name,Email,Password,Mobile_Number,Flag, CreateDate, CreateUser) values (@Name,@Email,@Password,@Mobile_Number,@Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_Client_Registration set Name=@Name, Email=@Email,Password=@Password,Mobile_Number=@Mobile_Number,UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Client_Id=@Client_Id
	END
	if( @mode='delete')
	BEGIN
		update tbl_Client_Registration set Name=@Name,Email=@Email,Password=@Password,Mobile_Number=@Mobile_Number, Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Client_Id=@Client_Id 
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Client_Registration where Client_Id=@Client_Id
	END
	if(@mode='Login')
	Begin
		select * from tbl_Client_Registration where Email=@Email and Password=@Password
	End
		--if(@mode='selectByCatId')
	--BEGIN
	--	select * from tbl_subcategory where Category_id=@Category_id
	--END


END



GO
/****** Object:  StoredProcedure [dbo].[SP_Company_Profile]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Company_Profile] 
@CompanyId bigint=null,
@CompanyName nvarchar(50)=null,
@CompanyLogo nvarchar(MAX)=null,
@AddressLine1 nvarchar(50)=null,
@AddressLine2 nvarchar(50)=null,
@City nvarchar(50)=null,
@State nvarchar(50)=null,
@Country nvarchar(50)=null,
@EmailId nvarchar(50)=null,
@MobileNumber numeric(10,0)=null,
@PhoneNumber numeric(10,0)=null,
@Website nvarchar(MAX)=null,
@MapLink nvarchar(MAX)=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateDate	datetime	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null

AS
BEGIN

if (@mode='insert')
	BEGIN
		if (SELECT COUNT(*) FROM tbl_Company_Profile WHERE CompanyName= @CompanyName) < 1
	BEGIN
		insert into tbl_Company_Profile(CompanyName,CompanyLogo,AddressLine1,AddressLine2,City,State,Country,EmailId,MobileNumber,PhoneNumber,Website,MapLink,Flag, CreateDate, CreateUser) values (@CompanyName,@CompanyLogo,@AddressLine1,@AddressLine2,@City,@State,@Country,@EmailId,@MobileNumber,@PhoneNumber,@Website,@MapLink,@Flag, @CreateDate, @CreateUser)
	END
	END
	if (@mode='update')
	BEGIN
		update tbl_Company_Profile set CompanyName=@CompanyName,CompanyLogo=@CompanyLogo,AddressLine1=@AddressLine1,AddressLine2=@AddressLine2,City=@City,State=@State,Country=@Country,EmailId=@EmailId,MobileNumber=@MobileNumber,PhoneNumber=@PhoneNumber,WebSite=@WebSite,MapLink=@MapLink,UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where CompanyId=@CompanyId
	END
	if( @mode='delete')
	BEGIN
		update tbl_Company_Profile set CompanyName=@CompanyName,CompanyLogo=@CompanyLogo,AddressLine1=@AddressLine1,AddressLine2=@AddressLine2,City=@City,State=@State,Country=@Country,EmailId=@EmailId,MobileNumber=@MobileNumber,PhoneNumber=@PhoneNumber,WebSite=@WebSite,MapLink=@MapLink, Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where CompanyId=@CompanyId
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Company_Profile where CompanyId=@CompanyId
	END
		--if(@mode='selectByCatId')
	--BEGIN
	--	select * from tbl_subcategory where Category_id=@Category_id
	--END
END



GO
/****** Object:  StoredProcedure [dbo].[SP_Contact]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Contact]
@Contact_Id bigint=null,
	@Name nvarchar(50)=null,
	@Phone_Number numeric(10,0)=null,
	@Mobile_Number numeric(10,0)=null,
	@Fax numeric(10,0)=null,
@Email nvarchar(50)=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateDate	datetime	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null

AS
BEGIN
if (@mode='insert')

	BEGIN
	if (SELECT COUNT(*) FROM tbl_Contact WHERE Mobile_Number= @Mobile_Number) < 1
		insert into tbl_Contact(Name, Phone_Number, Mobile_Number, Fax, Email,Flag, CreateDate, CreateUser) values (@Name, @Phone_Number, @Mobile_Number, @Fax, @Email, @Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_Contact set Name=@Name,Phone_Number=@Phone_Number,Mobile_Number=@Mobile_Number,Fax=@Fax,Email=@Email,UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Contact_Id=@Contact_Id
	END
	if( @mode='delete')
	BEGIN
		update tbl_Contact set Name=@Name,Phone_Number=@Phone_Number,Mobile_Number=@Mobile_Number,Fax=@Fax,Email=@Email, Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Contact_Id=@Contact_Id 
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Contact where Contact_Id=@Contact_Id
	END

	if(@mode='selectAll')
	BEGIN
		select * from tbl_Contact
	END
		--if(@mode='selectByCatId')
	--BEGIN
	--	select * from tbl_subcategory where Category_id=@Category_id
	--END


END



GO
/****** Object:  StoredProcedure [dbo].[SP_Country]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Country] 

@CountryId	bigint	=null,
@CountryName	nvarchar(50)	=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@UpdateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null
AS
BEGIN
if (@mode='insert')
	BEGIN
	if (SELECT COUNT(*) FROM tbl_Country WHERE CountryName= @CountryName) < 1
		insert into tbl_Country(CountryName, Flag, CreateDate) values (@CountryName, @Flag, @CreateDate)
	END

	if (@mode='update')
	BEGIN
		update tbl_Country set CountryName=@CountryName, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where CountryId=@CountryId
	END
	if( @mode='delete')
	BEGIN
		update tbl_Country set  Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where CountryId=@CountryId
	END

	if(@mode='selectById')
	BEGIN
		select * from tbl_Country where CountryId=@CountryId
	END

	If @Mode = 'SelectAll'
		BEGIN
			Select * From tbl_Country where Flag='A'
			Select * From tbl_Country where Flag='D'
		END	
		--if(@mode='selectByCatId')
	--BEGIN
	--	select * from tbl_subcategory where Category_id=@Category_id
	--END

END


GO
/****** Object:  StoredProcedure [dbo].[SP_Prop_Detail]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Prop_Detail]
@Prop_Detail_Id bigint =null,
@Rate_sqft	numeric(18, 0)	=null,
@Total_sqft	numeric(18, 0)	=null,
@Total_Rate	numeric(18, 0)	=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@UpdateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null
AS
BEGIN
	if (@mode='insert')
	BEGIN
	--if (SELECT COUNT(*) FROM tbl_Prop_Mst WHERE AddressLine1= @AddressLine1) < 1
		insert into tbl_Prop_Detail(Rate_sqft,Total_sqft,Total_Rate, Flag, CreateDate, CreateUser) values (@Rate_sqft,@Total_sqft,@Total_Rate, @Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_Prop_Detail set Rate_sqft=@Rate_sqft,Total_sqft=@Total_sqft,Total_Rate=@Total_Rate, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Prop_Detail_Id=@Prop_Detail_Id
	END
	if( @mode='delete')
	BEGIN
		update tbl_Prop_Detail set  Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Prop_Detail_Id=@Prop_Detail_Id
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Prop_Detail where Prop_Detail_Id=@Prop_Detail_Id
	END

	--If (@mode = 'selectAll')
	--	BEGIN
	--		Select CityId,CityName,StateName,CountryName from
	--		tbl_City1 as ct
	--		INNER JOIN tbl_State as st
	--		on ct.StateId=st.StateId
	--		INNER JOIN tbl_Country as co
	--		on st.CountryId=co.CountryId where ct.Flag='A';

	--			Select CityId,CityName,StateName,CountryName from
	--		tbl_City1 as ct
	--		INNER JOIN tbl_State as st
	--		on ct.StateId=st.StateId
	--		INNER JOIN tbl_Country as co
	--		on st.CountryId=co.CountryId where ct.Flag='D';
	--	END	
	--	if(@mode='SelectCityByStateId')
	--BEGIN
	--	select * from tbl_City1 where StateId=@StateId
	--END

	
END


GO
/****** Object:  StoredProcedure [dbo].[SP_Prop_Mst]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Prop_Mst]
@Prop_Mst_Id bigint =null,
@PropertyId	bigint	=null,
@AddressLine1	nvarchar(50)	=null,
@AddressLine2	nvarchar(50)	=null,
@Area	nvarchar(50)	=null,
@City	nvarchar(50)	=null,
@State	nvarchar(50)	=null,
@Country	nvarchar(50)	=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@UpdateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null
AS
BEGIN
if (@mode='insert')
	BEGIN
	if (SELECT COUNT(*) FROM tbl_Prop_Mst WHERE AddressLine1= @AddressLine1) < 1
		insert into tbl_Prop_Mst(PropertyId, AddressLine1, AddressLine2, Area, City, State, Country, Flag, CreateDate, CreateUser) values (@PropertyId,@AddressLine1,@AddressLine2,@Area,@City,@State,@Country, @Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_Prop_Mst set PropertyId=@PropertyId,AddressLine1=@AddressLine1,AddressLine2=@AddressLine2,Area=@Area,City=@City,State=@State,Country=@Country, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Prop_Mst_Id=@Prop_Mst_Id
	END
	if( @mode='delete')
	BEGIN
		update tbl_Prop_Mst set  Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Prop_Mst_Id=@Prop_Mst_Id
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Prop_Mst where Prop_Mst_Id=@Prop_Mst_Id
	END

	--If (@mode = 'selectAll')
	--	BEGIN
	--		Select CityId,CityName,StateName,CountryName from
	--		tbl_City1 as ct
	--		INNER JOIN tbl_State as st
	--		on ct.StateId=st.StateId
	--		INNER JOIN tbl_Country as co
	--		on st.CountryId=co.CountryId where ct.Flag='A';

	--			Select CityId,CityName,StateName,CountryName from
	--		tbl_City1 as ct
	--		INNER JOIN tbl_State as st
	--		on ct.StateId=st.StateId
	--		INNER JOIN tbl_Country as co
	--		on st.CountryId=co.CountryId where ct.Flag='D';
	--	END	
	--	if(@mode='SelectCityByStateId')
	--BEGIN
	--	select * from tbl_City1 where StateId=@StateId
	--END

END


GO
/****** Object:  StoredProcedure [dbo].[SP_Prop_Specification]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Prop_Specification]
@Prop_Spac_Id bigint =null,
@Prop_Mst_Id	bigint	=null,
@Specification	nvarchar(50)	=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@UpdateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null

AS
BEGIN
	if (@mode='insert')
	BEGIN
	--if (SELECT COUNT(*) FROM tbl_Prop_Mst WHERE AddressLine1= @AddressLine1) < 1
		insert into tbl_Prop_Specification(Prop_Mst_Id,Specification, Flag, CreateDate, CreateUser) values (@Prop_Mst_Id,@Specification, @Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_Prop_Specification set Prop_Mst_Id=@Prop_Mst_Id,Specification=@Specification, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Prop_Spac_Id=@Prop_Spac_Id
	END
	if( @mode='delete')
	BEGIN
		update tbl_Prop_Specification set  Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where Prop_Spac_Id=@Prop_Spac_Id
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Prop_Specification where Prop_Spac_Id=@Prop_Spac_Id
	END

	--If (@mode = 'selectAll')
	--	BEGIN
	--		Select CityId,CityName,StateName,CountryName from
	--		tbl_City1 as ct
	--		INNER JOIN tbl_State as st
	--		on ct.StateId=st.StateId
	--		INNER JOIN tbl_Country as co
	--		on st.CountryId=co.CountryId where ct.Flag='A';

	--			Select CityId,CityName,StateName,CountryName from
	--		tbl_City1 as ct
	--		INNER JOIN tbl_State as st
	--		on ct.StateId=st.StateId
	--		INNER JOIN tbl_Country as co
	--		on st.CountryId=co.CountryId where ct.Flag='D';
	--	END	
	--	if(@mode='SelectCityByStateId')
	--BEGIN
	--	select * from tbl_City1 where StateId=@StateId
	--END

	
END


GO
/****** Object:  StoredProcedure [dbo].[SP_Property_Type]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Property_Type]
	@PropertyId	bigint	=null,
@PropertyTitle	nvarchar(50)	=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@UpdateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null
AS
BEGIN
if (@mode='insert')
	BEGIN
	if (SELECT COUNT(*) FROM tbl_Property_Type WHERE PropertyTitle= @PropertyTitle) < 1
		insert into tbl_Property_Type(PropertyTitle, Flag, CreateDate, CreateUser) values (@PropertyTitle,@Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_Property_Type set PropertyTitle=@PropertyTitle,UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where PropertyId=@PropertyId
	END
	if( @mode='delete')
	BEGIN
		update tbl_Property_Type set  Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where PropertyId=@PropertyId
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Property_Type where PropertyId=@PropertyId
	END
	If @Mode = 'SelectAll'
		BEGIN
			Select * From tbl_Property_Type where Flag='A'
			Select * From tbl_Property_Type where Flag='D'
		END	
		--if(@mode='selectByCatId')
--	BEGIN
--		select * from tbl_subcategory where Category_id=@Category_id
--	END


END


GO
/****** Object:  StoredProcedure [dbo].[SP_Rent_Type]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Rent_Type]
@RentId	bigint	=null,
@RentTitle	nvarchar(50)	=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@UpdateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null
AS
BEGIN
	if (@mode='insert')
	BEGIN
	if (SELECT COUNT(*) FROM tbl_Rent_Type WHERE RentTitle= @RentTitle) < 1
		insert into tbl_Rent_Type(RentTitle, Flag, CreateDate, CreateUser) values (@RentTitle, @Flag, @CreateDate, @CreateUser)
	END
	if (@mode='update')
	BEGIN
		update tbl_Rent_Type set RentTitle=@RentTitle, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where RentId=@RentId
	END
	if( @mode='delete')
	BEGIN
		update tbl_Rent_Type set  Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where RentId=@RentId
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Rent_Type where RentId=RentId
	END
	If @Mode = 'SelectAll'
		BEGIN
			Select * From tbl_Rent_Type where Flag='A'
			Select * From tbl_Rent_Type where Flag='D'
		END	
		--if(@mode='selectByCatId')
	--BEGIN
	--	select * from tbl_subcategory where Category_id=@Category_id
	--END
	
END


GO
/****** Object:  StoredProcedure [dbo].[SP_Slider]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Slider]
@SliderId bigint=null,
@Title nvarchar(50)=null,
@SliderImage nvarchar(max)=null,
@Description nvarchar(max)=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateDate	datetime	=null,
@UpdateUser	bigint	=null,
@mode nvarchar(50) =null

AS
BEGIN
if (@mode='insert')
	BEGIN
	if (SELECT COUNT(*) FROM tbl_Slider WHERE Title= @Title) < 1
	Begin
		insert into tbl_Slider(Title,SliderImage,Description,Flag, CreateDate, CreateUser) values (@Title,@SliderImage,@Description,@Flag, @CreateDate, @CreateUser)
	End
	END
	if (@mode='update')
	BEGIN
		update tbl_Slider set Title=@Title,SliderImage=@SliderImage,Description=@Description,UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where SliderId=@SliderId
	END
	if( @mode='delete')
	BEGIN
		update tbl_Slider set Title=@Title,SliderImage=@SliderImage,Description=@Description, Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where SliderId=@SliderId 
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Slider where SliderId=@SliderId
	END

	if(@mode='selectAll')
	BEGIN
		select SliderImage from tbl_Slider 
	END
		--if(@mode='selectByCatId')
	--BEGIN
	--	select * from tbl_subcategory where Category_id=@Category_id
	--END


END



GO
/****** Object:  StoredProcedure [dbo].[SP_State]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_State]
	@StateId	bigint	=null,
@CountryId	bigint	=null,
@StateName	nvarchar(50)	=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@UpdateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateUser	bigint	=null,
@mode varchar(50) =null
AS
BEGIN
if (@mode='insert')
	BEGIN
		if (SELECT COUNT(*) FROM tbl_State WHERE StateName= @StateName) < 1
		BEGIN
		insert into tbl_State(CountryId,StateName, Flag, CreateDate, CreateUser) values (@CountryId,@StateName, @Flag, @CreateDate, @CreateUser)
		PRINT 'STATE UPDATED'
		END
		ELSE
		PRINT 'DUPLICATE DATA ENTRY NOT ALLOWED'
	END
	if (@mode='update')
	BEGIN
		update tbl_State set CountryId=@CountryId,StateName=@StateName, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where StateId=@StateId
	END
	if( @mode='delete')
	BEGIN
		update tbl_State set  Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where StateId=@StateId
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_State where StateId=@StateId
	END

	If (@Mode = 'selectAll')
		BEGIN
			Select StateId,StateName,CountryName From 
			tbl_State as st
			inner join tbl_Country as ct
			on ct.CountryId=st.CountryId
			where st.Flag='A'

			Select StateId,StateName,CountryName From 
			tbl_State as st
			inner join tbl_Country as ct
			on ct.CountryId=st.CountryId
			where st.Flag='D'
		    
		END	
		if(@mode='SelectStateByCountryId')
	BEGIN
		select * from tbl_State where CountryId=@CountryId
	END
END


GO
/****** Object:  StoredProcedure [dbo].[SP_Testimonial]    Script Date: 4/16/2017 10:52:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Testimonial]
@TestimonialId bigint=null,
@Name nvarchar(50)=null,
@Image nvarchar(max)=null,
@Comment nvarchar(50)=null,
@Flag	nchar(1)	=null,
@CreateDate	datetime	=null,
@CreateUser	bigint	=null,
@UpdateDate	datetime	=null,
@UpdateUser	bigint	=null,
@mode nvarchar(50) =null

AS
BEGIN

	if (@mode='insert')
	BEGIN
		if (SELECT COUNT(*) FROM tbl_Testimonial WHERE Name= @Name) < 1
		BEGIN
		insert into tbl_Testimonial(Name,Image,Comment,Flag, CreateDate, CreateUser) values (@Name,@Image,@Comment,@Flag, @CreateDate, @CreateUser)
		End
	END
	if (@mode='update')
	BEGIN
		update tbl_Testimonial set Name=@Name,Image=@Image,Comment=@Comment,UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where TestimonialId=@TestimonialId
	END
	if( @mode='delete')
	BEGIN
		update tbl_Testimonial set Name=@Name,Image=@Image,Comment=@Comment, Flag=@Flag, UpdateDate=@UpdateDate, UpdateUser=@UpdateUser where TestimonialId=@TestimonialId 
	END
	if(@mode='selectById')
	BEGIN
		select * from tbl_Testimonial where TestimonialId=@TestimonialId
	END
	if(@mode='selectAll')
	BEGIN
		select Image,Name,Comment from tbl_Testimonial
	END
		--if(@mode='selectByCatId')
	--BEGIN
	--	select * from tbl_subcategory where Category_id=@Category_id
	--END
END




GO
USE [master]
GO
ALTER DATABASE [Ext_RealEstate] SET  READ_WRITE 
GO
