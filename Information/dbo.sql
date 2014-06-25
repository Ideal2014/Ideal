/*
Navicat SQL Server Data Transfer

Source Server         : SLOAN\SQLEXPRESS
Source Server Version : 105000
Source Host           : SLOAN\SQLEXPRESS:1433
Source Database       : viki
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2014-06-25 12:06:40
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
DBCC CHECKIDENT(N'[dbo].[AdminInfo]', RESEED, 8)
GO

-- ----------------------------
-- Records of AdminInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AdminInfo] ON
GO
INSERT INTO [dbo].[AdminInfo] ([Adm_ID], [Adm_UserName], [Adm_Password], [Adm_Email], [Adm_LastLogin], [Adm_Role]) VALUES (N'7', N'admin', N'admin', N'11301127@bjtu.edu.cn', N'2014-06-25 16:21:45.000', N'admin')
GO
GO
INSERT INTO [dbo].[AdminInfo] ([Adm_ID], [Adm_UserName], [Adm_Password], [Adm_Email], [Adm_LastLogin], [Adm_Role]) VALUES (N'8', N'1', N'1', N'1', N'2014-06-25 10:55:30.000', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[AdminInfo] OFF
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
-- Records of BalanceInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[BalanceInfo] ON
GO
SET IDENTITY_INSERT [dbo].[BalanceInfo] OFF
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
[Boo_Name] varchar(80) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[BookInfo]', RESEED, 30)
GO

-- ----------------------------
-- Records of BookInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[BookInfo] ON
GO
INSERT INTO [dbo].[BookInfo] ([Boo_ID], [Tea_ID], [Boo_Image], [Boo_Desribe], [Boo_RegisterDate], [Boo_Preview], [Boo_View], [Boo_Name]) VALUES (N'21', N'23', N'~/Resource/Image/cover-orange.PNG', N'从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。', N'2014-06-19 02:26:51.000', N'1', N'1', N'和外教聊天记单词日常交流1000词')
GO
GO
INSERT INTO [dbo].[BookInfo] ([Boo_ID], [Tea_ID], [Boo_Image], [Boo_Desribe], [Boo_RegisterDate], [Boo_Preview], [Boo_View], [Boo_Name]) VALUES (N'22', N'26', N'~/Resource/Image/red.PNG', N'Olivia知晓《和外教聊天记单词-四六级必考1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。学习考试从此不再枯燥单调，而是有了陪读的同伴，阅读、听力，不再是问题！过四六级，再也不难！ ', N'2014-06-25 02:28:58.000', N'2', N'2', N'和外教聊天记单词-四六级必考1000词')
GO
GO
INSERT INTO [dbo].[BookInfo] ([Boo_ID], [Tea_ID], [Boo_Image], [Boo_Desribe], [Boo_RegisterDate], [Boo_Preview], [Boo_View], [Boo_Name]) VALUES (N'25', N'27', N'~/Resource/Image/cover-blue.PNG', N'全球超过7,000所机构认可托福成绩！学习考试从此不再枯燥单调，而是有了陪读的同伴，阅读、听力，不再是问题！内容涉及到托福英语的方方面面。', N'2014-06-25 02:31:16.000', N'3', N'3', N'和外教聊天记单词-托福必考1000词')
GO
GO
INSERT INTO [dbo].[BookInfo] ([Boo_ID], [Tea_ID], [Boo_Image], [Boo_Desribe], [Boo_RegisterDate], [Boo_Preview], [Boo_View], [Boo_Name]) VALUES (N'26', N'28', N'~/Resource/Image/cover-green.PNG', N'商务英语是以适应职场生活的语言要求为目的，内容涉及到商务活动的方方面面。商务英语课程不只是简单地对学员的英文水平、能力的提高，它更多地是向学员传授一种西方的观念理念，包括如何和外国人打交道，如何和他们合作、工作的方式方法，以及他们的生活习惯等。
Peter对此十分熟知。他知晓《和外教聊天记单词-商务必备1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。 国外原汁原味的商务英语对话，让你自如应对工作挑战。', N'2014-06-25 02:32:01.000', N'4', N'4', N'和外教聊天记单词-商务英语1000词')
GO
GO
INSERT INTO [dbo].[BookInfo] ([Boo_ID], [Tea_ID], [Boo_Image], [Boo_Desribe], [Boo_RegisterDate], [Boo_Preview], [Boo_View], [Boo_Name]) VALUES (N'29', N'29', N'~/Resource/Image/cover-purple.PNG', N'高考英语要求学生掌握3000-4000的词汇量以及一些中高级词汇，熟悉常见单词和词组的正确用法，掌握书面使用技巧和一定会话能力，涉及听、说、读、写多个方面。在一对一的情景对话交流中，熟悉并掌握高考英语中可能会出现的单词、词组和句法，轻松战胜高考英语。 ', N'2014-06-25 02:32:53.000', N'5', N'5', N'和外教聊天记单词-高考英语1000词')
GO
GO
INSERT INTO [dbo].[BookInfo] ([Boo_ID], [Tea_ID], [Boo_Image], [Boo_Desribe], [Boo_RegisterDate], [Boo_Preview], [Boo_View], [Boo_Name]) VALUES (N'30', N'30', N'~/Resource/Image/cover-pink.PNG', N'全球超过7,000所机构认可雅思成绩！跟着Albert学英语，能够有效帮助攻克雅思考试中最至关重要的听力和口语两关，Albert会用最纯正的欧美思维让你抛开解题与技巧，真正地置身“异国”，体验“与人交流”的乐趣。 ', N'2014-06-25 02:33:25.000', N'6', N'6', N'和外教聊天记单词-雅思必考1000词')
GO
GO
SET IDENTITY_INSERT [dbo].[BookInfo] OFF
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
-- Records of ClassRecordInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ClassRecordInfo] ON
GO
SET IDENTITY_INSERT [dbo].[ClassRecordInfo] OFF
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
DBCC CHECKIDENT(N'[dbo].[FeedbackInfo]', RESEED, 11)
GO

-- ----------------------------
-- Records of FeedbackInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[FeedbackInfo] ON
GO
INSERT INTO [dbo].[FeedbackInfo] ([Fee_ID], [Stu_ID], [Fee_Topic], [Fee_Detail], [Fee_Time], [Fee_Level]) VALUES (N'11', N'15', N'1', N'2', N'2014-06-25 16:00:05.923', N'S')
GO
GO
SET IDENTITY_INSERT [dbo].[FeedbackInfo] OFF
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
[Ord_Plan] int NOT NULL ,
[Ord_Num] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[OrderRecordInfo]', RESEED, 2)
GO

-- ----------------------------
-- Records of OrderRecordInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[OrderRecordInfo] ON
GO
SET IDENTITY_INSERT [dbo].[OrderRecordInfo] OFF
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
DBCC CHECKIDENT(N'[dbo].[StudentInfo]', RESEED, 15)
GO

-- ----------------------------
-- Records of StudentInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[StudentInfo] ON
GO
INSERT INTO [dbo].[StudentInfo] ([Stu_ID], [Stu_UserName], [Stu_Password], [Stu_Email], [Stu_Image], [Stu_LastLogin], [Stu_RegisteTime], [Stu_Sex], [Stu_Tel], [Stu_Validation]) VALUES (N'15', N'wodejia', N'71-CC-B4-47-D0-C6-16-02-24-0D-5D-EA-B8-DB-60-E8', N'11301127@bjtu.edu.cn', N'~/Resource/Image/Upload/default.jpg', N'2014-06-25 15:59:52.777', N'2014-06-25 15:59:41.323', null, null, N'success')
GO
GO
SET IDENTITY_INSERT [dbo].[StudentInfo] OFF
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
DBCC CHECKIDENT(N'[dbo].[TeacherInfo]', RESEED, 31)
GO

-- ----------------------------
-- Records of TeacherInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[TeacherInfo] ON
GO
INSERT INTO [dbo].[TeacherInfo] ([Tea_ID], [Tea_Name], [Tea_Nickname], [Tea_Image], [Tea_Describe], [Tea_Sex], [Tea_Age], [Tea_Skill], [Tea_Nation], [Tea_About], [Tea_Suitable], [Tea_SImage]) VALUES (N'23', N'Viki', N'日常英语外教', N'~/Resource/Image/qYO6V4iO0m.jpg', N'也许有时你会苦恼，没有一个伙伴和你一起学习，与你一问一答，让你在枯燥的学习中收获乐趣，更学到知识。
Viki正是为此而诞生。她知晓《和外教聊天记单词-日常交流1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。 跟着Viki学日常会话英语，通过场景记单词，你能学得更快，记得更牢，掌握得更好！', N'女', N'20', N'日常英语', N'America', N'1', N'1', N'~/Resource/Image/NFZv83tPZg.jpg')
GO
GO
INSERT INTO [dbo].[TeacherInfo] ([Tea_ID], [Tea_Name], [Tea_Nickname], [Tea_Image], [Tea_Describe], [Tea_Sex], [Tea_Age], [Tea_Skill], [Tea_Nation], [Tea_About], [Tea_Suitable], [Tea_SImage]) VALUES (N'26', N'Olivia', N'四六级英语外教', N'~/Resource/Image/Rhrqz3lQXO.jpg', N'Olivia是著名的英语单词记忆教材：《和外教聊天记单词-四六级必考1000词》的配套学习伴侣。
她知晓《和外教聊天记单词-四六级必考1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。 跟着Olivia学四六级，通过场景记单词，让您在一对一的情景对话交流中，熟悉并掌握四六级考试中可能会出现的语言，轻松战胜四六级。', N'女', N'22', N'日常英语', N'America', N'2', N'2', N'~/Resource/Image/Rhrqz3lQXO.jpg')
GO
GO
INSERT INTO [dbo].[TeacherInfo] ([Tea_ID], [Tea_Name], [Tea_Nickname], [Tea_Image], [Tea_Describe], [Tea_Sex], [Tea_Age], [Tea_Skill], [Tea_Nation], [Tea_About], [Tea_Suitable], [Tea_SImage]) VALUES (N'27', N'Stephanie', N'托福英语外教', N'~/Resource/Image/hiNT4dyYwE.jpg', N'无论是打算去美国留学，畅享启发式教学的独特魅力；还是打算赴美工作，感受美国多元化的文化与升华；还是想在美国定居，完成自我理想——新托福考试，都是你面临的第一关“挑战”！想要成功应对托福考试，却并没有那么容易。
Stephanie作为《和外教聊天记单词-托福必考1000词》的配套学习伴侣，知晓《和外教聊天记单词-托福必考1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。 跟着Stephanie学托福英语，能够有效帮助攻克新托福中最至关重要的听力和口语两关，Stephanie会用最纯正的美式思维让你抛开解题与技巧，真正地置身“美国”，体验“与人交流”的乐趣，从中收获重要的英语知识和技能。', N'女', N'28', N'日常英语', N'America', N'3', N'3', N'~/Resource/Image/hiNT4dyYwE.jpg')
GO
GO
INSERT INTO [dbo].[TeacherInfo] ([Tea_ID], [Tea_Name], [Tea_Nickname], [Tea_Image], [Tea_Describe], [Tea_Sex], [Tea_Age], [Tea_Skill], [Tea_Nation], [Tea_About], [Tea_Suitable], [Tea_SImage]) VALUES (N'28', N'peter', N'商务英语外教', N'~/Resource/Image/rpRaDp8dl9.jpg', N'商务英语是以适应职场生活的语言要求为目的，内容涉及到商务活动的方方面面。商务英语课程不只是简单地对学员的英文水平、能力的提高，它更多地是向学员传授一种西方的观念理念，包括如何和外国人打交道，如何和他们合作、工作的方式方法，以及他们的生活习惯等。
Peter对此十分熟知。他知晓《和外教聊天记单词-商务必备1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。 国外原汁原味的商务英语对话，让你自如应对工作挑战。', N'男', N'30', N'商务英语', N'America', N'4', N'4', N'~/Resource/Image/N63ARojfk3.jpg')
GO
GO
INSERT INTO [dbo].[TeacherInfo] ([Tea_ID], [Tea_Name], [Tea_Nickname], [Tea_Image], [Tea_Describe], [Tea_Sex], [Tea_Age], [Tea_Skill], [Tea_Nation], [Tea_About], [Tea_Suitable], [Tea_SImage]) VALUES (N'29', N'Daniel', N'高考英语外教', N'~/Resource/Image/iueaw0fzt3.jpg', N'Daniel作为《和外教聊天记单词-高考必考1000词》的配套学习伴侣，知晓《和外教聊天记单词-高考必考1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。他了解高考英语要求学生所掌握的3000-4000的词汇量以及一些中高级词汇，熟悉高考常见单词和词组的正确用法，书面使用技巧和一定会话能力，涉及听、说、读、写多个方面。
跟着Daniel学高考英语，通过场景记单词，让您在一对一的情景对话交流中，熟悉并掌握高考英语中可能会出现的单词、词组和句法，轻松战胜高考英语', N'男', N'40', N'高考英语', N'America', N'5', N'5', N'~/Resource/Image/8TIni7Y5kA.jpg')
GO
GO
INSERT INTO [dbo].[TeacherInfo] ([Tea_ID], [Tea_Name], [Tea_Nickname], [Tea_Image], [Tea_Describe], [Tea_Sex], [Tea_Age], [Tea_Skill], [Tea_Nation], [Tea_About], [Tea_Suitable], [Tea_SImage]) VALUES (N'30', N'Albert', N'雅思英语外教', N'~/Resource/Image/Mx6iNNYrjX.jpg', N'全球超过7,000所机构认可雅思成绩，无论你想留学、移民、就业，还是检测英语水平；无论你想去英国，澳大利亚，新西兰，美国，加拿大，还是荷兰，法国，德国，瑞士，瑞典，新加坡，香港，马来西亚，日本，南非等；你只需要一项英语考试－－雅思考试。
Albert作为《和外教聊天记单词-雅思必考1000词》的配套学习伴侣，知晓《和外教聊天记单词-雅思必考1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。 跟着Albert学雅思英语，能够有效帮助攻克雅思考试中最至关重要的听力和口语两关，Albert会用最纯正的欧美思维让你抛开解题与技巧，真正地置身“异国”，体验“与人交流”的乐趣，从中收获重要的英语知识和技能。', N'男', N'29', N'日常英语', N'America', N'6', N'6', N'~/Resource/Image/Mx6iNNYrjX.jpg')
GO
GO
SET IDENTITY_INSERT [dbo].[TeacherInfo] OFF
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
DBCC CHECKIDENT(N'[dbo].[TestInfo]', RESEED, 10)
GO

-- ----------------------------
-- Records of TestInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[TestInfo] ON
GO
INSERT INTO [dbo].[TestInfo] ([Tes_ID], [Tes_Type], [Tes_Detail], [Tes_A], [Tes_B], [Tes_C], [Tes_D], [Tes_Answer]) VALUES (N'1', N'选择题', N'How are you ?', N'Fine,and you?', N'I''m not .', N'You are ok.', N'No,bro.', N'1')
GO
GO
INSERT INTO [dbo].[TestInfo] ([Tes_ID], [Tes_Type], [Tes_Detail], [Tes_A], [Tes_B], [Tes_C], [Tes_D], [Tes_Answer]) VALUES (N'4', N'选择题', N'What''s your name?', N'Dog.', N'Cat.', N'Jack.', N'Father.', N'3')
GO
GO
INSERT INTO [dbo].[TestInfo] ([Tes_ID], [Tes_Type], [Tes_Detail], [Tes_A], [Tes_B], [Tes_C], [Tes_D], [Tes_Answer]) VALUES (N'7', N'选择题', N'What the time now?', N'Afternoon.', N'I don''t think so.', N'3:00 p.m.', N'Ask your mother.', N'3')
GO
GO
INSERT INTO [dbo].[TestInfo] ([Tes_ID], [Tes_Type], [Tes_Detail], [Tes_A], [Tes_B], [Tes_C], [Tes_D], [Tes_Answer]) VALUES (N'8', N'选择题', N'Where are you?', N'I''m doing homework.', N'I''m in school.', N'I''m eating.', N'I''m sleeping', N'2')
GO
GO
INSERT INTO [dbo].[TestInfo] ([Tes_ID], [Tes_Type], [Tes_Detail], [Tes_A], [Tes_B], [Tes_C], [Tes_D], [Tes_Answer]) VALUES (N'9', N'选择题', N'Who is that girl?', N'He is a boy.', N'She is my mother.', N'Sorry,I don''t kown.', N'He is wangdachui.', N'3')
GO
GO
INSERT INTO [dbo].[TestInfo] ([Tes_ID], [Tes_Type], [Tes_Detail], [Tes_A], [Tes_B], [Tes_C], [Tes_D], [Tes_Answer]) VALUES (N'10', N'选择题', N'Do you have been to American?', N'Not yet.', N'Maybe.', N'Are you kidding me?', N'fuck American.', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[TestInfo] OFF
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
ALTER TABLE [dbo].[StudentInfo] ADD PRIMARY KEY ([Stu_ID])
GO

-- ----------------------------
-- Uniques structure for table StudentInfo
-- ----------------------------
ALTER TABLE [dbo].[StudentInfo] ADD UNIQUE ([Stu_UserName] ASC)
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

-- ----------------------------
-- Foreign Key structure for table [dbo].[BalanceInfo]
-- ----------------------------
ALTER TABLE [dbo].[BalanceInfo] ADD FOREIGN KEY ([Stu_ID]) REFERENCES [dbo].[StudentInfo] ([Stu_ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[BalanceInfo] ADD FOREIGN KEY ([Tea_ID]) REFERENCES [dbo].[TeacherInfo] ([Tea_ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[BookInfo]
-- ----------------------------
ALTER TABLE [dbo].[BookInfo] ADD FOREIGN KEY ([Tea_ID]) REFERENCES [dbo].[TeacherInfo] ([Tea_ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[ClassRecordInfo]
-- ----------------------------
ALTER TABLE [dbo].[ClassRecordInfo] ADD FOREIGN KEY ([Stu_ID]) REFERENCES [dbo].[StudentInfo] ([Stu_ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[ClassRecordInfo] ADD FOREIGN KEY ([Tea_ID]) REFERENCES [dbo].[TeacherInfo] ([Tea_ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[FeedbackInfo]
-- ----------------------------
ALTER TABLE [dbo].[FeedbackInfo] ADD FOREIGN KEY ([Stu_ID]) REFERENCES [dbo].[StudentInfo] ([Stu_ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[OrderRecordInfo]
-- ----------------------------
ALTER TABLE [dbo].[OrderRecordInfo] ADD FOREIGN KEY ([Stu_ID]) REFERENCES [dbo].[StudentInfo] ([Stu_ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[OrderRecordInfo] ADD FOREIGN KEY ([Tea_ID]) REFERENCES [dbo].[TeacherInfo] ([Tea_ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
