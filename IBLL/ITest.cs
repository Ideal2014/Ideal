using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IBLL
{
    public interface ITest
    {
        void Add(TestInfo test);
        void Remove(TestInfo test);
        void Modify(TestInfo test);
        IList<TestInfo> GetAll();
        TestInfo Get(int id);
    }
}
