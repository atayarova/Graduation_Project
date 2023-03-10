USE [GP_Reports]
GO
/****** Object:  Table [dbo].[TaskPosition]    Script Date: 04.02.2023 17:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskPosition](
	[ID] [int] NOT NULL,
	[PositionName] [nvarchar](150) NOT NULL,
	[SubCategoryID] [int] NOT NULL,
 CONSTRAINT [PK_TaskPosition] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskPosition] ADD  CONSTRAINT [DF_TaskPosition_ID]  DEFAULT (NEXT VALUE FOR [TaskPosition_seq]) FOR [ID]
GO
ALTER TABLE [dbo].[TaskPosition]  WITH CHECK ADD  CONSTRAINT [FK_TaskPosition_TaskSubCategory] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[TaskSubCategory] ([ID])
GO
ALTER TABLE [dbo].[TaskPosition] CHECK CONSTRAINT [FK_TaskPosition_TaskSubCategory]
GO
