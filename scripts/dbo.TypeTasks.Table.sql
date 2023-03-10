USE [GP_Reports]
GO
/****** Object:  Table [dbo].[TypeTasks]    Script Date: 04.02.2023 17:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeTasks](
	[ID] [int] NOT NULL,
	[TypeTasks] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_TypeTasks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_TypeTasksName] UNIQUE NONCLUSTERED 
(
	[TypeTasks] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TypeTasks] ADD  CONSTRAINT [DF_TypeTasks_ID]  DEFAULT (NEXT VALUE FOR [TypeTasksID_seq]) FOR [ID]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Тип заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TypeTasks', @level2type=N'COLUMN',@level2name=N'TypeTasks'
GO
