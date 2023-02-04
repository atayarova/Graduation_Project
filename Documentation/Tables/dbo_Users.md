#### 

[Project](../../../../index.md) > [ROZA_PC](../../../index.md) > [User databases](../../index.md) > [GP_Reports](../index.md) > [Tables](Tables.md) > dbo.Users

# ![Tables](../../../../Images/Table32.png) [dbo].[Users]

---

## <a name="#properties"></a>Properties

| Property | Value |
|---|---|
| Collation | SQL_Latin1_General_CP1_CI_AS |
| Row Count (~) | 0 |
| Created | 3:01:02 4 февраля 2023 г. |
| Last Modified | 15:36:22 4 февраля 2023 г. |


---

## <a name="#columns"></a>Columns

| Key | Name | Data Type | Max Length (Bytes) | Nullability | Default | Description |
|---|---|---|---|---|---|---|
| [![Cluster Primary Key PK_Users: ID](../../../../Images/pkcluster.png)](#indexes) | ID | int | 4 | NOT NULL | (NEXT VALUE FOR [UserID_seq]) |  |
|  | Login | nvarchar(50) | 100 | NOT NULL |  |  |
|  | UserName | nvarchar(150) | 300 | NOT NULL |  | _имя пользователя_ |
|  | FullName | nvarchar(150) | 300 | NULL allowed |  | _Фамилия пользователя_ |
| [![Foreign Keys FK_Users_UserStatuses: [dbo].[UserStatuses].StatusID](../../../../Images/fk.png)](#foreignkeys) | StatusID | int | 4 | NOT NULL |  | _статус_ |
| [![Foreign Keys FK_Users_Department: [dbo].[Department].DepartmentID](../../../../Images/fk.png)](#foreignkeys) | DepartmentID | int | 4 | NOT NULL |  | _Департамент пользователя_ |
| [![Foreign Keys FK_Users_JobTitles: [dbo].[JobTitles].JobTitleID](../../../../Images/fk.png)](#foreignkeys) | JobTitleID | int | 4 | NOT NULL |  | _Должность пользователя_ |
| [![Foreign Keys FK_Users_Groups: [dbo].[Groups].GroupID](../../../../Images/fk.png)](#foreignkeys) | GroupID | int | 4 | NOT NULL |  | _Группа пользователя_ |


---

## <a name="#indexes"></a>Indexes

| Key | Name | Key Columns | Unique |
|---|---|---|---|
| [![Cluster Primary Key PK_Users: ID](../../../../Images/pkcluster.png)](#indexes) | PK_Users | ID | YES |


---

## <a name="#foreignkeys"></a>Foreign Keys

| Name | Columns |
|---|---|
| FK_Users_Department | DepartmentID->[[dbo].[Department].[ID]](dbo_Department.md) |
| FK_Users_Groups | GroupID->[[dbo].[Groups].[ID]](dbo_Groups.md) |
| FK_Users_JobTitles | JobTitleID->[[dbo].[JobTitles].[ID]](dbo_JobTitles.md) |
| FK_Users_UserStatuses | StatusID->[[dbo].[UserStatuses].[ID]](dbo_UserStatuses.md) |


---

## <a name="#sqlscript"></a>SQL Script

```sql
CREATE TABLE [dbo].[Users]
(
[ID] [int] NOT NULL CONSTRAINT [DF_Users_ID] DEFAULT (NEXT VALUE FOR [UserID_seq]),
[Login] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UserName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FullName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StatusID] [int] NOT NULL,
[DepartmentID] [int] NOT NULL,
[JobTitleID] [int] NOT NULL,
[GroupID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_Users_Department] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_Users_Groups] FOREIGN KEY ([GroupID]) REFERENCES [dbo].[Groups] ([ID])
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_Users_JobTitles] FOREIGN KEY ([JobTitleID]) REFERENCES [dbo].[JobTitles] ([ID])
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_Users_UserStatuses] FOREIGN KEY ([StatusID]) REFERENCES [dbo].[UserStatuses] ([ID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Департамент пользователя', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'DepartmentID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Фамилия пользователя', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'FullName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Группа пользователя', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'GroupID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Должность пользователя', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'JobTitleID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'статус', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'StatusID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'имя пользователя', 'SCHEMA', N'dbo', 'TABLE', N'Users', 'COLUMN', N'UserName'
GO

```


---

## <a name="#uses"></a>Uses

* [[dbo].[Department]](dbo_Department.md)
* [[dbo].[Groups]](dbo_Groups.md)
* [[dbo].[JobTitles]](dbo_JobTitles.md)
* [[dbo].[UserStatuses]](dbo_UserStatuses.md)


---

###### Author:  ratay

###### Copyright 2023 - All Rights Reserved

###### Created: 4 февраля 2023 г. 16:11:10

