using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Teacher : IBLL.ITeacher
    {
        private  IDAL.ITeacher dal = DALFactory.DataAccess.CreateTeacher();

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




        IList<TeacherInfo> IBLL.ITeacher.GetLimit(int from, int to)
        {
            return dal.GetLimit(from,to);
        }
    }
}
