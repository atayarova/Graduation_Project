USE [GP_Reports]
GO
/****** Object:  Table [dbo].[Wiki]    Script Date: 04.02.2023 17:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wiki](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[CategoryID] [int] NULL,
	[Article] [nvarchar](max) NOT NULL,
	[DateCheck] [datetime2](7) NULL,
	[DateExpiration] [datetime2](7) NULL,
	[DateChanges] [datetime2](7) NULL,
	[Comments] [nvarchar](max) NULL,
	[TagID] [int] NULL,
	[UserID] [int] NOT NULL,
	[SouseID] [int] NULL,
 CONSTRAINT [PK_Wiki] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Wiki] ADD  CONSTRAINT [DF_Wiki_ID]  DEFAULT (NEXT VALUE FOR [WikiID_seq]) FOR [ID]
GO
ALTER TABLE [dbo].[Wiki]  WITH CHECK ADD  CONSTRAINT [FK_Wiki_Sourses] FOREIGN KEY([SouseID])
REFERENCES [dbo].[Sourses] ([ID])
GO
ALTER TABLE [dbo].[Wiki] CHECK CONSTRAINT [FK_Wiki_Sourses]
GO
ALTER TABLE [dbo].[Wiki]  WITH CHECK ADD  CONSTRAINT [FK_Wiki_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Wiki] CHECK CONSTRAINT [FK_Wiki_Users]
GO
ALTER TABLE [dbo].[Wiki]  WITH CHECK ADD  CONSTRAINT [FK_Wiki_WikiCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[WikiCategory] ([ID])
GO
ALTER TABLE [dbo].[Wiki] CHECK CONSTRAINT [FK_Wiki_WikiCategory]
GO
ALTER TABLE [dbo].[Wiki]  WITH CHECK ADD  CONSTRAINT [FK_Wiki_WikiTags] FOREIGN KEY([TagID])
REFERENCES [dbo].[WikiTags] ([ID])
GO
ALTER TABLE [dbo].[Wiki] CHECK CONSTRAINT [FK_Wiki_WikiTags]
GO
