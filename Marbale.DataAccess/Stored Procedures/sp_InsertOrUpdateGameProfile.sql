USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdateHub]    Script Date: 4/18/2019 5:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_InsertOrUpdateGameProfile] 
    @id int,
	@name varchar(50),
	@normalPrice int,
	@vipPrice int,
	@creditAllowed bit,
	@bonusAllowed bit,
	@courtesyAllowed bit,
	@timeAllowed bit,
	@tiketAllowedOnCredit bit,
	@tiketAllowedOnBonus bit,
	@tiketAllowedOnCourtesy bit,
	@tiketAllowedOnTime bit,
	@lastUpdatedDate datetime,
	@lastUpdatedBy varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

begin tran
if exists (select id from GameProfile with (updlock,serializable) where Id = @id)
   begin
   -- Insert statements for procedure here
	Update [GameProfile] set [Name] = @name,NormalPrice = @normalPrice,VIPPrice = @vipPrice,
							[CreditAllowed] = @creditAllowed ,
							[BonusAllowed] = @bonusAllowed,
							 [CourtesyAllowed] = @courtesyAllowed,
							 [TimeAllowed] = @timeAllowed,
							 [TiketAllowedOnCredit] = @tiketAllowedOnCredit,
							 [TiketAllowedOnBonus] = @tiketAllowedOnBonus,
							 [TiketAllowedOnCourtesy] = @tiketAllowedOnCourtesy,
							 [TiketAllowedOnTime] = @tiketAllowedOnTime,
							 [LastUpdatedDate] = @lastUpdatedDate,
							 [LastUpdatedBy] = @lastUpdatedDate where Id = @Id
end
else
begin
    -- Insert statements for procedure here
	INSERT INTO [dbo].[GameProfile]
           ([Name]
           ,[NormalPrice]
           ,[VIPPrice]
           ,[CreditAllowed]
           ,[BonusAllowed]
           ,[CourtesyAllowed]
           ,[TimeAllowed]
           ,[TiketAllowedOnCredit]
           ,[TiketAllowedOnBonus]
           ,[TiketAllowedOnCourtesy]
           ,[TiketAllowedOnTime]
           ,[LastUpdatedDate]
           ,[LastUpdatedBy])
     VALUES
           (@name ,
	@normalPrice ,
	@vipPrice ,
	@creditAllowed ,
	@bonusAllowed ,
	@courtesyAllowed ,
	@timeAllowed,
	@tiketAllowedOnCredit ,
	@tiketAllowedOnBonus ,
	@tiketAllowedOnCourtesy ,
	@tiketAllowedOnTime ,
	@lastUpdatedDate ,
	@lastUpdatedBy)
end
commit tran
END
