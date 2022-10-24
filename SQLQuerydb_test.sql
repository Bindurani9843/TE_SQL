/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Name]
      ,[Fname]
      ,[Email]
      ,[Mobile]
      ,[Description]
  FROM [db_test].[dbo].[tbl_Student]