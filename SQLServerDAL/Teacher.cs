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
    public class Teacher : IDAL.ITeacher
    {
        private string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.ITeacher.Add(TeacherInfo teacher)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable teachers = ctx.GetTable<TeacherInfo>();
                teachers.InsertOnSubmit(teacher);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.ITeacher.Remove(TeacherInfo teacher)
        {
            try
            {
                DataContext ctx = new DataContext(connection);

                ITable teachers = ctx.GetTable<TeacherInfo>();
                teachers.Attach(teacher);
                teachers.DeleteOnSubmit(teacher);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.ITeacher.Modify(TeacherInfo teacher)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<TeacherInfo> teachers = ctx.GetTable<TeacherInfo>();
                IQueryable<TeacherInfo> query = from o in teachers
                                                where o.Tea_ID == teacher.Tea_ID
                                                select o;
                foreach (TeacherInfo o in query)
                {

                    o.Tea_Age = teacher.Tea_Age;
                    o.Tea_Describe = teacher.Tea_Describe;
                    o.Tea_Image = teacher.Tea_Image;
                    o.Tea_Name = teacher.Tea_Name;
                    o.Tea_Nation = teacher.Tea_Nation;
                    o.Tea_Nickname = teacher.Tea_Nickname;
                    o.Tea_Sex = teacher.Tea_Sex;
                    o.Tea_Skill = teacher.Tea_Skill;
                    o.Tea_SImage = teacher.Tea_SImage;
                }
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        IList<TeacherInfo> IDAL.ITeacher.GetAll()
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<TeacherInfo> teachers = ctx.GetTable<TeacherInfo>();
                return teachers.ToList<TeacherInfo>();
            }
            finally
            {
            }
        }



        TeacherInfo IDAL.ITeacher.Get(int id)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<TeacherInfo> teachers = ctx.GetTable<TeacherInfo>();
                IQueryable<TeacherInfo> query = from o in teachers
                                                where o.Tea_ID == id
                                                select o;
                return query.FirstOrDefault<TeacherInfo>();
            }
            finally
            {
            }
        }



        System.Data.DataSet IDAL.ITeacher.getTeacherList()
        {
            SqlConnection sqlcon = null;
            try
            {
               
                sqlcon = new SqlConnection(connection);
                string sqlstr = "SELECT * FROM TeacherInfo";
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




        IList<TeacherInfo> IDAL.ITeacher.GetLimit(int s, int t)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<TeacherInfo> teachers = ctx.GetTable<TeacherInfo>();
                IQueryable<TeacherInfo> query = from o in teachers
                                                .Skip(s).Take(t)
                                                select o;
                return query.ToList<TeacherInfo>();
            }
            finally
            {
            }
        }
    }
}
