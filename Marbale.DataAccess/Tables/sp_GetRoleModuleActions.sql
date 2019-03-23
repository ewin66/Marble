USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRoleModuleActions]    Script Date: 3/23/2019 2:39:06 PM ******/
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
	left join RoleModuleAction RMA on AM.Id = RMA.PageId AND RMA.RoleId = @id
END
