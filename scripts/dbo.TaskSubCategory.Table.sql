USE [GP_Reports]
GO
/****** Object:  Table [dbo].[TaskSubCategory]    Script Date: 04.02.2023 17:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskSubCategory](
	[ID] [int] NOT NULL,
	[SubcategoryName] [nvarchar](150) NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_TaskSubCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskSubCategory] ADD  CONSTRAINT [DF_TaskSubCategory_ID]  DEFAULT (NEXT VALUE FOR [TaskSubCategoryID_seq]) FOR [ID]
GO
ALTER TABLE [dbo].[TaskSubCategory]  WITH CHECK ADD  CONSTRAINT [FK_TaskSubCategory_TasksCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[TasksCategory] ([ID])
GO
ALTER TABLE [dbo].[TaskSubCategory] CHECK CONSTRAINT [FK_TaskSubCategory_TasksCategory]
GO
