USE [Marbale]
GO
/****** Object:  Table [dbo].[AppModule]    Script Date: 3/29/2020 7:50:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppModule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Module] [varchar](50) NULL,
	[Root] [varchar](50) NULL,
	[Page] [varchar](50) NULL,
	[URL] [varchar](500) NULL,
	[Active] [bit] NULL,
	[DisplayOrder] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleModuleAction]    Script Date: 3/29/2020 7:50:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleModuleAction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[PageId] [int] NULL,
	[Page] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/29/2020 7:50:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[LoginId] [varchar](100) NULL,
	[Password] [image] NULL,
	[RoleId] [int] NULL,
	[Status] [varchar](max) NULL,
	[POSCounter] [varchar](500) NULL,
	[PasswordChangeDate] [datetime] NULL,
	[InvalidAttempts] [int] NULL,
	[Email] [varchar](200) NULL,
	[CompanyAdmin] [bit] NULL,
	[Department] [varchar](200) NULL,
	[Manager] [varchar](200) NULL,
	[EmpStartDate] [datetime] NULL,
	[EmpEndDate] [datetime] NULL,
	[EmpEndReason] [varchar](200) NULL,
	[LastLogInTime] [datetime] NULL,
	[LastLogOutTime] [datetime] NULL,
	[CreatationDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[LastUpdatedBy] [varchar](500) NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 3/29/2020 7:50:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](500) NULL,
	[Description] [varchar](max) NULL,
	[ManagerFlag] [bit] NULL,
	[AllowPOSAccess] [bit] NULL,
	[POSClockInOut] [bit] NULL,
	[AllowShiftOpenClose] [bit] NULL,
	[LastUpdatedBy] [varchar](500) NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppModule] ON 

INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (31, N'Management Studio', N'Product', N'Products', N'/Product/Index', 1, 1)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (32, N'Management Studio', N'Product', N'Discounts', N'/Discount/Index', 1, 2)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (33, N'Management Studio', N'Product', N'Tax', N'/Tax/Index', 1, 3)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (34, N'Management Studio', N'Communication', N'Hubs', N'/game/hubs', 1, 1)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (35, N'Management Studio', N'Communication', N'Game Profile', N'/game/profiles', 1, 2)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (36, N'Management Studio', N'Communication', N'Games', N'/game/games', 1, 3)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (37, N'Management Studio', N'Communication', N'Machines', N'/game/machines', 1, 4)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (38, N'Management Studio', N'Communication', N'Configurations', N'/game/Configuration', 1, 5)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (39, N'Management Studio', N'Site Setup', N'Configuration', N'/SiteSetup/configuration', 1, 1)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (40, N'Management Studio', N'Site Setup', N'Sites', N'/SiteSetup/sites', 1, 2)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (41, N'Management Studio', N'Site Setup', N'Users', N'/SiteSetup/users', 1, 3)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (42, N'Management Studio', N'Site Setup', N'User Role', N'/SiteSetup/userroles', 1, 4)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (43, N'Management Studio', N'Site Setup', N'Messages', N'/SiteSetup/Messages', 1, 5)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (44, N'Management Studio', N'Site Setup', N'Task Types', N'/SiteSetup/TaskType', 1, 6)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (45, N'Management Studio', N'Site Setup', N'Product key', N'/SiteSetup/productkey', 1, 7)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (46, N'Management Studio', N'Site Setup', N'Printer', N'/SiteSetup/printer', 1, 8)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (47, N'Management Studio', N'Cards', N'View Card', N'/Cards/ViewCards', 1, 1)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (48, N'Management Studio', N'Cards', N'New Card', N'/Cards/NewCard', 1, 2)
INSERT [dbo].[AppModule] ([Id], [Module], [Root], [Page], [URL], [Active], [DisplayOrder]) VALUES (49, N'Management Studio', N'Cards', N'Inventory', N'/Cards/Inventory', 1, 3)
SET IDENTITY_INSERT [dbo].[AppModule] OFF

SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [Role], [Description], [ManagerFlag], [AllowPOSAccess], [POSClockInOut], [AllowShiftOpenClose], [LastUpdatedBy], [LastUpdatedDate])
 VALUES (1, N'SuperUser', N'Super user Role', 1, 1, 1, 1, N'Harish', CAST(N'2020-03-29T07:36:37.793' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserRole] OFF

ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[UserRole] ([Id])


SET IDENTITY_INSERT [dbo].[RoleModuleAction] ON 

INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (69, 1, 31, N'Products')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (70, 1, 32, N'Discounts')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (71, 1, 33, N'Tax')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (72, 1, 34, N'Hubs')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (73, 1, 35, N'Game Profile')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (74, 1, 36, N'Games')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (75, 1, 37, N'Machines')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (76, 1, 38, N'Configurations')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (77, 1, 39, N'Configuration')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (78, 1, 40, N'Sites')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (79, 1, 41, N'Users')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (80, 1, 42, N'User Role')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (81, 1, 43, N'Messages')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (82, 1, 44, N'Task Types')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (83, 1, 45, N'Product key')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (84, 1, 46, N'Printer')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (85, 1, 47, N'View Card')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (86, 1, 48, N'New Card')
INSERT [dbo].[RoleModuleAction] ([Id], [RoleId], [PageId], [Page]) VALUES (87, 1, 49, N'Inventory')
SET IDENTITY_INSERT [dbo].[RoleModuleAction] OFF

SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [LoginId], [Password], [RoleId], [Status], [POSCounter], [PasswordChangeDate], [InvalidAttempts], [Email], [CompanyAdmin], [Department], 
[Manager], [EmpStartDate], [EmpEndDate], [EmpEndReason], [LastLogInTime], [LastLogOutTime], [CreatationDate], [CreatedBy], [LastUpdatedBy], [LastUpdatedDate])
 VALUES (6, N'Admin', N'marbale', 0x6D617262616C65, 1, N'Active', N'1', NULL, NULL, N'admin@marbale.com', 1, N'marbale', N'admin', CAST(N'2020-03-07T14:01:00.000' AS DateTime),
  CAST(N'2020-03-07T14:01:00.000' AS DateTime), N'', NULL, NULL, CAST(N'2020-03-07T14:01:00.823' AS DateTime), N'Harish', N'Harish', CAST(N'2020-03-29T07:47:53.627' AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
