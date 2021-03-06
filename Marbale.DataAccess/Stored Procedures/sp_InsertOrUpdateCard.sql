USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdateCard]    Script Date: 06/07/2019 23:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ============================================= 
-- Author:    @Author,,Name 
-- Create date: @Create Date,, 
-- Description:  @Description,, 
-- ============================================= 
ALTER PROCEDURE [dbo].[sp_InsertOrUpdateCard]  
											   @CardId            INT,
											   @CardNumber        VARCHAR(50), 
                                               @IssueDate         DATETIME = NULL, 
                                               @FaceValue         INT = NULL,
											   @RefundDate        DATETIME = NULL,
                                               @RefundFlag        BIT = 0,
                                               @RefundAmount      NUMERIC(18,8) = NULL,
                                               @ValidFlag         BIT = 1,
                                               @TicketCount       INT = 0,
                                               @LastUpdated       DATETIME = NULL,
                                               @Credits           DECIMAL = 0, 
                                               @Courtesy          DECIMAL= 0, 
                                               @Bonus             INT = 0, 
                                               @CustomerId        INT = 0, 
                                               @CreditsPlayed     DECIMAL = 0, 
                                               @TicketAllowed     BIT = 0, 
                                               @RealTicketMode    BIT = 0, 
                                               @VipCustomer       BIT = 0, 
                                               @Notes             VARCHAR(200) = NULL, 
                                               @StartDateTime    DATETIME = NULL, 
                                               @LastTimePlayed    DATETIME = NULL,
                                               @LastUpdatedBy     VARCHAR(50) = NULL, 
                                               @TechnicianCard    BIT = 0, 
                                               @TechGames         INT = 0, 
                                               @TimerResetCard    BIT = 0, 
                                               @LoyaltyPoints     INT = 0, 
                                               @CardTypeId        INT = 0, 
                                               @ExpiryDate        DATETIME = NULL, 
											   @CrdId				INT OUT
AS 
  BEGIN 
      -- SET NOCOUNT ON added to prevent extra result sets from 
      -- interfering with SELECT statements. 
      SET nocount ON; 

      IF EXISTS (SELECT 1 
                 FROM   card WITH (updlock, serializable) 
                 WHERE  Cardid = @CardId) 
        BEGIN 
            -- Insert statements for procedure here 
            UPDATE dbo.cards 
            SET    cardnumber = @CardNumber, 
                   issuedate = ISNULL(@IssueDate, GETDATE()), 
                   facevalue = @FaceValue, 
                   refundflag = @RefundFlag, 
                   refundamount = @RefundAmount, 
                   refunddate = @RefundDate, 
                   validflag = @ValidFlag, 
                   ticketcount = @TicketCount, 
                   notes = @Notes, 
                   lastupdated = @LastUpdated, 
                   credits = @Credits, 
                   courtesy = @Courtesy, 
                   bonus = @Bonus, 
                   customerid = @CustomerId, 
                   creditsplayed = @CreditsPlayed, 
                   ticketallowed = @TicketAllowed, 
                   realticketmode = @RealTicketMode, 
                   vipcustomer = @VipCustomer, 
                   startdatettime = @StartDateTime, 
                   lasttimeplayed = @LastTimePlayed, 
                   techniciancard = @TechnicianCard, 
                   techgames = @TechGames, 
                   timerresetcard = @TimerResetCard, 
                   loyaltypoints = @LoyaltyPoints, 
                   lastupdatedby = @LastUpdatedBy, 
                   cardtypeid = @CardTypeId, 
                   expirydate = @ExpiryDate
            WHERE  Cardid = @CardId 

			SET @CrdId = @CardId
        END 
      ELSE 
        BEGIN 
            -- Insert statements for procedure here 
            INSERT INTO [dbo].[card] 
                        ([cardnumber], 
                         [issuedate], 
                         [facevalue], 
                         [refundflag], 
                         [refundamount], 
                         [refunddate], 
                         [validflag], 
                         [ticketcount], 
                         [notes], 
                         [lastupdated], 
                         [credits], 
                         [courtesy], 
                         [bonus], 
                         [customerid], 
                         [creditsplayed], 
                         [ticketallowed], 
                         [realticketmode], 
                         [vipcustomer], 
                         [startdatettime], 
                         [lasttimeplayed], 
                         [techniciancard], 
                         [techgames], 
                         [timerresetcard], 
                         [loyaltypoints], 
                         [lastupdatedby], 
                         [cardtypeid], 
                         [guid], 
                         [expirydate]
						 ) 
            VALUES      (@CardNumber, 
                         ISNULL(@IssueDate, GETDATE()), 
                         @FaceValue, 
                         @RefundFlag, 
                         @RefundAmount, 
                         @RefundDate, 
                         @ValidFlag, 
                         @TicketCount, 
                         @Notes, 
                         @LastUpdated, 
                         @Credits, 
                         @Courtesy, 
                         @Bonus, 
                         @CustomerId, 
                         @CreditsPlayed, 
                         @TicketAllowed, 
                         @RealTicketMode, 
                         @VipCustomer, 
                         @StartDateTime, 
                         @LastTimePlayed, 
                         @TechnicianCard, 
                         @TechGames, 
                         @TimerResetCard, 
                         @LoyaltyPoints, 
                         @LastUpdatedBy, 
                         @CardTypeId, 
                         NEWID(), 
                         @ExpiryDate
						 ) 

	     SET @CrdId = (SELECT SCOPE_IDENTITY())

        END 

  END 