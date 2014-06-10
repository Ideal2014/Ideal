﻿using Model;
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
        IList<StudentInfo> GetAll();
        StudentInfo Get(int id);
        IList<StudentInfo> GetStudentsByDate(DateTime dateTime);


        DataSet getStudentList();
    }
}
