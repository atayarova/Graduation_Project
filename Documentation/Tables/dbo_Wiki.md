#### 
# [Tables][dbo].[Wiki]
---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default |
|---|---|---|---|---|---|
| [[Cluster Primary Key PK_Wiki: ID]](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [WikiID_seq]) |
|  | Title | nvarchar(150) | 300 | NOT NULL |  |
| [[Foreign Keys FK_Wiki_WikiCategory: [dbo].[WikiCategory].CategoryID]](#foreignkeys) | CategoryID | int | 4 | NULL allowed |  |
|  | Article | nvarchar(max) | max | NOT NULL |  |
|  | DateCheck | datetime2 | 8 | NULL allowed |  |
|  | DateExpiration | datetime2 | 8 | NULL allowed |  |
|  | DateChanges | datetime2 | 8 | NULL allowed |  |
|  | Comments | nvarchar(max) | max | NULL allowed |  |
| [[Foreign Keys FK_Wiki_WikiTags: [dbo].[WikiTags].TagID]](#foreignkeys) | TagID | int | 4 | NULL allowed |  |
| [[Foreign Keys FK_Wiki_Users: [dbo].[Users].UserID]](#foreignkeys) | UserID | int | 4 | NOT NULL |  |
| [[Foreign Keys FK_Wiki_Sourses: [dbo].[Sourses].SouseID]](#foreignkeys) | SouseID | int | 4 | NULL allowed |  |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [[Cluster Primary Key PK_Wiki: ID]](#indexes) | PK_Wiki | ID | YES |


---

## <a name="#foreignkeys"></a>Foreign Keys

| Name | Columns |
|---|---|
| FK_Wiki_Sourses | SouseID->[[dbo].[Sourses].[ID]](dbo_Sourses.md) |
| FK_Wiki_Users | UserID->[[dbo].[Users].[ID]](dbo_Users.md) |
| FK_Wiki_WikiCategory | CategoryID->[[dbo].[WikiCategory].[ID]](dbo_WikiCategory.md) |
| FK_Wiki_WikiTags | TagID->[[dbo].[WikiTags].[ID]](dbo_WikiTags.md) |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[Wiki]
(
[ID] [int] NOT NULL CONSTRAINT [DF_Wiki_ID] DEFAULT (NEXT VALUE FOR [WikiID_seq]),
[Title] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CategoryID] [int] NULL,
[Article] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DateCheck] [datetime2] NULL,
[DateExpiration] [datetime2] NULL,
[DateChanges] [datetime2] NULL,
[Comments] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TagID] [int] NULL,
[UserID] [int] NOT NULL,
[SouseID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Wiki] ADD CONSTRAINT [PK_Wiki] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Wiki] ADD CONSTRAINT [FK_Wiki_Sourses] FOREIGN KEY ([SouseID]) REFERENCES [dbo].[Sourses] ([ID])
GO
ALTER TABLE [dbo].[Wiki] ADD CONSTRAINT [FK_Wiki_Users] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Wiki] ADD CONSTRAINT [FK_Wiki_WikiCategory] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[WikiCategory] ([ID])
GO
ALTER TABLE [dbo].[Wiki] ADD CONSTRAINT [FK_Wiki_WikiTags] FOREIGN KEY ([TagID]) REFERENCES [dbo].[WikiTags] ([ID])
GO

```


---

## <a name="#uses"></a>Uses

* [[dbo].[Sourses]](dbo_Sourses.md)
* [[dbo].[Users]](dbo_Users.md)
* [[dbo].[WikiCategory]](dbo_WikiCategory.md)
* [[dbo].[WikiTags]](dbo_WikiTags.md)


---

###### Author:  ratayarova

