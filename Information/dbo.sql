/*
Navicat SQL Server Data Transfer

Source Server         : qiyu-pc
Source Server Version : 105000
Source Host           : qiyu-pc:1433
Source Database       : viki
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2014-06-13 19:36:16
*/


-- ----------------------------
-- Table structure for AdminInfo
-- ----------------------------
DROP TABLE [dbo].[AdminInfo]
GO
CREATE TABLE [dbo].[AdminInfo] (
[Adm_ID] int NOT NULL IDENTITY(1,1) ,
[Adm_UserName] varchar(20) NOT NULL ,
[Adm_Password] varchar(10) NOT NULL ,
[Adm_Email] varchar(20) NOT NULL ,
[Adm_LastLogin] datetime NOT NULL ,
[Adm_Role] varchar(10) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[AdminInfo]', RESEED, 2)
GO

-- ----------------------------
-- Table structure for BalanceInfo
-- ----------------------------
DROP TABLE [dbo].[BalanceInfo]
GO
CREATE TABLE [dbo].[BalanceInfo] (
[Bal_ID] int NOT NULL IDENTITY(1,1) ,
[Stu_ID] int NOT NULL ,
[Tea_ID] int NOT NULL ,
[Bal_Time] datetime NOT NULL 
)


GO

-- ----------------------------
-- Table structure for BookInfo
-- ----------------------------
DROP TABLE [dbo].[BookInfo]
GO
CREATE TABLE [dbo].[BookInfo] (
[Boo_ID] int NOT NULL IDENTITY(1,1) ,
[Tea_ID] int NOT NULL ,
[Boo_Image] varchar(50) NOT NULL ,
[Boo_Desribe] varchar(MAX) NOT NULL ,
[Boo_RegisterDate] datetime NOT NULL ,
[Boo_Preview] varchar(50) NOT NULL ,
[Boo_View] varchar(50) NOT NULL ,
[Boo_Name] varchar(20) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for ClassRecordInfo
-- ----------------------------
DROP TABLE [dbo].[ClassRecordInfo]
GO
CREATE TABLE [dbo].[ClassRecordInfo] (
[Cla_ID] int NOT NULL IDENTITY(1,1) ,
[Stu_ID] int NOT NULL ,
[Tea_ID] int NOT NULL ,
[Cla_StartTime] datetime NOT NULL ,
[Cla_EndTime] datetime NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[ClassRecordInfo]', RESEED, 3)
GO

-- ----------------------------
-- Table structure for FeedbackInfo
-- ----------------------------
DROP TABLE [dbo].[FeedbackInfo]
GO
CREATE TABLE [dbo].[FeedbackInfo] (
[Fee_ID] int NOT NULL IDENTITY(1,1) ,
[Stu_ID] int NOT NULL ,
[Fee_Topic] varchar(50) NOT NULL ,
[Fee_Detail] varchar(MAX) NOT NULL ,
[Fee_Time] datetime NOT NULL ,
[Fee_Level] char(1) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for OrderRecordInfo
-- ----------------------------
DROP TABLE [dbo].[OrderRecordInfo]
GO
CREATE TABLE [dbo].[OrderRecordInfo] (
[Ord_ID] int NOT NULL IDENTITY(1,1) ,
[Stu_ID] int NOT NULL ,
[Tea_ID] int NOT NULL ,
[Ord_Time] datetime NOT NULL ,
[Ord_Plan] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[OrderRecordInfo]', RESEED, 2)
GO

-- ----------------------------
-- Table structure for StudentInfo
-- ----------------------------
DROP TABLE [dbo].[StudentInfo]
GO
CREATE TABLE [dbo].[StudentInfo] (
[Stu_ID] int NOT NULL IDENTITY(1,1) ,
[Stu_UserName] varchar(50) NOT NULL ,
[Stu_Password] varchar(50) NOT NULL ,
[Stu_Email] varchar(50) NOT NULL ,
[Stu_Image] varchar(100) NULL ,
[Stu_LastLogin] datetime NOT NULL ,
[Stu_RegisteTime] datetime NOT NULL ,
[Stu_Sex] char(10) NULL ,
[Stu_Tel] varchar(20) NULL ,
[Stu_Validation] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[StudentInfo]', RESEED, 2)
GO

-- ----------------------------
-- Table structure for TeacherInfo
-- ----------------------------
DROP TABLE [dbo].[TeacherInfo]
GO
CREATE TABLE [dbo].[TeacherInfo] (
[Tea_ID] int NOT NULL IDENTITY(1,1) ,
[Tea_Name] varchar(20) NOT NULL ,
[Tea_Nickname] varchar(20) NOT NULL ,
[Tea_Image] varchar(50) NOT NULL ,
[Tea_Describe] varchar(MAX) NOT NULL ,
[Tea_Sex] char(2) NOT NULL ,
[Tea_Age] int NOT NULL ,
[Tea_Skill] varchar(50) NOT NULL ,
[Tea_Nation] varchar(20) NOT NULL ,
[Tea_About] varchar(100) NOT NULL ,
[Tea_Suitable] varchar(100) NOT NULL ,
[Tea_SImage] varchar(50) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[TeacherInfo]', RESEED, 15)
GO

-- ----------------------------
-- Table structure for TestInfo
-- ----------------------------
DROP TABLE [dbo].[TestInfo]
GO
CREATE TABLE [dbo].[TestInfo] (
[Tes_ID] int NOT NULL IDENTITY(1,1) ,
[Tes_Type] varchar(20) NOT NULL ,
[Tes_Detail] varchar(100) NOT NULL ,
[Tes_A] varchar(20) NOT NULL ,
[Tes_B] varchar(20) NOT NULL ,
[Tes_C] varchar(20) NOT NULL ,
[Tes_D] varchar(20) NOT NULL ,
[Tes_Answer] int NOT NULL 
)


GO

-- ----------------------------
-- Indexes structure for table AdminInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table AdminInfo
-- ----------------------------
ALTER TABLE [dbo].[AdminInfo] ADD PRIMARY KEY ([Adm_ID])
GO

-- ----------------------------
-- Indexes structure for table BalanceInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table BalanceInfo
-- ----------------------------
ALTER TABLE [dbo].[BalanceInfo] ADD PRIMARY KEY ([Bal_ID])
GO

-- ----------------------------
-- Indexes structure for table BookInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table BookInfo
-- ----------------------------
ALTER TABLE [dbo].[BookInfo] ADD PRIMARY KEY ([Boo_ID])
GO

-- ----------------------------
-- Indexes structure for table ClassRecordInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ClassRecordInfo
-- ----------------------------
ALTER TABLE [dbo].[ClassRecordInfo] ADD PRIMARY KEY ([Cla_ID])
GO

-- ----------------------------
-- Indexes structure for table FeedbackInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table FeedbackInfo
-- ----------------------------
ALTER TABLE [dbo].[FeedbackInfo] ADD PRIMARY KEY ([Fee_ID])
GO

-- ----------------------------
-- Indexes structure for table OrderRecordInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table OrderRecordInfo
-- ----------------------------
ALTER TABLE [dbo].[OrderRecordInfo] ADD PRIMARY KEY ([Ord_ID])
GO

-- ----------------------------
-- Indexes structure for table StudentInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table StudentInfo
-- ----------------------------
ALTER TABLE [dbo].[StudentInfo] ADD PRIMARY KEY ([Stu_ID], [Stu_UserName])
GO

-- ----------------------------
-- Indexes structure for table TeacherInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TeacherInfo
-- ----------------------------
ALTER TABLE [dbo].[TeacherInfo] ADD PRIMARY KEY ([Tea_ID])
GO

-- ----------------------------
-- Indexes structure for table TestInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TestInfo
-- ----------------------------
ALTER TABLE [dbo].[TestInfo] ADD PRIMARY KEY ([Tes_ID])
GO
