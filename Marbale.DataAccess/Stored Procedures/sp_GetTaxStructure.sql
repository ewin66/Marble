USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTaxStructure]    Script Date: 3/24/2019 5:13:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[sp_GetTaxStructure]  
as begin   
select TaxStructureId,StructureName'TaxStructureName',TaxStructurePercentage,TaxId from TaxStructure 
end