#### 
# Indexes
#### Кластерный индекс 
---
##### Для каждой таблицы проекта были автоматически созданы клсатерные индексы при создании ограничений PRIMARY KEY (первичный ключ). Основная его задача — сохранение табличных данных в виде, отсортированном по значению ключа. Таблице может быть присущ лишь единственный кластеризованный индекс (Clustered index), потому что табличные данные могут отсортировываться в едином возможном порядке – либо возрастания, либо убывания. 
---
### Список таблиц с кластерными индексами:
## <a name="#Tables"></a>Tables

| Name |
|---|
| [dbo.Department] |
| [dbo.Groups]|
| [dbo.JobTitles] |
| [dbo.Sourses] |
| [dbo.TaskPosition]|
| [dbo.TaskPriority] |
| [dbo.Tasks]|
| [dbo.TasksCategory]|
| [dbo.TaskStatuses] |
| [dbo.TaskSubCategory] |
| [dbo.TypeTasks] |
| [dbo.Users]|
| [dbo.UserStatuses] |
| [dbo.Wiki]|
| [dbo.WikiCategory] |
| [dbo.WikiTags] |


---

## <a name="#sqlscript"></a>SQL Script

```sql
ALTER TABLE [dbo].[Tasks] ADD CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Groups] ADD CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobTitles] ADD CONSTRAINT [PK_JobTitles] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sourses] ADD CONSTRAINT [PK_Sourses] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskPosition] ADD CONSTRAINT [PK_TaskPosition] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskPriority] ADD CONSTRAINT [PK_TaskPriority] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskStatuses] ADD CONSTRAINT [PK_TaskStatuses] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskSubCategory] ADD CONSTRAINT [PK_TaskSubCategory] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TasksCategory] ADD CONSTRAINT [PK_TasksCategory] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TypeTasks] ADD CONSTRAINT [PK_TypeTasks] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserStatuses] ADD CONSTRAINT [PK_UserStatuses] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Wiki] ADD CONSTRAINT [PK_Wiki] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WikiCategory] ADD CONSTRAINT [PK_WikiCategory] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WikiTags] ADD CONSTRAINT [PK_WikiTags] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
```
#### Некластеризованный индекс 
---
#####  Так как некластеризованные индексы обеспечивают быстрый поиск и доступ к данным по значениям ключа, в проекте этот тип индекса используется для повышения производительности часто используемых запросов. Чтобы обнаружить и получить запрашиваемые данные, для системы подзапросов потребуется совершение дополнительных операций. Содержимое указателей на запрашиваемые данные полностью зависит от того, как они хранятся. Некластеризованный индекс указывает на таблицу с Clustered index, указывая, что именно он используется что для поиска действительных данных.
#####   Также в проекте были созданы уникальные некластеризованные индексы, обеспечивающий уникальное значение всех строк по определенному ключу и гарантирующий, что в ключе индекса не будет значений одинаковых, повторяющихся. 
##### SQL сервером создается автоматически Unique index для ключевых столбцов при формировании ограничений UNIQUE
---
### Список таблиц с некластеризованными индексами:
## <a name="#Tables"></a>Tables

| Name |
|---|
| [dbo.Department] |
| [dbo.Groups]|
| [dbo.JobTitles] |
| [dbo.Sourses] |
| [dbo.TaskPriority] |
| [dbo.Tasks]|
| [dbo.TypeTasks] |
| [dbo.Wiki]|



---

## <a name="#sqlscript"></a>SQL Script

```sql
ALTER TABLE [dbo].[Department] ADD CONSTRAINT [UQ_Department_Name] UNIQUE NONCLUSTERED ([DepartmentName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Groups] ADD CONSTRAINT [UQ_Groups_GroupName] UNIQUE NONCLUSTERED ([GroupName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobTitles] ADD CONSTRAINT [UQ_JobTitles_Name] UNIQUE NONCLUSTERED ([JobTitleName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sourses] ADD CONSTRAINT [UQ_SoursesName] UNIQUE NONCLUSTERED ([SourseName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskPriority] ADD CONSTRAINT [UQ_TaskPriorityName] UNIQUE NONCLUSTERED ([PriorityName]) ON [PRIMARY]
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
ALTER TABLE [dbo].[TypeTasks] ADD CONSTRAINT [UQ_TypeTasksName] UNIQUE NONCLUSTERED ([TypeTasks]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Wiki_CategoryID] ON [dbo].[Wiki] ([CategoryID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Wiki_SourceID] ON [dbo].[Wiki] ([SouseID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Wiki_TagID] ON [dbo].[Wiki] ([TagID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Wiki_UserID] ON [dbo].[Wiki] ([UserID]) ON [PRIMARY]
GO

```
###### Author:  ratayarova
