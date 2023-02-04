#### 
# [Tables][dbo].[WikiTags]
---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default |
|---|---|---|---|---|---|
| [[Cluster Primary Key PK_WikiTags: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [WikiTagsID_seq]) |
|  | TagName | nvarchar(100) | 200 | NOT NULL |  |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_WikiTags: ID]](#indexes) | PK_WikiTags | ID | YES |


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

###### Author:  ratayarova

