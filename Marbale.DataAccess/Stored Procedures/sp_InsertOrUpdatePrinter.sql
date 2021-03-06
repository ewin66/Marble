USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdateSite]    Script Date: 11/12/2019 10:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_InsertOrUpdatePrinter] 
    @PrinterId int,
	@PrinterName varchar(50),
	@PrinterLocation varchar(100),
	@IPAddress varchar(50),
	@KDSTerminal bit,
	@Remarks nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

begin tran
if exists (select @PrinterId from [Printers] with (updlock,serializable) where @PrinterId = @PrinterId)
   begin
   -- Insert statements for procedure here
	UPDATE [dbo].[Printers]
   SET PrinterName = @PrinterName
      ,PrinterLocation = @PrinterLocation
      ,IpAddress = @IPAddress
      ,KDSTerminal = @KDSTerminal
	  ,Remarks = @Remarks
 WHERE PrinterId = @PrinterId
end
else
begin
    -- Insert statements for procedure here
	INSERT INTO [dbo].[Printers]
           (
           PrinterName
           ,IPAddress
           ,PrinterLocation
           ,KDSTerminal
           ,Remarks)
     VALUES
           (
           @PrinterName
           ,@IPAddress
           ,@PrinterLocation
           ,@KDSTerminal
           ,@Remarks)
end
commit tran
END
