USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateMessages]    Script Date: 5/10/2020 7:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[sp_UpdateMessages]
@MessageNo int,
@MessageName varchar(max) = NULL,
@MessageDescription varchar(max)
as begin
if exists(select 1 from Messages where MessageNo=@MessageNo)
update Messages set MessageName=@MessageName,MessageDescription=@MessageDescription where MessageNo= @MessageNo
--update Messages (MessageNo,MessageName,MessageDescription)values(@MessageNo,@MessageName,@MessageDescription)
else
insert into Messages values(@MessageName,@MessageDescription)
 end