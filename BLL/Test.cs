using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Test : IBLL.ITest
    {
        private  IDAL.ITest dal = DALFactory.DataAccess.CreateTest();

        void IBLL.ITest.Add(TestInfo student)
        {
            if(student == null)
                    throw new Exception();
            dal.Add(student);
        }

        void IBLL.ITest.Remove(TestInfo student)
        {
            if (student == null)
                throw new Exception();
            dal.Remove(student);
        }

        void IBLL.ITest.Modify(TestInfo student)
        {
            if (student == null)
                throw new Exception();
            dal.Modify(student);
        }

        IList<TestInfo> IBLL.ITest.GetAll()
        {
            return dal.GetAll();
        }

        TestInfo IBLL.ITest.Get(int id)
        {
            return dal.Get(id);
        }
        System.Data.DataSet IBLL.ITest.GetTestList()
        {
            return dal.GetTestList();
        }
    }
}
