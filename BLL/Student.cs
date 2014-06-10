using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Student : IBLL.IStudent
    {
        private static readonly IDAL.IStudent dal = DALFactory.DataAccess.CreateStudent();

        void IBLL.IStudent.Add(StudentInfo student)
        {
            dal.Add(student);
        }

        void IBLL.IStudent.Remove(StudentInfo student)
        {
            dal.Remove(student);
        }

        void IBLL.IStudent.Modify(StudentInfo student)
        {
            dal.Modify(student);
        }

        IList<StudentInfo> IBLL.IStudent.GetAll()
        {
            return dal.GetAll();
        }

        StudentInfo IBLL.IStudent.Get(int id)
        {
            return dal.Get(id);
        }


        StudentInfo IBLL.IStudent.GetByName(string name)
        {
            return dal.GetByName(name);
        }


        bool IBLL.IStudent.CheckLogin(StudentInfo s1)
        {
            StudentInfo s2 = dal.Get(s1.Stu_ID);
            if (s2.Stu_Password.Equals(s1.Stu_Password))
                return true;
            else
                return false;
        }
    }
}
