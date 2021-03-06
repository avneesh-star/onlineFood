USE [master]
GO
/****** Object:  Database [OnlineFood]    Script Date: 22-01-2021 16:56:10 ******/
CREATE DATABASE [OnlineFood]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineFood', FILENAME = N'E:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\OnlineFood.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineFood_log', FILENAME = N'E:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\OnlineFood_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [OnlineFood] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineFood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineFood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineFood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineFood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineFood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineFood] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineFood] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OnlineFood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineFood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineFood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineFood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineFood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineFood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineFood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineFood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineFood] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineFood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineFood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineFood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineFood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineFood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineFood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineFood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineFood] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineFood] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineFood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineFood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineFood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineFood] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineFood] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineFood] SET QUERY_STORE = OFF
GO
USE [OnlineFood]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 22-01-2021 16:56:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[uname] [varchar](50) NULL,
	[user_name] [varchar](50) NULL,
	[user_password] [varchar](50) NULL,
	[user_email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_cart]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cart](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[price_id] [int] NULL,
	[dish_id] [int] NULL,
	[quantity] [int] NULL,
	[added_on] [datetime] NULL,
	[dish_price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_category]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[categgory_name] [varchar](50) NULL,
	[inserted_date] [date] NULL,
	[category_status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_contactUs]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_contactUs](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[mobile] [bigint] NULL,
	[email] [varchar](50) NULL,
	[subject] [varchar](100) NULL,
	[messege] [varchar](2000) NULL,
	[send_on] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_delivery_boy]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_delivery_boy](
	[boy_id] [int] IDENTITY(1,1) NOT NULL,
	[boy_name] [varchar](100) NULL,
	[boy_mobile] [bigint] NULL,
	[boy_password] [varchar](50) NULL,
	[boy_status] [int] NULL,
	[boy_added_by] [int] NULL,
	[boy_added_on] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[boy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_dish]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_dish](
	[dish_id] [int] IDENTITY(1,1) NOT NULL,
	[dish_name] [varchar](50) NULL,
	[category_id] [int] NULL,
	[dish_detail] [varchar](100) NULL,
	[dish_type] [int] NULL,
	[dish_image] [varchar](100) NULL,
	[dish_status] [int] NULL,
	[added_on] [date] NULL,
	[price_status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dish_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_dish_price]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_dish_price](
	[attr_id] [int] IDENTITY(1,1) NOT NULL,
	[dish_id] [int] NULL,
	[attribute] [varchar](30) NULL,
	[price] [int] NULL,
	[attr_status] [int] NULL,
	[added_on] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[attr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_order_detail]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_order_detail](
	[odid] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[dish_price_id] [int] NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[odid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_order_master]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_order_master](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mobile] [bigint] NULL,
	[address] [varchar](250) NULL,
	[pincode] [int] NULL,
	[total_price] [int] NULL,
	[delivery_boy_id] [int] NULL,
	[payment_status] [int] NULL,
	[payment_type] [varchar](50) NULL,
	[payment_id] [varchar](100) NULL,
	[order_status] [int] NULL,
	[cancle_by] [varchar](50) NULL,
	[cancle_at] [datetime] NULL,
	[added_on] [datetime] NULL,
	[delivered_on] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_order_status]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_order_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](50) NULL,
	[user_email] [varchar](50) NULL,
	[user_mobile] [bigint] NULL,
	[user_password] [varchar](100) NULL,
	[user_status] [int] NULL,
	[user_added_on] [datetime] NULL,
	[email_status] [int] NULL,
	[token] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_admin] ON 

INSERT [dbo].[tbl_admin] ([userId], [uname], [user_name], [user_password], [user_email]) VALUES (1, N'Admin', N'Admin', N'admin123', N'admin@gmail.com')
SET IDENTITY_INSERT [dbo].[tbl_admin] OFF
SET IDENTITY_INSERT [dbo].[tbl_cart] ON 

INSERT [dbo].[tbl_cart] ([cart_id], [user_id], [price_id], [dish_id], [quantity], [added_on], [dish_price]) VALUES (3, 1, 20, 17, 2, CAST(N'2021-01-18T17:53:31.387' AS DateTime), 120)
INSERT [dbo].[tbl_cart] ([cart_id], [user_id], [price_id], [dish_id], [quantity], [added_on], [dish_price]) VALUES (4, 1, 29, 21, 2, CAST(N'2021-01-18T17:53:39.417' AS DateTime), 130)
SET IDENTITY_INSERT [dbo].[tbl_cart] OFF
SET IDENTITY_INSERT [dbo].[tbl_category] ON 

