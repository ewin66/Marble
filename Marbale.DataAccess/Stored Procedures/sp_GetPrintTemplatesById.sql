USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPrintTemplates]    Script Date: 12/1/2019 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[sp_GetPrintTemplatesById]
	@TemplateId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from ReceiptPrintTemplate where TemplateId = @TemplateId
END
