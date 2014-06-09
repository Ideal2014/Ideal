using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Teacher : IBLL.ITeacher
    {
        private static readonly IDAL.ITeacher dal = DALFactory.DataAccess.CreateTeacher();

        void IBLL.ITeacher.Add(TeacherInfo teacher)
        {
            dal.Add(teacher);
        }

        void IBLL.ITeacher.Remove(TeacherInfo teacher)
        {
            dal.Remove(teacher);
        }

        void IBLL.ITeacher.Modify(TeacherInfo teacher)
        {
            dal.Modify(teacher);
        }

        IList<TeacherInfo> IBLL.ITeacher.GetAll()
        {
            return dal.GetAll();
        }

        TeacherInfo IBLL.ITeacher.Get(int id)
        {
            return dal.Get(id);
        }



        System.Data.DataSet IBLL.ITeacher.getTeacherList()
        {
            return dal.getTeacherList();
        }


    }
}
