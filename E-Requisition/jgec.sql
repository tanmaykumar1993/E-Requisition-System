/****** Object:  Table [dbo].[Emp]    Script Date: 12/31/2014 15:55:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Emp]') AND type in (N'U'))
DROP TABLE [dbo].[Emp]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/31/2014 15:55:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Order_Purchased]    Script Date: 12/31/2014 15:55:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order_Purchased]') AND type in (N'U'))
DROP TABLE [dbo].[Order_Purchased]
GO
/****** Object:  Table [dbo].[Req_ID]    Script Date: 12/31/2014 15:55:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Req_ID]') AND type in (N'U'))
DROP TABLE [dbo].[Req_ID]
GO
/****** Object:  Table [dbo].[Requested_Items]    Script Date: 12/31/2014 15:55:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Requested_Items]') AND type in (N'U'))
DROP TABLE [dbo].[Requested_Items]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 12/31/2014 15:55:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
DROP TABLE [dbo].[Vendor]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 12/31/2014 15:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vendor](
	[ID] [int] NOT NULL,
	[Log_ID] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Password] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Name] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Phone] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Vendor] ([ID], [Log_ID], [Password], [Name], [Phone]) VALUES (200, N'vendor1', N'password1', N'Vendor1', N'9843567321')
INSERT [dbo].[Vendor] ([ID], [Log_ID], [Password], [Name], [Phone]) VALUES (201, N'vendor2', N'password2', N'Vendor2', N'8978186163')
INSERT [dbo].[Vendor] ([ID], [Log_ID], [Password], [Name], [Phone]) VALUES (202, N'vendor3', N'password3', N'Vendor3', N'8675275113')
/****** Object:  Table [dbo].[Requested_Items]    Script Date: 12/31/2014 15:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Requested_Items]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Requested_Items](
	[Price_ID] [int] NOT NULL,
	[Req_ID] [int] NULL,
	[Item_name] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Price] [float] NULL,
	[Vendor_ID] [int] NULL,
 CONSTRAINT [PK_Requested_Items] PRIMARY KEY CLUSTERED 
(
	[Price_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Req_ID]    Script Date: 12/31/2014 15:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Req_ID]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Req_ID](
	[Req_ID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Emp_ID] [int] NULL,
	[Date] [date] NULL,
	[Status] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Item_name] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_Req_ID] PRIMARY KEY CLUSTERED 
(
	[Req_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Order_Purchased]    Script Date: 12/31/2014 15:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order_Purchased]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Order_Purchased](
	[Order_ID] [int] NOT NULL,
	[Req_ID] [int] NULL,
	[Item_Name] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Price] [float] NULL,
	[Vendor_ID] [int] NULL,
 CONSTRAINT [PK_Order_Purchased] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/31/2014 15:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[ID] [int] NOT NULL,
	[Log_ID] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Password] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Name] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Dept] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Phone] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[User_type] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[Budget] [float] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Employee] ([ID], [Log_ID], [Password], [Name], [Dept], [Phone], [User_type], [Budget]) VALUES (100, N'Sumit', N'123', N'Sumit Pal', N'Technical', N'9800323052', N'H.O.D', 10000)
INSERT [dbo].[Employee] ([ID], [Log_ID], [Password], [Name], [Dept], [Phone], [User_type], [Budget]) VALUES (101, N'shailik95', N'321', N'Shailik Sarkar', N'Academics', N'8972333277', N'H.O.D', 18000)
INSERT [dbo].[Employee] ([ID], [Log_ID], [Password], [Name], [Dept], [Phone], [User_type], [Budget]) VALUES (102, N'paul', N'111', N'Simanta Chakladar', N'Management', N'9831534795', N'H.O.D', 8000)
INSERT [dbo].[Employee] ([ID], [Log_ID], [Password], [Name], [Dept], [Phone], [User_type], [Budget]) VALUES (103, N'tannu', N'222', N'Tanmay Sarkar', N'Technical', N'9778738121', N'Employee', NULL)
INSERT [dbo].[Employee] ([ID], [Log_ID], [Password], [Name], [Dept], [Phone], [User_type], [Budget]) VALUES (104, N'depressed@baccha', N'333', N'Aishik Bose', N'Academics', N'9767675434', N'Employee', NULL)
INSERT [dbo].[Employee] ([ID], [Log_ID], [Password], [Name], [Dept], [Phone], [User_type], [Budget]) VALUES (105, N'anyone', N'444', N'Mahatma Gandhi', N'Management', N'9855454325', N'Employee', NULL)
/****** Object:  Table [dbo].[Emp]    Script Date: 12/31/2014 15:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Emp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Emp](
	[id] [int] NOT NULL,
	[name] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[salary] [int] NULL,
 CONSTRAINT [PK_Emp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Emp] ([id], [name], [salary]) VALUES (1, N'paul', 12000)
INSERT [dbo].[Emp] ([id], [name], [salary]) VALUES (2, N'shailik', 12000)
INSERT [dbo].[Emp] ([id], [name], [salary]) VALUES (3, N'mal', 120000)
INSERT [dbo].[Emp] ([id], [name], [salary]) VALUES (4, N'khan', 10000)
