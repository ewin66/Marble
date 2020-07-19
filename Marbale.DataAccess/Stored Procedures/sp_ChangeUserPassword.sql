USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_ChangeUserPassword]    Script Date: 6/21/2020 4:59:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[sp_ChangeUserPassword]   
@userId varchar(100),
@currentPassword image,
@password image

AS   
 BEGIN   
  
  IF EXISTS(SELECT 'X' FROM [User] WHERE LoginId = @userId)
  BEGIN
		UPDATE [User]
				set Password = @password ,PasswordChangeDate = GETDATE()
		WHERE 
				LoginId = @userId AND CONVERT(VARBINARY,Password) = CONVERT(VARBINARY,@currentPassword)
		
  END
 
 END  
  
