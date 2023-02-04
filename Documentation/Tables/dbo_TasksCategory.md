#### 
# [Tables] [dbo].[TasksCategory]

---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [[Cluster Primary Key PK_TasksCategory: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [TasksCategoryID_seq]) |  |
|  | CategoryName | nvarchar(150) | 300 | NOT NULL |  | _Категория заявки_ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_TasksCategory: ID]](#indexes) | PK_TasksCategory | ID | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[TasksCategory]
(
[ID] [int] NOT NULL CONSTRAINT [DF_TasksCategory_ID] DEFAULT (NEXT VALUE FOR [TasksCategoryID_seq]),
[CategoryName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TasksCategory] ADD CONSTRAINT [PK_TasksCategory] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Категория заявки', 'SCHEMA', N'dbo', 'TABLE', N'TasksCategory', 'COLUMN', N'CategoryName'
GO

```


---

###### Author:  ratayarova
