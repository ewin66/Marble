USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateProductKey]    Script Date: 6/6/2020 7:50:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_UpdateProductKey]
	@SiteId int,
	@SiteKey image,
	@LicenseKey image,
	@CardsCount int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   Update ProductKey set SiteKey = @SiteKey,LicenseKey = @LicenseKey where site_id = @SiteId
   update Site set MaxCards = @CardsCount  where SiteId = @SiteId
END
