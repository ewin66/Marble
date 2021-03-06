USE [Marbale]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 7/7/2019 3:12:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[DefaultValue] [varchar](200) NULL,
	[Type] [varchar](100) NULL,
	[ScreenGroup] [varchar](50) NULL,
	[Active] [bit] NULL,
	[UserLevel] [bit] NULL,
	[PosLevel] [bit] NULL,
	[Protected] [bit] NULL,
	[LastUpdatedBy] [varchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [varchar](250) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_FACE_VALUE', N'Price of a Card', N'80', N'int', N'card', 1, 1, 1, NULL, N'Harish', CAST(N'2019-03-03T08:36:42.583' AS DateTime), 1, N'Price of a Card')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TOKEN_PRICE', N'Price of 1 Token', N'10', N'string', N'price', 1, 0, 0, NULL, N'Harish', CAST(N'2019-06-09T09:34:30.840' AS DateTime), 2, N'Price of 1 Token')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'POS_CARD_READER_BAUDRATE', N'Card Reader COM Port Baudrate', N'2', N'int', N'pos', 1, 1, 1, NULL, N'Harish', CAST(N'2019-03-03T01:03:45.437' AS DateTime), 3, N'Card Reader COM Port Baudrate')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEFAULT_FONT', N'Default Font', N'20px', N'string', N'Formats', 1, 1, 1, NULL, N'Harish', CAST(N'2019-06-09T09:19:44.320' AS DateTime), 4, N'Default Font')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DATETIME_FORMAT', N'Date Time Format', N'', N'string', N'Formats', 0, 1, 1, NULL, NULL, CAST(N'2019-02-17T20:55:55.207' AS DateTime), 5, N'Date Time Format')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DATE_FORMAT', N'Date Format', N'true', N'bool', N'pos', 0, 1, 1, NULL, NULL, CAST(N'2019-02-22T23:41:03.850' AS DateTime), 6, N'Date Format')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'NUMBER_FORMAT', N'Number Format', N'', N'string', N'Formats', 1, 0, 0, NULL, NULL, CAST(N'2019-02-17T01:01:52.687' AS DateTime), 7, N'Number Format')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AMOUNT_FORMAT', N'Amount Format', N'', N'string', N'Formats', 1, NULL, NULL, NULL, NULL, NULL, 8, N'Amount Format')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CURRENCY_CODE', N'Currency', N'$', N'string', N'Formats', 1, 0, 1, NULL, NULL, CAST(N'2019-06-09T09:41:59.563' AS DateTime), 9, N'Currency')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKET_PRICE', N'Price of a Ticket, from customer perspective (used if customer could buy tickets or fill-in shortfall by paying while redeeming)', N'true', NULL, N'', 1, 0, 1, NULL, NULL, CAST(N'2019-02-16T13:06:55.637' AS DateTime), 10, N'Price of a Ticket, from customer perspective (used if customer could buy tickets or fill-in shortfall by paying while redeeming)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MINIMUM_SPEND_FOR_VIP_STATUS', N'Minimum total spend amount to get VIP status', N'', N'string', N'price', 1, NULL, NULL, NULL, NULL, NULL, 11, N'Minimum total spend amount to get VIP status')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEFAULT_FONT_SIZE', N'Default Font Size', N'', N'string', N'Formats', 1, NULL, NULL, NULL, NULL, NULL, 12, N'Default Font Size')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'POS_SKIN_COLOR', N'POS Screen Skin Color', N'blue', N'string', N'pos', 1, 1, 1, NULL, N'Harish', CAST(N'2019-03-03T01:03:37.060' AS DateTime), 13, N'POS Screen Skin Color')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CURRENCY_SYMBOL', N'Currency Symbol', N'', N'string', N'Formats', 1, NULL, NULL, NULL, NULL, NULL, 14, N'Currency Symbol')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CREDIT_PRICE', N'Credit Price', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 15, N'Credit Price')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'BONUS_PRICE', N'Bonus Price', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 16, N'Bonus Price')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'COURTESY_PRICE', N'Courtesy Price', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 17, N'Courtesy Price')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'WEBSERVICE_UPLOAD_FREQUENCY', N'Frequency of Internet Upload in Minutes', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 18, N'Frequency of Internet Upload in Minutes')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'WEBSERVICE_UPLOAD_URL', N'Web Service URL', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 19, N'Web Service URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKET_COST', N'Cost of a Ticket (from Owner perspective. used to calcualte payout % of a machine)', N'.5', N'string', N'price', 1, NULL, NULL, NULL, NULL, CAST(N'2019-06-08T03:51:47.087' AS DateTime), 20, N'Cost of a Ticket (from Owner perspective. used to calcualte payout % of a machine)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REAL_TICKET_MODE', N'Decides if at site level tickets are issued as real tickets or e-tickets. Can be overridden at Card level.', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 21, N'Decides if at site level tickets are issued as real tickets or e-tickets. Can be overridden at Card level.')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEFAULT_GRID_FONT', N'Default Font for Grid data', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 22, N'Default Font for Grid data')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEFAULT_GRID_FONT_SIZE', N'Default Font Size for Grid data', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 23, N'Default Font Size for Grid data')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FISCAL_YEAR_END_MONTH', N'Month number of Fiscal Year end', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 24, N'Month number of Fiscal Year end')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PURGE_DATA_BEFORE_YEARS', N'Number of Fiscal years to keep data before purging', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 25, N'Number of Fiscal years to keep data before purging')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MIN_SECONDS_BETWEEN_GAMETIME_PLAY', N'Minimum required timespan in seconds between two plays in case of GameTime Play', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 26, N'Minimum required timespan in seconds between two plays in case of GameTime Play')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_VALIDITY', N'Card Validity in number of Months', N'2', N'int', N'card', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:04:19.453' AS DateTime), 27, N'Card Validity in number of Months')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEFAULT_PAY_MODE', N'Default Pay Mode in POS (0-None, 1-Cash, 2-Credit Card)', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 28, N'Default Pay Mode in POS (0-None, 1-Cash, 2-Credit Card)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PDF_WRITER_PRINTER', N'Printer Name for PDF Writer', N'F:\MarbleProject\New Text Document.txt', N'file', N'Email', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-04T07:15:30.993' AS DateTime), 29, N'Printer Name for PDF Writer')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PDF_CONFIG_EXE', N'Executable Name for changing PDF Writer configuration', N'F:\MarbleProject\Screenshot (3).png', N'file', N'Email', 1, NULL, NULL, NULL, NULL, CAST(N'2019-04-27T11:56:35.757' AS DateTime), 30, N'Executable Name for changing PDF Writer configuration')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PDF_OUTPUT_DIR', N'Directory Name for PDF Report Creation', N'122', N'string', N'Email', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-04T07:14:30.270' AS DateTime), 31, N'Directory Name for PDF Report Creation')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SMTP_HOST', N'SMTP Host Name or ip address', N'smtp.gmail.com', N'string', N'Email', 1, NULL, NULL, NULL, NULL, NULL, 32, N'SMTP Host Name or ip address')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SMTP_PORT', N'Port Number of SMTP Host', N'587', N'string', N'Email', 1, NULL, NULL, NULL, NULL, NULL, 33, N'Port Number of SMTP Host')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SMTP_NETWORK_CREDENTIAL_USERNAME', N'SMTP Login Username', N'shridhargnaik31@gmail.com', N'string', N'Email', 1, NULL, NULL, NULL, NULL, NULL, 34, N'SMTP Login Username')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SMTP_NETWORK_CREDENTIAL_PASSWORD', N'SMTP Login Password', N'4cb13ec100', N'string', N'Email', 1, NULL, NULL, NULL, NULL, NULL, 35, N'SMTP Login Password')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SMTP_FROM_DISPLAY_NAME', N'Display Name for From Address', N'shridharg100@gmail.com', N'string', N'Email', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:17:54.327' AS DateTime), 36, N'Display Name for From Address')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'POS_FINGER_PRINT_AUTHENTICATION', N'Use Finger Print Reader for POS Authentication', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 37, N'Use Finger Print Reader for POS Authentication')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_REFUND_OF_CARD_CREDITS', N'Allow Full Refund of Card or only face value', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 38, N'Allow Full Refund of Card or only face value')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'BACKUP_INTERVAL', N'Database Backup Interval in Minutes', N'', N'string', N'BackUp', 1, NULL, NULL, NULL, NULL, NULL, 39, N'Database Backup Interval in Minutes')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'BACKUP_DIRECTORY', N'Database Backup Directory', N'', N'string', N'BackUp', 1, NULL, NULL, NULL, NULL, NULL, 40, N'Database Backup Directory')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAINTENANCE_START_HOUR', N'System Maintenance Window Start Hour', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 41, N'System Maintenance Window Start Hour')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAINTENANCE_END_HOUR', N'System Maintenance Window End Hour', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 42, N'System Maintenance Window End Hour')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAIN_SERVER_HEARTBEAT_INTERVAL', N'Heartbeat Interval to restart closed servers in seconds', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 43, N'Heartbeat Interval to restart closed servers in seconds')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REMOTE_BACKUP_PATH', N'Share Directory for Backup Files to be copied on Remote (Backup) Server', N'', N'string', N'BackUp', 1, NULL, NULL, NULL, NULL, NULL, 44, N'Share Directory for Backup Files to be copied on Remote (Backup) Server')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REPORT_SERVER_ENABLED', N'Enables Reports Server for the Site', N'true', N'bool', N'server', 1, NULL, NULL, NULL, NULL, NULL, 45, N'Enables Reports Server for the Site')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'WEB_UPLOAD_SERVER_ENABLED', N'Enables Web Upload Server for the Site', N'true', N'bool', N'server', 1, NULL, NULL, NULL, NULL, NULL, 46, N'Enables Web Upload Server for the Site')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_REDEMPTION_IN_POS', N'Enables Redemption Module in POS', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 47, N'Enables Redemption Module in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAIN_SERVER_RESTART_ATTEMPTS', N'Restart attempts in Wireless Server in case of no response from HUB', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 48, N'Restart attempts in Wireless Server in case of no response from HUB')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'HUB_HEARTBEAT_INTERVAL', N'Heartbeat Interval to check on HUB Communication in Milli Seconds', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 50, N'Heartbeat Interval to check on HUB Communication in Milli Seconds')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MIN_SECONDS_BETWEEN_REPEAT_PLAY', N'Minimum Seconds between repeat play by same card on same machine', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 51, N'Minimum Seconds between repeat play by same card on same machine')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_ROAMING_CARDS', N'Allow Other Site Cards to Play / Recharge at this center', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 52, N'Allow Other Site Cards to Play / Recharge at this center')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CHECK_FOR_CARD_EXCEPTIONS', N'Check if there are exceptions defined on specific cards to restrict game play on any machines and vice versa', N'true', N'bool', N'server', 1, NULL, NULL, NULL, NULL, NULL, 53, N'Check if there are exceptions defined on specific cards to restrict game play on any machines and vice versa')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MIN_TIME_BETWEEN_POLLS', N'Minimum Time required between two polls in milliseconds', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 54, N'Minimum Time required between two polls in milliseconds')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CONSECUTIVE_TRX_FAIL_COUNT_BEFORE_HUB_REBOOT', N'Number of consective transmission failures before hub is rebooted by server', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 55, N'Number of consective transmission failures before hub is rebooted by server')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'READER_DISPLAY_SITENAME', N'Site Name to be displayed on Card Readers', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 56, N'Site Name to be displayed on Card Readers')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_TRANSACTION_ITEM_SLIPS', N'Prints Transaction Line Items in Slips while printing on Bill printer', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 57, N'Prints Transaction Line Items in Slips while printing on Bill printer')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOG_TRANSMISSION_FAILURES', N'Log Transmission Failures', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 58, N'Log Transmission Failures')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOG_RECEIVE_FAILURES', N'Log Receive Failures', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 59, N'Log Receive Failures')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_POS_FILTER_IN_TRX_REPORT', N'Enable POS Filter in Transaction Report', N'true', N'bool', N'pos', 1, 1, 1, NULL, N'Harish', CAST(N'2018-12-22T13:42:33.297' AS DateTime), 60, N'Enable POS Filter in Transaction Report')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_TRANSACTION_ON_ZERO_STOCK', N'Allow Transaction in case of stock is less than or equal to zero', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, CAST(N'2019-04-26T11:58:01.057' AS DateTime), 61, N'Allow Transaction in case of stock is less than or equal to zero')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TRANSACTION_ITEM_SLIPS_GAP', N'Spacing between transaction slips in number of lines', N'', N'string', N'print', 1, NULL, NULL, NULL, NULL, NULL, 62, N'Spacing between transaction slips in number of lines')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SECONDS_BEFORE_TIMER_BLINK', N'Number of seconds before reader should start blinking before timer expiry', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 63, N'Number of seconds before reader should start blinking before timer expiry')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_MANUAL_PRODUCT_SEARCH_IN_POS', N'Enable Manual Product Search in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 64, N'Enable Manual Product Search in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'GROUP_TIMER_EXTEND_AFTER_INTERVAL_PERCENT', N'Percent of remaining timer interval in which card swipe on a group timer will extend time', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 65, N'Percent of remaining timer interval in which card swipe on a group timer will extend time')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'WEB_UPLOAD_BATCH_DAYS', N'Max number of days to upload data for in 1 batch', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 66, N'Max number of days to upload data for in 1 batch')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SHOW_PRINT_DIALOG_IN_POS', N'Show print setup dialog on transaction print in POS or print directly to default printer', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 67, N'Show print setup dialog on transaction print in POS or print directly to default printer')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_CASH_IN_PAYMENT_GATEWAY', N'Allow cash payment in External Payment Gateway', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 68, N'Allow cash payment in External Payment Gateway')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_CREDITCARD_IN_PAYMENT_GATEWAY', N'Allow credit card payment in External Payment Gateway', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 69, N'Allow credit card payment in External Payment Gateway')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_LOYALTY_ON_GAMEPLAY', N'Allow Loyalty Transaction on Game Play', N'true', N'bool', N'server', 1, NULL, NULL, NULL, NULL, NULL, 70, N'Allow Loyalty Transaction on Game Play')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_TRANSACTION_ITEM_TICKETS', N'Print Transaction Line Items as Tickets', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 71, N'Print Transaction Line Items as Tickets')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_RECEIPT_ON_BILL_PRINTER', N'Allow Printing of Transaction Receipt on bill printer', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 72, N'Allow Printing of Transaction Receipt on bill printer')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'HIDE_SHIFT_OPEN_CLOSE', N'Hide Shift Open-Close screen while Login', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 73, N'Hide Shift Open-Close screen while Login')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'READER_HARDWARE_VERSION', N'Reader Hardware Version', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 74, N'Reader Hardware Version')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TRX_AUTO_PRINT_AFTER_SAVE', N'Automatically Print Transaction after saving', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 75, N'Automatically Print Transaction after saving')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CLEAR_TRX_AFTER_PRINT', N'Clear Transaction after printing to avid reprinting', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 76, N'Clear Transaction after printing to avid reprinting')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'READER_PRICE_DISPLAY_FORMAT', N'Display Format for game price on reader (6 Chars)', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 77, N'Display Format for game price on reader (6 Chars)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_TICKET_FOR_PRODUCT_TYPES', N'Print Tickets for these product types', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 78, N'Print Tickets for these product types')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_TICKET_FOR_EACH_QUANTITY', N'Prints a Ticket for each quantity of transaction line', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 79, N'Prints a Ticket for each quantity of transaction line')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_ONLY_GAMECARD_PAYMENT_IN_POS', N'Forces game card payment in POS for non-card transactions', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 80, N'Forces game card payment in POS for non-card transactions')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_PRICE_UPDATE_IN_PO', N'Allow update of price of items in PO', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 81, N'Allow update of price of items in PO')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'USB_READER_VID', N'USB Reader VID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 82, N'USB Reader VID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'USB_READER_PID', N'USB Reader PID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 83, N'USB Reader PID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'USB_READER_OPT_STRING', N'USB Reader Optional String', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 84, N'USB Reader Optional String')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_TRX_PRINT_BEFORE_SAVING', N'Allow printing of transaction before saving it', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 85, N'Allow printing of transaction before saving it')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_ISSUE_MANDATORY_FOR_CHECKIN', N'Card issue mandatory for Check-In products', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 86, N'Card issue mandatory for Check-In products')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CHECKIN_PHOTO_DIRECTORY', N'Check-In photo folder name', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 87, N'Check-In photo folder name')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PHOTO_MANDATORY_FOR_CHECKIN', N'Photo mandatory for Check-In products', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 88, N'Photo mandatory for Check-In products')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REFUND_REMARKS_MANDATORY', N'Remarks mandatory during card refund', N'False', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, CAST(N'2019-04-26T11:54:12.777' AS DateTime), 89, N'Remarks mandatory during card refund')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'WRIST_BAND_FACE_VALUE', N'Face value for Wrist Band issue', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 90, N'Face value for Wrist Band issue')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_ISSUE_MANDATORY_FOR_CHECKIN_DETAILS', N'Card issue mandatory for Check-In details', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 91, N'Card issue mandatory for Check-In details')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CHECKIN_DETAILS_RFID_TAG', N'RFID Tag for Check In details', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 92, N'RFID Tag for Check In details')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PURGE_DATA_BEFORE_DAYS', N'Number of days to keep data before purging', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 93, N'Number of days to keep data before purging')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PURGE_BEFORE_YEAR_OR_DAYS', N'Purge data before fiscal year or days', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 94, N'Purge data before fiscal year or days')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DAYS_TO_KEEP_PHOTOS_FOR', N'Number of days to keep check-in photos before purging', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 95, N'Number of days to keep check-in photos before purging')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'USB_BARCODE_READER_VID', N'USB Bar Code Reader VID', N'', N'string', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 96, N'USB Bar Code Reader VID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'USB_BARCODE_READER_PID', N'USB Bar Code Reader PID', N'', N'string', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 97, N'USB Bar Code Reader PID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'USB_BARCODE_READER_OPT_STRING', N'USB Bar Code Reader Optional String', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 98, N'USB Bar Code Reader Optional String')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TAX_IDENTIFICATION_NUMBER', N'Tax Identification Number for the Organization / Legal Entity', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 99, N'Tax Identification Number for the Organization / Legal Entity')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAX_TOKEN_NUMBER', N'Maximum POS Token number, after which it is restarted from 1', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 100, N'Maximum POS Token number, after which it is restarted from 1')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_PRODUCTS_IN_POS', N'Enable Products Tab in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 101, N'Enable Products Tab in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_DISCOUNTS_IN_POS', N'Enable Discounts Tab in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 102, N'Enable Discounts Tab in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_TASKS_IN_POS', N'Enable Tasks Tab in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 103, N'Enable Tasks Tab in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_MY_TRANSACTIONS_IN_POS', N'Enable My Transactions Tab in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 104, N'Enable My Transactions Tab in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_REFUND_IN_POS', N'Enable Refund Card Button in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 105, N'Enable Refund Card Button in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'RECEIPT_PRINT_TEMPLATE', N'POS Receipt Print Template', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 106, N'POS Receipt Print Template')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TOKEN_MACHINE_GAMEPLAY_CARD', N'Default Card Number to record game play on Physical Token Machine', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 107, N'Default Card Number to record game play on Physical Token Machine')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKETS_TO_REDEEM_PER_BONUS', N'Number of Tickets required for one Bonus value', N'', N'string', N'price', 1, NULL, NULL, NULL, NULL, NULL, 108, N'Number of Tickets required for one Bonus value')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOG_FREQUENCY_IN_POLLS', N'Frequency in number of polls to log communication errors', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 109, N'Frequency in number of polls to log communication errors')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAX_TICKETS_PER_GAMEPLAY', N'Maximum tickets allowed per game play, in order to avoid erroneous ticket reporting.', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 110, N'Maximum tickets allowed per game play, in order to avoid erroneous ticket reporting.')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_CARD_DETAILS_IN_POS', N'Enable Card Details Tab and Card Info section in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 111, N'Enable Card Details Tab and Card Info section in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LEFT_TRIM_CARD_NUMBER', N'Number of characters to trim at the beginning in card number', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 112, N'Number of characters to trim at the beginning in card number')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'RIGHT_TRIM_CARD_NUMBER', N'Number of characters to trim at the end in card number', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 113, N'Number of characters to trim at the end in card number')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LEFT_TRIM_BARCODE', N'Number of characters to trim at the beginning in Bar Code', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 114, N'Number of characters to trim at the beginning in Bar Code')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'RIGHT_TRIM_BARCODE', N'Number of characters to trim at the end in Bar Code', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 115, N'Number of characters to trim at the end in Bar Code')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_PARTIAL_REFUND', N'Allow Partial refund of cards', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 116, N'Allow Partial refund of cards')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_REFUND_OF_CARD_DEPOSIT', N'Allow refund of card deposit amount', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 117, N'Allow refund of card deposit amount')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_NUMBER_LENGTH', N'Number of characters in Card Number', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 118, N'Number of characters in Card Number')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AD_IMAGE_DIRECTORY', N'Ad Images folder name', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 119, N'Ad Images folder name')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CONSUME_CREDITS_BEFORE_BONUS', N'Consume card credits before bonus', N'true', N'bool', N'server', 1, NULL, NULL, NULL, NULL, NULL, 120, N'Consume card credits before bonus')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AD_PUBLISH_WINDOW_START', N'Time at which Ad publishing starts', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 121, N'Time at which Ad publishing starts')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AD_PUBLISH_WINDOW_END', N'Time at which Ad publishing ends', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 122, N'Time at which Ad publishing ends')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AD_SHOW_WINDOW_START', N'Time at which Ad show starts', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 123, N'Time at which Ad show starts')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AD_SHOW_WINDOW_END', N'Time at which Ad show ends', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 124, N'Time at which Ad show ends')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IMAGE_DIRECTORY', N'Images folder name', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 125, N'Images folder name')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_POPUP_CARD_PROMOTIONS_IN_POS', N'Atomatically pop up card promotions screen on card swipe', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 126, N'Atomatically pop up card promotions screen on card swipe')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_ON_DEMAND_ROAMING', N'Enable on-demand roaming from sites which are not in auto-roam zone', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 127, N'Enable on-demand roaming from sites which are not in auto-roam zone')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTOMATIC_ON_DEMAND_ROAMING', N'Automatically get card details from sites which are not in auto-roam zone', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 128, N'Automatically get card details from sites which are not in auto-roam zone')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEBUG_MODE', N'Debug Mode', N'true', N'bool', N'server', 1, NULL, NULL, NULL, NULL, NULL, 129, N'Debug Mode')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_PRINT_IN_SHIFT_OPEN_CLOSE', N'Allow Printing of shift open-close', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 130, N'Allow Printing of shift open-close')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEFAULT_TCP_PORT', N'Default TCP Port to connect to Access Points / Readers', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 131, N'Default TCP Port to connect to Access Points / Readers')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REGISTRATION_MANDATORY_FOR_VIP', N'Customer registration mandatory for VIP status', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 132, N'Customer registration mandatory for VIP status')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_UPDATE_PHYSICAL_TICKETS_ON_CARD', N'Load physical tickets to card automatically', N'true', N'bool', N'server', 1, NULL, NULL, NULL, NULL, NULL, 133, N'Load physical tickets to card automatically')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_SMTP_SSL', N'Enable SSL for SMTP Client', N'False', N'bool', N'Email', 1, NULL, NULL, NULL, NULL, CAST(N'2019-04-27T01:09:19.437' AS DateTime), 134, N'Enable SSL for SMTP Client')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_FINGER_PRINT_ATTENDANCE', N'Enable Finger Print Attendance recording in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 135, N'Enable Finger Print Attendance recording in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'OPEN_CASH_DRAWER', N'Auto open cash drawer on transaction save or receipt print', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 136, N'Auto open cash drawer on transaction save or receipt print')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CASH_DRAWER_INTERFACE', N'Cash Drawer Interface', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 137, N'Cash Drawer Interface')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CASH_DRAWER_PRINT_STRING', N'Print string to open cash drawer through receipt printer', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 138, N'Print string to open cash drawer through receipt printer')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CASH_DRAWER_SERIAL_PORT', N'Serial Port number for cash drawer interface', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 139, N'Serial Port number for cash drawer interface')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CASH_DRAWER_SERIAL_PORT_BAUD', N'Serial Port baud rate for cash drawer interface', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 140, N'Serial Port baud rate for cash drawer interface')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CASH_DRAWER_SERIALPORT_STRING', N'Print string to open cash drawer through serial port', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 141, N'Print string to open cash drawer through serial port')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MINIMUM_REDEEM_TICKETS_FOR_SIGNAGE', N'Minimum no of tickets to be redeemed for displaying redemption info in digital signage', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 142, N'Minimum no of tickets to be redeemed for displaying redemption info in digital signage')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'COMMUNICATION_FAILURE_RETRIES', N'Retry attempts on communciation failure', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 143, N'Retry attempts on communciation failure')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_TICKET_BORDER', N'Print border for Tickets', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 144, N'Print border for Tickets')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MIFARE_CARD', N'Card type is Mi-Fare read-write card', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 145, N'Card type is Mi-Fare read-write card')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_REFUND_OF_CREDITPLUS', N'Allow refund of card creditplus', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 146, N'Allow refund of card creditplus')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CREDITCARD_DETAILS_MANDATORY', N'Credit Card details in payment screen mandatory', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 147, N'Credit Card details in payment screen mandatory')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PREFERRED_NON-CASH_PAYMENT_MODE', N'Preferred non-cash payment mode in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 148, N'Preferred non-cash payment mode in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_PRINT_SHIFT_CLOSE_RECEIPT', N'Automatically Print shift close receipt on shift close', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 149, N'Automatically Print shift close receipt on shift close')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'COMMUNICATION_RETRY_DELAY', N'Delay between each communication retry attempts in ms', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 150, N'Delay between each communication retry attempts in ms')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IP_MASK_FOR_NETWORK_SCAN', N'IP Mask of network to be scanned to find MAC addresses', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 151, N'IP Mask of network to be scanned to find MAC addresses')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'COMMUNICATION_SEND_DELAY', N'Delay between each send to readers in ms', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 152, N'Delay between each send to readers in ms')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SOCKET_SEND_RECEIVE_TIMEOUT', N'Timeout in ms for socket send and receive', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 153, N'Timeout in ms for socket send and receive')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_CONCURRENT_USER_LOGIN', N'Allow concurrent POS login by same user', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 154, N'Allow concurrent POS login by same user')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SHOW_POLLING_INDICATOR', N'Show polling status indicator', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 155, N'Show polling status indicator')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SHOW_DETAILED_POLL_STATUS', N'Show detailed polling status', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 156, N'Show detailed polling status')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINTER_PAGE_LEFT_MARGIN', N'Receipt Printer left side margin in 100ths of an inch', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 157, N'Receipt Printer left side margin in 100ths of an inch')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINTER_PAGE_RIGHT_MARGIN', N'Receipt Printer right side margin in 100ths of an inch', N'true', N'bool', N'print', 1, NULL, NULL, NULL, NULL, NULL, 158, N'Receipt Printer right side margin in 100ths of an inch')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'INVENTORY_QUANTITY_FORMAT', N'Display format for Inventory Quantity', N'', N'string', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 159, N'Display format for Inventory Quantity')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'INVENTORY_COST_FORMAT', N'Display format for Inventory Cost', N'', N'string', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 160, N'Display format for Inventory Cost')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MINIMUM_RECHARGE_FOR_VIP_STATUS', N'Minimum total recharge amount to get VIP status', N'', N'string', N'price', 1, NULL, NULL, NULL, NULL, NULL, 161, N'Minimum total recharge amount to get VIP status')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REGISTRATION_MANDATORY_FOR_MEMBERSHIP', N'Customer registration mandatory for Membership status', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 162, N'Customer registration mandatory for Membership status')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_DUPLICATE_UNIQUE_ID', N'Allow duplication of Unique Id in customer registration', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 163, N'Allow duplication of Unique Id in customer registration')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'GAMEPLAY_TICKETS_EXPIRY_DAYS', N'Number of days for game play tickets to expire', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 164, N'Number of days for game play tickets to expire')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_EXTEND_GAMEPLAY_TICKETS_ON_RELOAD', N'Automatically extend expiry date of game play tickets on reload', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 165, N'Automatically extend expiry date of game play tickets on reload')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOAD_BONUS_EXPIRY_DAYS', N'Number of days for loaded bonus to expire', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 166, N'Number of days for loaded bonus to expire')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_EXTEND_BONUS_ON_RELOAD', N'Automatically extend expiry date of bonus on reload', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 167, N'Automatically extend expiry date of bonus on reload')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_MANUAL_CARD_IN_REDEMPTION', N'Allow entering card number manually in Redemption', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 168, N'Allow entering card number manually in Redemption')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DISPLAY_VIP_PRICE_ONLY_IF_DIFFERENT', N'Display VIP Price only if it is different from Normal Price', N'true', N'bool', N'server', 1, NULL, NULL, NULL, NULL, NULL, 169, N'Display VIP Price only if it is different from Normal Price')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_MANDATORY_FOR_TRANSACTION', N'Card Mandatory for Transaction', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, NULL, 170, N'Card Mandatory for Transaction')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_ISSUE_MANDATORY_FOR_CHECKOUT', N'Card issue mandatory for Check-Out products', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 171, N'Card issue mandatory for Check-Out products')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'USE_ORIGINAL_TRXNO_FOR_REFUND', N'Use the original card deposit transaction number for refund transaction', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, NULL, 172, N'Use the original card deposit transaction number for refund transaction')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'EXCLUDE_ZERO_PRICE_SALE_IN_TRX_REPORT', N'Exclude product sales with zero price in transaction report', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 173, N'Exclude product sales with zero price in transaction report')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'EXCLUDE_SPECIAL_PRICING_IN_TRX_REPORT', N'Exclude special pricing section in transaction report', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 174, N'Exclude special pricing section in transaction report')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_MANUAL_CARD_UPDATE', N'Allow manual card update in Management Studio', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 175, N'Allow manual card update in Management Studio')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_REDEMPTION_WITHOUT_CARD', N'Allow redemption without customer card', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 176, N'Allow redemption without customer card')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'COIN_ACCEPTOR', N'Kiosk Coin Acceptor', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 177, N'Kiosk Coin Acceptor')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'BILL_ACCEPTOR', N'Kiosk Bill Acceptor', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 178, N'Kiosk Bill Acceptor')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_DISPENSER', N'Kiosk Card Dispenser', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 179, N'Kiosk Card Dispenser')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VIP_POS_ALERT_RECHARGE_THRESHOLD', N'Recharge threshold amount to alert for VIP upgrade in POS', N'', N'string', N'price', 1, NULL, NULL, NULL, NULL, NULL, 180, N'Recharge threshold amount to alert for VIP upgrade in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VIP_POS_ALERT_SPEND_THRESHOLD', N'Spend threshold amount to alert for VIP upgrade in POS', N'', N'string', N'price', 1, NULL, NULL, NULL, NULL, NULL, 181, N'Spend threshold amount to alert for VIP upgrade in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOG_TICKET_UPDATE_EVENT', N'Log ticket updates from game machines', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 182, N'Log ticket updates from game machines')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_DISPENSER_READER_OPT_STRING', N'Optional string of Card Dispenser USB card reader', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 183, N'Optional string of Card Dispenser USB card reader')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'UNIQUE_ID_MANDATORY_FOR_VIP', N'Unique Id mandatory for VIP status', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 184, N'Unique Id mandatory for VIP status')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FISCAL_PRINTER_PORT_NUMBER', N'Fiscal Printer COM Port Number', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 185, N'Fiscal Printer COM Port Number')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FISCAL_PRINTER_BAUD_RATE', N'Fiscal Printer COM Port Baud Rate', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 186, N'Fiscal Printer COM Port Baud Rate')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FISCAL_PRINTER_PASSWORD', N'Fiscal Printer Password', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 187, N'Fiscal Printer Password')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'USE_FISCAL_PRINTER', N'Use Fiscal Printer instead of Regular Receipt Printer', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 188, N'Use Fiscal Printer instead of Regular Receipt Printer')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'RESET_TRXNO_AT_POS_LEVEL', N'Reset Trx No at POS level every business day', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, NULL, 189, N'Reset Trx No at POS level every business day')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_MANUAL_OVERRIDE', N'Allow manual override of queue system', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 190, N'Allow manual override of queue system')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'QUEUE_ENTRY_ADVANCE_TIME', N'Advance time to look to make an entry in queue', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 191, N'Advance time to look to make an entry in queue')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'QUEUE_MAX_ENTRIES', N'Maximum entries allowed in queue', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 192, N'Maximum entries allowed in queue')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'GAMEPLAY_END_WAIT_TIME', N'Wait time before removing customer from queue after play end', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 193, N'Wait time before removing customer from queue after play end')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'QUEUE_SETUP_TIME', N'Queue setup time between game plays', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 194, N'Queue setup time between game plays')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'QUEUE_BUFFER_TIME', N'Buffer to keep between game plays (excluding queue setup time)', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 195, N'Buffer to keep between game plays (excluding queue setup time)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'END_OF_PLAY_WARNING_TIME', N'Time when warning be shown before game is coming to end', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 196, N'Time when warning be shown before game is coming to end')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'END_OF_PLAY_ERROR_TIME', N'Time when error be shown before game is coming to end', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 197, N'Time when error be shown before game is coming to end')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PLAY_START_ALERT_TIME', N'When the user should be highlighted to be called in', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 198, N'When the user should be highlighted to be called in')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'THIRD_PARTY_SYSTEM_SYNCH_URL', N'External game play management system web service URL', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 199, N'External game play management system web service URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'THIRD_PARTY_SYSTEM_SYNCH_FREQUENCY', N'External system synchrnoize Frequency in Seconds', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 200, N'External system synchrnoize Frequency in Seconds')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOAD_BONUS_LIMIT', N'Max Load Bonus amount', N'3000', N'int', N'Limit', 1, NULL, NULL, NULL, NULL, CAST(N'2019-04-26T10:44:24.900' AS DateTime), 201, N'Max Load Bonus amount')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOAD_TICKETS_LIMIT', N'Max Load Tickets count', N'3909', N'int', N'Limit', 1, NULL, NULL, NULL, NULL, CAST(N'2019-04-26T10:45:25.870' AS DateTime), 202, N'Max Load Tickets count')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TRANSACTION_AMOUNT_LIMIT', N'Max transaction amount', N'4000', N'int', N'Limit', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-03T23:25:26.450' AS DateTime), 203, N'Max transaction amount')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MONEY_SCREEN_TIMEOUT', N'Time out in money screen if money not inserted', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 204, N'Time out in money screen if money not inserted')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOAD_FULL_VAR_AMOUNT_AS_CREDITS', N'Load the entire variable amount as credits, without considering tax amount in case of tax inclusive var. product', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, NULL, 205, N'Load the entire variable amount as credits, without considering tax amount in case of tax inclusive var. product')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'INVALIDATE_SRC_CARD_ON_CONSOLIDATE', N'Invalidate source cards on Consolidate', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 206, N'Invalidate source cards on Consolidate')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ADDRESS1', N'Show ADDRESS1', N'0', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, CAST(N'2019-07-06T03:12:01.760' AS DateTime), 207, N'Show ADDRESS1')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ADDRESS2', N'Show ADDRESS2', N'0', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, CAST(N'2019-07-06T03:12:01.607' AS DateTime), 208, N'Show ADDRESS2')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ADDRESS3', N'Show ADDRESS3', N'0', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, CAST(N'2019-07-06T03:32:47.153' AS DateTime), 209, N'Show ADDRESS3')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CITY', N'Show CITY', N'0', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, CAST(N'2019-07-06T03:32:47.180' AS DateTime), 210, N'Show CITY')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'STATE', N'Show STATE', N'0', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, CAST(N'2019-07-06T03:32:47.210' AS DateTime), 211, N'Show STATE')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'COUNTRY', N'Show COUNTRY', N'0', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, CAST(N'2019-07-06T03:32:47.273' AS DateTime), 212, N'Show COUNTRY')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PIN', N'Show PIN', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 213, N'Show PIN')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'EMAIL', N'Show EMAIL', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 214, N'Show EMAIL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'BIRTH_DATE', N'Show BIRTH_DATE', N'1', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, NULL, 215, N'Show BIRTH_DATE')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'GENDER', N'Show GENDER', N'2', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, NULL, 216, N'Show GENDER')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ANNIVERSARY', N'Show ANNIVERSARY', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 217, N'Show ANNIVERSARY')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CONTACT_PHONE1', N'Show CONTACT_PHONE1', N'1', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, NULL, 218, N'Show CONTACT_PHONE1')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CONTACT_PHONE2', N'Show CONTACT_PHONE2', N'1', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, NULL, 219, N'Show CONTACT_PHONE2')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'NOTES', N'Show NOTES', N'1', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, NULL, 220, N'Show NOTES')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'COMPANY', N'Show COMPANY', N'1', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, CAST(N'2019-07-06T03:13:06.213' AS DateTime), 221, N'Show COMPANY')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DESIGNATION', N'Show DESIGNATION', N'1', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, CAST(N'2019-07-06T03:13:06.293' AS DateTime), 222, N'Show DESIGNATION')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'UNIQUE_ID', N'Show UNIQUE_ID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 223, N'Show UNIQUE_ID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'USERNAME', N'Show USERNAME', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 224, N'Show USERNAME')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FBUSERID', N'Show FBUSERID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 225, N'Show FBUSERID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FBACCESSTOKEN', N'Show FBACCESSTOKEN', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 226, N'Show FBACCESSTOKEN')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TWACCESSTOKEN', N'Show TWACCESSTOKEN', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 227, N'Show TWACCESSTOKEN')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TWACCESSSECRET', N'Show TWACCESSSECRET', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 228, N'Show TWACCESSSECRET')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'RIGHTHANDED', N'Show RIGHTHANDED', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 229, N'Show RIGHTHANDED')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TEAMUSER', N'Show TEAMUSER', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 230, N'Show TEAMUSER')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ADD_CREDITPLUS_IN_CARD_INFO', N'Add CreditPlus to Credits/Bonus in card info in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 231, N'Add CreditPlus to Credits/Bonus in card info in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REDEMPTION_TICKET_NAME_VARIANT', N'A variant name for Redemption Tickets in Redemption screen', N'true', N'string', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 232, N'A variant name for Redemption Tickets in Redemption screen')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REVERSE_DESKTOP_CARD_NUMBER', N'Reverse the card number read by desktop card reader', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 233, N'Reverse the card number read by desktop card reader')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'QUEUE_VIEW_REFRESH', N'Refresh The Queue Management App', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 234, N'Refresh The Queue Management App')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CUSTOMER_USERNAME_LENGTH', N'Customer Username length (0 for variable)', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 235, N'Customer Username length (0 for variable)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_CHECK_IN_PRODUCT', N'Check-in product for automatically checking-in on card tap', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 236, N'Check-in product for automatically checking-in on card tap')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_CHECK_IN_POS', N'Indicates whether a POS automatically checks-in a customer on card tap', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 237, N'Indicates whether a POS automatically checks-in a customer on card tap')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_PRODUCT_BUTTON_SIZE', N'Card Product Button size in POS (% of standard size)', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 238, N'Card Product Button size in POS (% of standard size)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'NON-CARD_PRODUCT_BUTTON_SIZE', N'Non-card Product Button size in POS (% of standard size)', N'', N'string', N'Formats', 1, NULL, NULL, NULL, NULL, NULL, 239, N'Non-card Product Button size in POS (% of standard size)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_DIGITAL_TOKEN', N'Enable Digital Token - to verify valid gameplay as per queue entry', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 240, N'Enable Digital Token - to verify valid gameplay as per queue entry')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DIGITAL_TOKEN_ENABLE_COUNT', N'Number of queue positions that can be accepted as valid digital tokens', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 241, N'Number of queue positions that can be accepted as valid digital tokens')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CUSTOMER_EMAIL_OR_PHONE_MANDATORY', N'Ensure customer email or phone is entered mandatorily', N'true', N'bool', N'customer', 1, NULL, NULL, NULL, NULL, NULL, 242, N'Ensure customer email or phone is entered mandatorily')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_DEBITCARD_PAYMENT_POS', N'POS is designated as auto-debit card payment POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 243, N'POS is designated as auto-debit card payment POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_SAVE_CHECKIN-CHECKOUT', N'Automatically save transaction after CheckIn-CheckOut', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 244, N'Automatically save transaction after CheckIn-CheckOut')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ADDITIONAL_BACKUP_PATH', N'Additonal Backup Path (For e.g., Pen Drive)', N'', N'string', N'BackUp', 1, NULL, NULL, NULL, NULL, NULL, 245, N'Additonal Backup Path (For e.g., Pen Drive)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_PHYSICAL_TICKET_RECEIPT_SCAN', N'Enable scan of physical ticket receipts during Redemption', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 246, N'Enable scan of physical ticket receipts during Redemption')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'KIOSK_PRODUCT_SCREEN_GREETING', N'Custom customer greeting in kiosk product screen', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 247, N'Custom customer greeting in kiosk product screen')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ZERO_PRICE_GAMETIME_PLAY', N'Consider price of Game Time play to be 0', N'true', N'bool', N'price', 1, NULL, NULL, NULL, NULL, NULL, 248, N'Consider price of Game Time play to be 0')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ZERO_PRICE_CARDGAME_PLAY', N'Consider price of Card Games play to be 0', N'true', N'bool', N'price', 1, NULL, NULL, NULL, NULL, NULL, 249, N'Consider price of Card Games play to be 0')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'UNIQUE_PRODUCT_REMARKS', N'Make transaction product remarks unique', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, NULL, 250, N'Make transaction product remarks unique')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'RETAIN_BACKUP_FILES_FOR_DAYS', N'Days to retain backup files for in backup folder', N'', N'string', N'BackUp', 1, NULL, NULL, NULL, NULL, NULL, 251, N'Days to retain backup files for in backup folder')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'RETAIN_REMOTE_BACKUP_FILES_FOR_DAYS', N'Days to retain backup files for in remote backup folder', N'', N'string', N'BackUp', 1, NULL, NULL, NULL, NULL, NULL, 252, N'Days to retain backup files for in remote backup folder')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ROUND_OFF_AMOUNT_TO', N'Round off amount to...', N'0.01', N'string', N'Transaction', 1, NULL, NULL, NULL, NULL, CAST(N'2019-04-26T11:57:35.707' AS DateTime), 253, N'Round off amount to...')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ROUNDING_TYPE', N'Rounding algorithm to use for trx cash payments', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 254, N'Rounding algorithm to use for trx cash payments')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEFAULT_LANGUAGE', N'Default language', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 255, N'Default language')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_AUTO_PURGE', N'Enable automatic purge of old data by system', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 256, N'Enable automatic purge of old data by system')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CRM_SMTP_HOST', N'CRM SMTP Hostname or IP Address', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 257, N'CRM SMTP Hostname or IP Address')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CRM_SMTP_PORT', N'CRM SMTP Port number (default 587, -1 to ignore)', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 258, N'CRM SMTP Port number (default 587, -1 to ignore)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CRM_SMTP_NETWORK_USERNAME', N'CRM SMTP Login Username', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 259, N'CRM SMTP Login Username')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CRM_SMTP_NETWORK_PASSWORD', N'CRM SMTP Login Password', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 260, N'CRM SMTP Login Password')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CRM_SMTP_FROM_NAME', N'CRM Display Name for From Address', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 261, N'CRM Display Name for From Address')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CRM_ENABLE_SMTP_SSL', N'Enable SSL for SMTP Client for CRM', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 262, N'Enable SSL for SMTP Client for CRM')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CRM_SMS_PROVIDER_URL', N'CRM SMS Provider URL', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 263, N'CRM SMS Provider URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CRM_SMS_USERNAME', N'CRM SMS Login Username', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 264, N'CRM SMS Login Username')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CRM_SMS_PASSWORD', N'CRM SMS Login Password', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 265, N'CRM SMS Login Password')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'POLE_DISPLAY_BAUDRATE', N'Pole Display Baud Rate', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 266, N'Pole Display Baud Rate')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ATTENDANCE_TYPE_DETERMINATION_METHOD', N'Attendance Type Determination Method', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 267, N'Attendance Type Determination Method')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEFAULT_WORKSHIFT_STARTTIME', N'Default Time for shift start', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 268, N'Default Time for shift start')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CUSTOMER_PHOTO', N'Customer Photo', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 269, N'Customer Photo')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REQUIRE_LOGIN_FOR_EACH_TRX', N'Requires user authentication for each transaction', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 270, N'Requires user authentication for each transaction')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'POS_INACTIVE_TIMEOUT', N'Inactivity time (mins) after which re-authentication required by user', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 271, N'Inactivity time (mins) after which re-authentication required by user')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'INCLUDE_TAXAMOUNT_FOR_LOYALTY_CALC', N'Loyalty is calculated on the total amount including tax', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 272, N'Loyalty is calculated on the total amount including tax')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'BUSINESS_DAY_START_TIME', N'Business day start hour', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 273, N'Business day start hour')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_POS_ATTENDANCE', N'Log attendance on POS login / tech card tap', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 274, N'Log attendance on POS login / tech card tap')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ATTRACTION_BOOKING_GRACE_PERIOD', N'Grace Period in minutes while booking past attraction schedules', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 275, N'Grace Period in minutes while booking past attraction schedules')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CUT_RECEIPT_PAPER', N'Cut receipt paper or not', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 276, N'Cut receipt paper or not')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CUT_TICKET_PAPER', N'Cut attraction ticket paper or not', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 277, N'Cut attraction ticket paper or not')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CUT_PAPER_PRINTER_COMMAND', N'Command string to send to printer to cut paper', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 278, N'Command string to send to printer to cut paper')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SIGNAGE_FOLDER', N'Server Folder for Signage files', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:02:29.630' AS DateTime), 279, N'Server Folder for Signage files')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'RELOGIN_USER_AFTER_INACTIVE_TIMEOUT', N'Relogin or just authenticate after POS inactivity timeout', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 280, N'Relogin or just authenticate after POS inactivity timeout')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SHUTDOWN_SERVERS_DURING_MAINTENANCE', N'Shutdown child servers during maintenance window', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 281, N'Shutdown child servers during maintenance window')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REGISTRATION_MANDATORY_FOR_REDEMPTION', N'Redemption allowed only on registered cards', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 282, N'Redemption allowed only on registered cards')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VERIFIED', N'Show VERIFIED', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 283, N'Show VERIFIED')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOG_INACTIVE_TERMINALS', N'Log non-communicating readers in EventLog', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 284, N'Log non-communicating readers in EventLog')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'COMBO_PRODUCT_BUTTON_SIZE', N'COMBO Product Button size in POS (% of standard size)', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 285, N'COMBO Product Button size in POS (% of standard size)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_TECH_CARD_UPDATE', N'Allow technician card update in Management Studio', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 286, N'Allow technician card update in Management Studio')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FISCAL_PRINTER', N'Fiscal Printer Interface', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 287, N'Fiscal Printer Interface')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FISCAL_PRINTER_FILE_FOLDER', N'Folder name for Fiscal printer files', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 288, N'Folder name for Fiscal printer files')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOAD_PRODUCT_ON_REGISTRATION', N'Reward customer with entitlements on registration', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 289, N'Reward customer with entitlements on registration')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MIFARE_READONLY', N'Card type is Mi-Fare read-only card', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 290, N'Card type is Mi-Fare read-only card')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_POS_DEBUG', N'Enable POS Debug', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 291, N'Enable POS Debug')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DISABLE_TRX_COMPLETE', N'Disable Complete button in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 292, N'Disable Complete button in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DISABLE_ORDER_SUSPEND', N'Disable Order/Suspend button in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 293, N'Disable Order/Suspend button in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAKE_CARD_NEW_ON_FULL_REFUND', N'By default, make the card NEW after refunding fully', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 295, N'By default, make the card NEW after refunding fully')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'INITLOAD_BATCH_SIZE', N'Number of records to upload in each batch during initial upload', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 296, N'Number of records to upload in each batch during initial upload')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_BOOKINGS_IN_POS', N'Enable Bookings Tab in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 297, N'Enable Bookings Tab in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_ORDER_SHARE_ACROSS_POS', N'Enable viewing of Orders across POS terminals', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 298, N'Enable viewing of Orders across POS terminals')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_MANUAL_TICKET_IN_REDEMPTION', N'Enable manual ticket entry in Redemption', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 299, N'Enable manual ticket entry in Redemption')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'READER_TYPE', N'Type of Reader used', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 300, N'Type of Reader used')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'bowlertype', N'bowlertype', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 301, N'bowlertype')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'External System Identifier', N'External System Identifier', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 302, N'External System Identifier')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'POS_MAC_ADDRESS', N'POS / Signage MAC Address', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 303, N'POS / Signage MAC Address')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'KIOSK_CREDITCARD_PAYMENT_MODE', N'Credit Card Payment Mode for Kiosks', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 304, N'Credit Card Payment Mode for Kiosks')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REGISTER_CUSTOMER_WITHOUT_CARD', N'Allow customer registration without card', N'true', N'bool', N'customer', 1, NULL, NULL, NULL, NULL, NULL, 305, N'Allow customer registration without card')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_EXPIRY_RULE', N'Method used to calculate card expiry date', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 306, N'Method used to calculate card expiry date')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PASSWORD', N'Show PASSWORD', N'1', N'dropdown', N'customer', 1, NULL, NULL, NULL, NULL, CAST(N'2019-07-06T03:13:06.330' AS DateTime), 307, N'Show PASSWORD')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LASTLOGINTIME', N'Show LASTLOGINTIME', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 308, N'Show LASTLOGINTIME')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'EXTERNALSYSTEMREF', N'Show EXTERNALSYSTEMREF', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 309, N'Show EXTERNALSYSTEMREF')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IS_VALID', N'Show IS_VALID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 310, N'Show IS_VALID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'KDS_TERMINAL_REFRESH_INTERVAL', N'KDS Terminal refresh rate in seconds', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 311, N'KDS Terminal refresh rate in seconds')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'KDS_DELIVERY_ALERT_INTERVALS', N'Delivery alert intervals in minutes. Separate each interval by | character.', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 312, N'Delivery alert intervals in minutes. Separate each interval by | character.')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PARAFAIT_HOME', N'Parafait Home Folder', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 313, N'Parafait Home Folder')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CONCURRENT_MANAGER_ENABLED', N'Enable Concurrent Manager', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 314, N'Enable Concurrent Manager')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REDEMPTION_GRACE_TICKETS', N'Number of grace tickets to add during redemption', N'true', N'string', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 315, N'Number of grace tickets to add during redemption')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REDEMPTION_GRACE_TICKETS_PERCENTAGE', N'% of grace tickets to add during redemption', N'true', N'string', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 316, N'% of grace tickets to add during redemption')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DOWNGRADE_MEMBERSHIP_IF_INACTIVE_FOR', N'Downgrade membership if customer inactive for a period. (in months)', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 317, N'Downgrade membership if customer inactive for a period. (in months)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'KDS_ORDER_DISPLAY_PANEL_WIDTH', N'Width of KDS Order display area', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 318, N'Width of KDS Order display area')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FULL_SCREEN_POS', N'Show POS in full screen', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 319, N'Show POS in full screen')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MINIMUM_BREAK_TIME', N'Minimum break time', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 320, N'Minimum break time')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAXIMUM_BREAK_TIME', N'Maximum break time', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 321, N'Maximum break time')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SHOW_DISPLAY_GROUP_BUTTONS', N'Display product display groups as buttons in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 322, N'Display product display groups as buttons in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CLOCK_IN_MANDATORY_FOR_TRX', N'Clock-in mandatory for POS transactions', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, NULL, 323, N'Clock-in mandatory for POS transactions')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_MANUAL_CARD_IN_LOAD_BONUS', N'Allow manual card number in Load Bonus task', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 324, N'Allow manual card number in Load Bonus task')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SHOW_HOME_SCREEN', N'Show Home Screen in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 325, N'Show Home Screen in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_SHOW_TENDERED_AMOUNT_KEY_PAD', N'Automatically show number pad form in POS for cash tendered', N'true', N'bool', N'Payment', 1, NULL, NULL, NULL, NULL, NULL, 326, N'Automatically show number pad form in POS for cash tendered')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'HIDE_REFUND_IN_PRODUCT_TAB', N'Hide Refund button in Products tab in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 327, N'Hide Refund button in Products tab in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'HIDE_CC_DETAILS_IN_PAYMENT_SCREEN', N'Hide credit card details in payment screen', N'true', N'bool', N'Payment', 1, NULL, NULL, NULL, NULL, NULL, 328, N'Hide credit card details in payment screen')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_REFRESH_POS_PRODUCTS', N'Automatically refresh Products and Discounts in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 329, N'Automatically refresh Products and Discounts in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'OPEN_CASH_DRAWER_REQUIRES_MANAGER_APPROVAL', N'Manager approval required to open cash drawer', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 330, N'Manager approval required to open cash drawer')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_NEW_CARDS_FOR_CHILDCARDS', N'Allow NEW cards while linking child cards to a parent card', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 331, N'Allow NEW cards while linking child cards to a parent card')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_PARENTCARD_PAYMENT_WITHOUT_CARD', N'Allow payment by parent cards to top-up child cards without the physical parent card', N'true', N'bool', N'Payment', 1, NULL, NULL, NULL, NULL, NULL, 332, N'Allow payment by parent cards to top-up child cards without the physical parent card')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IGNORE_CUSTOMER_BIRTH_YEAR', N'Ignore year part in customer date of birth', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 333, N'Ignore year part in customer date of birth')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PLAY_KIOSK_AUDIO', N'Play audio in Kiosk', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 334, N'Play audio in Kiosk')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_MANUAL_CARD_IN_POS', N'Allow manual entry of card in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 335, N'Allow manual entry of card in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_COMBO_DETAILS_QUANTITY', N'Print product quantity for combo details', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 336, N'Print product quantity for combo details')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_KIOSK_LANGUAGE_CHANGE', N'Allow users to change kiosk language', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 337, N'Allow users to change kiosk language')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DOWNLOADBATCHID', N'Show DOWNLOADBATCHID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 338, N'Show DOWNLOADBATCHID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'POPUP_FAKE_NOTE_DETECTION_ALERT', N'Pop up an alert for fake note detection on transaction save in POS', N'true', N'bool', N'Payment', 1, NULL, NULL, NULL, NULL, NULL, 339, N'Pop up an alert for fake note detection on transaction save in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'POS_QUANTITY_DECIMALS', N'Number of decimals to show for POS quanity', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 340, N'Number of decimals to show for POS quanity')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_DISPENSER_READER_VID', N'Card Dispenser USB Reader VID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 341, N'Card Dispenser USB Reader VID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_DISPENSER_READER_PID', N'Card Dispenser USB Reader PID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 342, N'Card Dispenser USB Reader PID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LAST_NAME', N'Show LAST_NAME', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 343, N'Show LAST_NAME')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_CLOSE_IN_READ_CARD_SCREEN', N'Allow user to Close card read screen', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 344, N'Allow user to Close card read screen')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'STATE_LOOKUP_FOR_COUNTRY', N'Country of whose States to be displayed in State lookups', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 345, N'Country of whose States to be displayed in State lookups')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'KIOSK_CARD_VALUE_FORMAT', N'Number Format to display card values in Kiosk', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 346, N'Number Format to display card values in Kiosk')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'READER_PING_TIMEOUT', N'Ping time-out during network scan of readers', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 347, N'Ping time-out during network scan of readers')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'NETWORK_SCAN_FREQUENCY', N'Frequency in seconds for network scan of readers', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 348, N'Frequency in seconds for network scan of readers')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SHOW_REGISTRATION_AGE_GATE', N'Show age gate before registering customer', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 349, N'Show age gate before registering customer')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REGISTRATION_AGE_LIMIT', N'Age limit for registering in kiosk', N'2000', N'int', N'Limit', 1, NULL, NULL, NULL, NULL, NULL, 350, N'Age limit for registering in kiosk')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'KIOSK_VARIABLE_TOPUP_PRODUCT', N'Generic variable top-up product to use for additional amounts inserted in kiosk', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 351, N'Generic variable top-up product to use for additional amounts inserted in kiosk')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CANCEL_PRINTED_TRX_LINE', N'Allow canceling of printed trx line in POS', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, NULL, 352, N'Allow canceling of printed trx line in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_PRINT_KOT', N'Automatically print KOT on save of an Order', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 353, N'Automatically print KOT on save of an Order')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PAYMENT_DENOMINATIONS', N'Denominations to show for tendered amount', N'10|5|1', N'string', N'Payment', 1, NULL, NULL, NULL, NULL, NULL, 354, N'Denominations to show for tendered amount')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IS_ALOHA_ENV', N'Indicates Aloha environment', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 355, N'Indicates Aloha environment')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALOHA_TERM_ID', N'Aloha Terminal ID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 356, N'Aloha Terminal ID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALOHA_JOB_CODE', N'Aloha Job Code', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 357, N'Aloha Job Code')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_ONLY_CC_PAYMENT_IN_POS', N'Allow only Credit Card Payment in POS', N'true', N'bool', N'Payment', 1, NULL, NULL, NULL, NULL, NULL, 358, N'Allow only Credit Card Payment in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALOHA_USER_ID', N'Aloha User Id', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 359, N'Aloha User Id')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALOHA_USER_PASSWORD', N'Aloha User Password', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 360, N'Aloha User Password')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_ACCEPTOR_BAUDRATE', N'Card Acceptor serial port baud rate', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 361, N'Card Acceptor serial port baud rate')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_THRID_PARTY_RECEIPT', N'Third party receipt prints receipt or not', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 362, N'Third party receipt prints receipt or not')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DISABLE_PURCHASE_ON_CARD_LOW_LEVEL', N'Disable New Card purchase on card low level', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 363, N'Disable New Card purchase on card low level')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'RELAY_BOARD_INTERFACE', N'Interface used to control relay board (used to switch on/off pool table lights)', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 364, N'Interface used to control relay board (used to switch on/off pool table lights)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IDPROOFFILENAME', N'Show IDPROOFFILENAME', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 365, N'Show IDPROOFFILENAME')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'HIDE_CHECK-IN_DETAILS', N'Hide Check-In details screen in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 366, N'Hide Check-In details screen in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_GAME_READER_ATTENDANCE', N'Enable recording of attendance of tech cards at game readers', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 367, N'Enable recording of attendance of tech cards at game readers')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REPORTS_VERSION', N'Reports version', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 368, N'Reports version')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENFORCE_PARENT_ACCOUNT_FOR_GAMEPLAY', N'Use parent card for game play when child card is tapped', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 369, N'Use parent card for game play when child card is tapped')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_LOAD_BALANCE_TICKETS_TO_CARD', N'Balance physical tickets after redemption should be loaded to card automatically', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 370, N'Balance physical tickets after redemption should be loaded to card automatically')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_PRINT_BALANCE_TICKETS', N'Balance physical tickets after redemption should be printed as voucher automatically', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 371, N'Balance physical tickets after redemption should be printed as voucher automatically')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKET_VOUCHER_CHECK_DIGIT', N'Ticket voucher printed by ticket stations use check digit', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 372, N'Ticket voucher printed by ticket stations use check digit')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_MULTI_SCREEN_REDEMPTION', N'Enable multi-screen redemption', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 373, N'Enable multi-screen redemption')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAX_MANUAL_TICKETS_PER_REDEMPTION', N'Maximum allowed manual tickets per redemption', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 374, N'Maximum allowed manual tickets per redemption')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_PRINT_REDEMPTION_RECEIPT', N'Print redemption receipt automatically', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 375, N'Print redemption receipt automatically')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IMAGE_ALIGNMENT', N'Image Alignment', N'left', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:02:29.687' AS DateTime), 376, N'Image Alignment')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VIDEO_REPEAT', N'Video Repeat', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:02:29.493' AS DateTime), 377, N'Video Repeat')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VIDEO_BORDER_COLOR', N'Video Border Color', N'#46a50d', N'color', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:04:06.653' AS DateTime), 378, N'Video Border Color')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IMAGE_BORDER_COLOR', N'Image Border Color', N'#1d0f75', N'color', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:04:06.700' AS DateTime), 379, N'Image Border Color')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VIDEO_BACK_COLOR', N'Video Back Color', N'#617f1a', N'color', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:04:06.740' AS DateTime), 380, N'Video Back Color')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKER_FONT', N'Font for the ticker', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 381, N'Font for the ticker')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKER_TEXT_COLOR', N'Ticker Text Color', N'#621c13', N'color', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:04:06.780' AS DateTime), 382, N'Ticker Text Color')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKER_BACK_COLOR', N'Ticker Back Color', N'#3f1173', N'color', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:04:06.873' AS DateTime), 383, N'Ticker Back Color')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKER_BORDER_COLOR', N'Ticker Border Color', N'#7e1168', N'color', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:04:06.913' AS DateTime), 384, N'Ticker Border Color')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'UPLOAD_DIRECTORY', N'Upload Directory', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-04T10:15:07.897' AS DateTime), 385, N'Upload Directory')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REFRESH_FREQUENCY_FOR_PANEL_DATA', N'Refresh frequency for display panel', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-04T10:15:07.953' AS DateTime), 386, N'Refresh frequency for display panel')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VIDEO_REFRESH_IN_SECS', N'Video Refresh In Secs', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-04T10:15:08.097' AS DateTime), 387, N'Video Refresh In Secs')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VIDEO_BORDER_SIZE', N'Video Border Size', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 388, N'Video Border Size')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IMAGE_REFRESH_IN_SECS', N'Image Refresh Secs', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-05T10:02:29.343' AS DateTime), 389, N'Image Refresh Secs')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKER_REFRESH_IN_SECS', N'Ticker Refresh in secs', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-04T10:15:08.190' AS DateTime), 390, N'Ticker Refresh in secs')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IMAGE_SIZE', N'Size of the Image', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-04T10:15:08.233' AS DateTime), 391, N'Size of the Image')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKER_SPEED', N'Ticker Speed', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-04T10:15:08.290' AS DateTime), 392, N'Ticker Speed')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TICKER_BORDER_SIZE', N'Ticker Border Size', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-04T10:15:08.337' AS DateTime), 393, N'Ticker Border Size')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IMAGE_BORDER_SIZE', N'Image Border Size', N'test', N'string', N'signage', 1, NULL, NULL, NULL, NULL, CAST(N'2019-05-04T10:15:08.370' AS DateTime), 394, N'Image Border Size')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_CREATE_MISSING_MIFARE_CARD', N'Auto create a valid mifare card in DB if not found', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 395, N'Auto create a valid mifare card in DB if not found')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CREATE_FF_GAMEPLAY_IF_CARD_NOT_FOUND', N'Create gameplay against FF card if card not found during mifare game play', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 396, N'Create gameplay against FF card if card not found during mifare game play')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CSV_REPORTNAME_TIMESTAMP_FORMAT', N'Timestamp format in reportname for a CSV report', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 397, N'Timestamp format in reportname for a CSV report')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REPORT_FIELD_DELIMITER', N'Delimiter between fields of a report when output format is CSV', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 398, N'Delimiter between fields of a report when output format is CSV')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'POLE_DISPLAY_DATA_ENCODING', N'Encoding method for Pole display data', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 399, N'Encoding method for Pole display data')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_ORDER_SHARE_ACROSS_USERS', N'Enable viewing of Orders across users', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 400, N'Enable viewing of Orders across users')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_ORDER_SHARE_ACROSS_POS_COUNTERS', N'Enable viewing of Orders across counters', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 401, N'Enable viewing of Orders across counters')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEFAULT_USER_SECURITY_POLICY', N'Default User Security Policy', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 402, N'Default User Security Policy')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CUSTOMER_PHONE_NUMBER_WIDTH', N'Specify non-zero width to enforce fixed width for customer phone number', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 403, N'Specify non-zero width to enforce fixed width for customer phone number')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CUSTOMER_NAME_VALIDATION', N'Customer Name can contain only Alphabets', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 404, N'Customer Name can contain only Alphabets')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_AVERAGE_COST_METHOD', N'Average cost in product', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 405, N'Average cost in product')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOAD_CREDITS_INSTEAD_OF_CARD_BALANCE', N'Load credits to card instead Card Balance credit plus in Load Bonus task', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 406, N'Load credits to card instead Card Balance credit plus in Load Bonus task')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAINTENANCE_UPLOAD_DIRECTORY', N'Upload Directory', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 407, N'Upload Directory')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOCKER_SELECTION_MODE', N'Locker selection mode', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 408, N'Locker selection mode')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOCKER_LOCK_MAKE', N'Locker lock manufacturer', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 409, N'Locker lock manufacturer')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_DISPENSER_ADDRESS', N'Card Dispenser Address', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 410, N'Card Dispenser Address')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_VARIABLE_NEW_CARD_ISSUE', N'Allow purchase of NEW cards with variable amount in Kiosk', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 411, N'Allow purchase of NEW cards with variable amount in Kiosk')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ELEMENT_EXPRESS_ACCOUNT_ID', N'Element Express Account ID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 412, N'Element Express Account ID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ELEMENT_EXPRESS_ACCOUNT_TOKEN', N'Element Express Account Token', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 413, N'Element Express Account Token')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ELEMENT_EXPRESS_APPLICATION_ID', N'Element Express Application ID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 414, N'Element Express Application ID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ELEMENT_EXPRESS_ACCEPTOR_ID', N'Element Express Acceptor ID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 415, N'Element Express Acceptor ID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ELEMENT_TERMINAL_ID', N'Element Express Terminal ID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 416, N'Element Express Terminal ID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ELEMENT_EXPRESS_URL', N'Element Express URL', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 417, N'Element Express URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CREDIT_CARD_TERMINAL_PORT_NO', N'Credit Card Terminal Port number', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 418, N'Credit Card Terminal Port number')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CREDITCALL_TERMINAL_ID', N'Terminal ID defined for Creditcall payment integration', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 419, N'Terminal ID defined for Creditcall payment integration')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CREDITCALL_SERVER_ADDRESS', N'Server Address for creditcall payment integration', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 420, N'Server Address for creditcall payment integration')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CREDITCALL_SERVER_PORT', N'Server Port for Creditcall payment integration', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 421, N'Server Port for Creditcall payment integration')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IS_HAWKEYE_ENVIRONMENT', N'Denotes if Hawkeye system integration is needed', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 422, N'Denotes if Hawkeye system integration is needed')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'READ_LOCKER_INFO_ON_CARD_READ', N'Read Locker details from card / wristband when tapped', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 423, N'Read Locker details from card / wristband when tapped')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IGNORE_THIRD_PARTY_SYNCH_ERROR', N'Ignore error during third party system synchronization', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 424, N'Ignore error during third party system synchronization')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SPLIT_AND_MAP_VARIABLE_PRODUCT', N'Split and map variable product to actual products', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 425, N'Split and map variable product to actual products')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_KIOSK_CUSTOMER_VERIFICATION', N'Send verification code during customer registration', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 426, N'Send verification code during customer registration')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MANUAL_CARD_UPDATE_ENT_LIMIT', N'Maximum value for entitlements that can be set manually on a card', N'2000', N'int', N'Limit', 1, NULL, NULL, NULL, NULL, NULL, 427, N'Maximum value for entitlements that can be set manually on a card')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MANUAL_CARD_UPDATE_GAMES_LIMIT', N'Maximum value for card games that can be set manually on a card', N'2000', N'int', N'Limit', 1, NULL, NULL, NULL, NULL, NULL, 428, N'Maximum value for card games that can be set manually on a card')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOAD_BONUS_REMARKS_MANDATORY', N'Load bonus remarks are mandatory', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, NULL, 429, N'Load bonus remarks are mandatory')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOAD_BONUS_DEFAULT_ENT_TYPE', N'Default load bonus entitlement type', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, NULL, 430, N'Default load bonus entitlement type')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_LOAD_BONUS_IN_ADMIN_SCREEN', N'Enable load bonus function in admin screen', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 431, N'Enable load bonus function in admin screen')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VIP_TERM_VARIANT', N'Term used for VIP', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 432, N'Term used for VIP')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_CUSTOMER_INFO_EDIT', N'Allow editing of customer info', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 433, N'Allow editing of customer info')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'BALANCE_SCREEN_TIMEOUT', N'Time out duration in seconds for Balance check screen', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 434, N'Time out duration in seconds for Balance check screen')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MINIMAL_DETAILS_IN_ACTIVITY_SCREEN', N'Show minimal details in card activity screen', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 435, N'Show minimal details in card activity screen')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_OVERPAY_IN_KIOSK', N'Allow over-payment in kiosk', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 436, N'Allow over-payment in kiosk')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REGISTER_BEFORE_PURCHASE', N'Show Registration screen before purchase if not yet registered', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 437, N'Show Registration screen before purchase if not yet registered')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SHOW_REGISTRATION_TERMS_AND_CONDITIONS', N'Display registration terms and conditions before registration', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 438, N'Display registration terms and conditions before registration')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'KIOSK_ACTIVITY_DISPLAY_DURATION', N'Kiosk Activity display duration in minutes', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 439, N'Kiosk Activity display duration in minutes')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'LOG_CHECK_BALANCE_EVENT', N'Log balance check event on check balance reader', N'true', N'bool', N'server', 1, NULL, NULL, NULL, NULL, NULL, 440, N'Log balance check event on check balance reader')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_MIX_MODE_PAYMENT_IN_KIOSK', N'Enable Mix mode payment in Kiosk', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 441, N'Enable Mix mode payment in Kiosk')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_PRINT_LOAD_BONUS', N'Automatically print load bonus details when OK is clicked', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 442, N'Automatically print load bonus details when OK is clicked')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MANAGER_APPROVAL_TO_ADD_MANUAL_TICKET', N'Manager approval is required for adding manual tickets in redemption', N'true', N'bool', N'Redemption', 1, NULL, NULL, NULL, NULL, NULL, 443, N'Manager approval is required for adding manual tickets in redemption')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SITE_FILE_FORMAT', N'Site file format', N'', N'string', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 444, N'Site file format')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VENDOR_FILE_FORMAT', N'Vendor file format', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 445, N'Vendor file format')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRODUCT_FILE_FORMAT', N'Product file format', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 446, N'Product file format')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PO_FILE_FORMAT', N'Purchase Order file format', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 447, N'Purchase Order file format')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'RECEIPT_FILE_FORMAT', N'Receipt file format', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 448, N'Receipt file format')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'INVENTORY_UPLOAD_SERVICE_URL', N'Inventory Upload service URL', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 449, N'Inventory Upload service URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SUCCESS_EMAIL_LIST', N'List of email IDs separated with comma for sending summary after file load to HQ', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 450, N'List of email IDs separated with comma for sending summary after file load to HQ')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FAILURE_EMAIL_LIST', N'List of email IDs to which email should be sent upon failure in any stage', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 451, N'List of email IDs to which email should be sent upon failure in any stage')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FTP_URL', N'FTP URL to pick Inventory files', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 452, N'FTP URL to pick Inventory files')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FTP_USERNAME', N'FTP username to pick Inventory files', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 453, N'FTP username to pick Inventory files')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FTP_PASSSWORD', N'FTP password to pick Inventory files', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 454, N'FTP password to pick Inventory files')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FTP_SITE_FOLDER', N'Site file folder in FTP location', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 455, N'Site file folder in FTP location')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FTP_VENDOR_FOLDER', N'Vendor file folder in FTP location', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 456, N'Vendor file folder in FTP location')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FTP_PRODUCT_FOLDER', N'Product file folder in FTP location', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 457, N'Product file folder in FTP location')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FTP_PO_FOLDER', N'PO file folder in FTP location', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 458, N'PO file folder in FTP location')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FTP_RECEIPT_FOLDER', N'Receipt file folder in FTP location', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 459, N'Receipt file folder in FTP location')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SITE_TEMPLATE_FILE_PATH', N'Template csv for Site file comparison', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 460, N'Template csv for Site file comparison')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'VENDOR_TEMPLATE_FILE_PATH', N'Template csv for Supplier file comparison', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 461, N'Template csv for Supplier file comparison')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRODUCT_TEMPLATE_FILE_PATH', N'Template csv for Items file comparison', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 462, N'Template csv for Items file comparison')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PO_TEMPLATE_FILE_PATH', N'Template csv for PO file comparison', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 463, N'Template csv for PO file comparison')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'INVENTORY_FILE_DOWNLOAD_DIRECTORY', N'Folder to which FTP file should be downloaded', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 464, N'Folder to which FTP file should be downloaded')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SEND_SUMMARY_EMAIL', N'Flag to decide if Summary email is to be sent after load process', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 465, N'Flag to decide if Summary email is to be sent after load process')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'INVENTORY_FILE_ARCHIVE_DIRECTORY', N'Archive folder for inventory files that are downloaded from FTP folder', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 466, N'Archive folder for inventory files that are downloaded from FTP folder')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DELETE_ALERT_EMAIL_LIST', N'List of email Ids separated with comma for mass delete files', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 467, N'List of email Ids separated with comma for mass delete files')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'INVENTORY_FILE_UPLOAD_DIRECTORY', N'Folder from where Receipt file should be uploaded', N'true', N'bool', N'Inventory', 1, NULL, NULL, NULL, NULL, NULL, 468, N'Folder from where Receipt file should be uploaded')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_PHYSICAL_COUNT_ONLY_FOR_MANAGER', N'Decides if physical count process can be initiated only by manager', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 469, N'Decides if physical count process can be initiated only by manager')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MISSING_RECORDS_THRESHOLD_PERCENTAGE', N'Missing records threshold percentage', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 470, N'Missing records threshold percentage')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MASTER_FILES_UPLOAD_HOUR', N'Hour at which master files will be uploaded to FTP site', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 471, N'Hour at which master files will be uploaded to FTP site')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAX_VARIABLE_RECHARGE_AMOUNT', N'Maximum limit for variable recharge', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 472, N'Maximum limit for variable recharge')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'HIDE_DENOMINATION_GRID', N'Hide denomination grid in kiosk money screen', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 473, N'Hide denomination grid in kiosk money screen')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_EXPIRY_GRACE_PERIOD', N'Grace period in days after card expiry', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 474, N'Grace period in days after card expiry')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_EXPIRY_ALERT_GAP', N'Defines gap in number of days between multiple Card Expiry notifications', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 475, N'Defines gap in number of days between multiple Card Expiry notifications')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_EXPIRY_MESSAGE_FREQUENCY', N'Number of times card expiry notification should be sent', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 476, N'Number of times card expiry notification should be sent')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PROMO_SMS_PROVIDER_URL', N'Promotional SMS Provider URL', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 477, N'Promotional SMS Provider URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PROMO_SMS_USERNAME', N'Promotional SMS Login Username', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 478, N'Promotional SMS Login Username')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PROMO_SMS_PASSWORD', N'PROMO SMS Login Password', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 479, N'PROMO SMS Login Password')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PROMO_SMS_START_TIME', N'Start time for sending Promotional SMS based on regulatory rules', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 480, N'Start time for sending Promotional SMS based on regulatory rules')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PROMO_SMS_END_TIME', N'End time for sending Promotional SMS based on regulatory rules', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 481, N'End time for sending Promotional SMS based on regulatory rules')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_SALESFORCE_MARKETING_INTERFACE', N'Enable interface to Salesforce Marketing Cloud (ExactTarget) system', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 482, N'Enable interface to Salesforce Marketing Cloud (ExactTarget) system')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SALESFORCE_OPT-IN_SUBSCRIBER_LISTNAME', N'Subscriber list name for opt-in customers in Salesforce Marketing Cloud (ExactTarget) system', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 483, N'Subscriber list name for opt-in customers in Salesforce Marketing Cloud (ExactTarget) system')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SALESFORCE_OPT-OUT_SUBSCRIBER_LISTNAME', N'Subscriber list name for opt-out customers in Salesforce Marketing Cloud (ExactTarget) system', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 484, N'Subscriber list name for opt-out customers in Salesforce Marketing Cloud (ExactTarget) system')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TITLE', N'Show TITLE', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 485, N'Show TITLE')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_TERMINAL_ID', N'First Data Terminal ID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 486, N'First Data Terminal ID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_MERCHANT_ID', N'First Data Merchant Id', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 487, N'First Data Merchant Id')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_GROUP_ID', N'First Data Group Id', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 488, N'First Data Group Id')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_DID', N'First Data DID retrived after registration process.', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 489, N'First Data DID retrived after registration process.')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_CLIENT_TIMEOUT', N'First Data Client Timeout in seconds', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 490, N'First Data Client Timeout in seconds')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_VERSION', N'First Data Version', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 491, N'First Data Version')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_SERVICE_ID', N'First Data Service ID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 492, N'First Data Service ID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'GATEWAY_CURRENCY_CODE', N'Currency code used in Credit Card Gateway', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 493, N'Currency code used in Credit Card Gateway')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_SRS_APP', N'First Data SRS APP', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 494, N'First Data SRS APP')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_TRANSACTION_APP', N'First Data TRANSACTION APP', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 495, N'First Data TRANSACTION APP')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_SRS_URL', N'First Data SRS URL', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 496, N'First Data SRS URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_TRANSACTION_URL', N'First Data TRANSACTION URL', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 497, N'First Data TRANSACTION URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_TOKEN_TYPE', N'First Data token type', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 498, N'First Data token type')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_DOMAIN', N'First Data Domain', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 499, N'First Data Domain')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_BRAND', N'First Data Brand', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 500, N'First Data Brand')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FIRST_DATA_MCC', N'First Data Merchant Category Code', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 501, N'First Data Merchant Category Code')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MERCURY_URL', N'URL for Mercury Gateway', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 502, N'URL for Mercury Gateway')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MERCURY_MERCHANT_ID', N'Merchant ID for Mercury Gateway', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 503, N'Merchant ID for Mercury Gateway')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MERCURY_MERCHANTID_PASSWORD', N'Merchant ID password for Mercury Gateway', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 504, N'Merchant ID password for Mercury Gateway')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_MERCHANT_RECEIPT', N'Option to disable printing of Merchant receipt for Credit Card Payment Gateway', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 505, N'Option to disable printing of Merchant receipt for Credit Card Payment Gateway')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_CUSTOMER_RECEIPT', N'Option to disable printing of Customer receipt for Credit Card Payment Gateway', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 506, N'Option to disable printing of Customer receipt for Credit Card Payment Gateway')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PERFORM_DIRECT_ALOHA_SYNC', N'Perform Aloha sync directly from POS instead of Exsys Server', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 507, N'Perform Aloha sync directly from POS instead of Exsys Server')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SALES_REPORT_FTP_URL', N'FTP URL for the Third Party', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 508, N'FTP URL for the Third Party')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SALES_REPORT_FTP_USERNAME', N'FTP User Name for Third Party', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 509, N'FTP User Name for Third Party')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SALES_REPORT_FTP_PASSWORD', N'FTP password for Third Party', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 510, N'FTP password for Third Party')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SALES_REPORT_FAILURE_MAIL_IDS', N'Sales Report Failure Mail Ids', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 511, N'Sales Report Failure Mail Ids')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SITE_IMAGE_FILENAME', N'File name of Site logo to be used as splash screen in Tablet', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 512, N'File name of Site logo to be used as splash screen in Tablet')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SHOW_TIP_AMOUNT_KEYPAD', N'Show keypad for entering Tip Amount', N'true', N'bool', N'Payment', 1, NULL, NULL, NULL, NULL, NULL, 513, N'Show keypad for entering Tip Amount')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ALLOW_PARTIAL_APPROVAL', N'Allow partial approval for Credit Card Payments', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 514, N'Allow partial approval for Credit Card Payments')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'APPLY_GST_PERCENTAGE_IN_GAME_METRIC_REPORT', N'Apply GST Percentage in Game Metric', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 515, N'Apply GST Percentage in Game Metric')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PRINT_COMBO_DETAILS', N'Print Child Lines for combo details', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 516, N'Print Child Lines for combo details')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CANCEL_TRANSACTION_LINE_REQUIRES_MANAGER_APPROVAL', N'Manager approval required for cancelling unsaved transaction line', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 517, N'Manager approval required for cancelling unsaved transaction line')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TRANSACTION_REPRINT_REQUIRES_MANAGER_APPROVAL', N'Manager approval required for reprint transaction', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 518, N'Manager approval required for reprint transaction')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAINTENANCE_JOB_CREATION_TIME', N'Maintenance job creation time', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 519, N'Maintenance job creation time')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ONDEMAND_REMOTING_SERVER_URL', N'URL for On-Demand roaming server', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 520, N'URL for On-Demand roaming server')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FREE_PLAY_MODE', N'Sets the game play mode to Free Play mode in Server', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 521, N'Sets the game play mode to Free Play mode in Server')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FREE_PLAY_CARD_MAGIC_COUNTER', N'Magic number to store in free play activation cards', N'', N'string', N'server', 1, NULL, NULL, NULL, NULL, NULL, 522, N'Magic number to store in free play activation cards')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'PATCH_DOWNLOAD_PATH', N'Patch download path from Server', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 523, N'Patch download path from Server')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'WRAPPER_INSTALLER_RUN_FREQUENCY', N'Wrapper installer frequency in seconds', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 524, N'Wrapper installer frequency in seconds')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'MAIN_INSTALLER_RUN_FREQUENCY', N'Main installer frequency in seconds', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 525, N'Main installer frequency in seconds')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'REVERSE_KIOSK_TOPUP_CARD_NUMBER', N'Reverse Top Up card number in Kiosk', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 526, N'Reverse Top Up card number in Kiosk')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'UPC_TYPE', N'UPC TYPE Digit', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 527, N'UPC TYPE Digit')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_LOAD_CARD_ENTITLEMENT_SCREEN', N'Show Card Validation and Entitlement deduction Screen for Entry or Exit', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 528, N'Show Card Validation and Entitlement deduction Screen for Entry or Exit')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SHOW_GAME_ACTIVITY', N'Show game play activity in customer dashboard screen', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 529, N'Show game play activity in customer dashboard screen')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FISCAL_DEVICE_SERIAL_NUMBER', N'Fiscal device serial no', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 530, N'Fiscal device serial no')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FISCAL_DEVICE_TCP/IP_ADDRESS', N'Fiscal device Tcp/ip address', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 531, N'Fiscal device Tcp/ip address')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FISCAL_CASH_REGISTER_ID', N'Cash register id', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 532, N'Cash register id')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'WAIVER_CONFIRMATION_REQUIRED', N'Cashier Waiver verification required in POS', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 533, N'Cashier Waiver verification required in POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'SALES_REPORT_DATA_UPLOAD_URL', N'Sales Report Web Upload Transaction Data URL', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 534, N'Sales Report Web Upload Transaction Data URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DEFAULT_SALES_REPORT_FORMAT', N'Default SalesReport Format (0-MiNET,1-Xtreme Integra,2-ECM,3-XINTIANDI)', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 535, N'Default SalesReport Format (0-MiNET,1-Xtreme Integra,2-ECM,3-XINTIANDI)')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'IS_SALES_REPORT_ENVIRONMENT', N'Indicates Sales report environment', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 536, N'Indicates Sales report environment')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'TENANT_ID', N'Tenant ID', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 537, N'Tenant ID')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CARD_READER_SERIAL_NUMBER', N'Serial Number of the card reader device', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 538, N'Serial Number of the card reader device')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'DISPENSER_READER_SERIAL_NUMBER', N'Serial Number of the Kiosk Dispenser card reader device', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 539, N'Serial Number of the Kiosk Dispenser card reader device')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_ERP_INTEGRATION', N'Enable ERP Integration', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 540, N'Enable ERP Integration')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ERP_EXTERNAL_URL', N'ERP External System URL', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 541, N'ERP External System URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ERP_SENDERCODE', N'Erp XML Sender Code for YonYou Integration', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 542, N'Erp XML Sender Code for YonYou Integration')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_SINGLE_USER_MULTI_SCREEN', N'Enable single user mult-screen redemption', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 543, N'Enable single user mult-screen redemption')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'AUTO_POPUP_TRX_PROFILE_OPTIONS', N'Automatically pop-up trx profiles selection for each transaction', N'True', N'bool', N'Transaction', 1, NULL, NULL, NULL, NULL, NULL, 544, N'Automatically pop-up trx profiles selection for each transaction')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'POLE_DISPLAY_CHARACTER_SET_CODE', N'Define Character set code for Pole Display. Default is GB18030', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 545, N'Define Character set code for Pole Display. Default is GB18030')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'FOREFIET_BALANCE_RETURN_AMOUNT', N'Forefiet balance return amount during Sales Exchange process', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 546, N'Forefiet balance return amount during Sales Exchange process')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'EXCLUDE_PRODUCT_BREAKDOWN_IN_TRX_REPORT', N'Exclude product breakdown section in transaction report', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 548, N'Exclude product breakdown section in transaction report')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'EXCLUDE_DISPLAY_GROUP_BREAKDOWN_IN_TRX_REPORT', N'Exclude display group breakdown section in transaction report', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 549, N'Exclude display group breakdown section in transaction report')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_CAPILLARY_INTEGRATION', N'Enable Capillary Integration for CRM', N'true', N'bool', N'', 1, 0, 0, NULL, NULL, CAST(N'2019-02-05T22:03:30.037' AS DateTime), 550, N'Enable Capillary Integration for CRM')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CAPILLARY_INTEGRATION_URL', N'Capillary Integration URL', N'true', N'bool', N'', 1, 0, 0, NULL, NULL, CAST(N'2019-02-05T22:03:39.717' AS DateTime), 551, N'Capillary Integration URL')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CAPILLARY_INTEGRATION_USERNAME', N'Capillary Integration Username', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 552, N'Capillary Integration Username')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'CAPILLARY_INTEGRATION_PASSWORD', N'Capillary Integration Password', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 553, N'Capillary Integration Password')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'ENABLE_KIOSK_DIRECT_CASH', N'Enable direct cash feature in kiosks', N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 554, N'Enable direct cash feature in kiosks')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (NULL, NULL, N'true', N'bool', N'', 1, NULL, NULL, NULL, NULL, NULL, 555, NULL)
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Show_POS_Shift_Collection', N'Show POS Shift Collection', N'True', N'bool', N'pos', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:08:45.790' AS DateTime), 556, N'Show POS Shift Collection')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Return_Within_Days', N'Return Within Days', N'300', N'int', N'pos', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:08:53.830' AS DateTime), 557, N'Return Within Days')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Enale_Product_In_POS', N'Enale Product In POS', N'True', N'bool', N'pos', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:03:57.060' AS DateTime), 559, N'Enale Product In POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Enale_Discount_In_POS', N'Enale Discount In POS', N'True', N'bool', N'pos', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:03:57.123' AS DateTime), 560, N'Enale Discount In POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Enale_Task_In_POS', N'Enale Task In POS', N'True', N'bool', N'pos', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:03:57.160' AS DateTime), 561, N'Enale Task In POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Enale_CardDetails_In_POS', N'Enale Card Details In POS', N'True', N'bool', N'pos', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:03:57.207' AS DateTime), 562, N'Enale Card Details In POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Enale_Refund_In_POS', N'Enale Refund In POS', N'True', N'bool', N'pos', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:03:57.253' AS DateTime), 563, N'Enale Refund In POS')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Allow_Refund_of_CardDetails', N'Allow Refund of CardDetails', N'3', N'int', N'card', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:04:19.540' AS DateTime), 564, N'Allow Refund of CardDetails')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Allow_PartialRefund', N'Allow Partial Refund of CardDetails', N'True', N'bool', N'card', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:04:19.600' AS DateTime), 565, N'Allow Partial Refund of CardDetails')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Allow_Refund_Of_CardDeposit', N'Allow  Refund of Card Deposit', N'True', N'bool', N'card', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:04:19.653' AS DateTime), 566, N'Allow  Refund of Card Deposit')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Card_Number_Lenght', N'Card Number Lenght', N'5', N'int', N'card', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:04:35.050' AS DateTime), 567, N'Card Number Lenght')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Reverse_Desktop_CardNumber', N'Reverse Desktop CardNumber', N'True', N'bool', N'card', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:04:35.093' AS DateTime), 568, N'Reverse Desktop CardNumber')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Reactivate_Expired_Card', N'Reactivate Expired Card', N'True', N'bool', N'card', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:04:35.157' AS DateTime), 569, N'Reactivate Expired Card')
GO
INSERT [dbo].[Settings] ([Name], [Description], [DefaultValue], [Type], [ScreenGroup], [Active], [UserLevel], [PosLevel], [Protected], [LastUpdatedBy], [LastUpdatedDate], [ID], [Caption]) VALUES (N'Allow_Manual_Card_INPOS', N'Allow_Manual_Card In POS', N'True', N'bool', N'card', 1, NULL, NULL, NULL, NULL, CAST(N'2019-03-03T01:04:35.213' AS DateTime), 570, N'Allow_Manual_Card In POS')
GO
INSERT INTO Settings (name, Description, defaultValue, Type,Screengroup, Active)Values ('USB_READER_VID', 'Card Reader VID number', 'VID_FFFF','string', 'SiteSetup', 1)
GO
INSERT INTO Settings (name, Description, defaultValue, Type,Screengroup, Active) Values ('USB_READER_PID', 'Card Reader PID number', 'PID_0035','string', 'SiteSetup', 1)
GO
INSERT INTO Settings (name, Description, defaultValue, Type,Screengroup, Active) Values('USB_READER_OPT_STRING', 'Card Reader String number', '0000','string', 'SiteSetup', 1 )
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
