#### 
# [Tables][dbo].[WikiCategory]
---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default |
|---|---|---|---|---|---|
| [[Cluster Primary Key PK_WikiCategory: ID]](#indexes) | ID | int | 4 | NOT NULL |  |
|  | CategoryName | nvarchar(150) | 300 | NOT NULL | (NEXT VALUE FOR [WikiCategoryID_seq]) |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_WikiCategory: ID]](#indexes) | PK_WikiCategory | ID | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[WikiCategory]
(
[ID] [int] NOT NULL,
[CategoryName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_WikiCategory_CategoryName] DEFAULT (NEXT VALUE FOR [WikiCategoryID_seq])
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WikiCategory] ADD CONSTRAINT [PK_WikiCategory] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO

```


---

###### Author:  ratayarova

