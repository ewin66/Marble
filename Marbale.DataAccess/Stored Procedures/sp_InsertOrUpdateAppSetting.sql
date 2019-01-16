USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdateAppSetting]    Script Date: 1/17/2019 12:34:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_InsertOrUpdateAppSetting]
@name varchar(255),
@value varchar(255),
@screen varchar(100)
AS
BEGIN
DECLARE @settingId int = (select id from Settings where [Name] = @name);

BEGIN TRANSACTION;
IF EXISTS (SELECT 1 FROM dbo.AppSettings WHERE SettingID = @settingId)
BEGIN
  UPDATE AppSettings set [Value] = @value,UpdatedDate = GETDATE() where SettingID = @settingId
END
ELSE
BEGIN
  INSERT into AppSettings Values(@settingId,@value,@screen,GETDATE())
END
COMMIT TRANSACTION;
END
