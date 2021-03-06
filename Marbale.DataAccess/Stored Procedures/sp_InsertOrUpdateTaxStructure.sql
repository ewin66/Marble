USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdateTaxStructure]    Script Date: 3/24/2019 5:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[sp_InsertOrUpdateTaxStructure]
@TaxId int,
@TaxStructureId int,
@TaxStructurePercentage decimal,
@TaxStructureName varchar(max)
as begin 
declare @TaxSum decimal
declare @taxsumbyid decimal
if not exists(select 1 from TaxStructure where TaxStructureId=@TaxStructureId)
 begin 
insert into TaxStructure(TaxId,StructureName,TaxStructurePercentage) values(@TaxId,@TaxStructureName,@TaxStructurePercentage)
select @TaxSum=sum(TaxStructurePercentage) from TaxStructure where TaxId=@TaxId
update Tax set TaxPercent =@TaxSum where TaxId=@TaxId

end
else 
begin 
update TaxStructure set TaxId=@TaxId,TaxStructurePercentage=@TaxStructurePercentage,
StructureName=@TaxStructureName where TaxStructureId=@TaxStructureId

--select @taxsumbyid= TaxStructurePercentage from TaxStructure where TaxStructureId=@TaxStructureId
select @TaxSum=sum(TaxStructurePercentage) from TaxStructure where TaxId=@TaxId

update Tax set TaxPercent =@TaxSum where TaxId=@TaxId

end
end

