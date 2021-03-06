USE [master]
GO
/****** Object:  Database [ProductOrder]    Script Date: 3/5/2019 6:08:35 PM ******/
CREATE DATABASE [ProductOrder]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductOrder', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProductOrder.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProductOrder_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProductOrder_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProductOrder] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductOrder].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductOrder] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProductOrder] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProductOrder] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProductOrder] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProductOrder] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProductOrder] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProductOrder] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductOrder] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductOrder] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductOrder] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProductOrder] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProductOrder] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductOrder] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProductOrder] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductOrder] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProductOrder] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductOrder] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductOrder] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductOrder] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductOrder] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductOrder] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProductOrder] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductOrder] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProductOrder] SET  MULTI_USER 
GO
ALTER DATABASE [ProductOrder] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductOrder] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductOrder] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductOrder] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProductOrder] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProductOrder] SET QUERY_STORE = OFF
GO
USE [ProductOrder]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ProductOrder]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/5/2019 6:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Cust_ID] [nvarchar](50) NOT NULL,
	[Cust_FName] [nvarchar](50) NULL,
	[Cust_LName] [nvarchar](50) NOT NULL,
	[Cust_Ph_Num] [nvarchar](255) NOT NULL,
	[Cust_Strt_Num] [nvarchar](50) NOT NULL,
	[Cust_City] [nvarchar](20) NOT NULL,
	[Cust_Zip_Code] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Cust_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/5/2019 6:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Emp_ID] [nvarchar](50) NOT NULL,
	[Emp_FName] [nvarchar](50) NULL,
	[Emp_LName] [nvarchar](50) NOT NULL,
	[Emp_Ph_Num] [nvarchar](255) NOT NULL,
	[Emp_Email] [nvarchar](50) NOT NULL,
	[Emp_Job_Title_ID] [nvarchar](50) NOT NULL,
	[Emp_Job_Title] [nvarchar](20) NOT NULL,
	[Emp_Strt_Num] [nvarchar](20) NOT NULL,
	[Emp_City] [nvarchar](30) NOT NULL,
	[Emp_Zip_Code] [nvarchar](30) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 3/5/2019 6:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Inv_ID] [nvarchar](50) NOT NULL,
	[Ord_ID] [nvarchar](50) NOT NULL,
	[Inv_Date] [datetime] NOT NULL,
	[Inv_Amt] [nvarchar](50) NULL,
	[Inv_Due_Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Inv_ID] PRIMARY KEY CLUSTERED 
(
	[Inv_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/5/2019 6:08:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Ord_ID] [nvarchar](50) NOT NULL,
	[Emp_ID] [nvarchar](50) NOT NULL,
	[Cust_ID] [nvarchar](50) NOT NULL,
	[Ord_Date] [datetime] NULL,
	[Ord_Ship_Date] [datetime] NULL,
	[Ord_Status] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Ord_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Product]    Script Date: 3/5/2019 6:08:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Product](
	[Ord_ID] [nvarchar](50) NOT NULL,
	[Prod_ID] [nvarchar](50) NOT NULL,
	[Ord_Qty] [int] NOT NULL,
	[Prod_Unit_Price] [money] NULL,
 CONSTRAINT [PK_Order_Product] PRIMARY KEY CLUSTERED 
(
	[Ord_ID] ASC,
	[Prod_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/5/2019 6:08:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Prod_ID] [nvarchar](50) NOT NULL,
	[Vendor_ID] [nvarchar](50) NOT NULL,
	[Prod_Name] [nvarchar](50) NOT NULL,
	[Prod_Desc] [nvarchar](50) NOT NULL,
	[Prod_Qty] [int] NOT NULL,
	[Prod_Unit_Cost] [money] NOT NULL,
	[Prod_Unit_Price] [money] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Prod_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Return]    Script Date: 3/5/2019 6:08:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Return](
	[ProRet_ID] [nvarchar](50) NOT NULL,
	[Ord_ID] [nvarchar](50) NOT NULL,
	[ProRet_Date] [datetime] NOT NULL,
	[ProRet_Status] [nvarchar](50) NULL,
	[ProRet_Reason] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProRet_ID] PRIMARY KEY CLUSTERED 
(
	[ProRet_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 3/5/2019 6:08:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[Vendor_ID] [nvarchar](50) NOT NULL,
	[Emp_ID] [nvarchar](50) NOT NULL,
	[Vendor_Name] [nvarchar](50) NULL,
	[Vendor_Desc] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ven_ID] PRIMARY KEY CLUSTERED 
(
	[Vendor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worksheet$]    Script Date: 3/5/2019 6:08:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worksheet$](
	[Cust_Fname] [nvarchar](255) NULL,
	[Cust_Lname] [nvarchar](255) NULL,
	[Cust_Ph_Num] [nvarchar](255) NULL,
	[Cust_Strt_Num] [nvarchar](255) NULL,
	[Cust_City] [nvarchar](255) NULL,
	[Cust_Zip_Code] [float] NULL,
	[F7] [nvarchar](255) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Order] FOREIGN KEY([Ord_ID])
REFERENCES [dbo].[Order] ([Ord_ID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Order]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([Cust_ID])
REFERENCES [dbo].[Customer] ([Cust_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Employee] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Employee] ([Emp_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Employee]
GO
ALTER TABLE [dbo].[Order_Product]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product_Order] FOREIGN KEY([Ord_ID])
REFERENCES [dbo].[Order] ([Ord_ID])
GO
ALTER TABLE [dbo].[Order_Product] CHECK CONSTRAINT [FK_Order_Product_Order]
GO
ALTER TABLE [dbo].[Order_Product]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product_Product] FOREIGN KEY([Prod_ID])
REFERENCES [dbo].[Product] ([Prod_ID])
GO
ALTER TABLE [dbo].[Order_Product] CHECK CONSTRAINT [FK_Order_Product_Product]
GO
ALTER TABLE [dbo].[Product_Return]  WITH CHECK ADD  CONSTRAINT [FK_Product_Return_Order] FOREIGN KEY([Ord_ID])
REFERENCES [dbo].[Order] ([Ord_ID])
GO
ALTER TABLE [dbo].[Product_Return] CHECK CONSTRAINT [FK_Product_Return_Order]
GO
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_Employee] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Employee] ([Emp_ID])
GO
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_Employee]
GO
USE [master]
GO
ALTER DATABASE [ProductOrder] SET  READ_WRITE 
GO
