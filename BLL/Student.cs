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


        IList<StudentInfo> IBLL.IStudent.GetStudentsByDate(DateTime dateTime)
        {
            return dal.GetStudentsByDate(dateTime);
        }


    }
}
