USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdateTaxStructure]    Script Date: 4/12/2020 5:37:49 PM ******/
/** updated by vijeth on 4/12/2020**/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[sp_InsertOrUpdateTaxStructure]
@TaxId int,
@TaxStructureId int,
@TaxStructurePercentage decimal(18,2),
@TaxStructureName varchar(max)
as begin 
declare @TaxSum decimal(18,2)
declare @taxsumbyid decimal(18,2)
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

