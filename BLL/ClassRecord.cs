using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;

namespace BLL
{
    public class ClassRecord : IBLL.IClassRecord
    {
        private  IDAL.IClassRecord dal = DALFactory.DataAccess.CreateClassRecord();

        void IBLL.IClassRecord.Add(ClassRecordInfo classRecord)
        {
            if(classRecord == null)
                throw new Exception();
            dal.Add(classRecord);
        }

        void IBLL.IClassRecord.Remove(ClassRecordInfo classRecord)
        {
            if (classRecord == null)
                throw new Exception();
            dal.Remove(classRecord);
        }

        void IBLL.IClassRecord.Modify(ClassRecordInfo classRecord)
        {
            if (classRecord == null)
                throw new Exception();
            dal.Modify(classRecord);
        }

        IList<ClassRecordInfo> IBLL.IClassRecord.GetAll()
        {
            return dal.GetAll();
        }

        ClassRecordInfo IBLL.IClassRecord.Get(int id)
        {
            return dal.Get(id);
        }

        System.Data.DataSet IBLL.IClassRecord.getClassPercent()
        {
            return dal.getClassPercent();
        }

        DataSet IBLL.IClassRecord.GetClassRecordList(int stu_id)
        {
            return dal.GetClassRecordList(stu_id);
        }


        IList<ClassRecordInfo> IBLL.IClassRecord.GetClasssByDate(DateTime dateTime)
        {
            return dal.GetClasssByDate(dateTime);
        }
    }
}
