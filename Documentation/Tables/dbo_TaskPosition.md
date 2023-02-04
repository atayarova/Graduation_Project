#### 
# [Tables][dbo].[TaskPosition]

---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default |
|---|---|---|---|---|---|
| [[Cluster Primary Key PK_TaskPosition: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [TaskPosition_seq]) |
|  | PositionName | nvarchar(150) | 300 | NOT NULL |  |
| [[Foreign Keys FK_TaskPosition_TaskSubCategory: [dbo].[TaskSubCategory].SubCategoryID]](#foreignkeys) | SubCategoryID | int | 4 | NOT NULL |  |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_TaskPosition: ID]](#indexes) | PK_TaskPosition | ID | YES |


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

###### Author:  ratayarova