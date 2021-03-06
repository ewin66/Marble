USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdateProduct]    Script Date: 1/5/2020 11:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
        
-- =============================================        
-- Author:  Harish   Modified:Shridhar     
-- =============================================        
        
ALTER PROCEDURE [dbo].[sp_InsertOrUpdateProduct]        
@name varchar(150),        
@type varchar(50) = null,        
@active bit=null,        
@price decimal(18,3)=null,        
@effectivePrice decimal(18,3)=null,        
@finalPrice decimal(18,3)=null,      
@faceValue decimal(18,3)=null,        
@displayGroupId int = null,        
@displayInPOS bit=null,        
@autoGenerateCardNumber bit=null,        
@category varchar(50)=null,        
@onlyVIP bit=null,        
@posCounter varchar(50)=null,        
@taxInclusive bit=null,        
@taxPercentage decimal(18,3)=null,        
@id int=null  ,      
@Bonus decimal(18,3) =null,         
@TaxName varchar(max)=null,      
@StartDate datetime=null,      
@LastUpdatedBy varchar(max)=null,      
@Games decimal(18,3)=null,      
@CreditsPlus decimal(18,3)=null,      
@Credits decimal(18,3)=null,      
@CardValidFor int=null  ,    
@Courtesy bigint=null   ,
@ExpiryDate datetime =null,
@taxId int = 0,
@Time datetime = null,
@Tickets int = 0,
@TicketAllowed bit,
@TrxHeaderRemarksMandatory bit,
@TrxLineRemarksMandatory bit,
@QuantityPrompt bit,
@ManagerApprovalRequired bit,
@AllowPriceOverride bit,
@MinimumQuantity int
AS        
BEGIN        
 -- SET NOCOUNT ON added to prevent extra result sets from        
 -- interfering with SELECT statements.        
 SET NOCOUNT ON;        
 declare @TotalDays int declare @expire datetime      
  select @TotalDays= Defaultvalue from Settings where name ='CARD_VALIDITY'      
  select @expire=   DATEADD(day, @TotalDays, getdate())       
      
if not exists (select id from Product with (updlock,serializable) where Id = @id)        
begin        
insert into Product(        
[Name],        
[Type],        
Active,        
Price,        
EffectivePrice,        
FaceValue,        
DisplayGroupId,        
DisplayInPOS,        
AutoGenerateCardNumber,        
Category,        
OnlyVIP,        
POSCounter,        
TaxInclusive,        
TaxPercentage,      
Bonus,      
TaxName,
LastUpdatedDate,
Games,
CreditsPlus,
Credits,
CardValidFor,
Courtesy,  
finalprice    ,
ExpiryDate ,
StartDate,
TaxId,
Time,
Tickets,
TicketAllowed,
QuantityPrompt,
TrxHeaderRemarksMandatory,
TrxLineRemarksMandatory,
ManagerApprovalRequired,
AllowPriceOverride,
MinimumQuantity,
LastUpdatedBy
)         
Values(@name,@type,@active,@price,@effectivePrice,@faceValue,@displayGroupId,@displayInPOS,        
@autoGenerateCardNumber,@category,@onlyVIP,@posCounter,@taxInclusive,@taxPercentage,@Bonus,@TaxName,      
GETDATE(),@Games,@CreditsPlus,@Credits,@CardValidFor,@Courtesy,@finalPrice,@ExpiryDate,
@StartDate,@taxId,@Time,@Tickets,
@TicketAllowed,@QuantityPrompt,@TrxHeaderRemarksMandatory,@TrxLineRemarksMandatory,
@ManagerApprovalRequired,@AllowPriceOverride,@MinimumQuantity,@LastUpdatedBy)        
end        
else        
begin        
 update Product set [Name]= @name,[Type]=@type,[Active]=@active,Price=@price,FinalPrice=@finalPrice,        
     EffectivePrice=@effectivePrice,FaceValue=@faceValue,DisplayGroupId = @displayGroupId,        
     DisplayInPOS=@displayInPOS,AutoGenerateCardNumber=@autoGenerateCardNumber,Category=@category,        
     OnlyVIP=@onlyVIP,POSCounter=@posCounter,TaxInclusive=@taxInclusive,TaxPercentage=@taxPercentage  ,      
  Bonus=@Bonus,TaxName=@TaxName,Games=@Games,CreditsPlus=@CreditsPlus,      
  Credits=@Credits,CardValidFor=@CardValidFor ,Courtesy=@Courtesy ,ExpiryDate=@ExpiryDate,
  TaxId = @taxId,Time = @Time,Tickets=@Tickets,TicketAllowed=@TicketAllowed,TrxHeaderRemarksMandatory=@TrxHeaderRemarksMandatory,
  TrxLineRemarksMandatory=@TrxLineRemarksMandatory,QuantityPrompt=@QuantityPrompt,ManagerApprovalRequired=@ManagerApprovalRequired,
  AllowPriceOverride = @AllowPriceOverride, MinimumQuantity = @MinimumQuantity ,LastUpdatedBy = @LastUpdatedBy ,LastUpdatedDate = GETDATE()
      
      
     where Id=@id        
end        
        
END 
