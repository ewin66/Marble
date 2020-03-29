USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRoleModuleActions]    Script Date: 3/29/2020 5:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_GetRoleModuleActions]
	@id int
AS
BEGIN
	SET NOCOUNT ON;

	select AM.Id,AM.Module,AM.[Root],AM.[URL],AM.Active,AM.[Page],AM.DisplayOrder,
	CASE WHEN RMA.[Page] IS NULL THEN 'false' ELSE 'true' END AS IsChecked from AppModule AM 
	join RoleModuleAction RMA on AM.Id = RMA.PageId AND RMA.RoleId = @id
END
