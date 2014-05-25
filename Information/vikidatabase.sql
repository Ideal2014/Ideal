drop table tb_Admin;
create table tb_Admin (
   Adm_ID               int                  identity,
   Adm_UserName         varchar(20)          null,
   Adm_Password         varchar(10)          null,
   Adm_Nickname         varchar(20)          null,
   Adm_LastLogin        datetime             null,
   constraint PK_TB_ADMIN primary key (Adm_ID)
);
drop table tb_Balance 
;
create table tb_Balance (
   Bal_ID               int                  identity,
   Stu_ID               int                  not null,
   Tea_ID               int                  not null,
   Bal_Time             datetime             null,
   constraint PK_TB_BALANCE primary key (Bal_ID)
)
;
drop table tb_Book 
;
create table tb_Book (
   Boo_ID               int                  identity,
   Tea_ID               int                  null,
   Boo_Image            varchar(50)          null,
   Boo_Desribe          varchar(100)         null,
   Boo_RegisterDate     datetime             null,
   Boo_Preview          varchar(50)          null,
   Boo_View             varchar(50)          null,
   constraint PK_TB_BOOK primary key (Boo_ID)
)
;
drop table tb_ClassRecord 
;
create table tb_ClassRecord (
   Cla_ID               int                  identity,
   Stu_ID               int                  null,
   Tea_ID               int                  null,
   Cla_StartTime        datetime             null,
   Cla_EndTime          datetime             null,
   constraint PK_TB_CLASSRECORD primary key (Cla_ID)
)
;
drop table tb_Feedback 
;
create table tb_Feedback (
   Fee_ID               int                  identity,
   Stu_ID               int                  null,
   Fee_Topic            varchar(50)          null,
   Fee_Detail           varchar(100)         null,
   Fee_Time             datetime             null,
   Fee_Level            int                  null,
   constraint PK_TB_FEEDBACK primary key (Fee_ID)
)
;
drop table tb_OrderRecord 
;
create table tb_OrderRecord (
   Ord_ID               int                  identity,
   Stu_ID               int                  null,
   Tea_ID               int                  null,
   Ord_Time             datetime             null,
   Ord_Plan             int                  null,
   constraint PK_TB_ORDERRECORD primary key (Ord_ID)
)
;
drop table tb_Student 
;
create table tb_Student (
   Stu_ID               int                  identity,
   Stu_UserName         varchar(10)          null,
   Stu_Password         varchar(10)          null,
   Stu_Email            varchar(20)          null,
   Stu_Image            varchar(50)          null,
   constraint PK_TB_STUDENT primary key (Stu_ID)
)
;
drop table tb_Teacher
;
create table tb_Teacher (
   Tea_ID               int                  identity,
   Tea_Name             varchar(20)          null,
   Tea_Nickname         varchar(20)          null,
   Tea_Image            varchar(50)          null,
   Tea_Describe         varchar(100)         null,
   Tea_Sex              int                  null,
   Tea_Age              int                  null,
   Tea_Skill            varchar(50)          null,
   Tea_Nation           varchar(20)          null,
   Tea_About            varchar(100)         null,
   Tea_Suitable         varchar(100)         null,
   constraint PK_TB_TEACHER primary key (Tea_ID)
)
;
drop table tb_Test
;
create table tb_Test (
   Tes_ID               int                  identity,
   Tes_Type             varchar(20)          null,
   Tes_Detail           varchar(100)         null,
   Tes_A                varchar(20)          null,
   Tes_B                varchar(20)          null,
   Tes_C                varchar(20)          null,
   Tes_D                varchar(20)          null,
   Tes_Answer           int                  null,
   constraint PK_TB_TEST primary key (Tes_ID)
)
;