USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTaxSet]    Script Date: 3/24/2019 5:13:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[sp_GetTaxSet]
as begin 
select * from Tax
end