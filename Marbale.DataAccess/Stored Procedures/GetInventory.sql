USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[GetInventory]    Script Date: 8/28/2020 8:54:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[GetInventory]    
@From datetime=null,
@To datetime=null

as begin     

declare @TotalNumberOfCards int  

if (isnull(@From,'')='' and isnull(@To,'')='' or convert(datetime,@From) = convert(datetime,@To))
begin

  set  @TotalNumberOfCards = isNull((select sum(NumberOfCards) from Inventory where Action = 'Add' ),0) - isNull((select sum(NumberOfCards) from Inventory where Action = 'Reduce'),0) 
select @TotalNumberOfCards'TotalNumberOfCards',null'User',* from inventory

 end
 else
 begin
set  @TotalNumberOfCards = isNull((select sum(NumberOfCards) from Inventory where Action = 'Add' ),0) - isNull((select sum(NumberOfCards) from Inventory where Action = 'Reduce'),0) 
select @TotalNumberOfCards'TotalNumberOfCards',null'User',* from inventory    where ActionDate >= Convert(datetime,@From) and ActionDate <= Convert(datetime,@To)
    end
end



