USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDisplayGroup]    Script Date: 10/19/2019 11:20:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[sp_GetDisplayGroup] 
as 
begin 


select Displaygroupid as Id ,* from DisplayGroup order by SortOrder asc
end