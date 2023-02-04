#### 

[Project](../../../../index.md) > [ROZA_PC](../../../index.md) > [User databases](../../index.md) > [GP_Reports](../index.md) > [Tables](Tables.md) > dbo.JobTitles

# ![Tables](../../../../Images/Table32.png) [dbo].[JobTitles]

---

## <a name="#properties"></a>Properties

| Property | Value |
|---|---|
| Collation | SQL_Latin1_General_CP1_CI_AS |
| Row Count (~) | 0 |
| Created | 2:59:16 4 февраля 2023 г. |
| Last Modified | 14:40:48 4 февраля 2023 г. |


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [![Cluster Primary Key PK_JobTitles: ID](../../../../Images/pkcluster.png)](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [JobTitleID_seq]) |  |
| [![Indexes UQ_JobTitles_Name](../../../../Images/Index.png)](#indexes) | JobTitleName | nvarchar(150) | 300 | NOT NULL |  | _Название должности _ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [![Cluster Primary Key PK_JobTitles: ID](../../../../Images/pkcluster.png)](#indexes) | PK_JobTitles | ID | YES |
|  | UQ_JobTitles_Name | JobTitleName | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[JobTitles]
(
[ID] [int] NOT NULL CONSTRAINT [DF_JobTitles_ID] DEFAULT (NEXT VALUE FOR [JobTitleID_seq]),
[JobTitleName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobTitles] ADD CONSTRAINT [PK_JobTitles] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JobTitles] ADD CONSTRAINT [UQ_JobTitles_Name] UNIQUE NONCLUSTERED ([JobTitleName]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Название должности ', 'SCHEMA', N'dbo', 'TABLE', N'JobTitles', 'COLUMN', N'JobTitleName'
GO

```


---

###### Author:  ratay

###### Copyright 2023 - All Rights Reserved

###### Created: 4 февраля 2023 г. 16:11:10

