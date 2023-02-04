#### 
# [Tables] [dbo].[TaskPriority]

---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [[Cluster Primary Key PK_TaskPriority: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [TaskPriorityID_seq]) | _Приоритет заявки_ |
| [[Indexes UQ_TaskPriorityName]](#indexes) | PriorityName | nvarchar(50) | 100 | NOT NULL |  |  |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_TaskPriority: ID]](#indexes) | PK_TaskPriority | ID | YES |
|  | UQ_TaskPriorityName | PriorityName | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[TaskPriority]
(
[ID] [int] NOT NULL CONSTRAINT [DF_TaskPriority_ID] DEFAULT (NEXT VALUE FOR [TaskPriorityID_seq]),
[PriorityName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskPriority] ADD CONSTRAINT [PK_TaskPriority] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskPriority] ADD CONSTRAINT [UQ_TaskPriorityName] UNIQUE NONCLUSTERED ([PriorityName]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Приоритет заявки', 'SCHEMA', N'dbo', 'TABLE', N'TaskPriority', 'COLUMN', N'ID'
GO

```


---

###### Author:  ratayarova
