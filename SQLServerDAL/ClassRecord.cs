
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
    public class ClassRecord : IDAL.IClassRecord
    {
        private  string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.IClassRecord.Add(ClassRecordInfo classRecord)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable classRecords = ctx.GetTable<ClassRecordInfo>();
                classRecords.InsertOnSubmit(classRecord);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.IClassRecord.Remove(ClassRecordInfo classRecord)
        {
            try
            {
                DataContext ctx = new DataContext(connection);

                ITable classRecords = ctx.GetTable<ClassRecordInfo>();
                classRecords.Attach(classRecord);
                classRecords.DeleteOnSubmit(classRecord);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.IClassRecord.Modify(ClassRecordInfo classRecord)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<ClassRecordInfo> classRecords = ctx.GetTable<ClassRecordInfo>();
                IQueryable<ClassRecordInfo> query = from o in classRecords
                                                    where o.Cla_ID == classRecord.Cla_ID
                                                    select o;
                foreach (ClassRecordInfo o in query)
                {
                    o.Stu_ID = classRecord.Stu_ID;
                    o.Tea_ID = classRecord.Tea_ID;
                    o.Cla_StartTime = classRecord.Cla_StartTime;
                    o.Cla_EndTime = classRecord.Cla_EndTime;
                }
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        IList<ClassRecordInfo> IDAL.IClassRecord.GetAll()
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<ClassRecordInfo> classRecords = ctx.GetTable<ClassRecordInfo>();
                return classRecords.ToList<ClassRecordInfo>(); ;
            }
            finally
            {
            }
        }



        ClassRecordInfo IDAL.IClassRecord.Get(int id)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<ClassRecordInfo> classRecords = ctx.GetTable<ClassRecordInfo>();
                IQueryable<ClassRecordInfo> query = from o in classRecords
                                                    where o.Cla_ID == id
                                                    select o;
                return query.FirstOrDefault<ClassRecordInfo>();
            }
            finally
            {
            }
        }

        System.Data.DataSet IDAL.IClassRecord.getClassPercent()
        {
            SqlConnection sqlcon = null;
            try
            {
                sqlcon = new SqlConnection(connection);
                string sqlstr = "SELECT   TeacherInfo.Tea_Name AS label, COUNT(ClassRecordInfo.Tea_ID) AS data FROM ClassRecordInfo INNER JOIN TeacherInfo ON ClassRecordInfo.Tea_ID = TeacherInfo.Tea_ID GROUP BY TeacherInfo.Tea_Name";
                SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
                DataSet myds = new DataSet();
                sqlcon.Open();
                myda.Fill(myds);
                return myds;
            }
            finally
            {
                if (sqlcon != null)
                    sqlcon.Close();
            }
        }

        DataSet IDAL.IClassRecord.GetClassRecordList(int stu_id)
        {
            SqlConnection sqlcon = null;
            try
            {
                sqlcon = new SqlConnection(connection);
                string sqlstr =string.Format("SELECT TeacherInfo.Tea_Name, ClassRecordInfo.Cla_StartTime, ClassRecordInfo.Cla_EndTime FROM ClassRecordInfo INNER JOIN TeacherInfo ON ClassRecordInfo.Tea_ID = TeacherInfo.Tea_ID WHERE ClassRecordInfo.Stu_ID = {0}",stu_id);
                SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
                DataSet myds = new DataSet();
                sqlcon.Open();
                myda.Fill(myds);
                return myds;
            }
            finally
            {
                if (sqlcon != null)
                    sqlcon.Close();
            }

        }

        IList<ClassRecordInfo> IDAL.IClassRecord.GetClasssByDate(DateTime dateTime)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<ClassRecordInfo> classRecords = ctx.GetTable<ClassRecordInfo>();
                IQueryable<ClassRecordInfo> query = from o in classRecords
                                                    where o.Cla_StartTime.Date == dateTime.Date
                                                    select o;
                return query.ToList<ClassRecordInfo>();
            }
            finally
            {
            }
        }
    }
}
