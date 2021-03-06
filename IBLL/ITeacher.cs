﻿using Model;
using System;
using System.Collections.Generic;
using System.Data;
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

        DataSet getTeacherList();


        IList<TeacherInfo> GetLimit(int s, int t);
    }
}
