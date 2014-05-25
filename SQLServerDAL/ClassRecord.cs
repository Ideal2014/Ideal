
using Model;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Text;

namespace SQLServerDAL
{
    public class ClassRecord : IDAL.IClassRecord
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.IClassRecord.Add(ClassRecordInfo classRecord)
        {
            DataContext ctx = new DataContext(connection);
            ITable classRecords = ctx.GetTable<ClassRecordInfo>();
            classRecords.InsertOnSubmit(classRecord);
            ctx.SubmitChanges();
        }

        void IDAL.IClassRecord.Remove(ClassRecordInfo classRecord)
        {

            DataContext ctx = new DataContext(connection);
            
            ITable classRecords = ctx.GetTable<ClassRecordInfo>();
            classRecords.Attach(classRecord);
            classRecords.DeleteOnSubmit(classRecord);
            ctx.SubmitChanges();
        }

        void IDAL.IClassRecord.Modify(ClassRecordInfo classRecord)
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

        IList<ClassRecordInfo> IDAL.IClassRecord.GetAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<ClassRecordInfo> classRecords = ctx.GetTable<ClassRecordInfo>();
            return classRecords.ToList<ClassRecordInfo>(); ;
        }



        ClassRecordInfo IDAL.IClassRecord.Get(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<ClassRecordInfo> classRecords = ctx.GetTable<ClassRecordInfo>();
            IQueryable<ClassRecordInfo> query = from o in classRecords
                                                where o.Cla_ID == id
                                            select o;
            return query.FirstOrDefault<ClassRecordInfo>();
        }
    }
}
