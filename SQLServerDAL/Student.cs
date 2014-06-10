﻿
using Model;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Text;

namespace SQLServerDAL
{
    public class Student : IDAL.IStudent
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.IStudent.Add(StudentInfo student)
        {
            DataContext ctx = new DataContext(connection);
            ITable students = ctx.GetTable<StudentInfo>();
            students.InsertOnSubmit(student);
            ctx.SubmitChanges();
        }

        void IDAL.IStudent.Remove(StudentInfo student)
        {

            DataContext ctx = new DataContext(connection);

            ITable students = ctx.GetTable<StudentInfo>();
            students.Attach(student);
            students.DeleteOnSubmit(student);
            ctx.SubmitChanges();
        }

        void IDAL.IStudent.Modify(StudentInfo student)
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
            }
            ctx.SubmitChanges();
        }

        IList<StudentInfo> IDAL.IStudent.GetAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<StudentInfo> students = ctx.GetTable<StudentInfo>();
            return students.ToList<StudentInfo>(); ;
        }



        StudentInfo IDAL.IStudent.Get(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<StudentInfo> students = ctx.GetTable<StudentInfo>();
            IQueryable<StudentInfo> query = from s in students
                                            where s.Stu_ID == id
                                            select s;
            return query.FirstOrDefault<StudentInfo>();
        }


        IList<StudentInfo> IDAL.IStudent.GetStudentsByDate(DateTime dateTime)
        {
            DataContext ctx = new DataContext(connection);
            ITable<StudentInfo> students = ctx.GetTable<StudentInfo>();
            IQueryable<StudentInfo> query = from s in students
                                            where s.Stu_RegisteTime.Value.Date == dateTime.Date
                                            select s;
            return query.ToList<StudentInfo>();
        }
    }
}
