#### 

[Project](../../../../index.md) > [ROZA_PC](../../../index.md) > [User databases](../../index.md) > [GP_Reports](../index.md) > [Tables](Tables.md) > dbo.TaskStatuses

# ![Tables](../../../../Images/Table32.png) [dbo].[TaskStatuses]

---

## <a name="#properties"></a>Properties

| Property | Value |
|---|---|
| Collation | SQL_Latin1_General_CP1_CI_AS |
| Row Count (~) | 0 |
| Created | 3:01:30 4 февраля 2023 г. |
| Last Modified | 15:36:22 4 февраля 2023 г. |


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [![Cluster Primary Key PK_TaskStatuses: ID](../../../../Images/pkcluster.png)](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [TaskStatusesID_seq]) |  |
|  | TaskStatusName | nvarchar(150) | 300 | NOT NULL |  | _Статус заявки_ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [![Cluster Primary Key PK_TaskStatuses: ID](../../../../Images/pkcluster.png)](#indexes) | PK_TaskStatuses | ID | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[TaskStatuses]
(
[ID] [int] NOT NULL CONSTRAINT [DF_TaskStatuses_ID] DEFAULT (NEXT VALUE FOR [TaskStatusesID_seq]),
[TaskStatusName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskStatuses] ADD CONSTRAINT [PK_TaskStatuses] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Статус заявки', 'SCHEMA', N'dbo', 'TABLE', N'TaskStatuses', 'COLUMN', N'TaskStatusName'
GO

```


---

###### Author:  ratay

###### Copyright 2023 - All Rights Reserved

###### Created: 4 февраля 2023 г. 16:11:10

