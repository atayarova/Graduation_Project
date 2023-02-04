#### 

# [Tables] [dbo].[Department]


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [[Cluster Primary Key PK_Department: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [DepatmentID_seq]) |  |
| [[Indexes UQ_Department_Name]](#indexes) | DepartmentName | nvarchar(150) | 300 | NOT NULL |  | _Название депертамента_ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_Department: ID]](#indexes) | PK_Department | ID | YES |
|  | UQ_Department_Name | DepartmentName | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[Department]
(
[ID] [int] NOT NULL CONSTRAINT [DF_Department_ID] DEFAULT (NEXT VALUE FOR [DepatmentID_seq]),
[DepartmentName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD CONSTRAINT [UQ_Department_Name] UNIQUE NONCLUSTERED ([DepartmentName]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Название депертамента', 'SCHEMA', N'dbo', 'TABLE', N'Department', 'COLUMN', N'DepartmentName'
GO

```


---

###### Author:  ratayarova
