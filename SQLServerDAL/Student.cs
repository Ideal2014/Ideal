﻿
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace SQLServerDAL
{
    public class Student : IDAL.IStudent
    {
        private  string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.IStudent.Add(StudentInfo student)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable students = ctx.GetTable<StudentInfo>();
                students.InsertOnSubmit(student);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.IStudent.Remove(StudentInfo student)
        {
            try
            {
                DataContext ctx = new DataContext(connection);

                ITable students = ctx.GetTable<StudentInfo>();
                students.Attach(student);
                students.DeleteOnSubmit(student);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.IStudent.Modify(StudentInfo student)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<StudentInfo> students = ctx.GetTable<StudentInfo>();
                IQueryable<StudentInfo> query = from o in students
                                                where o.Stu_ID == student.Stu_ID
                                                select o;
                foreach (StudentInfo o in query)
                {
                    o.Stu_Email = student.Stu_Email;
                    o.Stu_Image = student.Stu_Image;
                    o.Stu_Password = student.Stu_Password;
                    o.Stu_UserName = student.Stu_UserName;
                    o.Stu_Sex = student.Stu_Sex;
                    o.Stu_Tel = student.Stu_Tel;
                    o.Stu_LastLogin = student.Stu_LastLogin;
                    o.Stu_Validation = student.Stu_Validation;
                }
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        IList<StudentInfo> IDAL.IStudent.GetAll()
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<StudentInfo> students = ctx.GetTable<StudentInfo>();
                return students.ToList<StudentInfo>(); ;
            }
            finally
            {
            }
        }



        StudentInfo IDAL.IStudent.Get(int id)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<StudentInfo> students = ctx.GetTable<StudentInfo>();
                IQueryable<StudentInfo> query = from s in students
                                                where s.Stu_ID == id
                                                select s;
                return query.FirstOrDefault<StudentInfo>();
            }
            finally
            {
            }
            }


        StudentInfo IDAL.IStudent.GetByName(string name)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<StudentInfo> students = ctx.GetTable<StudentInfo>();
                IQueryable<StudentInfo> query = from s in students
                                                where s.Stu_UserName == name
                                                select s;
                return query.FirstOrDefault<StudentInfo>();
            }
            finally
            {
            }
        }

        IList<StudentInfo> IDAL.IStudent.GetStudentsByDate(DateTime dateTime)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<StudentInfo> students = ctx.GetTable<StudentInfo>();
                IQueryable<StudentInfo> query = from s in students
                                                where s.Stu_RegisteTime.Date == dateTime.Date
                                                select s;
                return query.ToList<StudentInfo>();
            }
            finally
            {
            }
        }


        System.Data.DataSet IDAL.IStudent.getStudentList()
        {
            SqlConnection sqlcon = null;
            try
            {
                
                sqlcon = new SqlConnection(connection);
                string sqlstr = "SELECT   Stu_ID, Stu_UserName, Stu_RegisteTime FROM      StudentInfo";
                SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
                DataSet myds = new DataSet();
                sqlcon.Open();
                myda.Fill(myds);
                sqlcon.Close();
                return myds;
            }
            finally
            {
                if (sqlcon != null)
                    sqlcon.Close();
            }
        }
    }
}
