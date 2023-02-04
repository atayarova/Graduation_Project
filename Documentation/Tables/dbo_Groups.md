#### 


#  [dbo].[Groups]

---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [[Cluster Primary Key PK_Groups: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [GroupID_seq]) | _Название группы_ |
| [[Indexes UQ_Groups_GroupName]](#indexes) | GroupName | nvarchar(150) | 300 | NOT NULL |  |  |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_Groups: ID]](#indexes) | PK_Groups | ID | YES |
|  | UQ_Groups_GroupName | GroupName | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[Groups]
(
[ID] [int] NOT NULL CONSTRAINT [DF_Groups_ID] DEFAULT (NEXT VALUE FOR [GroupID_seq]),
[GroupName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Groups] ADD CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Groups] ADD CONSTRAINT [UQ_Groups_GroupName] UNIQUE NONCLUSTERED ([GroupName]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Название группы', 'SCHEMA', N'dbo', 'TABLE', N'Groups', 'COLUMN', N'ID'
GO

```


---

###### Author:  ratayarova
