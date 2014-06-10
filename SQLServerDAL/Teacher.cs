
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
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.ITeacher.Add(TeacherInfo teacher)
        {
            DataContext ctx = new DataContext(connection);
            ITable teachers = ctx.GetTable<TeacherInfo>();
            teachers.InsertOnSubmit(teacher);
            ctx.SubmitChanges();
        }

        void IDAL.ITeacher.Remove(TeacherInfo teacher)
        {

            DataContext ctx = new DataContext(connection);

            ITable teachers = ctx.GetTable<TeacherInfo>();
            teachers.Attach(teacher);
            teachers.DeleteOnSubmit(teacher);
            ctx.SubmitChanges();
        }

        void IDAL.ITeacher.Modify(TeacherInfo teacher)
        {
            DataContext ctx = new DataContext(connection);
            ITable<TeacherInfo> teachers = ctx.GetTable<TeacherInfo>();
            IQueryable<TeacherInfo> query = from o in teachers
                                            where o.Tea_ID == teacher.Tea_ID
                                            select o;
            foreach (TeacherInfo o in query)
            {
                o.Tea_About = teacher.Tea_About;
                o.Tea_Age = teacher.Tea_Age;
                o.Tea_Describe = teacher.Tea_Describe;
                o.Tea_Image = teacher.Tea_Image;
                o.Tea_Name = teacher.Tea_Name;
                o.Tea_Nation = teacher.Tea_Nation;
                o.Tea_Nickname = teacher.Tea_Nickname;
                o.Tea_Sex = teacher.Tea_Sex;
                o.Tea_Skill = teacher.Tea_Skill;
                o.Tea_Suitable = teacher.Tea_Suitable;
                o.Tea_SImage = teacher.Tea_SImage;
            }
            ctx.SubmitChanges();
        }

        IList<TeacherInfo> IDAL.ITeacher.GetAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<TeacherInfo> teachers = ctx.GetTable<TeacherInfo>();
            return teachers.ToList<TeacherInfo>(); 
        }



        TeacherInfo IDAL.ITeacher.Get(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<TeacherInfo> teachers = ctx.GetTable<TeacherInfo>();
            IQueryable<TeacherInfo> query = from o in teachers
                                            where o.Tea_ID == id
                                            select o;
            return query.FirstOrDefault<TeacherInfo>();
        }



        System.Data.DataSet IDAL.ITeacher.getTeacherList()
        {

            SqlConnection sqlcon = new SqlConnection(connection);
            string sqlstr = "SELECT   Tea_ID, Tea_Name FROM      tb_Teacher";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
            DataSet myds = new DataSet();
            sqlcon.Open();
            myda.Fill(myds);
            sqlcon.Close();
            return myds;

        }


    }
}
