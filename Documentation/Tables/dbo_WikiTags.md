#### 

[Project](../../../../index.md) > [ROZA_PC](../../../index.md) > [User databases](../../index.md) > [GP_Reports](../index.md) > [Tables](Tables.md) > dbo.WikiTags

# ![Tables](../../../../Images/Table32.png) [dbo].[WikiTags]

---

## <a name="#properties"></a>Properties

| Property | Value |
|---|---|
| Collation | SQL_Latin1_General_CP1_CI_AS |
| Row Count (~) | 0 |
| Created | 2:54:35 4 февраля 2023 г. |
| Last Modified | 15:29:05 4 февраля 2023 г. |


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default |
|---|---|---|---|---|---|
| [![Cluster Primary Key PK_WikiTags: ID](../../../../Images/pkcluster.png)](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [WikiTagsID_seq]) |
|  | TagName | nvarchar(100) | 200 | NOT NULL |  |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [![Cluster Primary Key PK_WikiTags: ID](../../../../Images/pkcluster.png)](#indexes) | PK_WikiTags | ID | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[WikiTags]
(
[ID] [int] NOT NULL CONSTRAINT [DF_WikiTags_ID] DEFAULT (NEXT VALUE FOR [WikiTagsID_seq]),
[TagName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WikiTags] ADD CONSTRAINT [PK_WikiTags] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

```


---

###### Author:  ratay

###### Copyright 2023 - All Rights Reserved

###### Created: 4 февраля 2023 г. 16:11:10

