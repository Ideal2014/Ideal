using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IBLL
{
    public interface ITeacher
    {
        void Add(TeacherInfo teacher);
        void Remove(TeacherInfo teacher);
        void Modify(TeacherInfo teacher);
        IList<TeacherInfo> GetAll();
        TeacherInfo Get(int id);
    }
}
