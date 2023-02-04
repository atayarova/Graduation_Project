#### 

[Project](../../../../index.md) > [ROZA_PC](../../../index.md) > [User databases](../../index.md) > [GP_Reports](../index.md) > [Tables](Tables.md) > dbo.UserStatuses

# ![Tables](../../../../Images/Table32.png) [dbo].[UserStatuses]

---

## <a name="#properties"></a>Properties

| Property | Value |
|---|---|
| Collation | SQL_Latin1_General_CP1_CI_AS |
| Row Count (~) | 0 |
| Created | 2:57:53 4 февраля 2023 г. |
| Last Modified | 15:24:40 4 февраля 2023 г. |


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [![Cluster Primary Key PK_UserStatuses: ID](../../../../Images/pkcluster.png)](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [UserStatusesID_seq]) |  |
|  | UserStatusName | nvarchar(150) | 300 | NOT NULL |  | _Статус пользователя_ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [![Cluster Primary Key PK_UserStatuses: ID](../../../../Images/pkcluster.png)](#indexes) | PK_UserStatuses | ID | YES |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[UserStatuses]
(
[ID] [int] NOT NULL CONSTRAINT [DF_UserStatuses_ID] DEFAULT (NEXT VALUE FOR [UserStatusesID_seq]),
[UserStatusName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserStatuses] ADD CONSTRAINT [PK_UserStatuses] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Статус пользователя', 'SCHEMA', N'dbo', 'TABLE', N'UserStatuses', 'COLUMN', N'UserStatusName'
GO

```


---

###### Author:  ratay

###### Copyright 2023 - All Rights Reserved

###### Created: 4 февраля 2023 г. 16:11:10

