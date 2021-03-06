USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[InsertProduct]    Script Date: 12/31/2018 5:22:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Harish
-- =============================================

-- exec [sp_InsertProduct] 'name','type',true,10,10,10,'',true,true,'',true,'',true,1
ALTER PROCEDURE [dbo].[sp_InsertProduct]
@name varchar(150),
@type varchar(50) = null,
@active bit,
@price int,
@effectivePrice int,
@faceValue int,
@displayGroup varchar(50),
@displayInPOS bit,
@autoGenerateCardNumber bit,
@category varchar(50),
@onlyVIP bit,
@posCounter varchar(50),
@taxInclusive bit,
@taxPercentage int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into Product(
[Name],
[Type],
Active,
Price,
EffectivePrice,
FaceValue,
DisplayGroup,
DisplayInPOS,
AutoGenerateCardNumber,
Category,
OnlyVIP,
POSCounter,
TaxInclusive,
TaxPercentage) 
Values(@name,@type,@active,@price,@effectivePrice,@faceValue,@displayGroup,@displayInPOS,
@autoGenerateCardNumber,@category,@onlyVIP,@posCounter,@taxInclusive,@taxPercentage)

END
