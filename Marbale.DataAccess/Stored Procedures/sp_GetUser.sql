USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserById]    Script Date: 1/4/2020 11:18:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Harish
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_GetUser] 
	@loginId varchar(200),
	@password varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from [User] where LoginId = @loginId and [Password] = @password
END
