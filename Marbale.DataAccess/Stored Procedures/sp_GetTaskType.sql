USE [Marbale]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetTaskType]    Script Date: 3/30/2019 8:27:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[sp_GetTaskType]
as begin
select * from TaskType
 end
GO