INSERT [dbo].[tbl_category] ([category_id], [categgory_name], [inserted_date], [category_status]) VALUES (1, N'South Indian', CAST(N'2020-12-05' AS Date), 1)
INSERT [dbo].[tbl_category] ([category_id], [categgory_name], [inserted_date], [category_status]) VALUES (2, N'Chinese', CAST(N'2020-12-05' AS Date), 1)
INSERT [dbo].[tbl_category] ([category_id], [categgory_name], [inserted_date], [category_status]) VALUES (3, N'Murg', CAST(N'2020-12-08' AS Date), 1)
INSERT [dbo].[tbl_category] ([category_id], [categgory_name], [inserted_date], [category_status]) VALUES (4, N'Snacks', CAST(N'2020-12-08' AS Date), 1)
INSERT [dbo].[tbl_category] ([category_id], [categgory_name], [inserted_date], [category_status]) VALUES (5, N'Desserts', CAST(N'2020-12-08' AS Date), 1)
SET IDENTITY_INSERT [dbo].[tbl_category] OFF
SET IDENTITY_INSERT [dbo].[tbl_contactUs] ON 

INSERT [dbo].[tbl_contactUs] ([cid], [name], [mobile], [email], [subject], [messege], [send_on]) VALUES (1, N'rajendra', 7011320126, N'rajedndra@gmail.com', N'test subject', N'hii this is test messege', CAST(N'2021-01-14T21:37:51.363' AS DateTime))
INSERT [dbo].[tbl_contactUs] ([cid], [name], [mobile], [email], [subject], [messege], [send_on]) VALUES (2, N'avneesh', 7011320126, N'mdasif5697173@gmail.com', N'test messege', N'hii 
this is test messege', CAST(N'2021-01-14T21:38:30.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_contactUs] OFF
SET IDENTITY_INSERT [dbo].[tbl_delivery_boy] ON 

