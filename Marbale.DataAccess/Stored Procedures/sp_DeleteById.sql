USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteById]    Script Date: 5/24/2020 1:47:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[sp_DeleteById]  
@id int,
@from varchar(50),
@isDataItem bit = 0
as begin   
  IF @from = 'product'
BEGIN
    Delete from product where id =@id  
END
  IF @from = 'user'
BEGIN
    Delete from [User] where id =@id  
END
IF @from = 'card'
BEGIN
    delete from [Card] where CardId = @id
END
IF @from = 'print'
BEGIN
	IF @isDataItem = 0
	Begin
		delete from [ReceiptPrintTemplateHeader] where TemplateId = @id
	end
	else
	begin
		delete from [ReceiptPrintTemplate] where id = @id
		delete from [ReceiptPrintTemplateHeader] where TemplateId = (select top 1 TemplateId from [ReceiptPrintTemplate] where id = @id)
	end
END
end
