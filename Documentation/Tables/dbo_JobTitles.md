#### 
# [Tables][dbo].[JobTitles]


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [[Cluster Primary Key PK_JobTitles: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [JobTitleID_seq]) |  |
| [[Indexes UQ_JobTitles_Name] | JobTitleName | nvarchar(150) | 300 | NOT NULL |  | _Название должности _ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_JobTitles: ID]](#indexes) | PK_JobTitles | ID | YES |
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

###### Author:  ratayrova
