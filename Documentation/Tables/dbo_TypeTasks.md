#### 
# [Tables][dbo].[TypeTasks]

---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [[Cluster Primary Key PK_TypeTasks: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [TypeTasksID_seq]) |  |
| [[Indexes UQ_TypeTasksName]](#indexes) | TypeTasks | nvarchar(150) | 300 | NOT NULL |  | _Тип заявки_ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_TypeTasks: ID]](#indexes) | PK_TypeTasks | ID | YES |
|  | UQ_TypeTasksName | TypeTasks | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[TypeTasks]
(
[ID] [int] NOT NULL CONSTRAINT [DF_TypeTasks_ID] DEFAULT (NEXT VALUE FOR [TypeTasksID_seq]),
[TypeTasks] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TypeTasks] ADD CONSTRAINT [PK_TypeTasks] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TypeTasks] ADD CONSTRAINT [UQ_TypeTasksName] UNIQUE NONCLUSTERED ([TypeTasks]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Тип заявки', 'SCHEMA', N'dbo', 'TABLE', N'TypeTasks', 'COLUMN', N'TypeTasks'
GO

```


---

## <a name="#usedby"></a>Used By

* [[dbo].[Tasks]](dbo_Tasks.md)


---

###### Author:  ratayarova

