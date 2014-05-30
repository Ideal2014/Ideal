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

Date: 2014-05-30 20:14:26
*/


-- ----------------------------
-- Table structure for tb_Admin
-- ----------------------------
DROP TABLE [dbo].[tb_Admin]
GO
CREATE TABLE [dbo].[tb_Admin] (
[Adm_ID] int NOT NULL IDENTITY(1,1) ,
[Adm_UserName] varchar(20) NULL ,
[Adm_Password] varchar(10) NULL ,
[Adm_Nickname] varchar(20) NULL ,
[Adm_LastLogin] datetime NULL 
)


GO

-- ----------------------------
-- Table structure for tb_Balance
-- ----------------------------
DROP TABLE [dbo].[tb_Balance]
GO
CREATE TABLE [dbo].[tb_Balance] (
[Bal_ID] int NOT NULL IDENTITY(1,1) ,
[Stu_ID] int NOT NULL ,
[Tea_ID] int NOT NULL ,
[Bal_Time] datetime NULL 
)


GO

-- ----------------------------
-- Table structure for tb_Book
-- ----------------------------
DROP TABLE [dbo].[tb_Book]
GO
CREATE TABLE [dbo].[tb_Book] (
[Boo_ID] int NOT NULL IDENTITY(1,1) ,
[Tea_ID] int NULL ,
[Boo_Image] varchar(50) NULL ,
[Boo_Desribe] varchar(100) NULL ,
[Boo_RegisterDate] datetime NULL ,
[Boo_Preview] varchar(50) NULL ,
[Boo_View] varchar(50) NULL ,
[Boo_Name] varchar(20) NULL 
)


GO

-- ----------------------------
-- Table structure for tb_ClassRecord
-- ----------------------------
DROP TABLE [dbo].[tb_ClassRecord]
GO
CREATE TABLE [dbo].[tb_ClassRecord] (
[Cla_ID] int NOT NULL IDENTITY(1,1) ,
[Stu_ID] int NULL ,
[Tea_ID] int NULL ,
[Cla_StartTime] datetime NULL ,
[Cla_EndTime] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tb_ClassRecord]', RESEED, 2)
GO

-- ----------------------------
-- Table structure for tb_Feedback
-- ----------------------------
DROP TABLE [dbo].[tb_Feedback]
GO
CREATE TABLE [dbo].[tb_Feedback] (
[Fee_ID] int NOT NULL IDENTITY(1,1) ,
[Stu_ID] int NULL ,
[Fee_Topic] varchar(50) NULL ,
[Fee_Detail] varchar(100) NULL ,
[Fee_Time] datetime NULL ,
[Fee_Level] char(1) NULL 
)


GO

-- ----------------------------
-- Table structure for tb_OrderRecord
-- ----------------------------
DROP TABLE [dbo].[tb_OrderRecord]
GO
CREATE TABLE [dbo].[tb_OrderRecord] (
[Ord_ID] int NOT NULL IDENTITY(1,1) ,
[Stu_ID] int NULL ,
[Tea_ID] int NULL ,
[Ord_Time] datetime NULL ,
[Ord_Plan] int NULL 
)


GO

-- ----------------------------
-- Table structure for tb_Student
-- ----------------------------
DROP TABLE [dbo].[tb_Student]
GO
CREATE TABLE [dbo].[tb_Student] (
[Stu_ID] int NOT NULL IDENTITY(1,1) ,
[Stu_UserName] varchar(10) NULL ,
[Stu_Password] varchar(10) NULL ,
[Stu_Email] varchar(20) NULL ,
[Stu_Image] varchar(50) NULL ,
[Stu_LastLogin] datetime NULL ,
[Stu_RegisteTime] datetime NULL 
)


GO

-- ----------------------------
-- Table structure for tb_Teacher
-- ----------------------------
DROP TABLE [dbo].[tb_Teacher]
GO
CREATE TABLE [dbo].[tb_Teacher] (
[Tea_ID] int NOT NULL IDENTITY(1,1) ,
[Tea_Name] varchar(20) NULL ,
[Tea_Nickname] varchar(20) NULL ,
[Tea_Image] varchar(50) NULL ,
[Tea_Describe] varchar(100) NULL ,
[Tea_Sex] int NULL ,
[Tea_Age] int NULL ,
[Tea_Skill] varchar(50) NULL ,
[Tea_Nation] varchar(20) NULL ,
[Tea_About] varchar(100) NULL ,
[Tea_Suitable] varchar(100) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tb_Teacher]', RESEED, 2)
GO

-- ----------------------------
-- Table structure for tb_Test
-- ----------------------------
DROP TABLE [dbo].[tb_Test]
GO
CREATE TABLE [dbo].[tb_Test] (
[Tes_ID] int NOT NULL IDENTITY(1,1) ,
[Tes_Type] varchar(20) NULL ,
[Tes_Detail] varchar(100) NULL ,
[Tes_A] varchar(20) NULL ,
[Tes_B] varchar(20) NULL ,
[Tes_C] varchar(20) NULL ,
[Tes_D] varchar(20) NULL ,
[Tes_Answer] int NULL 
)


GO

-- ----------------------------
-- Indexes structure for table tb_Admin
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_Admin
-- ----------------------------
ALTER TABLE [dbo].[tb_Admin] ADD PRIMARY KEY ([Adm_ID])
GO

-- ----------------------------
-- Indexes structure for table tb_Balance
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_Balance
-- ----------------------------
ALTER TABLE [dbo].[tb_Balance] ADD PRIMARY KEY ([Bal_ID])
GO

-- ----------------------------
-- Indexes structure for table tb_Book
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_Book
-- ----------------------------
ALTER TABLE [dbo].[tb_Book] ADD PRIMARY KEY ([Boo_ID])
GO

-- ----------------------------
-- Indexes structure for table tb_ClassRecord
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_ClassRecord
-- ----------------------------
ALTER TABLE [dbo].[tb_ClassRecord] ADD PRIMARY KEY ([Cla_ID])
GO

-- ----------------------------
-- Indexes structure for table tb_Feedback
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_Feedback
-- ----------------------------
ALTER TABLE [dbo].[tb_Feedback] ADD PRIMARY KEY ([Fee_ID])
GO

-- ----------------------------
-- Indexes structure for table tb_OrderRecord
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_OrderRecord
-- ----------------------------
ALTER TABLE [dbo].[tb_OrderRecord] ADD PRIMARY KEY ([Ord_ID])
GO

-- ----------------------------
-- Indexes structure for table tb_Student
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_Student
-- ----------------------------
ALTER TABLE [dbo].[tb_Student] ADD PRIMARY KEY ([Stu_ID])
GO

-- ----------------------------
-- Indexes structure for table tb_Teacher
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_Teacher
-- ----------------------------
ALTER TABLE [dbo].[tb_Teacher] ADD PRIMARY KEY ([Tea_ID])
GO

-- ----------------------------
-- Indexes structure for table tb_Test
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_Test
-- ----------------------------
ALTER TABLE [dbo].[tb_Test] ADD PRIMARY KEY ([Tes_ID])
GO
