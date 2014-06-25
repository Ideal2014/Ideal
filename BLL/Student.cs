using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using BLLSupport;

namespace BLL
{
    public class Student : IBLL.IStudent
    {
        private IDAL.IStudent dal = DALFactory.DataAccess.CreateStudent();
        //加密用户密码后保存信息
        void IBLL.IStudent.Add(StudentInfo student)
        {
            if (student == null)
                throw new Exception();
           student.Stu_Password = BLLSupport.Md5Support.GetMd5String(student.Stu_Password);
            dal.Add(student);
        }

        string IBLL.IStudent.GetMd5(String key)
        {
            if (key == null || key.Equals(String.Empty))
                throw new Exception();
            return BLLSupport.Md5Support.GetMd5String(key);
        }

        void IBLL.IStudent.Remove(StudentInfo student)
        {
            if (student == null)
                throw new Exception();
            dal.Remove(student);
        }

        void IBLL.IStudent.Modify(StudentInfo student)
        {
            if (student == null)
                throw new Exception();
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
            if (name == null || name.Equals(String.Empty))
                throw new Exception();
            return dal.GetByName(name);
        }

        //登录验证，验证用户的密码和是否为激活状态
        bool IBLL.IStudent.CheckLogin(StudentInfo s1)
        {
            s1.Stu_Password = Md5Support.GetMd5String(s1.Stu_Password);
            StudentInfo s2 = dal.Get(s1.Stu_ID);
            if (s2 == null || s1 == null)
                return false;
            if (s2.Stu_Validation==null)
                return false;
            return (s2.Stu_Password.Equals(s1.Stu_Password) && (s2.Stu_Validation.Equals("success")));

        }

        IList<StudentInfo> IBLL.IStudent.GetStudentsByDate(DateTime dateTime)
        {
            return dal.GetStudentsByDate(dateTime);
        }



        System.Data.DataSet IBLL.IStudent.getStudentList()
        {
            return dal.getStudentList();
        }
    }
}
