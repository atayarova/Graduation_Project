#### 
# [Tables][dbo].[TaskStatuses]
---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [[Cluster Primary Key PK_TaskStatuses: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [TaskStatusesID_seq]) |  |
|  | TaskStatusName | nvarchar(150) | 300 | NOT NULL |  | _Статус заявки_ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_TaskStatuses: ID]](#indexes) | PK_TaskStatuses | ID | YES |


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

###### Author:  ratayarova
