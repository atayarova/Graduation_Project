#### 

[Project](../../../../index.md) > [ROZA_PC](../../../index.md) > [User databases](../../index.md) > [GP_Reports](../index.md) > [Tables](Tables.md) > dbo.TaskPriority

# ![Tables](../../../../Images/Table32.png) [dbo].[TaskPriority]

---

## <a name="#properties"></a>Properties

| Property | Value |
|---|---|
| Collation | SQL_Latin1_General_CP1_CI_AS |
| Row Count (~) | 0 |
| Created | 3:00:10 4 февраля 2023 г. |
| Last Modified | 15:36:22 4 февраля 2023 г. |


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [![Cluster Primary Key PK_TaskPriority: ID](../../../../Images/pkcluster.png)](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [TaskPriorityID_seq]) | _Приоритет заявки_ |
| [![Indexes UQ_TaskPriorityName](../../../../Images/Index.png)](#indexes) | PriorityName | nvarchar(50) | 100 | NOT NULL |  |  |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [![Cluster Primary Key PK_TaskPriority: ID](../../../../Images/pkcluster.png)](#indexes) | PK_TaskPriority | ID | YES |
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

###### Author:  ratay

###### Copyright 2023 - All Rights Reserved

###### Created: 4 февраля 2023 г. 16:11:10

