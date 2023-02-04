#### 

[Project](../../../../index.md) > [ROZA_PC](../../../index.md) > [User databases](../../index.md) > [GP_Reports](../index.md) > [Tables](Tables.md) > dbo.Sourses

# ![Tables](../../../../Images/Table32.png) [dbo].[Sourses]

---

## <a name="#properties"></a>Properties

| Property | Value |
|---|---|
| Collation | SQL_Latin1_General_CP1_CI_AS |
| Row Count (~) | 0 |
| Created | 2:56:36 4 февраля 2023 г. |
| Last Modified | 15:36:22 4 февраля 2023 г. |


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [![Cluster Primary Key PK_Sourses: ID](../../../../Images/pkcluster.png)](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [SourseID_seq]) | _Numeric ID used for reference to a sourse within the database_ |
| [![Indexes UQ_SoursesName](../../../../Images/Index.png)](#indexes) | SourseName | nvarchar(100) | 200 | NOT NULL |  | _Название источника данных_ |
|  | Description | nvarchar(200) | 400 | NOT NULL |  | _Описание источника данных_ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [![Cluster Primary Key PK_Sourses: ID](../../../../Images/pkcluster.png)](#indexes) | PK_Sourses | ID | YES |
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

###### Author:  ratay

###### Copyright 2023 - All Rights Reserved

###### Created: 4 февраля 2023 г. 16:11:10

