﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;

namespace BLL
{
    public class ClassRecord : IBLL.IClassRecord
    {
        private static readonly IDAL.IClassRecord dal = DALFactory.DataAccess.CreateClassRecord();

        void IBLL.IClassRecord.Add(ClassRecordInfo classRecord)
        {
            dal.Add(classRecord);
        }

        void IBLL.IClassRecord.Remove(ClassRecordInfo classRecord)
        {
            dal.Remove(classRecord);
        }

        void IBLL.IClassRecord.Modify(ClassRecordInfo classRecord)
        {
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
