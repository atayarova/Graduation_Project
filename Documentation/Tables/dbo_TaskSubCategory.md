#### 

[Project](../../../../index.md) > [ROZA_PC](../../../index.md) > [User databases](../../index.md) > [GP_Reports](../index.md) > [Tables](Tables.md) > dbo.TaskSubCategory

# ![Tables](../../../../Images/Table32.png) [dbo].[TaskSubCategory]

---

## <a name="#properties"></a>Properties

| Property | Value |
|---|---|
| Collation | SQL_Latin1_General_CP1_CI_AS |
| Row Count (~) | 0 |
| Created | 3:02:40 4 февраля 2023 г. |
| Last Modified | 15:36:22 4 февраля 2023 г. |


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default |
|---|---|---|---|---|---|
| [![Cluster Primary Key PK_TaskSubCategory: ID](../../../../Images/pkcluster.png)](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [TaskSubCategoryID_seq]) |
|  | SubcategoryName | nvarchar(150) | 300 | NOT NULL |  |
| [![Foreign Keys FK_TaskSubCategory_TasksCategory: [dbo].[TasksCategory].CategoryID](../../../../Images/fk.png)](#foreignkeys) | CategoryID | int | 4 | NOT NULL |  |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [![Cluster Primary Key PK_TaskSubCategory: ID](../../../../Images/pkcluster.png)](#indexes) | PK_TaskSubCategory | ID | YES |


---

## <a name="#foreignkeys"></a>Foreign Keys

| Name | Columns |
|---|---|
| FK_TaskSubCategory_TasksCategory | CategoryID->[[dbo].[TasksCategory].[ID]](dbo_TasksCategory.md) |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[TaskSubCategory]
(
[ID] [int] NOT NULL CONSTRAINT [DF_TaskSubCategory_ID] DEFAULT (NEXT VALUE FOR [TaskSubCategoryID_seq]),
[SubcategoryName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CategoryID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskSubCategory] ADD CONSTRAINT [PK_TaskSubCategory] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskSubCategory] ADD CONSTRAINT [FK_TaskSubCategory_TasksCategory] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[TasksCategory] ([ID])
GO

```


---

###### Author:  ratay

###### Copyright 2023 - All Rights Reserved

###### Created: 4 февраля 2023 г. 16:11:10

