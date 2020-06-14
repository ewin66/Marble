USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdatePaymentMode]    Script Date: 6/14/2020 7:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_InsertOrUpdatePaymentMode] 
	@PaymentModeId int,
	@PaymentMode varchar(100),
	@IsCreditCard bit,
	@IsDebitCard bit,
	@IsCash bit,
	@IsRoundOff bit,
	@ManagerApprovalRequired bit,
	@POSAvailable bit,
	@DisplayOrder bit,
	@GateWay varchar(100),
	@Guid uniqueidentifier,
	@SynchStatus bit,
	@SiteId int,
	@CreditCardSurchargePercentage int
AS
BEGIN
	
	SET NOCOUNT ON;
	
begin tran
if exists (select @PaymentModeId from PaymentModes with (updlock,serializable) where PaymentModeId = @PaymentModeId)
   begin
   -- Insert statements for procedure here
	Update [PaymentModes] set 
	PaymentMode = @PaymentMode,
	isCreditCard = @IsCreditCard,
	isDebitCard = @IsDebitCard,
	isCash = @IsCash,
	isRoundOff = @IsRoundOff,
	ManagerApprovalRequired = @ManagerApprovalRequired,
	POSAvailable = @POSAvailable,
	DisplayOrder = @DisplayOrder,
	GateWay = @GateWay,
	[Guid] = @Guid,
	SynchStatus = @SynchStatus,
	SiteId = @SiteId,
	CreditCardSurchargePercentage = @CreditCardSurchargePercentage
	where PaymentModeId = @PaymentModeId
end
else
begin
    -- Insert statements for procedure here
	INSERT INTO [dbo].[PaymentModes]
           (PaymentModeId,
		   PaymentMode
		   ,isCreditCard
           ,isDebitCard
           ,isCash
		   ,isRoundOff
		   ,ManagerApprovalRequired
		   ,POSAvailable
		   ,DisplayOrder
           ,Gateway
           ,CreditCardSurchargePercentage)
     VALUES
           (@PaymentModeId ,
			@PaymentMode,
			@IsCreditCard ,
			@IsDebitCard ,
			@IsCash,
			@IsRoundOff,
			@ManagerApprovalRequired,
			@POSAvailable,
			@DisplayOrder ,
			@GateWay,
			@CreditCardSurchargePercentage)
end
commit tran

END
