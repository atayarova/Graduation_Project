#### 
# [Tables] [dbo].[Sourses]

---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [[Cluster Primary Key PK_Sourses: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [SourseID_seq]) | _Numeric ID used for reference to a sourse within the database_ |
| [[Indexes UQ_SoursesName]](#indexes) | SourseName | nvarchar(100) | 200 | NOT NULL |  | _Название источника данных_ |
|  | Description | nvarchar(200) | 400 | NOT NULL |  | _Описание источника данных_ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_Sourses: ID]](#indexes) | PK_Sourses | ID | YES |
|  | UQ_SoursesName | SourseName | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[Sourses]
(
[ID] [int] NOT NULL CONSTRAINT [DF_Sourses_ID] DEFAULT (NEXT VALUE FOR [SourseID_seq]),
[SourseName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sourses] ADD CONSTRAINT [PK_Sourses] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sourses] ADD CONSTRAINT [UQ_SoursesName] UNIQUE NONCLUSTERED ([SourseName]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Описание источника данных', 'SCHEMA', N'dbo', 'TABLE', N'Sourses', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Numeric ID used for reference to a sourse within the database', 'SCHEMA', N'dbo', 'TABLE', N'Sourses', 'COLUMN', N'ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Название источника данных', 'SCHEMA', N'dbo', 'TABLE', N'Sourses', 'COLUMN', N'SourseName'
GO

```


---

###### Author:  ratayarova
