USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateMessages]    Script Date: 3/24/2019 5:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[sp_UpdateMessages]
@MessageNo int,
@MessageName varchar(max),
@MessageDescription varchar(max)
as begin
if exists(select 1 from Messages where MessageNo=@MessageNo)
update Messages set MessageName=@MessageName,MessageDescription=@MessageDescription where MessageNo= @MessageNo
--update Messages (MessageNo,MessageName,MessageDescription)values(@MessageNo,@MessageName,@MessageDescription)
 end