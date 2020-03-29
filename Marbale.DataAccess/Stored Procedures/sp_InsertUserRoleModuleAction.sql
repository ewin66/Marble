USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUserRoleModuleAction]    Script Date: 3/20/2020 12:03:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_InsertUserRoleModuleAction]
	
	@RoleId varchar(50),
	@PageIds varchar(max)
AS
BEGIN
	-- Insert statement
	    DELETE from RoleModuleAction where RoleId = @RoleId
		INSERT INTO RoleModuleAction
		SELECT @RoleId, CAST(Item AS INT) , (select [Page] from AppModule where Id = CAST(Item AS INT)) 
		FROM  dbo.SplitString(@PageIds, ',')  
END
