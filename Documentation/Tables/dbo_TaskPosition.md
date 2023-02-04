#### 

[Project](../../../../index.md) > [ROZA_PC](../../../index.md) > [User databases](../../index.md) > [GP_Reports](../index.md) > [Tables](Tables.md) > dbo.TaskPosition

# ![Tables](../../../../Images/Table32.png) [dbo].[TaskPosition]

---

## <a name="#properties"></a>Properties

| Property | Value |
|---|---|
| Collation | SQL_Latin1_General_CP1_CI_AS |
| Row Count (~) | 0 |
| Created | 3:03:05 4 февраля 2023 г. |
| Last Modified | 15:36:22 4 февраля 2023 г. |


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default |
|---|---|---|---|---|---|
| [![Cluster Primary Key PK_TaskPosition: ID](../../../../Images/pkcluster.png)](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [TaskPosition_seq]) |
|  | PositionName | nvarchar(150) | 300 | NOT NULL |  |
| [![Foreign Keys FK_TaskPosition_TaskSubCategory: [dbo].[TaskSubCategory].SubCategoryID](../../../../Images/fk.png)](#foreignkeys) | SubCategoryID | int | 4 | NOT NULL |  |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [![Cluster Primary Key PK_TaskPosition: ID](../../../../Images/pkcluster.png)](#indexes) | PK_TaskPosition | ID | YES |


---

## <a name="#foreignkeys"></a>Foreign Keys

| Name | Columns |
|---|---|
| FK_TaskPosition_TaskSubCategory | SubCategoryID->[[dbo].[TaskSubCategory].[ID]](dbo_TaskSubCategory.md) |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[TaskPosition]
(
[ID] [int] NOT NULL CONSTRAINT [DF_TaskPosition_ID] DEFAULT (NEXT VALUE FOR [TaskPosition_seq]),
[PositionName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SubCategoryID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskPosition] ADD CONSTRAINT [PK_TaskPosition] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskPosition] ADD CONSTRAINT [FK_TaskPosition_TaskSubCategory] FOREIGN KEY ([SubCategoryID]) REFERENCES [dbo].[TaskSubCategory] ([ID])
GO

```


---

###### Author:  ratay

###### Copyright 2023 - All Rights Reserved

###### Created: 4 февраля 2023 г. 16:11:10

