USE [GP_Reports]
GO
/****** Object:  Table [dbo].[UserStatuses]    Script Date: 04.02.2023 17:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStatuses](
	[ID] [int] NOT NULL,
	[UserStatusName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_UserStatuses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserStatuses] ADD  CONSTRAINT [DF_UserStatuses_ID]  DEFAULT (NEXT VALUE FOR [UserStatusesID_seq]) FOR [ID]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Статус пользователя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserStatuses', @level2type=N'COLUMN',@level2name=N'UserStatusName'
GO
