CREATE DATABASE [GP_Reports]
ON  PRIMARY 
( NAME = Reports, FILENAME = N'D:\Rosedocs\OTUS\Database\GP_Reports.mdf' , 
	SIZE = 8MB , 
	MAXSIZE = UNLIMITED, 
	FILEGROWTH = 65536KB )
 LOG ON 
( NAME = Reports_log, FILENAME = N'D:\Rosedocs\OTUS\Database\GP_Reports_log.ldf' , 
	SIZE = 8MB , 
	MAXSIZE = 10GB , 
	FILEGROWTH = 65536KB )
GO
---------------------------------------------------------------------------------
