USE [GP_Reports]
GO
/****** Object:  Table [dbo].[Sourses]    Script Date: 04.02.2023 17:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sourses](
	[ID] [int] NOT NULL,
	[SourseName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Sourses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_SoursesName] UNIQUE NONCLUSTERED 
(
	[SourseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sourses] ADD  CONSTRAINT [DF_Sourses_ID]  DEFAULT (NEXT VALUE FOR [SourseID_seq]) FOR [ID]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numeric ID used for reference to a sourse within the database' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sourses', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Название источника данных' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sourses', @level2type=N'COLUMN',@level2name=N'SourseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Описание источника данных' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sourses', @level2type=N'COLUMN',@level2name=N'Description'
GO