INSERT [dbo].[tbl_delivery_boy] ([boy_id], [boy_name], [boy_mobile], [boy_password], [boy_status], [boy_added_by], [boy_added_on]) VALUES (1, N'avneesh', 7011320126, N'123456', 1, 1, CAST(N'2020-11-18T18:50:33.090' AS DateTime))
INSERT [dbo].[tbl_delivery_boy] ([boy_id], [boy_name], [boy_mobile], [boy_password], [boy_status], [boy_added_by], [boy_added_on]) VALUES (2, N'Pawan kumar', 9935361542, N'123456', 1, 1, CAST(N'2020-11-18T19:13:15.097' AS DateTime))
INSERT [dbo].[tbl_delivery_boy] ([boy_id], [boy_name], [boy_mobile], [boy_password], [boy_status], [boy_added_by], [boy_added_on]) VALUES (3, N'Rakesh', 7754785212, N'123456', 1, 1, CAST(N'2020-11-18T19:16:09.520' AS DateTime))
INSERT [dbo].[tbl_delivery_boy] ([boy_id], [boy_name], [boy_mobile], [boy_password], [boy_status], [boy_added_by], [boy_added_on]) VALUES (4, N'Ajay Kumar', 7845124512, N'123', 1, 1, CAST(N'2020-11-18T19:28:42.210' AS DateTime))
INSERT [dbo].[tbl_delivery_boy] ([boy_id], [boy_name], [boy_mobile], [boy_password], [boy_status], [boy_added_by], [boy_added_on]) VALUES (5, N'Nitin Kumar', 9935993599, N'123456', 0, 1, CAST(N'2020-11-28T13:49:18.910' AS DateTime))
INSERT [dbo].[tbl_delivery_boy] ([boy_id], [boy_name], [boy_mobile], [boy_password], [boy_status], [boy_added_by], [boy_added_on]) VALUES (6, N'Lalit kumar', 9825562478, N'123456', 1, 1, CAST(N'2020-11-30T18:33:31.683' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_delivery_boy] OFF
SET IDENTITY_INSERT [dbo].[tbl_dish] ON 

INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (1, N'Masala Dosa', 1, N'Masala Dosa', 1, N'637440942130201435dosa.jpg', 1, CAST(N'2020-12-20' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (2, N'gulab jamun', 5, N'gulab jamun', 1, N'637440951319330437gulabjamun.jpg', 1, CAST(N'2020-12-20' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (3, N'Butter Chicken', 3, N'Butter Chicken', 2, N'637449181963289858butter_chicken.jpg', 1, CAST(N'2020-12-30' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (5, N'Chowmein', 2, N'It is prepared by stir-frying the boiled Noodles with Soy Sauce, Vinegar, and sometimes even MSG', 1, N'637451355583602438chwmien.jpg', 1, CAST(N'2020-12-30' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (10, N'Samosa', 4, N'Samosa', 1, N'637450456527400653samosa.jpg', 1, CAST(N'2020-12-31' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (11, N'Chicken Manchurian', 2, N'Chicken Manchurian was supposedly created by the chef of China Garden in Mumbai in the year 1975, as', 2, N'637451357078505572chicken-manchurian.jpg', 1, CAST(N'2021-01-01' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (16, N'Chilli Paneer', 2, N'This dish was created as avariation of the ChilliChicken, for the vegetarians. In this dish, cubes o', 1, N'637451365883334626064.-Chilli-Paneer_545x545.jpg', 1, CAST(N'2021-01-01' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (17, N'Hyderbadi Biryani', 1, N'A Hyderbadi specialty, this one''s a must-try! Meat cooked with piquant spices, curd, butter and saff', 1, N'637451369660212439hyderabadi-biryani.jpg', 1, CAST(N'2021-01-01' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (18, N'Tandoori Chicken', 3, N'cooked in tandoor ', 2, N'637451373981936153tandoori.jpg', 1, CAST(N'2021-01-01' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (19, N'Chana masala', 4, N'chana masala is a gujrati snaks', 1, N'6374513772312540853chana masala.jpg', 1, CAST(N'2021-01-01' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (21, N'Kheer', 5, N'Kheer is an Indian desserts food made with milk , rice and dry foods. ', 1, N'637451382007271628Vrat-Kheer-Thumbnail.jpg', 1, CAST(N'2021-01-01' AS Date), 1)
INSERT [dbo].[tbl_dish] ([dish_id], [dish_name], [category_id], [dish_detail], [dish_type], [dish_image], [dish_status], [added_on], [price_status]) VALUES (24, N'Mutton Korma', 3, N'mutton korma', 2, N'637451392082137451images.jpg', 1, CAST(N'2021-01-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[tbl_dish] OFF
SET IDENTITY_INSERT [dbo].[tbl_dish_price] ON 

INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (1, 1, N'full', 90, 1, CAST(N'2020-12-20' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (2, 1, N'half', 50, 1, CAST(N'2020-12-20' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (3, 2, N'per piece', 30, 1, CAST(N'2020-12-20' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (5, 3, N'full', 200, 1, CAST(N'2020-12-30' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (6, 3, N'half', 100, 1, CAST(N'2020-12-30' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (7, 5, N'full', 100, 1, CAST(N'2020-12-30' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (8, 5, N'half', 50, 1, CAST(N'2020-12-30' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (15, 10, N'per piece', 10, 1, CAST(N'2020-12-31' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (16, 11, N'Full', 150, 1, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (17, 11, N'Half', 80, 1, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (19, 16, N'Per Plate', 160, 1, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (20, 17, N'Per Plate', 120, 1, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (21, 18, N'Full', 200, 1, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (22, 18, N'Half', 120, 1, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (23, 19, N'Per Plate', 80, 1, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (26, 24, N'Full', 250, 1, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (27, 24, N'Half', 150, 1, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[tbl_dish_price] ([attr_id], [dish_id], [attribute], [price], [attr_status], [added_on]) VALUES (29, 21, N'Per Plate', 130, 1, CAST(N'2021-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[tbl_dish_price] OFF
SET IDENTITY_INSERT [dbo].[tbl_order_detail] ON 

INSERT [dbo].[tbl_order_detail] ([odid], [order_id], [dish_price_id], [price], [quantity]) VALUES (1, 1, 7, 100, 3)
INSERT [dbo].[tbl_order_detail] ([odid], [order_id], [dish_price_id], [price], [quantity]) VALUES (2, 1, 17, 80, 3)
INSERT [dbo].[tbl_order_detail] ([odid], [order_id], [dish_price_id], [price], [quantity]) VALUES (3, 2, 20, 120, 2)
INSERT [dbo].[tbl_order_detail] ([odid], [order_id], [dish_price_id], [price], [quantity]) VALUES (4, 2, 29, 130, 2)
INSERT [dbo].[tbl_order_detail] ([odid], [order_id], [dish_price_id], [price], [quantity]) VALUES (5, 3, 15, 10, 1)
INSERT [dbo].[tbl_order_detail] ([odid], [order_id], [dish_price_id], [price], [quantity]) VALUES (6, 3, 15, 10, 1)
INSERT [dbo].[tbl_order_detail] ([odid], [order_id], [dish_price_id], [price], [quantity]) VALUES (7, 4, 15, 10, 1)
INSERT [dbo].[tbl_order_detail] ([odid], [order_id], [dish_price_id], [price], [quantity]) VALUES (8, 5, 15, 10, 4)
INSERT [dbo].[tbl_order_detail] ([odid], [order_id], [dish_price_id], [price], [quantity]) VALUES (9, 5, 19, 160, 3)
SET IDENTITY_INSERT [dbo].[tbl_order_detail] OFF
SET IDENTITY_INSERT [dbo].[tbl_order_master] ON 

INSERT [dbo].[tbl_order_master] ([order_id], [user_id], [name], [email], [mobile], [address], [pincode], [total_price], [delivery_boy_id], [payment_status], [payment_type], [payment_id], [order_status], [cancle_by], [cancle_at], [added_on], [delivered_on]) VALUES (1, 1, N'raju', N'raju@gmail.com', 8756059656, N'sector 12, noida,UP', 110096, 540, 6, 1, N'Cash On Delivery(COD)', NULL, 4, N'admin', CAST(N'2021-01-16T22:22:23.450' AS DateTime), CAST(N'2021-01-13T20:14:45.377' AS DateTime), CAST(N'2021-01-17T12:08:06.727' AS DateTime))
INSERT [dbo].[tbl_order_master] ([order_id], [user_id], [name], [email], [mobile], [address], [pincode], [total_price], [delivery_boy_id], [payment_status], [payment_type], [payment_id], [order_status], [cancle_by], [cancle_at], [added_on], [delivered_on]) VALUES (2, 1, N'ramesh', N'navneet@gmail.com', 7011254578, N'Iffcco chock, gurgaon', 242301, 500, NULL, 1, N'Razorpay', N'pay_GQpCwAylBHntau', 1, NULL, NULL, CAST(N'2021-01-18T21:19:12.627' AS DateTime), NULL)
INSERT [dbo].[tbl_order_master] ([order_id], [user_id], [name], [email], [mobile], [address], [pincode], [total_price], [delivery_boy_id], [payment_status], [payment_type], [payment_id], [order_status], [cancle_by], [cancle_at], [added_on], [delivered_on]) VALUES (4, 3, N'ankit', N'ankit@gmail.com', 9919993518, N'prem nagar, bareilly', 232405, 10, 2, 1, N'Razorpay', N'pay_GQqi5QeGDbkEDx', 4, N'admin', CAST(N'2021-01-22T16:34:47.420' AS DateTime), CAST(N'2021-01-18T22:47:18.707' AS DateTime), NULL)
INSERT [dbo].[tbl_order_master] ([order_id], [user_id], [name], [email], [mobile], [address], [pincode], [total_price], [delivery_boy_id], [payment_status], [payment_type], [payment_id], [order_status], [cancle_by], [cancle_at], [added_on], [delivered_on]) VALUES (5, 3, N'akash', N'navneet@gmail.com', 7011320126, N'Iffcco chock, gurgaon', 110096, 520, NULL, 1, N'Razorpay', N'pay_GRcqKJlYZEO80D', 1, NULL, NULL, CAST(N'2021-01-20T21:52:21.313' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tbl_order_master] OFF
SET IDENTITY_INSERT [dbo].[tbl_order_status] ON 

INSERT [dbo].[tbl_order_status] ([id], [order_status]) VALUES (1, N'Pending')
INSERT [dbo].[tbl_order_status] ([id], [order_status]) VALUES (2, N'Cooking')
INSERT [dbo].[tbl_order_status] ([id], [order_status]) VALUES (3, N'on the way')
INSERT [dbo].[tbl_order_status] ([id], [order_status]) VALUES (4, N'Delivered')
INSERT [dbo].[tbl_order_status] ([id], [order_status]) VALUES (5, N'Cancel')
SET IDENTITY_INSERT [dbo].[tbl_order_status] OFF
SET IDENTITY_INSERT [dbo].[tbl_user] ON 

INSERT [dbo].[tbl_user] ([user_id], [user_name], [user_email], [user_mobile], [user_password], [user_status], [user_added_on], [email_status], [token]) VALUES (1, N'avneesh', N'avneesh@gmail.com', 7011320023, N'$2a$10$VWWutCSTltyNg3SJI15m2ORJteEtEhZyrP4G3rmxDv32RcJPWQRR6', 1, CAST(N'2021-01-09T23:14:49.970' AS DateTime), 1, N'lWldQ8a02EiGvsl6BEE8QKfSw23cDGIo')
INSERT [dbo].[tbl_user] ([user_id], [user_name], [user_email], [user_mobile], [user_password], [user_status], [user_added_on], [email_status], [token]) VALUES (2, N'Dilip kumar', N'dilip@gmail.com', 7011254578, N'$2a$10$f8V.mKZIKiH..EKVn3D62eSXVwaq5RqxpBxnPJQqv5aoEL9xKXAYa', 1, CAST(N'2021-01-15T18:58:17.327' AS DateTime), 1, N'tT225W+52Ej4W+JXBTk2T5YhixSQa2iF')
INSERT [dbo].[tbl_user] ([user_id], [user_name], [user_email], [user_mobile], [user_password], [user_status], [user_added_on], [email_status], [token]) VALUES (3, N'ankit', N'ankit@gmail.com', 8756254512, N'$2a$10$C4.AlWsKiy7wvBQLvb3aiO3guu9WRyXmd/ePfiEfHTj9fSo0zBKg6', 1, CAST(N'2021-01-15T19:26:32.310' AS DateTime), 1, N'PQ26fW+52EgKs//EIDxcTZJQ808dypoh')
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
ALTER TABLE [dbo].[tbl_category] ADD  DEFAULT ((1)) FOR [category_status]
GO
ALTER TABLE [dbo].[tbl_delivery_boy] ADD  DEFAULT ((1)) FOR [boy_status]
GO
ALTER TABLE [dbo].[tbl_dish] ADD  CONSTRAINT [DF__tbl_dish__dish_s__3C34F16F]  DEFAULT ((1)) FOR [dish_status]
GO
ALTER TABLE [dbo].[tbl_dish] ADD  DEFAULT ((0)) FOR [price_status]
GO
ALTER TABLE [dbo].[tbl_dish_price] ADD  DEFAULT ((1)) FOR [attr_status]
GO
ALTER TABLE [dbo].[tbl_order_master] ADD  DEFAULT ((0)) FOR [payment_status]
GO
ALTER TABLE [dbo].[tbl_order_master] ADD  CONSTRAINT [df_payment_id]  DEFAULT ('N/A') FOR [payment_id]
GO
ALTER TABLE [dbo].[tbl_order_master] ADD  CONSTRAINT [DF_tbl_order_master_order_status]  DEFAULT ((1)) FOR [order_status]
GO
ALTER TABLE [dbo].[tbl_user] ADD  DEFAULT ((1)) FOR [user_status]
GO
ALTER TABLE [dbo].[tbl_user] ADD  DEFAULT ((0)) FOR [email_status]
GO
/****** Object:  StoredProcedure [dbo].[sp_book_order]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_book_order]  
@user_id int,  
@name varchar(50),  
@email varchar(50),  
@mobile bigint,  
@address varchar(200),  
@pincode int,  
@total_price int,  
@payment_type varchar(50)  
as  
begin  
insert into tbl_order_master(user_id,name,email,mobile,address,pincode,total_price,payment_type,added_on) values(@user_id,@name,@email,@mobile,@address,@pincode,@total_price,@payment_type,getdate())  
insert into tbl_order_detail(order_id,dish_price_id,price,quantity) select order_id,price_id,dish_price,quantity from tbl_order_master  join tbl_cart on tbl_order_master.user_id=tbl_cart.user_id where tbl_order_master.added_on>tbl_cart.added_on and tbl_order_master.order_status=1 and tbl_order_master.user_id=@user_id  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_delivery_boy_assign]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delivery_boy_assign]
@order_in int,
@boy_id int
as
begin
update tbl_order_master set delivery_boy_id=@boy_id where order_id=@order_in
end
GO
/****** Object:  StoredProcedure [dbo].[sp_delivery_boy_insert]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_delivery_boy_insert]
@boy_name varchar(100),
@boy_mobile bigint,
@boy_password varchar(50),
@boy_added_by int
as 
begin 
insert into tbl_delivery_boy(boy_name,boy_mobile,boy_password,boy_added_by,boy_added_on)
values (@boy_name,@boy_mobile,@boy_password,@boy_added_by,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_delivery_boy_login]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delivery_boy_login]
@boy_mobile bigint,
@boy_password varchar(50)
as
begin
select * from tbl_delivery_boy where boy_mobile=@boy_mobile and boy_password=@boy_password
end
GO
/****** Object:  StoredProcedure [dbo].[sp_delivery_boy_orders]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delivery_boy_orders]
@delivery_boy_id int
as
begin
select * from tbl_order_master where delivery_boy_id=@delivery_boy_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_delivery_boy_select]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delivery_boy_select]
as
begin
select tbl_delivery_boy.boy_id,tbl_delivery_boy.boy_name,tbl_delivery_boy.boy_mobile,tbl_delivery_boy.boy_added_on,tbl_delivery_boy.boy_status,
tbl_admin.uname as added_by
from tbl_delivery_boy join tbl_admin on tbl_delivery_boy.boy_added_by=tbl_admin.userId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_delivery_boy_status_update]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delivery_boy_status_update]
@boy_id int
as
begin
	declare @p int
	select @p=boy_status from tbl_delivery_boy where boy_id=@boy_id
	if(@p=0)
		begin
			update tbl_delivery_boy set boy_status=1 where boy_id=@boy_id
		end
	else
		begin
			update tbl_delivery_boy set boy_status=0 where boy_id=@boy_id
		end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_delivery_boy_update]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delivery_boy_update]
@boy_id int,
@boy_name varchar(100),
@boy_mobile bigint,
@boy_password varchar(50)
as
begin
update tbl_delivery_boy set boy_name=@boy_name, boy_mobile=@boy_mobile,boy_password=@boy_password where boy_id=@boy_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_deliveryBoy_get]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_deliveryBoy_get]
as
begin
select * from tbl_delivery_boy where boy_status=1
end
GO
/****** Object:  StoredProcedure [dbo].[sp_dish_price_get_bY_dishID]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_dish_price_get_bY_dishID]
  @dish_id int
  as
  begin
  select * from tbl_dish_price where attr_status=1  and  dish_id=@dish_id
  end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_delivery_boy]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_get_delivery_boy]
@order_in int
as
begin
select tbl_delivery_boy.boy_name from tbl_order_master join tbl_delivery_boy on tbl_order_master.delivery_boy_id=tbl_delivery_boy.boy_id where order_id=@order_in
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_dish_filter]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_get_dish_filter]    
@category_id int=0,    
@dish_type int=0    
as    
begin    
if(@category_id=0 and @dish_type=0)    
 begin    
 select * from tbl_dish where dish_status=1 and price_status=1       
 end    
 else if(@category_id>0 and @dish_type>0)    
 begin    
 select * from tbl_dish where dish_status=1 and price_status=1 and category_id=@category_id and dish_type=@dish_type    
 end    
 else if(@category_id>0 and @dish_type=0)    
 begin    
 select * from tbl_dish where dish_status=1 and price_status=1 and category_id=@category_id    
 end    
 else if(@category_id=0 and @dish_type>0)    
 begin    
 select * from tbl_dish where dish_status=1 and price_status=1 and dish_type=@dish_type    
 end    
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_last_order_id]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_get_last_order_id]
@user_id int
as
begin
select max(order_id)as order_id from tbl_order_master where user_id=@user_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_order_staus]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_get_order_staus]
@order_in int
as
begin
select tbl_order_status.order_status from tbl_order_master join tbl_order_status on tbl_order_master.order_status=tbl_order_status.id where order_id=@order_in
end
GO
/****** Object:  StoredProcedure [dbo].[sp_lastorderID]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_lastorderID]
@userID int
as
begin
select MAX(order_id)as ordID from tbl_order_master where user_id=@userID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_login_check]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_login_check]  
@user_name varchar(50),  
@user_password varchar(50)  
as  
begin  
select * from tbl_admin where user_name=@user_name and user_password=@user_password  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_order_cancle]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_order_cancle]
@order_id int,
@cancle_by varchar(30)
as
begin
update tbl_order_master set order_status=5, cancle_by=@cancle_by, cancle_at=GETDATE() where order_id=@order_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_order_detail_by_orderID_get]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_order_detail_by_orderID_get]
@order_id int
as
begin
select * from tbl_order_detail join tbl_dish_price on tbl_order_detail.dish_price_id=tbl_dish_price.attr_id
join tbl_dish on tbl_dish_price.dish_id=tbl_dish.dish_id
where order_id=@order_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_order_detail_insert]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_order_detail_insert]    
@user_id int       
as    
begin    
insert into tbl_order_detail(order_id,dish_price_id,price,quantity) select order_id,price_id,dish_price,quantity from tbl_order_master  join tbl_cart on tbl_order_master.user_id=tbl_cart.user_id where tbl_order_master.added_on>tbl_cart.added_on and tbl_order_master.user_id=@user_id    
  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_order_master_get]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_order_master_get]
as
begin
select * from tbl_order_master
end
GO
/****** Object:  StoredProcedure [dbo].[sp_order_master_get_BY_order_id]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_order_master_get_BY_order_id] 
@order_id int
as
begin
select * from tbl_order_master   where order_id=@order_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_order_master_get_history]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_order_master_get_history] 
@user_id int  
as  
begin  
select *,tbl_order_status.order_status as ods,tbl_order_master.order_status as odsid from tbl_order_master join tbl_order_status on tbl_order_master.order_status=tbl_order_status.id   where user_id=@user_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_order_status_get]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_order_status_get]
as
begin
select * from tbl_order_status
end
GO
/****** Object:  StoredProcedure [dbo].[sp_order_status_update]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_order_status_update]
@order_in int,
@order_status int
as
begin
update tbl_order_master set order_status=@order_status where order_id=@order_in
end
GO
/****** Object:  StoredProcedure [dbo].[sp_razorpay_falied]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_razorpay_falied]
@order_id int,
@user_id int
as
begin
delete from tbl_order_master where order_id=@order_id and user_id=@user_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_razorpay_success]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_razorpay_success]
@order_id int,
@payment_id varchar(100)
as
begin
update tbl_order_master set payment_id=@payment_id,payment_status=1 where order_id=@order_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_set_delivered]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_set_delivered]
@order_id int
as
begin
declare @pp varchar(50)
select @pp=payment_type from tbl_order_master where order_id=@order_id
if(@pp='Cash On Delivery(COD)')
begin
 update tbl_order_master set payment_status=1,order_status=4, delivered_on=GETDATE() where order_id=@order_id
end
else
begin
update tbl_order_master set order_status=4, delivered_on=GETDATE() where order_id=@order_id
end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_cart]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_tbl_cart]  
@cart_id int=0,  
@user_id int=0,  
@price_id int=0,  
@dish_id int=0,  
@quantity int=0,  
@dish_price int=0,  
@action varchar(100)=null   
as  
begin  
 if(@action='insert')  
 begin  
 insert into tbl_cart(user_id,price_id,dish_id,quantity,dish_price,added_on) values(@user_id,@price_id,@dish_id,@quantity,@dish_price,getdate())  
 end 
 else if(@action='update')  
 begin  
 update  tbl_cart set quantity=@quantity where cart_id=@cart_id
 end  
 else if(@action='getcart')  
 begin  
 select *, (tbl_cart.quantity*tbl_dish_price.price) as total_price from tbl_cart join tbl_dish_price on tbl_cart.price_id=tbl_dish_price.attr_id join tbl_dish on tbl_dish_price.dish_id=tbl_dish.dish_id where user_id=@user_id  
 end  
 else if(@action='cartvalue')  
 begin  
  select count(cart_id)as itemcount,sum(quantity*dish_price)as cartsum from tbl_cart where user_id=@user_id  
 end 
 else if(@action='delete')  
 begin  
  delete from tbl_cart where cart_id=@cart_id
 end 
 else if(@action='clearcart')  
 begin  
  delete from tbl_cart where user_id=@user_id  
 end 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_category_edit]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tbl_category_edit]
@category_id int  
as
begin
select * from tbl_category where category_id=@category_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_category_get]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tbl_category_get]
as
begin
select * from tbl_category
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_category_insert]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_tbl_category_insert]
@category_name varchar(50)
as
begin
insert into tbl_category(categgory_name,inserted_date) values(@category_name,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_category_select]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_tbl_category_select]  
as  
begin  
select *,convert(varchar(50),inserted_date,106) as added_date from tbl_category   
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_category_status_update]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tbl_category_status_update]  
@category_id int  
as  
begin  
 declare @p int  
 select @p=category_status from tbl_category where category_id=@category_id  
 if(@p=0)  
  begin  
   update tbl_category set category_status=1 where category_id=@category_id  
  end  
 else  
  begin  
   update tbl_category set category_status=0 where category_id=@category_id  
  end  
end  
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_category_update]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tbl_category_update]
@category_id int,
@category_name varchar(50)
as
begin
update tbl_category set categgory_name=@category_name where category_id=@category_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_contactUs_delete]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tbl_contactUs_delete]
@cid int
as
begin
delete from tbl_contactUs where cid=@cid
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_contactUs_get]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tbl_contactUs_get]
as
begin
select * from tbl_contactUs
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_contactUs_insert]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tbl_contactUs_insert]
@name varchar(50),
@mobile bigint,
@email varchar(50),
@subject varchar(100),
@messege varchar(2000)
as
begin
insert into tbl_contactUs(name,mobile,email,subject,messege,send_on) values(@name,@mobile,@email,@subject,@messege,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_delivery_boy_edit]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tbl_delivery_boy_edit]
@boy_id int
as
begin
select * from tbl_delivery_boy where boy_id=@boy_id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_dish]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_tbl_dish]      
@action varchar(50)=null,      
@dish_id int=0,      
@dish_name varchar(50)=null,      
@category_id int=0,      
@dish_detail varchar(100)=null,      
@dish_type int=0,      
@dish_image varchar(100)=null      
as      
begin      
 if(@action='insert')      
  begin      
   insert into tbl_dish(dish_name,category_id,dish_detail,dish_type,dish_image,added_on) values(@dish_name,@category_id,@dish_detail,@dish_type,@dish_image,getdate())      
  end      
 else if(@action='update')      
  begin      
   update tbl_dish set  dish_name=@dish_name,category_id=@category_id,dish_detail=@dish_detail,dish_type=@dish_type,dish_image=@dish_image where dish_id=@dish_id      
  end      
 else if(@action='statusUpdate')      
  begin      
   declare @temp int      
   select @temp=dish_status from tbl_dish where dish_id=@dish_id      
   if(@temp=1)      
   begin      
   update tbl_dish set dish_status=0  where dish_id=@dish_id      
   end      
   else       
   begin      
   update tbl_dish set dish_status=1  where dish_id=@dish_id      
   end      
  end      
  else if(@action='edit')      
  begin      
   select * from tbl_dish where dish_id=@dish_id      
  end      
  else if(@action='selectAll')      
  begin      
   select * from tbl_dish join tbl_category on tbl_dish.category_id=tbl_category.category_id      
  end     
   else if(@action='selectAllactive')      
   begin      
   select * from tbl_dish where dish_status=1 and price_status=1    
  end 
  
else if(@action='selectbyCat')      
   begin      
   select * from tbl_dish where dish_status=1 and price_status=1 and category_id=@category_id
  end 
  else if(@action='delete')      
   begin      
   delete from tbl_dish where dish_id=@dish_id    
   delete from tbl_dish_price where dish_id=@dish_id    
  end   
  else if(@action='getImage')      
   begin      
   select dish_image from tbl_dish where dish_id=@dish_id      
  end   
end    
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_dish_attr_insert]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_tbl_dish_attr_insert]
@dish_id int,
@attribute varchar(30),
@price int,
@attr_status int,
@added_on date
as
begin
insert into tbl_dish_attr(dish_id,attribute,price,added_on) values(@dish_id,@attribute,@price,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_dish_get_last_id]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tbl_dish_get_last_id]
as
begin
SELECT TOP 1 dish_id FROM tbl_dish ORDER BY dish_id DESC
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_dish_price]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_tbl_dish_price]
@action varchar(50)=null,
@attr_id int=0,
@dish_id int=0,
@attribute varchar(50)=null,
@price int=0
as
begin
	if(@action='insert')
		begin
			insert into tbl_dish_price(dish_id,attribute,price,added_on) values(@dish_id,@attribute,@price,GETDATE())
		end
	else if(@action='update')
		begin
			update tbl_dish_price set attribute=@attribute,price=@price where attr_id=@attr_id
		end
	else if(@action='delete')
		begin
			delete from tbl_dish_price where attr_id=@attr_id
		end
	else if(@action='selectByDishID')
		begin
			select * from tbl_dish_price join tbl_dish on tbl_dish_price.dish_id=tbl_dish.dish_id where tbl_dish_price.dish_id=@dish_id
		end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_dish_status_update]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_tbl_dish_status_update] 
   @dish_id int 
   as
   begin
   declare @count int
   SELECT @count=COUNT(dish_id) FROM tbl_dish_price WHERE dish_id =@dish_id
   if(@count>0)  
	   begin  
	   update tbl_dish set price_status=1  where dish_id=@dish_id  
	   end  
   else   
	   begin  
	   update tbl_dish set price_status=0,dish_status=0  where dish_id=@dish_id  
	   end
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_user]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_tbl_user]    
@user_id int=0,    
@user_name varchar(100)=null,    
@user_email varchar(100)=null,    
@user_mobile bigint=0,    
@user_password varchar(100)=null,    
@user_status int=0,    
@email_status int=0,    
@token varchar(200)=null,    
@action varchar(50)=null    
as    
begin    
if(@action='insert')    
 begin    
 insert into tbl_user(user_name,user_email,user_mobile,user_password,user_added_on,token) values(@user_name,@user_email,@user_mobile,@user_password,getdate(),@token)    
 end    
 else if(@action='emailverify')    
 begin    
 update tbl_user set email_status=1 where token=@token  
 end  
 else if(@action='updatetoken')    
 begin    
 update tbl_user set token=@token where user_email=@user_email  
 end  
 else if(@action='resetPassword')    
 begin    
 update tbl_user set  user_password=@user_password where token=@token  
 end  
 else if(@action='login')    
 begin    
 select * from tbl_user where user_email=@user_email    
 end  
 else if(@action='getById')    
 begin    
 select * from tbl_user where user_id=@user_id    
 end 
 else if(@action='proUpdate')    
 begin    
 update tbl_user set user_name=@user_name ,user_mobile=@user_mobile where user_id=@user_id    
 end 
 else if(@action='changePassword')    
 begin    
 update tbl_user set  user_password=@user_password where user_id=@user_id
 end
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_user_select]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tbl_user_select]
as
begin
select * from tbl_user
end
GO
/****** Object:  StoredProcedure [dbo].[sp_user_status_update]    Script Date: 22-01-2021 16:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_user_status_update]
@user_id int
as
begin
	declare @p int
	select @p=user_status from tbl_user where user_id=@user_id
	if(@p=0)
		begin
			update tbl_user set user_status=1 where user_id=@user_id
		end
	else
		begin
			update tbl_user set user_status=0 where user_id=@user_id
		end
end
GO
USE [master]
GO
ALTER DATABASE [OnlineFood] SET  READ_WRITE 
GO
