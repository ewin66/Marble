USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetListItems]    Script Date: 10/2/2019 10:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_GetListItems]
	@groupId int
AS
BEGIN
	SELECT * from ListItem where GroupId = @groupId
END
