USE [GP_Reports]
GO
/****** Object:  StoredProcedure [dbo].[Closed_tasks]    Script Date: 02.03.2023 18:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Closed_tasks]
@datefrom date,
@dateto date
WITH EXECUTE AS OWNER
AS
BEGIN
SELECT  t.TaskNumber, t.Title, u.UserName, tc.CategoryName, t.DateClosing
FROM Tasks t 
INNER JOIN dbo.TasksCategory tc ON tc.ID = t.CategoryID
INNER JOIN dbo.Users u ON u.ID = t.SpesialistID
WHERE t.DateClosing BETWEEN @datefrom AND @dateto
GROUP BY t.TaskNumber, t.Title, u.UserName, tc.CategoryName, t.DateClosing
END;
