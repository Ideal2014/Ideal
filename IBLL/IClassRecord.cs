using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IBLL
{
    public interface IClassRecord
    {
        void Add(ClassRecordInfo classRecord);
        void Remove(ClassRecordInfo classRecord);
        void Modify(ClassRecordInfo classRecord);
        IList<ClassRecordInfo> GetAll();
        ClassRecordInfo Get(int id);
    }
}
