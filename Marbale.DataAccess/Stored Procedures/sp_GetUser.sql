USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUser]    Script Date: 3/14/2020 2:24:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Harish
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_GetUser] 
	@loginId varchar(200) = null,
	@password varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from [User] where LoginId = @loginId
and convert(varchar(max),convert(varbinary(max), Password)) = @password
END
