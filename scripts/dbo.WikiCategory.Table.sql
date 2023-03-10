USE [GP_Reports]
GO
/****** Object:  Table [dbo].[WikiCategory]    Script Date: 04.02.2023 17:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WikiCategory](
	[ID] [int] NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_WikiCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WikiCategory] ADD  CONSTRAINT [DF_WikiCategory_CategoryName]  DEFAULT (NEXT VALUE FOR [WikiCategoryID_seq]) FOR [CategoryName]
GO
