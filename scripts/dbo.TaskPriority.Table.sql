USE [GP_Reports]
GO
/****** Object:  Table [dbo].[TaskPriority]    Script Date: 04.02.2023 17:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskPriority](
	[ID] [int] NOT NULL,
	[PriorityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TaskPriority] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_TaskPriorityName] UNIQUE NONCLUSTERED 
(
	[PriorityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskPriority] ADD  CONSTRAINT [DF_TaskPriority_ID]  DEFAULT (NEXT VALUE FOR [TaskPriorityID_seq]) FOR [ID]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Приоритет заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaskPriority', @level2type=N'COLUMN',@level2name=N'ID'
GO
