USE [GP_Reports]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 04.02.2023 17:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[ID] [int] NOT NULL,
	[TaskTypeID] [int] NOT NULL,
	[TaskNumber] [nvarchar](150) NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[SpesialistID] [int] NOT NULL,
	[InitiatorID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[DateOfCreation] [datetime2](7) NOT NULL,
	[Deadline] [datetime2](7) NOT NULL,
	[DateClosing] [datetime2](7) NOT NULL,
	[Note] [nvarchar](500) NULL,
	[PriorityID] [int] NOT NULL,
	[SourseID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryID] [int] NOT NULL,
	[PositionID] [int] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_CategoryID]    Script Date: 04.02.2023 17:55:09 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_CategoryID] ON [dbo].[Tasks]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_GroupID]    Script Date: 04.02.2023 17:55:09 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_GroupID] ON [dbo].[Tasks]
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_InitiatorID]    Script Date: 04.02.2023 17:55:09 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_InitiatorID] ON [dbo].[Tasks]
(
	[InitiatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_PositionID]    Script Date: 04.02.2023 17:55:09 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_PositionID] ON [dbo].[Tasks]
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_PriorityID]    Script Date: 04.02.2023 17:55:09 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_PriorityID] ON [dbo].[Tasks]
(
	[PriorityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_SourseID]    Script Date: 04.02.2023 17:55:09 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_SourseID] ON [dbo].[Tasks]
(
	[SourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_SpesialistID]    Script Date: 04.02.2023 17:55:09 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_SpesialistID] ON [dbo].[Tasks]
(
	[SpesialistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_StatusID]    Script Date: 04.02.2023 17:55:09 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_StatusID] ON [dbo].[Tasks]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_SubCategoryID]    Script Date: 04.02.2023 17:55:09 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_SubCategoryID] ON [dbo].[Tasks]
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_TaskTypeID]    Script Date: 04.02.2023 17:55:09 ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_TaskTypeID] ON [dbo].[Tasks]
(
	[TaskTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF_Tasks_ID]  DEFAULT (NEXT VALUE FOR [TasksID_seq]) FOR [ID]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Groups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Groups] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Groups]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Sourses] FOREIGN KEY([SourseID])
REFERENCES [dbo].[Sourses] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Sourses]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_TaskPosition] FOREIGN KEY([PositionID])
REFERENCES [dbo].[TaskPosition] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_TaskPosition]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_TaskPriority] FOREIGN KEY([PriorityID])
REFERENCES [dbo].[TaskPriority] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_TaskPriority]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_TasksCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[TasksCategory] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_TasksCategory]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_TaskStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[TaskStatuses] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_TaskStatuses]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_TaskSubCategory] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[TaskSubCategory] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_TaskSubCategory]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_TypeTasks] FOREIGN KEY([TaskTypeID])
REFERENCES [dbo].[TypeTasks] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_TypeTasks]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_TasksInitiator_Users] FOREIGN KEY([InitiatorID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_TasksInitiator_Users]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_TasksSpesialist_Users] FOREIGN KEY([SpesialistID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_TasksSpesialist_Users]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Тип заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'TaskTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'TaskNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Заголовок' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Описание' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Исполнитель заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'SpesialistID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Инициатор заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'InitiatorID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Статус ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата создания' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'DateOfCreation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Срок выполнения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'Deadline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата завершения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'DateClosing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Примечание' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Приоритет' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'PriorityID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Источник заявки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'SourseID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Группа' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'GroupID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Категория' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Субкатегория' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'SubCategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'позиция' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'PositionID'
GO
