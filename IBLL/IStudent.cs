using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace IBLL
{
    public interface IStudent
    {
        void Add(StudentInfo student);
        void Remove(StudentInfo student);
        void Modify(StudentInfo student);
        bool CheckLogin(StudentInfo s1);
        IList<StudentInfo> GetAll();
        StudentInfo Get(int id);
        StudentInfo GetByName(String name);

        IList<StudentInfo> GetStudentsByDate(DateTime dateTime);
        DataSet getStudentList();
        string GetMd5(string key);
    }
}
