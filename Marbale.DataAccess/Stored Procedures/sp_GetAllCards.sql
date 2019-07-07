USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllCards]    Script Date: 7/7/2019 3:43:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[sp_GetAllCards]  
@TechnicianCard bit=null,  
@CardNumber varchar(20)=null,  
@Custemer varchar(100)=null,  
@VIPCustomer bit=null,  
@IssueDate datetime=null,  
@ToDate datetime=null  
as begin   
select * from Cards where (IssueDate between cast(@IssueDate as date) and cast(@ToDate as date))   
and (CardNumber=@CardNumber or @CardNumber=''or  @CardNumber=null) and  
(Custemer=@Custemer or @Custemer='' or @Custemer=null) and
 (VIPCustomer=@VIPCustomer or @VIPCustomer=0 or @VIPCustomer=null)  
end  
  

