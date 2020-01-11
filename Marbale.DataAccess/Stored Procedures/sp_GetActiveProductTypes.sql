USE [Marbale]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetProductTypeLookUp]    Script Date: 1/11/2020 1:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Harish>
-- =============================================
Create PROCEDURE [dbo].[sp_GetActiveProductTypes]
AS
BEGIN
	SET NOCOUNT ON;
    select distinct Id,[Type] from ProductType where Active = 1
END
