USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[GetTechCardType]    Script Date: 7/7/2019 3:34:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[GetTechCardType]
as
begin 

    select distinct Id,[Name] from TechCardType where Active = 1 
	end