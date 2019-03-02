USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAppSettings]    Script Date: 12/23/2018 5:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Harish>
-- =============================================
ALTER PROCEDURE [dbo].[sp_GetAppSettings] 
@screen varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
    select [Name], Caption,DefaultValue, [Type], ScreenGroup from Settings where Active = 1 and ScreenGroup = @screen
END
