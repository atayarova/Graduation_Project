#### 
# [Tables] [dbo].[Tasks]

---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [[Cluster Primary Key PK_Tasks: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [TasksID_seq]) |  |
| [[Indexes IX_Tasks_TaskTypeID]](#indexes)[[Foreign Keys FK_Tasks_TypeTasks: [dbo].[TypeTasks].TaskTypeID]](#foreignkeys) | TaskTypeID | int | 4 | NOT NULL |  | _Тип заявки_ |
|  | TaskNumber | nvarchar(150) | 300 | NULL allowed |  | _Номер заявки_ |
|  | Title | nvarchar(150) | 300 | NOT NULL |  | _Заголовок_ |
|  | Description | nvarchar(max) | max | NOT NULL |  | _Описание_ |
| [[Indexes IX_Tasks_SpesialistID]](#indexes)[[Foreign Keys FK_TasksSpesialist_Users: [dbo].[Users].SpesialistID]](#foreignkeys) | SpesialistID | int | 4 | NOT NULL |  | _Исполнитель заявки_ |
| [[Indexes IX_Tasks_InitiatorID]](#indexes)[[Foreign Keys FK_TasksInitiator_Users: [dbo].[Users].InitiatorID]](#foreignkeys) | InitiatorID | int | 4 | NOT NULL |  | _Инициатор заявки_ |
| [[Indexes IX_Tasks_StatusID]](#indexes)[[Foreign Keys FK_Tasks_TaskStatuses: [dbo].[TaskStatuses].StatusID]](#foreignkeys) | StatusID | int | 4 | NOT NULL |  | _Статус _ |
|  | DateOfCreation | datetime2 | 8 | NOT NULL |  | _Дата создания_ |
|  | Deadline | datetime2 | 8 | NOT NULL |  | _Срок выполнения_ |
|  | DateClosing | datetime2 | 8 | NOT NULL |  | _Дата завершения_ |
|  | Note | nvarchar(500) | 1000 | NULL allowed |  | _Примечание_ |
| [[Indexes IX_Tasks_PriorityID]](#indexes)[![Foreign Keys FK_Tasks_TaskPriority: [dbo].[TaskPriority].PriorityID]](#foreignkeys) | PriorityID | int | 4 | NOT NULL |  | _Приоритет_ |
| [[Indexes IX_Tasks_SourseID]](#indexes)[[Foreign Keys FK_Tasks_Sourses: [dbo].[Sourses].SourseID]](#foreignkeys) | SourseID | int | 4 | NOT NULL |  | _Источник заявки_ |
| [[Indexes IX_Tasks_GroupID][[Foreign Keys FK_Tasks_Groups: [dbo].[Groups].GroupID]](#foreignkeys) | GroupID | int | 4 | NOT NULL |  | _Группа_ |
| [[Indexes IX_Tasks_CategoryID]](#indexes)[[Foreign Keys FK_Tasks_TasksCategory: [dbo].[TasksCategory].CategoryID]](#foreignkeys) | CategoryID | int | 4 | NOT NULL |  | _Категория_ |
| [[Indexes IX_Tasks_SubCategoryID]](#indexes)[[Foreign Keys FK_Tasks_TaskSubCategory: [dbo].[TaskSubCategory].SubCategoryID]](#foreignkeys) | SubCategoryID | int | 4 | NOT NULL |  | _Субкатегория_ |
| [[Indexes IX_Tasks_PositionID]](#indexes)[[Foreign Keys FK_Tasks_TaskPosition: [dbo].[TaskPosition].PositionID]](#foreignkeys) | PositionID | int | 4 | NOT NULL |  | _позиция_ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_Tasks: ID]](#indexes) | PK_Tasks | ID | YES |
|  | IX_Tasks_CategoryID | CategoryID |  |
|  | IX_Tasks_GroupID | GroupID |  |
|  | IX_Tasks_InitiatorID | InitiatorID |  |
|  | IX_Tasks_PositionID | PositionID |  |
|  | IX_Tasks_PriorityID | PriorityID |  |
|  | IX_Tasks_SourseID | SourseID |  |
|  | IX_Tasks_SpesialistID | SpesialistID |  |
|  | IX_Tasks_StatusID | StatusID |  |
|  | IX_Tasks_SubCategoryID | SubCategoryID |  |
|  | IX_Tasks_TaskTypeID | TaskTypeID |  |


---

## <a name="#foreignkeys"></a>Foreign Keys

| Name | Columns |
|---|---|
| FK_Tasks_Groups | GroupID->[[dbo].[Groups].[ID]](dbo_Groups.md) |
| FK_Tasks_Sourses | SourseID->[[dbo].[Sourses].[ID]](dbo_Sourses.md) |
| FK_Tasks_TaskPosition | PositionID->[[dbo].[TaskPosition].[ID]](dbo_TaskPosition.md) |
| FK_Tasks_TaskPriority | PriorityID->[[dbo].[TaskPriority].[ID]](dbo_TaskPriority.md) |
| FK_Tasks_TasksCategory | CategoryID->[[dbo].[TasksCategory].[ID]](dbo_TasksCategory.md) |
| FK_Tasks_TaskStatuses | StatusID->[[dbo].[TaskStatuses].[ID]](dbo_TaskStatuses.md) |
| FK_Tasks_TaskSubCategory | SubCategoryID->[[dbo].[TaskSubCategory].[ID]](dbo_TaskSubCategory.md) |
| FK_Tasks_TypeTasks | TaskTypeID->[[dbo].[TypeTasks].[ID]](dbo_TypeTasks.md) |
| FK_TasksInitiator_Users | InitiatorID->[[dbo].[Users].[ID]](dbo_Users.md) |
| FK_TasksSpesialist_Users | SpesialistID->[[dbo].[Users].[ID]](dbo_Users.md) |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[Tasks]
(
[ID] [int] NOT NULL CONSTRAINT [DF_Tasks_ID] DEFAULT (NEXT VALUE FOR [TasksID_seq]),
[TaskTypeID] [int] NOT NULL,
[TaskNumber] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Title] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SpesialistID] [int] NOT NULL,
[InitiatorID] [int] NOT NULL,
[StatusID] [int] NOT NULL,
[DateOfCreation] [datetime2] NOT NULL,
[Deadline] [datetime2] NOT NULL,
[DateClosing] [datetime2] NOT NULL,
[Note] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PriorityID] [int] NOT NULL,
[SourseID] [int] NOT NULL,
[GroupID] [int] NOT NULL,
[CategoryID] [int] NOT NULL,
[SubCategoryID] [int] NOT NULL,
[PositionID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tasks_CategoryID] ON [dbo].[Tasks] ([CategoryID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tasks_GroupID] ON [dbo].[Tasks] ([GroupID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tasks_InitiatorID] ON [dbo].[Tasks] ([InitiatorID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tasks_PositionID] ON [dbo].[Tasks] ([PositionID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tasks_PriorityID] ON [dbo].[Tasks] ([PriorityID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tasks_SourseID] ON [dbo].[Tasks] ([SourseID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tasks_SpesialistID] ON [dbo].[Tasks] ([SpesialistID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tasks_StatusID] ON [dbo].[Tasks] ([StatusID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tasks_SubCategoryID] ON [dbo].[Tasks] ([SubCategoryID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tasks_TaskTypeID] ON [dbo].[Tasks] ([TaskTypeID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [FK_Tasks_Groups] FOREIGN KEY ([GroupID]) REFERENCES [dbo].[Groups] ([ID])
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [FK_Tasks_Sourses] FOREIGN KEY ([SourseID]) REFERENCES [dbo].[Sourses] ([ID])
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [FK_Tasks_TaskPosition] FOREIGN KEY ([PositionID]) REFERENCES [dbo].[TaskPosition] ([ID])
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [FK_Tasks_TaskPriority] FOREIGN KEY ([PriorityID]) REFERENCES [dbo].[TaskPriority] ([ID])
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [FK_Tasks_TasksCategory] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[TasksCategory] ([ID])
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [FK_Tasks_TaskStatuses] FOREIGN KEY ([StatusID]) REFERENCES [dbo].[TaskStatuses] ([ID])
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [FK_Tasks_TaskSubCategory] FOREIGN KEY ([SubCategoryID]) REFERENCES [dbo].[TaskSubCategory] ([ID])
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [FK_Tasks_TypeTasks] FOREIGN KEY ([TaskTypeID]) REFERENCES [dbo].[TypeTasks] ([ID])
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [FK_TasksInitiator_Users] FOREIGN KEY ([InitiatorID]) REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [FK_TasksSpesialist_Users] FOREIGN KEY ([SpesialistID]) REFERENCES [dbo].[Users] ([ID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Категория', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'CategoryID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Дата завершения', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'DateClosing'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Дата создания', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'DateOfCreation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Срок выполнения', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'Deadline'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Описание', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Группа', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'GroupID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Инициатор заявки', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'InitiatorID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Примечание', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'Note'
GO
EXEC sp_addextendedproperty N'MS_Description', N'позиция', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'PositionID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Приоритет', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'PriorityID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Источник заявки', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'SourseID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Исполнитель заявки', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'SpesialistID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Статус ', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'StatusID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Субкатегория', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'SubCategoryID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Номер заявки', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'TaskNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Тип заявки', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'TaskTypeID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Заголовок', 'SCHEMA', N'dbo', 'TABLE', N'Tasks', 'COLUMN', N'Title'
GO

```


---

## <a name="#uses"></a>Uses

* [[dbo].[Groups]](dbo_Groups.md)
* [[dbo].[Sourses]](dbo_Sourses.md)
* [[dbo].[TaskPosition]](dbo_TaskPosition.md)
* [[dbo].[TaskPriority]](dbo_TaskPriority.md)
* [[dbo].[TasksCategory]](dbo_TasksCategory.md)
* [[dbo].[TaskStatuses]](dbo_TaskStatuses.md)
* [[dbo].[TaskSubCategory]](dbo_TaskSubCategory.md)
* [[dbo].[TypeTasks]](dbo_TypeTasks.md)
* [[dbo].[Users]](dbo_Users.md)


---

###### Author:  ratayarova

