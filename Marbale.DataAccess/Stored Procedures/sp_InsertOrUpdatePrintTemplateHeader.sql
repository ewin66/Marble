USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdatePrintTemplateHeader]    Script Date: 12/1/2019 11:19:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_InsertOrUpdatePrintTemplateHeader] 
    @TemplateId int,
	@TemplateName varchar(500),
	@FontName varchar(100),
	@FontSize int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

begin tran
if exists (select TemplateId from [ReceiptPrintTemplateHeader] with (updlock,serializable) where TemplateId = @TemplateId)
   begin
   -- Insert statements for procedure here
	UPDATE [dbo].[ReceiptPrintTemplateHeader]
   SET TemplateName = @TemplateName
      ,FontName = @FontName
      ,FontSize = @FontSize
 WHERE TemplateId = @TemplateId
end
else
begin
    -- Insert statements for procedure here
	INSERT INTO [dbo].[ReceiptPrintTemplateHeader]
           (TemplateName
           ,FontName
           ,FontSize)
     VALUES
           (@TemplateName
           ,@FontName
           ,@FontSize
           )
		   
select SCOPE_IDENTITY()
end
commit tran
select @TemplateId as id
END
