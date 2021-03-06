USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdateUser]    Script Date: 3/7/2020 2:31:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_InsertOrUpdateUser] 
    @Id int,
	@LoginId varchar(100),
	@Password image,
	@Name varchar(100),
	@RoleId int,
	@Email varchar(100),
	@Manager varchar(100),
	@Department varchar(100),
	@CompanyAdmin bit,
	@EmpStartDate datetime,
	@EmpEndDate datetime,
	@EmpEndReason varchar(500),
	@CreatedBy varchar(100),
	@LastUpdatedBy  varchar(50),
	@Status varchar(50),
	@POSCounter varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

begin tran
if exists (select Id from [User] with (updlock,serializable) where Id = @id)
   begin
   -- Insert statements for procedure here
	UPDATE [dbo].[User]
   SET [Name] = @Name
      ,[LoginId] = @LoginId
	  ,[Password] = @Password
      ,[RoleId] = @RoleId
      ,[Status] = @Status
      ,[POSCounter] = @POSCounter
      ,[Email] = @Email
      ,[CompanyAdmin] = @CompanyAdmin
      ,[Department] = @Department
      ,[Manager] = @Manager
      ,[EmpStartDate] = @EmpStartDate
      ,[EmpEndDate] = @EmpEndDate
      ,[EmpEndReason] = @EmpEndReason
      ,[CreatedBy] = @CreatedBy
      ,[LastUpdatedBy] = @LastUpdatedBy
      ,[LastUpdatedDate] = GETDATE()
 WHERE Id = @Id
end
else
begin
    -- Insert statements for procedure here
	INSERT INTO [dbo].[User]
           ([Name]
           ,[LoginId]
           ,[RoleId]
           ,[Status]
           ,[POSCounter]
           ,[Email]
           ,[CompanyAdmin]
           ,[Department]
           ,[Manager]
           ,[EmpStartDate]
           ,[EmpEndDate]
           ,[EmpEndReason]
           ,[CreatationDate]
           ,[CreatedBy]
           ,[LastUpdatedBy]
           ,[LastUpdatedDate])
     VALUES
           (@Name
           ,@LoginId
           ,@RoleId
           ,@Status
           ,@POSCounter
           ,@Email
           ,@CompanyAdmin
           ,@Department
           ,@Manager
           ,@EmpStartDate
           ,@EmpEndDate
           ,@EmpEndReason
           ,GETDATE()
           ,@CreatedBy
           ,@LastUpdatedBy
           ,GetDate())
end
commit tran
END
