USE [Marbale]
GO

/****** Object:  Table [dbo].[TransactionHeader]    Script Date: 23/06/2019 19:21:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TransactionHeader](
	[TrxId] [int] IDENTITY(1,1) NOT NULL,
	[TrxDate] [datetime] NOT NULL,
	[TrxAmount] [float] NULL,
	[TrxDiscountPercentage] [float] NULL,
	[TaxAmount] [float] NULL,
	[TrxNetAmount] [float] NULL,
	[POSMachine] [nvarchar](50) NULL,
	[UserId] [int] NULL,
	[PaymentMode] [int] NULL,
	[CashAmount] [float] NULL,
	[CreditCardAmount] [float] NULL,
	[GameCardAmount] [float] NULL,
	[PaymentReference] [nvarchar](100) NULL,
	[PrimaryCardId] [int] NULL,
	[OrderId] [int] NULL,
	[POSTypeId] [int] NULL,
	[Guid] [uniqueidentifier] NULL CONSTRAINT [DF_TransactionHeader_Guid]  DEFAULT (newid()),
	[SiteId] [int] NULL,
	[TrxNummber] [nvarchar](20) NULL,
	[Remarks] [nvarchar](100) NULL,
	[POSMachineId] [int] NULL,
	[SynchStatus] [bit] NULL,
	[OtherPaymentModeAmount] [numeric](18, 4) NULL,
	[Status] [nvarchar](20) NULL,
	[TrxProfileId] [int] NULL,
	[LastUpdateTime] [datetime] NULL,
	[LastUpdatedBy] [nvarchar](50) NULL,
	[TokenNumber] [int] NULL,
	[Original_System_Reference] [nvarchar](100) NULL,
	[CustomerId] [int] NULL,
	[ExternalSystemReference] [nvarchar](200) NULL,
	[ReprintCount] [int] NULL DEFAULT ((0)),
	[OriginalTrxID] [int] NULL,
	[MasterEntityId] [int] NULL,
 CONSTRAINT [PK_TransactionHeader] PRIMARY KEY CLUSTERED 
(
	[TrxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO


